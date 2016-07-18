#ifndef _MADD_H_                                                           
#define _MADD_H_ 

#define NCOLS 32
#define NROWS 32

#pragma SDS data access_pattern(A:SEQUENTIAL, B:SEQUENTIAL, C:SEQUENTIAL)
void madd(float A[NROWS*NCOLS], float B[NROWS*NCOLS], float C[NROWS*NCOLS]);

#endif
