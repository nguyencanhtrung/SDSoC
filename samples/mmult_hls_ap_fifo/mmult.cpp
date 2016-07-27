/*
 * SDSoC will transfer array arguments that map onto a ap_fifo interface via
 * axi-stream transport using the axis_accelerator_adapter IP block.  The
 * adapter supports "multi-buffering" of array arguments up to a depth of four.
 * Use "#pragma SDS data buffer_depth(A:2048)" to set the multibuffer depth to 2 for 
 * an array of size 1024 elements
 * 
 * SDSoC will automatically transfer up to sixteen array arguments (eight
 * input, eight output) that map to HLS ap_fifo and bram interfaces using
 * axi-streams.  If the number of input or output array arguments excceds eight,
 * you must either use aximm transport or explicitly code axis interfaces in
 * your HLS code.  
 *
 */
#include <stdio.h>
#include <stdlib.h>

#include "mmult.h"

void mmult_kernel(float A[A_NROWS][A_NCOLS],
                  float B[A_NCOLS][B_NCOLS],
                  float C[A_NROWS*B_NCOLS])
{
#pragma HLS INLINE self
#pragma HLS array_partition variable=A block factor=16 dim=2
#pragma HLS array_partition variable=B block factor=16 dim=1
     
     for (int r = 0; r < A_NROWS; r++) {
          for (int c = 0; c < B_NCOLS; c++) {
#pragma HLS PIPELINE II=1
               float result = 0;
               for (int k = 0; k < A_NCOLS; k++) {
                    // multiply accumulate broken into individual operators
                    // so that HLS will infer two FP operators
                    float term = A[r][k] * B[k][c];
                    result += term;
               }
               C[r * B_NCOLS + c] = result;
          }
     }
}

void mmult(float A[A_NROWS*A_NCOLS],
           float B[A_NCOLS*B_NCOLS],
           float C[A_NROWS*B_NCOLS]) 
{
#pragma HLS interface ap_fifo port=A
#pragma HLS interface ap_fifo port=B
#pragma HLS interface ap_fifo port=C

     int i, j;
     float a_buf[A_NROWS][A_NCOLS];
     float b_buf[A_NCOLS][B_NCOLS];
     
     // Transfer matrix A from multi-buffer into local RAM
     for(i=0; i<A_NROWS; i++) {
          for(j=0; j<A_NCOLS; j++) {
#pragma HLS PIPELINE II=1
               a_buf[i][j] = A[i * A_NCOLS + j];
          }
     }
     
     // Transfer matrix B from multi-buffer into local RAM
     for(i=0; i<A_NCOLS; i++) {
          for(j=0; j<B_NCOLS; j++) {
#pragma HLS PIPELINE II=1
               b_buf[i][j] = B[i * B_NCOLS + j];
          }
     }
     
     // Matrix multiply call
     mmult_kernel(a_buf, b_buf, C);
}

void mmult_sw(float *A, float *B, float *C)
{
     for (int r = 0; r < A_NROWS; r++) {
          for (int c = 0; c < B_NCOLS; c++) {
               float accum = 0;
               for (int k = 0; k < A_NCOLS; k++) {
                    accum += A[r*A_NCOLS+k] * B[k*B_NCOLS+ c];
               }
               C[r*B_NCOLS+c] = accum;
          }
     }
}
