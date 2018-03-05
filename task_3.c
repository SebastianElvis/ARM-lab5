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

void transpose(int m[N][N])
{
    for (int i = 0; i < N; i++)
    {
        for (int j = i; j < N; j++)
        {
            int temp = m[i][j];
            m[i][j] = m[j][i];
            m[j][i] = temp;
        }
    }

}

void matrix_multiply_opt()
{

    transpose(matrixB);

	int i,j,k;
	for (i = 0 ; i < N ; i+=1)
		for(j = 0 ; j < N ; j +=1)
			for(k = 0 ; k < N ; k +=1)
				matrixC[i][j] += matrixA[i][k] * matrixB[j][k];
}

int main()
{
	init_matrixes();/* Initializes matrix elements */
	int perf, perf_cache_miss, perf_cache_access;

	// init performance events count
	//for description of events write "man perf_event_open" in console
	//perf = setup_perf(PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES);
	perf_cache_miss = setup_perf_cache(PERF_COUNT_HW_CACHE_LL, PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_MISS);
	perf_cache_access = setup_perf_cache(PERF_COUNT_HW_CACHE_LL, PERF_COUNT_HW_CACHE_OP_READ, PERF_COUNT_HW_CACHE_RESULT_ACCESS);

	clock_t begin_time = clock();

	start_perf(perf_cache_miss);		// start performance events count
	start_perf(perf_cache_access);		// start performance events count

	matrix_multiply_opt();

	end_perf(perf_cache_miss);			// stop performance events count
	end_perf(perf_cache_access);			// stop performance events count

	clock_t end_time = clock();

    	//print_matrix(matrixC, 10);

	printf("Execution took %f seconds.\n", (end_time-begin_time)/1000000.0);

	print_perf(perf_cache_miss);		// print performance events count
	print_perf(perf_cache_access);		// print performance events count

	return 0;

}
