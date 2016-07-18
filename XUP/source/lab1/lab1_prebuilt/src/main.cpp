#include <iostream>
#include <stdio.h>
#include <stdlib.h>

#include "mmult.h"
#include "madd.h"

#define NUM_TESTS 1024

#include "sds_lib.h"
unsigned long long sw_sds_counter_total = 0;
unsigned long long hw_sds_counter_total = 0;
unsigned int sw_sds_counter_num_calls = 0;
unsigned int hw_sds_counter_num_calls = 0;
unsigned long long sw_sds_counter = 0;
unsigned long long hw_sds_counter = 0;

#define sw_sds_clk_start() { sw_sds_counter = sds_clock_counter(); sw_sds_counter_num_calls++; }
#define hw_sds_clk_start() { hw_sds_counter = sds_clock_counter(); hw_sds_counter_num_calls++; }
#define sw_sds_clk_stop() { unsigned long long tmp = sds_clock_counter(); \
  sw_sds_counter_total += ((tmp < sw_sds_counter) ? (sw_sds_counter - tmp): (tmp - sw_sds_counter)); }
#define hw_sds_clk_stop() { unsigned long long tmp = sds_clock_counter(); \
  hw_sds_counter_total += ((tmp < hw_sds_counter) ? (hw_sds_counter - tmp): (tmp - hw_sds_counter)); }
#define sw_avg_cpu_cycles() (sw_sds_counter_total / sw_sds_counter_num_calls)
#define hw_avg_cpu_cycles() (hw_sds_counter_total / hw_sds_counter_num_calls)

static void mmultadd_init(float *A, float *B, float *C, float *Ds, float *D)
{
     int i, j;
     for (i = 0; i < A_NROWS; i++) {
          for (j = 0; j < A_NCOLS; j++) {
               A[i * A_NCOLS + j] = 1+i*A_NCOLS+j;
          }
     }
     for (i = 0; i < B_NROWS; i++) {
          for (j = 0; j < B_NCOLS; j++) {
               B[i * B_NCOLS + j] = rand() % (A_NCOLS * B_NCOLS);
          }
     }
     for (i = 0; i < B_NROWS; i++) {
          for (j = 0; j < B_NCOLS; j++) {
               C[i * B_NCOLS + j] =  i*A_NCOLS-j;
          }
     }
     for (i = 0; i < A_NROWS; i++) {
          for (j = 0; j < B_NCOLS; j++) {
               Ds[i * B_NCOLS + j] = 0.0;
               D[i * B_NCOLS + j] = 0.0;
          }
     }
}

void mmult_golden(float *in_arr,  float *in_arr2, float *out_arr)
{
     for (int row = 0; row < A_NROWS; row++) {
          for (int col = 0; col < B_NCOLS; col++) {
               float result = 0.0;
               for (int k = 0; k < A_NCOLS; k++) {
                    result += in_arr[row*A_NCOLS+k] * in_arr2[k*B_NCOLS+col];
               }
               out_arr[row*A_NCOLS+col] = result;
          }
     }
}

void madd_golden(float *in_arr, float *in_arr2, float *out_arr)
{
     for (int row = 0; row < NROWS; row++) {
          for (int col = 0; col < NCOLS; col++) {
               out_arr[row*NCOLS+col] = in_arr[row*NCOLS+col] + in_arr2[row*NCOLS+col];
          }
     }
}

static bool mmult_result_check(float *D, float *Ds)
{
     for (int i = 0; i < A_NROWS * B_NCOLS; i++) {
          if (Ds[i] != D[i]) {
               std::cout << "Mismatch: data index=" << i 
                         << "d=" << Ds[i]
                         << ", dout=" << D[i] << std::endl;
               return false;
          }
     }
     return true;
}

bool mmultadd_test(float *A,  float *B, float *C,float *Ds, float *D)
{
     std::cout << "Testing mmult .." << std::endl;
     
     float tmp1[A_NROWS * A_NCOLS], tmp2[A_NROWS * A_NCOLS];

     for (int i = 0; i < NUM_TESTS; i++) {
          mmultadd_init(A, B, C, Ds, D);

          hw_sds_clk_start();
          mmult(A, B, tmp1);
          //std::cout << "tmp1[0] = " << tmp1[0] << std::endl;
          madd(tmp1, C, D);
          hw_sds_clk_stop();

          sw_sds_clk_start();
          mmult_golden(A, B, tmp2);
          madd_golden(tmp2, C, Ds);
          sw_sds_clk_stop();

          if (!mmult_result_check(D, Ds))
               return false;
     }
     std::cout << "Average SW cycles: " << sw_avg_cpu_cycles() << std::endl;
     std::cout << "Average HW cycles: " << hw_avg_cpu_cycles() << std::endl;

     return true;
}


int main(int argc, char* argv[]){
     int test_passed = 0;
     float *A, *B, *C, *Ds, *D;
     
     std::cout << "Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = " 
               << A_NROWS << std::endl;
     
     A = (float *)sds_alloc(A_NROWS * A_NCOLS * sizeof(float));
     B = (float *)sds_alloc(A_NCOLS * B_NCOLS * sizeof(float));
     C = (float *)sds_alloc(A_NCOLS * B_NCOLS * sizeof(float));
     D = (float *)sds_alloc(A_NROWS * B_NCOLS * sizeof(float));
     Ds = (float *)sds_alloc(A_NROWS * B_NCOLS * sizeof(float));
     
     if (!A || !B || !C || !D || !Ds) {
          if (A) sds_free(A);
          if (B) sds_free(B);
          if (C) sds_free(C);
          if (D) sds_free(D);
          if (Ds) sds_free(Ds);
          return 2;
     }
     
     test_passed = mmultadd_test(A, B, C, Ds, D);
     
     sds_free(A);
     sds_free(B);
     sds_free(C);
     sds_free(D);
     sds_free(Ds);
     
     std::cout << "TEST " << (test_passed ? "PASSED" : "FAILED")
               << std::endl;
     
     return (test_passed ? 0 : -1);
}
