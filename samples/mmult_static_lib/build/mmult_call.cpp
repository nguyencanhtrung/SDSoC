#include "mmult_accel.h"
#include "stdlib.h"

int main()
{
  float *in_A = (float *)malloc(A_NROWS * A_NCOLS * sizeof(float));
  float *in_B = (float *)malloc(A_NCOLS * B_NCOLS * sizeof(float));
  float *out_C = (float *)malloc(A_NROWS * B_NCOLS * sizeof(float));

  mmult_accel(in_A, in_B, out_C);

  free(in_A);
  free(in_B);
  free(out_C);

  return 0;
}
