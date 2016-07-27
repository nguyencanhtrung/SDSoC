#ifndef MMULT_ACC_H_
#define MMULT_ACC_H_

#define A_NROWS 32
#define A_NCOLS 32
#define B_NROWS A_NCOLS
#define B_NCOLS 32
#define N A_NROWS * B_NCOLS

void mmult (float A[A_NROWS*A_NCOLS], 
            float B[A_NCOLS*B_NCOLS], 
            float C[A_NROWS*B_NCOLS]);
void mmult_sw(float *A, float *B, float *C);

#endif /* MMULT_ACC_H_ */

