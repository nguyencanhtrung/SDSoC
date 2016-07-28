#include <stdio.h>
#include <stdlib.h>

#include "mmult_accel.h"
#include "cf_extra.h"

// Each time testing 4 vectors, 2 are pipeline => number of test = 1024
#define NUM_VECTORS 4
#define NUM_TESTS 256

#define PIPELINE_DEPTH_MIN	1
#define PIPELINE_DEPTH_MAX	3
#define PIPELINE_DEPTH_DEFAULT	2


#include "sds_lib.h"
#define TIME_STAMP_INIT  unsigned long long clock_start, clock_end;  clock_start = sds_clock_counter();  
#define TIME_STAMP_SW  { clock_end = sds_clock_counter(); printf("Average number of processor cycles for golden version: %llu \n", (clock_end-clock_start)/(NUM_VECTORS*NUM_TESTS)); clock_start = sds_clock_counter();  }
#define TIME_STAMP_ACCEL  { clock_end = sds_clock_counter(); printf("Average number of processor cycles for hardware version: %llu \n", (clock_end-clock_start)/(NUM_VECTORS*NUM_TESTS)); }

static void mmult_init(float *tin1Buf[NUM_VECTORS],  float *tin2Buf[NUM_VECTORS], float *toutBufSw[NUM_VECTORS], float *toutBufHw[NUM_VECTORS])
{
  int i, j, vec;
  for(vec = 0; vec < NUM_VECTORS; vec++) {
    for (i = 0; i < A_NROWS; i++) {
      for (j = 0; j < A_NCOLS; j++) {
        tin1Buf[vec][i * A_NCOLS + j] = 1+i*A_NCOLS+j;
      }
    }
    for (i = 0; i < B_NROWS; i++) {  
      for (j = 0; j < B_NCOLS; j++) {
        tin2Buf[vec][i * B_NCOLS + j] = rand() % (A_NCOLS * B_NCOLS);
      }
    }
    for (i = 0; i < A_NROWS; i++) {
      for (j = 0; j < B_NCOLS; j++) {
        toutBufSw[vec][i * B_NCOLS + j] = 0.0;
        toutBufHw[vec][i * B_NCOLS + j] = 0.0;
      }
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

static int mmult_result_check(float *toutBufSw[NUM_VECTORS], float *toutBufHw[NUM_VECTORS])
{
  int i, vec;
  for(vec = 0; vec < NUM_VECTORS; vec++) {  
    for (i = 0; i < A_NROWS * B_NCOLS; i++) {
      if (toutBufSw[vec][i] != toutBufHw[vec][i]) {
        printf("Mismatch: data vector=%d index=%d d=%f, dout=%f\n", vec, i, toutBufSw[vec][i], toutBufHw[vec][i]);
        return 0;
      }
    }
  }
  return 1;
}

int mmult_test(float *tin1Buf[NUM_VECTORS],  float *tin2Buf[NUM_VECTORS], float *toutBufSw[NUM_VECTORS], float *toutBufHw[NUM_VECTORS], int pipeline_depth)
{
  int i, vec;
  
  printf("Testing mmult ...\n");
  
  mmult_init(tin1Buf, tin2Buf, toutBufSw, toutBufHw);

  TIME_STAMP_INIT

  for (i = 0; i < NUM_TESTS; i++) {
    for (vec = 0; vec < NUM_VECTORS; vec++) {
      mmult_golden(tin1Buf[vec], tin2Buf[vec], toutBufSw[vec]);
    }
  }

  TIME_STAMP_SW

  for (i = 0; i < NUM_TESTS; i++) {
    /*< Fill up the pipeline stage */
    for (vec = 0; vec < pipeline_depth; vec++) {
#pragma SDS async(1)
      _p0_mmult_accel_0(tin1Buf[vec], tin2Buf[vec], toutBufHw[vec]);
    }
    /*< */
    for (vec = pipeline_depth; vec < NUM_VECTORS; vec++) {
  sds_wait(1); //rewritten from #pragma SDS wait(1)
#pragma SDS async(1)
      _p0_mmult_accel_0(tin1Buf[vec], tin2Buf[vec], toutBufHw[vec]);
    }
      
    for (vec = 0; vec < pipeline_depth; vec++) {
  sds_wait(1); //rewritten from #pragma SDS wait(1)
    }
  }
  
  TIME_STAMP_ACCEL

  return mmult_result_check(toutBufSw, toutBufHw);
}


int main(int argc, char* argv[]){

  int pipeline_depth = PIPELINE_DEPTH_DEFAULT;
  int test_passed = 0;
  float *tin1Buf[NUM_VECTORS], *tin2Buf[NUM_VECTORS], *toutBufSw[NUM_VECTORS], *toutBufHw[NUM_VECTORS];

  // use pipeline depth from command argument, if passed in
  if (argc == 2) {
    pipeline_depth = atoi(argv[1]);
    if (pipeline_depth > PIPELINE_DEPTH_MAX || pipeline_depth < PIPELINE_DEPTH_MIN) {
      printf("Please use pipeline depth from %d to %d\n", PIPELINE_DEPTH_MIN, PIPELINE_DEPTH_MAX);
      return 1;
    }
  } 
  
  printf("Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = %d\n", A_NROWS);
  printf("Pipeline depth = %d\n", pipeline_depth);
  int vec;
  for(vec = 0; vec < NUM_VECTORS; vec++) {
    tin1Buf[vec] = (float *)sds_alloc(A_NROWS * A_NCOLS * sizeof(float));
    tin2Buf[vec] = (float *)sds_alloc(A_NCOLS * B_NCOLS * sizeof(float));
    toutBufHw[vec] = (float *)sds_alloc(A_NROWS * B_NCOLS * sizeof(float));
    toutBufSw[vec] = (float *)sds_alloc(A_NROWS * B_NCOLS * sizeof(float));
    if (!tin1Buf[vec] || !tin2Buf[vec] || !toutBufHw[vec] || !toutBufSw[vec]) {
      if (tin1Buf[vec]) sds_free(tin1Buf[vec]);
      if (tin2Buf[vec]) sds_free(tin2Buf[vec]);
      if (toutBufHw[vec]) sds_free(toutBufHw[vec]);
      if (toutBufSw[vec]) sds_free(toutBufSw[vec]);
      return 2;
    }
  }

  test_passed = mmult_test(tin1Buf, tin2Buf, toutBufSw, toutBufHw, pipeline_depth);

  for(vec = 0; vec < NUM_VECTORS; vec++) {
    sds_free(tin1Buf[vec]);
    sds_free(tin2Buf[vec]);
    sds_free(toutBufHw[vec]);
    sds_free(toutBufSw[vec]);
  }
  
  
  printf("TEST %s\n", test_passed ? "PASSED" : "FAILED");
  
  return 0;
}

