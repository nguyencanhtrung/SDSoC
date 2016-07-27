#ifndef MMULT_ACC_H_
#define MMULT_ACC_H_

#define A_NROWS 32
#define A_NCOLS 32
#define B_NROWS A_NCOLS
#define B_NCOLS 32
#define N A_NROWS * B_NCOLS

int mmult(float A[A_NROWS*A_NCOLS], float B[B_NROWS*B_NCOLS], float C[A_NROWS*B_NCOLS]);
int mmult_sw(float A[A_NROWS*A_NCOLS], float B[B_NROWS*B_NCOLS], float C[A_NROWS*B_NCOLS]);
#endif /* MMULT_ACC_H_ */
