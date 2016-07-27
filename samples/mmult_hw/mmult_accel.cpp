#include <stdio.h>
#include <stdlib.h>

#include "mmult_accel.h"

void mmult_accel (float in_A[A_NROWS*A_NCOLS],
                  float in_B[A_NCOLS*B_NCOLS],
                  float out_C[A_NROWS*B_NCOLS])
{
  for (int row = 0; row < A_NROWS; row++) {
    for (int col = 0; col < B_NCOLS; col++) {
      float result = 0.0;
      for (int k = 0; k < A_NCOLS; k++) {
        result += in_A[row*A_NCOLS+k] * in_B[k*B_NCOLS+col];
      }
      out_C[row*A_NCOLS+col] = result;
    }
  }
}
