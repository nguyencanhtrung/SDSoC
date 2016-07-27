#include <stdio.h>
#include <stdlib.h>

#include "mmult_accel.h"

static long long int total_iterations = 0;

#define NUM_TESTS 1024

#ifdef APF
#include "sds_lib.h"
/*
 * declare and initialize static clock counters
 */
unsigned long long sw_apf_counter_total = 0;
unsigned long long hw_apf_counter_total = 0;

unsigned int sw_apf_counter_num_calls = 0;
unsigned int hw_apf_counter_num_calls = 0;

unsigned long long sw_apf_counter = 0;
unsigned long long hw_apf_counter = 0;

/*
 * sample clock counter for sw start and update tallies
 */
#define sw_apf_clk_start()                 \
{                                          \
     sw_apf_counter = sds_clock_counter(); \
     sw_apf_counter_num_calls++;           \
}

/*
 * sample clock counter for hw start and update tallies
 */
#define hw_apf_clk_start()                 \
{                                          \
     hw_apf_counter = sds_clock_counter(); \
     hw_apf_counter_num_calls++;           \
}

/*
 * sample clock counter for sw stop and update tallies
 */
#define sw_apf_clk_stop()                                \
{                                                        \
     unsigned long long tmp = sds_clock_counter();                \
     sw_apf_counter_total += ((tmp < sw_apf_counter)     \
                              ? (sw_apf_counter - tmp)   \
                              : (tmp - sw_apf_counter)); \
}

/*
 * sample clock counter for hw stop and update tallies
 */
#define hw_apf_clk_stop()                                \
{                                                        \
     unsigned long long tmp = sds_clock_counter();       \
     hw_apf_counter_total += ((tmp < hw_apf_counter)     \
                              ? (hw_apf_counter - tmp)   \
                              : (tmp - hw_apf_counter)); \
}

/*
 * "return" average cpu cycles per sw call
 */
#define sw_avg_cpu_cycles()                \
     (sw_apf_counter_total / sw_apf_counter_num_calls)

/*
 * "return" average cpu cycles per sw call
 */
#define hw_avg_cpu_cycles()                \
     (hw_apf_counter_total / hw_apf_counter_num_calls)

#define print_sw_cycles() printf("Average cpu cycles SW: %lld\n", sw_avg_cpu_cycles())
#define print_hw_cycles() printf("Average cpu cycles HW: %lld\n", hw_avg_cpu_cycles())
#else
#define sw_apf_clk_start()
#define hw_apf_clk_start()
#define sw_apf_clk_stop()
#define hw_apf_clk_stop()
#define sw_avg_cpu_cycles()
#define hw_avg_cpu_cycles()
#define print_sw_cycles()
#define print_hw_cycles()
#define sds_alloc(x)(malloc(x))
#define sds_free(x)(free(x))
#endif

static void 
mmult_init(float *inA,  float *inB, float *outC_sw, float *outC)
{
     int i, j;
     
     for (i = 0; i < A_NROWS; i++) {
          for (j = 0; j < A_NCOLS; j++) {
               inA[i * A_NCOLS + j] = 1+i*A_NCOLS+j;
          }
     }
     for (i = 0; i < B_NROWS; i++) {  
          for (j = 0; j < B_NCOLS; j++) {
               inB[i * B_NCOLS + j] = rand() % (A_NCOLS * B_NCOLS);
          }
     }
     for (i = 0; i < A_NROWS; i++) {
          for (j = 0; j < B_NCOLS; j++) {
               outC_sw[i * B_NCOLS + j] = 0.0;
               outC[i * B_NCOLS + j] = 0.0;
          }
     }
}

void mmult_golden(float *A,  float *B, float *C)
{
     for (int row = 0; row < A_NROWS; row++) {
          for (int col = 0; col < B_NCOLS; col++) {
               float result = 0.0;
               for (int k = 0; k < A_NCOLS; k++) {
                    result += A[row*A_NCOLS+k] * B[k*B_NCOLS+col];
               }
               C[row*A_NCOLS+col] = result;
          }
     }
}

static bool 
mmult_result_check(float *outC_sw, float *outC)
{
     int i;
     
     for (i = 0; i < A_NROWS * B_NCOLS; i++) {
          if (outC_sw[i] != outC[i]) {
               printf("Mismatch: data index=%d d=%f, dout=%f\n", i, outC_sw[i], outC[i]);
               return false;
          }
     }
     return true;
}

static bool 
mmult_test(float *inA,  float *inB, float *outC_sw, float *outC)
{
     bool res = true;
     int i;
     
     for (i = 0; i < NUM_TESTS; i++) {
          total_iterations++;
          mmult_init(inA, inB, outC_sw, outC);

          sw_apf_clk_start();
          mmult_golden(inA, inB, outC_sw);
          sw_apf_clk_stop();

          hw_apf_clk_start();
          mmult_accel(inA, inB, outC);
          hw_apf_clk_stop();

          res = mmult_result_check(outC_sw, outC);
          if (!res) {
               printf("\nTest failed on inner loop iteration %d\n", i);
               return false;
          }
     }
     return true;
}


int main(int argc, char* argv[]){
     bool test_passed = true;
     float *inA, *inB, *outC_sw, *outC;
     
     printf("Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = %d\n", A_NROWS);
     
     inA = (float *)sds_alloc(A_NROWS * A_NCOLS * sizeof(float));
     inB = (float *)sds_alloc(A_NCOLS * B_NCOLS * sizeof(float));
     outC = (float *)sds_alloc(A_NROWS * B_NCOLS * sizeof(float));
     outC_sw = (float *)sds_alloc(A_NROWS * B_NCOLS * sizeof(float));
     
     if (!inA || !inB || !outC || !outC_sw) {
          if (inA) sds_free(inA);
          if (inB) sds_free(inB);
          if (outC) sds_free(outC);
          if (outC_sw) sds_free(outC_sw);
          return 2;
     }

     unsigned char i = 0;

     printf("Matrix mult test iteration: ");
     while (++i > 0 && test_passed) {
          printf("%d %s", i, !(i%16) ? "\n" : "");
          test_passed = mmult_test(inA, inB, outC_sw, outC);
     }
     if (test_passed)
       printf("Matched %lld iterations\n", total_iterations);

     print_sw_cycles();
     print_hw_cycles();
     
     sds_free(inA);
     sds_free(inB);
     sds_free(outC);
     sds_free(outC_sw);
     
     printf("TEST %s\n", test_passed ? "PASSED" : "FAILED");
     
     return 0;
}
