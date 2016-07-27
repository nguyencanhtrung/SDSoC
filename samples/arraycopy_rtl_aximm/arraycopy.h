#ifndef ARRAYCOPY_H_
#define ARRAYCOPY_H_

#define A_LENGTH 16

#pragma SDS data copy(a[0:n], b[0:n])
int arraycopy(int a[A_LENGTH], int b[A_LENGTH], int n);
int arraycopy_sw(int a[A_LENGTH], int b[A_LENGTH], int n);
#endif /* ARRAYCOPY_H_ */

