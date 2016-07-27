#ifndef ARRAYCOPY_H_
#define ARRAYCOPY_H_

#define N 64
typedef unsigned long long u64;

#pragma SDS data data_mover(A:AXIDMA_SIMPLE, B:AXIDMA_SIMPLE)
#pragma SDS data copy(A[0:M])
#pragma SDS data copy(B[0:M])
void arraycopy(u64 A[N], u64 B[N], int M);
void arraycopy_sw(u64 A[N], u64 B[N], int M);

#endif /* ARRAYCOPY_H_ */

