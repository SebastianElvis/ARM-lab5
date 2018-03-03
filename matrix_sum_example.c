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
	noting that, because there are 14 usable registers (r0-r12,r14)
	we can use r2 for the current address of matrixA[i][j] and increment
	it after each read, instead of recalculating the proper needed address
	by using &matrixA[0][0] + 4*(1024*i+j)
	
	also we can afford to load 8 registers (r5-r12) at a time and have the
	j-loop at (in-de)crementing steps of 8

	r0 = i ; r1 = j ; r2 = &matrixA[i][j] ; r3 = &sum
	r4 = temp_sum
	r5-r12 - used for loading matrixA values
	*/
	asm volatile(
		"push {r0-r12, r14}"			"\n\t"	//save the state of the registers

		"mov r2, %[matrixA_addr]"		"\n\t"	// r2 = &matrixA[0][0]
		"mov r3, %[sum_addr]"			"\n\t"	// r3 = &sum
		"mov r4, #0"				"\n\t"	// temp_sum = 0
		
		"mov r0, #1024"				"\n\t"	// i=1024
	"I_loop:"					"\n\t"
		"mov r1, #1024"				"\n\t"	// j=1024
	"J_loop:"					"\n\t"

		"ldmia r2!, {r5-r12}"			"\n\t"  //load multiple and increment address after each load

		"subs r1, r1, #8"			"\n\t"	//j-=8 with automatic j>0 check, updating CC flags
								//decrement by 8, because we load 8 elements at a time
		"add r4, r4, r5"			"\n\t"	//sum the 8 loaded elements
		"add r6, r6, r7"			"\n\t"	//not touching the CC flags from the subs operation
		"add r4, r4, r6"			"\n\t"
		"add r8, r8, r9"			"\n\t"
		"add r4, r4, r8"			"\n\t"
		"add r10, r10, r11"			"\n\t"
		"add r4, r4, r10"			"\n\t"
		"add r4, r4, r12"			"\n\t"	

		"bne J_loop"				"\n\t"	//loop back if j>0
	
		"subs r0, r0, #1"			"\n\t"	//i-=1 with automatic i>0 check, updating CC flags
		"bne I_loop"				"\n\t"	//loop back if i>0
		
		"str r4, [r3]"				"\n\t"  //sum = temp_sum

		"pop {r0-r12, r14}"			"\n\t"	//retrieve the state of the registers

		:					//list of outputs (empty, because the output is directly in memory
		: [matrixA_addr] "r" (&matrixA[0][0]), [sum_addr] "r" (&sum)	//list of inputs
		: "r2", "r3") ; //list of changed registers (r2, r3 so inputs will not be in them)
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


