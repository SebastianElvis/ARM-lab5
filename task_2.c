#define _GNU_SOURCE
#include <stdlib.h>
#include <string.h>
#include <asm/unistd.h>
#include <unistd.h>
#include <stdio.h>
#include <time.h>
#include <sys/ioctl.h>
#include <linux/perf_event.h>
#include "perf.c"
#define N 1024
static int matrixA[N][N] __attribute__ ((aligned(64)));
static int matrixB[N][N] __attribute__ ((aligned(64)));
static int matrixC[N][N] __attribute__ ((aligned(64)));
//initialise vectors with random values
void init_matrixes(){
	int i, j;
	unsigned int p = 0;
	for (i = 0; i < N; i++)
		for (j = 0; j < N; j++){
			p+= 65610001;		  	//increment by prime number
			matrixA[i][j] = p%1336337;	//mod prime number
			matrixB[i][j] = p%4477457;	//mod prime number
			matrixC[i][j] = 0;
		}
}

void print_matrix(int matrix[N][N], int n){
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }
}

void transpose(int m[N][N])
{
	for (int i=0;i<N;i++){
		for (int j=i;j<N;j++){
			int temp = m[i][j];
			m[i][j] = m[j][i];
			m[j][i] = temp;
		}
	}
}

void matrix_multiply_basic()
{
	
	transpose(matrixB);
	
	int i,j,k;
	for (i = 0 ; i < N ; i+=1)
		for(j = 0 ; j < N ; j +=1)
			for(k = 0 ; k < N ; k +=1)
				matrixC[i][j] += matrixA[i][k] * matrixB[j][k];
}

void matrix_multiply_asm()
{
	transpose(matrixB);

    asm volatile(
        "push {r0-r12, r14}"                    "\n\t"

        "mov r11, #1024"                  "\n\t"
        "mov r10, #4"                   "\n\t"

        "mov r3, %[a]"                  "\n\t"
        "mov r4, %[b]"                  "\n\t"
        "mov r5, %[c]"                  "\n\t"

        // i -> r0
        "mov r0, #0"                    "\n\t"
    "I_loop:"                           "\n\t"
        // j -> r1
        "mov r1, #0"                    "\n\t"
	
    "J_loop:"                           "\n\t"
        // k -> r2
        "mov r2, #0"                    "\n\t"

        // init results
        "vmov.i32 d31, #0"                       "\n\t"

        // &matrixC[i][j] -> r6
	"mla r6, r0, r11, r1"		"\n\t"
	"mla r6, r10, r6, r5"		"\n\t"

    "K_loop:"                    "\n\t"

        // &matrixA[i][k] -> r7
        "mla r7, r0, r11, r2"		"\n\t"
	"mla r7, r10, r7, r3"		"\n\t"

        // &matrixB[j][k] -> r8
        "mla r8, r1, r11, r2"		"\n\t"
	"mla r8, r10, r8, r4"		"\n\t"
	
        "vld1.64 {d0-d3}, [r7:64]!"            "\n\t"
        "vld1.64 {d4-d7}, [r8:64]!"            "\n\t"

        // multiply
        "vmla.i32 q4, q0, q2"            "\n\t"
	"vmla.i32 q5, q1, q3"		"\n\t"
	

	// 4 elements a time
        "add r2, r2, #8"               "\n\t"
        "cmp r2, r11"                    "\n\t"
        "bne K_loop"                    "\n\t"

        // // reduce value register-wide
        "vadd.i32 q4, q4, q5"                    "\n\t"
        "vadd.i32 d8, d8, d9"                    "\n\t"
        "vpadd.i32 d8, d8"                    "\n\t"
        
	// write back to C
        "vst1.32 d8[0], [r6:32]!"                    "\n\t"


        // judge if jump out K_loop or not
        "add r1, r1, #1"                    "\n\t"
        "cmp r1, r11"                    "\n\t"
	"bne J_loop"                    "\n\t"

        // judge if jump out K_loop or not
        "add r0, r0, #1"                    "\n\t"
        "cmp r0, r11"                    "\n\t"
	"bne I_loop"                    "\n\t"


        "pop {r0-r12, r14}"                     "\n\t"

		:					//list of outputs (empty, because the output is directly in memory
		: [a] "r" (&matrixA[0][0]), [b] "r" (&matrixB[0][0]), 	[c] "r" (&matrixC[0][0])//list of inputs
		: "r3", "r4", "r5" //list of changed registers (r2, r3 so inputs will not be in them)
    ) ;
}

int main()
{
	init_matrixes();/* Initializes matrix elements */

    //printf("%d\n", sizeof(matrixC)/1024/1024); // 4
	//printf("%d\n%d\n", &matrixA[0][1], &matrixA[0][0]);
    int perf, perf_cache_miss, perf_cache_access;

	// init performance events count
	//for description of events write "man perf_event_open" in console
	perf = setup_perf(PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES);
	perf_cache_miss = setup_perf_cache(PERF_COUNT_HW_CACHE_LL, PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_MISS);
	perf_cache_access = setup_perf_cache(PERF_COUNT_HW_CACHE_LL, PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_ACCESS);

	clock_t begin_time = clock();
	
	start_perf(perf);
	start_perf(perf_cache_miss);		// start performance events count
	start_perf(perf_cache_access);		// start performance events count

	//matrix_multiply_basic();
    	matrix_multiply_asm();

    	//print_matrix(matrixC, 10);

	end_perf(perf_cache_miss);			// stop performance events count
	end_perf(perf_cache_access);			// stop performance events count
	end_perf(perf);
	
	clock_t end_time = clock();

	printf("Execution took %f seconds.\n", (end_time-begin_time)/1000000.0);
	
	print_perf(perf);
	print_perf(perf_cache_miss);		// print performance events count
	print_perf(perf_cache_access);		// print performance events count

	return 0;

}
