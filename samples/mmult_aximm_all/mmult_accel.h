#ifndef MMULT_ACC_H_
#define MMULT_ACC_H_

#define A_NROWS 32
#define A_NCOLS 32
#define B_NROWS A_NCOLS
#define B_NCOLS 32

int mmult_accel (float in_A[A_NROWS*A_NCOLS], float in_B[B_NROWS*B_NCOLS], float out_C[A_NROWS*B_NCOLS]);

#endif /* MMULT_ACC_H_ */

