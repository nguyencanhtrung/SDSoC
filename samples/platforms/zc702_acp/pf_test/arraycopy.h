#ifndef ARRAYCOPY_H_
#define ARRAYCOPY_H_

#define A_LENGTH 16

typedef short data_t;

#pragma SDS data sys_port(a:ACP, b:ACP)
#pragma SDS data copy(a[0:A_LENGTH], b[0:A_LENGTH])
int arraycopy(data_t a[A_LENGTH], data_t b[A_LENGTH]);
int arraycopy_sw(data_t a[A_LENGTH], data_t b[A_LENGTH]);
#endif /* ARRAYCOPY_H_ */

