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
static int matrixA[N][N] __attribute__ ((aligned(32)));
static int matrixB[N][N] __attribute__ ((aligned(32)));
static int matrixC[N][N] __attribute__ ((aligned(32)));
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

void matrix_multiply_basic()
{
	int i,j,k;
	for (i = 0 ; i < N ; i+=1)
		for(j = 0 ; j < N ; j +=1)
			for(k = 0 ; k < N ; k +=1)
				matrixC[i][j] += matrixA[i][k] * matrixB[k][j];
}

void matrix_multiply_asm()
{
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

        // move #0 to the 8 temp vectors => 4x4ints once
        "vmov.i32 d0, #0"                       "\n\t"
        "vmov.i32 d1, #0"                       "\n\t" //

        // init results
        "vmov.i32 d2, #0"                       "\n\t"

        // &matrixC[i][j] -> r6
        "mov r6, r1"                    "\n\t"
        "mul r7, r0, r11"                    "\n\t"
        "add r6, r6, r7"                    "\n\t"
        "mul r6, r10, r6"                    "\n\t"
        "add r6, r6, r5"                    "\n\t"

    "K_loop:"                    "\n\t"

        // &matrixA[i][k] -> r7
        "mov r7, r2"                    "\n\t"
        "mul r8, r0, r11"                    "\n\t"
        "add r7, r7, r8"                    "\n\t"
        "mul r7, r10, r7"                    "\n\t"
        "add r7, r7, r3"                    "\n\t"

        // &matrixB[k][j] -> r8
        "mov r8, r1"                    "\n\t"
        "mul r9, r2, r11"                    "\n\t"
        "add r8, r8, r9"                    "\n\t"
        "mul r8, r10, r8"                    "\n\t"
        "add r8, r8, r4"                    "\n\t"

        // //load matrixA 1-stride
        // "vld4.i32 {q0-q3}, [r7:32]!"            "\n\t"
        // // load matrixB n-stride
        // "vld4.i32 {q4-q7}, [r8:1024]!"            "\n\t"

        "vld1.64 {d0}, [r7:64]!"            "\n\t"
        "vld1.64 {d1}, [r8:64]!"            "\n\t"

        // multiply
        "vmla.i32 d2, d0, d1"            "\n\t"


        // judge if jump out K_loop or not
        // process 16 numbers at one time
        //"mla r2, r2, r10, r10"                    "\n\t"
        "add r2, r2, #1"               "\n\t"
        "cmp r2, r11"                    "\n\t"
        "bne K_loop"                    "\n\t"

        // // reduce value register-wide
        // "vadd.i32 q8, q8, q9"                    "\n\t"
        // "vadd.i32 q10, q10, q11"                    "\n\t"
        // "vadd.i32 q8, q8, q10"                    "\n\t"
        // // reduce 4 values in a single register
        // "vadd.i32 d16, d16, d17"                    "\n\t"
        // "vpadd.i32 d16, d16"                    "\n\t"

        //"vpadd.i32 d2, d2"                    "\n\t"
        // write back to C
        "vst1.32 d2[0], [r6:32]!"                    "\n\t"


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

    printf("%d\n", sizeof(matrixC)/1024/1024); // 4

    int perf;

	// init performance events count
	//for description of events write "man perf_event_open" in console
	perf = setup_perf(PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES);
	//perf = setup_perf_cache(PERF_COUNT_HW_CACHE_LL, PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_MISS);

	clock_t begin_time = clock();

	start_perf(perf);		// start performance events count

	matrix_multiply_basic();
    //matrix_multiply_asm();

    print_matrix(matrixC, 10);

	end_perf(perf);			// stop performance events count

	clock_t end_time = clock();

	printf("Execution took %f seconds.\n", (end_time-begin_time)/1000000.0);

	print_perf(perf);		// print performance events count

	return 0;

}
