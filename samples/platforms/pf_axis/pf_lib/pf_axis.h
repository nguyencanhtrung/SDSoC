#ifndef PF_AXIS_
#define PF_AXIS_

#define N  128

typedef unsigned long long u64;   // 64-bits w/arm-gcc

void pf_write(u64 wbuf[N]);
void pf_read(u64 rbuf[N]);

#endif
