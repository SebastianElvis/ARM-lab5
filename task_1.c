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
static int matrixA[N][N];
static int matrixB[N][N];
static int matrixC[N][N];
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


void matrix_multiply_basic()
{
	int i,j,k;
	for (i = 0 ; i < N ; i+=1)
		for(j = 0 ; j < N ; j +=1)
			for(k = 0 ; k < N ; k +=1)
				matrixC[i][j] += matrixA[i][k] * matrixB[k][j];
}

void print_matrix(int matrix[N][N], int n){
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }
}

void matrix_multiply_asm()
{
    asm volatile(
		"push {r0-r12, r14}"			"\n\t"	//save the state of the registers
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


        // &matrixC[i][j] -> r6
        "mov r6, r1"                    "\n\t"
        "mul r7, r0, r11"                    "\n\t"
        "add r6, r6, r7"                    "\n\t"
        "mul r6, r10, r6"                    "\n\t"
        "add r6, r6, r5"                    "\n\t"

        // r12 -> matrixC[i][j]
        "ldr r12, [r6]"                 "\n\t"
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

        // matrixC[i][j] += matrixA[i][k] * matrixB[k][j]
        "ldr r7, [r7]"                    "\n\t"
        "ldr r8, [r8]"                    "\n\t"
        "mul r7, r8, r7"                    "\n\t"
        "add r12, r12, r7"                    "\n\t"

        "add r2, r2, #1"                    "\n\t"
        "cmp r2, r11"                    "\n\t"
        // finish K_loop
        "bne K_loop"                    "\n\t"
        "str r12, [r6]"                    "\n\t"



        "add r1, r1, #1"                    "\n\t"
        "cmp r1, r11"                    "\n\t"
	    "bne J_loop"                    "\n\t"

        "add r0, r0, #1"                    "\n\t"
        "cmp r0, r11"                    "\n\t"
	    "bne I_loop"                    "\n\t"

        "pop {r0-r12, r14}"                    "\n\t"

		:					//list of outputs (empty, because the output is directly in memory
		: [a] "r" (&matrixA[0][0]), [b] "r" (&matrixB[0][0]), 	[c] "r" (&matrixC[0][0])//list of inputs
		: "r3", "r4", "r5" //list of changed registers (r2, r3 so inputs will not be in them)
    ) ;
}

int main()
{
	init_matrixes();/* Initializes matrix elements */
	int perf;

	// init performance events count
	//for description of events write "man perf_event_open" in console
	perf = setup_perf(PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES);
	//perf = setup_perf_cache(PERF_COUNT_HW_CACHE_LL, PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_MISS);

	clock_t begin_time = clock();

	start_perf(perf);		// start performance events count

	//matrix_multiply_basic();
	matrix_multiply_asm();

	end_perf(perf);			// stop performance events count

	print_matrix(matrixC, 10);

	clock_t end_time = clock();

	printf("Execution took %f seconds.\n", (end_time-begin_time)/1000000.0);

	print_perf(perf);		// print performance events count

	return 0;

}
