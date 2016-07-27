#include "mmult_accel.h"

void mmult_call (float in_A[A_NROWS*A_NCOLS],
                 float in_B[A_NCOLS*B_NCOLS],
                 float out_C[A_NROWS*B_NCOLS])
{
  mmult_accel(in_A, in_B, out_C);
}
