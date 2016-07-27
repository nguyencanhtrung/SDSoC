#include <stdio.h>
#include <stdlib.h>
#include "mmult.h"

#define NUM_TESTS 64

#ifndef __SDSCC__
#define sw_apf_clk_start()
#define sw_apf_clk_stop()
#define sw_avg_cpu_cycles()
#define hw_apf_clk_start()
#define hw_apf_clk_stop()
#define hw_avg_cpu_cycles()
#define sds_alloc(x)malloc(x)
#define sds_free(x)free(x)
#else
#include "sds_lib.h"
unsigned long long sw_counter = 0;
unsigned long long hw_counter = 0;
unsigned long long sw_counter_total = 0;
unsigned long long hw_counter_total = 0;
unsigned int sw_num_calls = 0;
unsigned int hw_num_calls = 0;

#define sw_apf_clk_start()             \
{                                      \
     sw_counter = sds_clock_counter(); \
     sw_num_calls++;                   \
}
#define sw_apf_clk_stop()                           \
{                                                   \
     unsigned long long tmp = sds_clock_counter();  \
     sw_counter_total += ((tmp < sw_counter)        \
                          ? (sw_counter - tmp)      \
                          : (tmp - sw_counter));    \
}
#define sw_avg_cpu_cycles() (sw_counter_total / sw_num_calls)

#define hw_apf_clk_start()             \
{                                      \
     hw_counter = sds_clock_counter(); \
     hw_num_calls++;                   \
}
#define hw_apf_clk_stop()                          \
{                                                  \
     unsigned long long tmp = sds_clock_counter(); \
     hw_counter_total += ((tmp < hw_counter)       \
                          ? (hw_counter - tmp)     \
                          : (tmp - hw_counter));   \
}
#define hw_avg_cpu_cycles() (hw_counter_total / hw_num_calls)
#endif

void print_float_array(float* a, const char* name)
{
     printf("Array %s\n", name);
     for (int r = 0; r < A_NROWS; r++)  {
          for (int c = 0; c < B_NCOLS; c++)
               printf("%4.0f ", a[r * B_NCOLS+c]);
          printf("\n");
     }
}

int main(int argc, char *argv[])
{
     printf("Allocating arrays\n");
     bool success = true;
     float *A, *B, *Chw, *Csw;
     A   = (float *)sds_alloc(N * sizeof(float));
     B   = (float *)sds_alloc(N * sizeof(float));
     Chw = (float *)sds_alloc(N * sizeof(float));
     Csw = (float *)malloc(N * sizeof(float));
     if (A == NULL || B == NULL || Chw == NULL || Csw == NULL) {
          printf("Could not allocate memory - exiting\n");
     }
     else {
          printf("Test iteration: ");
          for (int j = 0; success && j < NUM_TESTS; j++) {
               printf("%d ", j);
               int size = N;
               for (int i = size-1; i >= 0; i-- ) {
                    A[i] = rand() % 16 ;
                    B[i] = rand() % 16 ;
                    Chw[i] = 0;
                    Csw[i] = 0;
               }
               
               hw_apf_clk_start();
               mmult(A, B, Chw);
               hw_apf_clk_stop();
               
               sw_apf_clk_start();
               mmult_sw(A, B, Csw);
               sw_apf_clk_stop();
               
               for (int i = 0; i < size; i++ ) {
                    if (Chw[i] != Csw[i]) {
                         printf("Iteration %d: values are different %f %f\n", j, Chw[i], Csw[i]);
                         success = false;
                         break;
                    }
               }
          }
          printf("\n");
          if (success) {
               printf("data for final iteration:\n");
               print_float_array(A, "A");
               print_float_array(B, "B");
               print_float_array(Csw, "sw_C");
               print_float_array(Chw, "hw_C");
          }
          printf("Ran %d iterations\n", NUM_TESTS);
#ifdef __SDSCC__
          printf("Average cpu cycles SW per iteration: %lld\n", sw_avg_cpu_cycles());
          printf("Average cpu cycles HW per iteration: %lld\n", hw_avg_cpu_cycles());
#endif
          printf("%s\n", success ? "Test passed!" : "Better luck next time...");
     } 
     if (A) sds_free(A);
     if (B) sds_free(B);
     if (Chw) sds_free(Chw); 
     if (Csw) free(Csw);
     return (success ? 0 : -1);
}