#include <stdio.h>
#include "arraycopy.h"

#include "sds_lib.h"

void init_array_u64_range(u64 *inA, int n, int offset) {
     for (int i = 0; i < n; i++)
          inA[i] = i + offset;
}

void init_array_u64_const(u64 *inA, int n, int c) {
     for (int i = 0; i < n; i++)
          inA[i] = c;
}

int print_results(u64 A[N], u64 swOut[N], u64 hwOut[N])
{
     int i;
     printf ("%s", "     A   : ");
     for (i = 0; i < N; i++)
          printf ("%lld", A[i]);
     printf ("\n %s", "(sw) A_cpy: ");
     for (i = 0; i < N; i++) 
          printf ("%lld", swOut[i]);
     printf ("\n%s", "(hw) A_cpy: ");
     for (i = 0; i < N; i++) 
          printf ("%lld", hwOut[i]);
     printf ("\n");
     return 0;
}

int compare(u64 swOut[N], u64 hwOut[N])
{
     for (int i = 0; i < N; i++) {
          if (swOut[i] != hwOut[i]) {
               printf ("Values differ: swOut[%d] = %lld,  hwOut[%d] = %lld\n", 
                       i, swOut[i], i, hwOut[i]);
               return -1;
          }
     }
     printf("RESULTS MATCH\n\n");
     return 0;
}

int main(int argc, char* argv[])
{
     u64 toutBufSw[N];
     u64*    tinBuf = (u64*)sds_alloc(N * sizeof(u64));
     u64* toutBufHw = (u64*)sds_alloc(N * sizeof(u64));
     for (int i = 1; i < 16; i++) {
          init_array_u64_range(tinBuf, N, i);
          init_array_u64_const(toutBufHw, N, 0);
          init_array_u64_const(toutBufSw, N, 0);
          arraycopy_sw(tinBuf, toutBufSw, i);
          arraycopy(tinBuf, toutBufHw, i);
          print_results(tinBuf, toutBufSw, toutBufHw);
          compare(toutBufSw, toutBufHw);
     }
     return 0;
}
