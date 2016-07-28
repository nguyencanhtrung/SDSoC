#include <stdlib.h>
#include "madd.h"

void madd(float A[NROWS*NCOLS], float B[NROWS*NCOLS], float C[NROWS*NCOLS])
{
  int i, j;

  for (i = 0; i < NROWS; i++)
    for (j = 0; j < NCOLS; j++)
#pragma HLS PIPELINE II=1
      C[i*NCOLS+j] = A[i*NCOLS+j] + B[i*NCOLS+j];

}
