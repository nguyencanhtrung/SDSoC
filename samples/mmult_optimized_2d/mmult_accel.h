#ifndef MMULT_ACC_H_
#define MMULT_ACC_H_

#define A_NROWS 32
#define A_NCOLS 32
#define B_NROWS A_NCOLS
#define B_NCOLS 32

#pragma SDS data data_mover(in_A:AXIDMA_2D, in_B:AXIDMA_2D, out_C:AXIDMA_2D)
#pragma SDS data dim(in_A[A_NROWS][A_NCOLS], in_B[B_NROWS][B_NCOLS], out_C[A_NROWS][B_NCOLS])
#pragma SDS data copy(in_A[0:A_NROWS][0:A_NCOLS], in_B[0:B_NROWS][0:B_NCOLS], out_C[0:A_NROWS][0:B_NCOLS])
void mmult_accel (float in_A[A_NROWS*A_NCOLS],
                  float in_B[B_NROWS*B_NCOLS],
                  float out_C[A_NROWS*B_NCOLS]);

#endif /* MMULT_ACC_H_ */

