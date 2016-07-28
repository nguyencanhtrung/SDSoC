#include <stdlib.h>
#include "madd.h"

void madd(float A[NROWS*NCOLS], float B[NROWS*NCOLS], float C[NROWS*NCOLS])
{
/*=== APF inserted pragma (BEGIN) ===*/
#pragma HLS latency min=1
#pragma HLS INTERFACE bram port=A
#pragma HLS RESOURCE variable=A core=RAM_1P
#pragma HLS INTERFACE bram port=B
#pragma HLS RESOURCE variable=B core=RAM_1P
#pragma HLS INTERFACE bram port=C
#pragma HLS RESOURCE variable=C core=RAM_1P
/*--- APF inserted pragma (END) ---*/

  int i, j;

  for (i = 0; i < NROWS; i++)
    for (j = 0; j < NCOLS; j++)
#pragma HLS PIPELINE II=1
      C[i*NCOLS+j] = A[i*NCOLS+j] + B[i*NCOLS+j];

}
