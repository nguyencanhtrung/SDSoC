#include <stdio.h>
#include <stdlib.h>

#include "mmult_accel.h"

#define NUM_TESTS 1024

#include "sds_lib.h"
#define TIME_STAMP_INIT  unsigned long long clock_start, clock_end;  clock_start = sds_clock_counter();  
#define TIME_STAMP_SW  { clock_end = sds_clock_counter(); printf("Average number of processor cycles for golden version: %llu \n", (clock_end-clock_start)/NUM_TESTS); clock_start = sds_clock_counter();  }
#define TIME_STAMP_ACCEL  { clock_end = sds_clock_counter(); printf("Average number of processor cycles for hardware version: %llu \n", (clock_end-clock_start)/NUM_TESTS); }

int test_passed = 0;
volatile long unsigned int sw_time_total, hw_time_total;
float *tin1Buf, *tin2Buf, *tin3Buf, *toutBufSwInter, *toutBufHwInter, *toutBufSw, *toutBufHw;

static void mmult_init()
{
  int i, j;
  
  for (i = 0; i < A_NROWS; i++) {
    for (j = 0; j < A_NCOLS; j++) {
      tin1Buf[i * A_NCOLS + j] = 1+i*A_NCOLS+j;
    }
  }
  for (i = 0; i < B_NROWS; i++) {  
    for (j = 0; j < B_NCOLS; j++) {
      tin2Buf[i * B_NCOLS + j] = rand() % (A_NCOLS * B_NCOLS);
      tin3Buf[i * B_NCOLS + j] = rand() % (A_NCOLS * B_NCOLS);
    }
  }
  for (i = 0; i < A_NROWS; i++) {
    for (j = 0; j < B_NCOLS; j++) {
      toutBufSwInter[i * B_NCOLS + j] = 0.0;
      toutBufHwInter[i * B_NCOLS + j] = 0.0;
      toutBufSw[i * B_NCOLS + j] = 0.0;
      toutBufHw[i * B_NCOLS + j] = 0.0;
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

static int mmult_result_check(void)
{
  int i;
  
  for (i = 0; i < A_NROWS * B_NCOLS; i++) {
    if (toutBufSw[i] != toutBufHw[i]) {
      printf("Mismatch: data index=%d d=%f, dout=%f\n", i, toutBufSw[i], toutBufHw[i]);
      return 1;
    }
  }
  return 0;
}

void mmult_test()
{
  int i, result;
  
  printf("Testing mmult ...\n");
  
  mmult_init();

  TIME_STAMP_INIT

  for (i = 0; i < NUM_TESTS; i++) {
    mmult_golden(tin1Buf, tin2Buf, toutBufSwInter);
    mmult_golden(toutBufSwInter, tin3Buf, toutBufSw);
  }

  TIME_STAMP_SW

  for (i = 0; i < NUM_TESTS; i++) {
    mmult_accel(tin1Buf, tin2Buf, toutBufHwInter);
    mmult_accel(toutBufHwInter, tin3Buf, toutBufHw);
  }
  
  TIME_STAMP_ACCEL

  result = mmult_result_check();
  if (result != 0) {
    test_passed = 0;
  }
  else {
    test_passed = 1;
  }
}


int main(int argc, char* argv[]){
  
  printf("Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = %d\n", A_NROWS);

  tin1Buf = (float *)malloc(A_NROWS * A_NCOLS * sizeof(float));
  tin2Buf = (float *)malloc(A_NCOLS * B_NCOLS * sizeof(float));
  tin3Buf = (float *)malloc(A_NCOLS * B_NCOLS * sizeof(float));
  toutBufHwInter = (float *)malloc(A_NROWS * B_NCOLS * sizeof(float));
  toutBufSwInter = (float *)malloc(A_NROWS * B_NCOLS * sizeof(float));
  toutBufHw = (float *)malloc(A_NROWS * B_NCOLS * sizeof(float));
  toutBufSw = (float *)malloc(A_NROWS * B_NCOLS * sizeof(float));
  if (!tin1Buf || !tin2Buf || !toutBufHw || !toutBufSw || !toutBufHwInter || !toutBufSwInter) {
    if (tin1Buf) free(tin1Buf);
    if (tin2Buf) free(tin2Buf);
    if (tin3Buf) free(tin2Buf);
    if (toutBufHwInter) free(toutBufHwInter);
    if (toutBufSwInter) free(toutBufSwInter);
    if (toutBufHw) free(toutBufHw);
    if (toutBufSw) free(toutBufSw);
    return 2;
  }

  mmult_test();

  free(tin1Buf);
  free(tin2Buf);
  free(tin3Buf);
  free(toutBufHwInter);
  free(toutBufSwInter);
  free(toutBufHw);
  free(toutBufSw);
  
  printf("TEST %s\n", test_passed ? "PASSED" : "FAILED");
  
  return 0;
}
