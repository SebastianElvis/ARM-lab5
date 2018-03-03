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
static int matrixA[N][N] __attribute__ ((aligned(64))); //64-bit alignment of data on RAM
static int sum;
void init_matrixes(){
//initialise vector with pseudo random values
	int i, j;
	unsigned int p = 0;
	for (i = 0; i < N; i+=1)
		for (j = 0; j < N; j+=1){
			p += 65610001;		  	//increment by prime number
			matrixA[i][j] = p%1336337;	//mod prime number
		}
}

void matrix_sum_basic()
{
	int i,j;
	sum = 0;
	for (i = 0 ; i < N ; i+=1)
		for(j = 0 ; j < N ; j +=1)
			sum += matrixA[i][j];
}

void matrix_sum_asm()
{
	/*
	for this example, since we do not use i and j directly,
	we can concatenate the two nested loops in for(i=0;i<N*N;i++)
	r0 = i ; r2 = &matrixA[i][j] ; r3 = &sum
	q0-q3 are temp_sum vectors
	q4-q11 are used for loading data in
	r5-r12 - used for loading matrixA values
	*/
	asm volatile(
		"push {r0-r12, r14}"			"\n\t"	//save the state of the registers

		"mov r2, %[matrixA_addr]"		"\n\t"	// r2 = &matrixA[0][0]
		"mov r3, %[sum_addr]"			"\n\t"	// r3 = &sum

		"vmov.i32 q0, #0"			"\n\t" // move #0 to the 4 temp vectors
		"vmov.i32 q1, #0"			"\n\t" //
		"vmov.i32 q2, #0"			"\n\t" //
		"vmov.i32 q3, #0"			"\n\t" //
		
		"mov r0, #(1024*1024)"			"\n\t"	// i=1024*1024
	"I_loop:"					"\n\t"

		"vld1.64 {d8-d11}, [r2:64]!"		"\n\t"  //load multiple and increment address after each load
		"vld1.64 {d12-d15}, [r2:64]!"		"\n\t"  //load multiple and increment address after each load
		"vld1.64 {d16-d19}, [r2:64]!"		"\n\t"  //load multiple and increment address after each load
		"vld1.64 {d20-d23}, [r2:64]!"		"\n\t"  //load multiple and increment address after each load

		"subs r0, r0, #32"			"\n\t"	//i-=32 with automatic i>0 check, updating CC flags
								//decrement by 32, because we load 32 elements at a time
		"vadd.i32 q4, q4, q5"			"\n\t"	//sum the 32 loaded elements
		"vadd.i32 q6, q6, q7"			"\n\t"	//using vector operations
		"vadd.i32 q8, q8, q9"			"\n\t"
		"vadd.i32 q10, q10, q11"		"\n\t"	//currently q4,q6,q8,q10 hold temp sum

		"vadd.i32 q0, q0, q4"			"\n\t"	// add them to the temp_sums (q0-q3)
		"vadd.i32 q1, q1, q6"			"\n\t"  //
		"vadd.i32 q2, q2, q8"			"\n\t"  //
		"vadd.i32 q3, q3, q10"			"\n\t"  //

		"bne I_loop"				"\n\t"	//loop back if i>0
		
		"vadd.i32 q0, q0, q1"			"\n\t"  //reduce temp results
		"vadd.i32 q2, q2, q3"			"\n\t"	//from q0-q3
		"vadd.i32 q0, q0, q2"			"\n\t"  //to only q0
		
		"vadd.i32 d0, d0, d1"			"\n\t"	//from q0 to d0
		
		"vpadd.i32 d0, d0"			"\n\t"	//from d0 to least significant 32-bits of d0
		
		"vst1.32 d0[0], [r3:32]!"		"\n\t"	//store 32 LSB of d0 to &sum

		"pop {r0-r12, r14}"			"\n\t"	//retrieve the state of the registers

		:					//list of outputs (empty, because the output is directly in memory
		: [matrixA_addr] "r" (&matrixA[0][0]), [sum_addr] "r" (&sum)	//list of inputs
		: "r2", "r3") ; //list of changed registers (r2, r3 therefore the two inputs will not be in them)
}

int main()
{
	init_matrixes();/* Initializes matrix elements */
	int perf;

	// init performance events count
	//for description of event write "man perf_event_open" in console
	perf = setup_perf(PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES); 
	//perf = setup_perf_cache(PERF_COUNT_HW_CACHE_LL, PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_MISS);

	clock_t begin_time = clock();
	
	start_perf(perf);		// start performance events count
	
	matrix_sum_basic();
	//matrix_sum_asm();
	
	end_perf(perf);			// stop performance events count
	
	clock_t end_time = clock();

	printf("Execution took %f seconds.\n", (end_time-begin_time)/1000000.0);
	
	print_perf(perf);		// print performance events count

	printf("\nResulting sum: %d\n",sum);
	
	return 0;

}


