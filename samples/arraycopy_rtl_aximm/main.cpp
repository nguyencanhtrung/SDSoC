#include <stdio.h>
#include "arraycopy.h"

#include "sds_lib.h"

void init_array_int_range(int *inA, int N, int offset) {
     for (int i = 0; i < N; i++)
          inA[i] = i + offset;
}

void init_array_int_const(int *inA, int N, int c) {
     for (int i = 0; i < N; i++)
          inA[i] = c;
}

int print_results(int A[A_LENGTH], int swOut[A_LENGTH], int maxs, int hwOut[A_LENGTH], int max)
{
     int i;
     printf ("%s", "     A   : ");
     for (i = 0; i < A_LENGTH; i++)
          printf ("%d", A[i]);
     printf ("\n(%d) %s", maxs, "(sw) A_cpy: ");
     for (i = 0; i < A_LENGTH; i++) 
          printf ("%d", swOut[i]);
     printf ("\n(%d) %s", max, "(hw) A_cpy: ");
     for (i = 0; i < A_LENGTH; i++) 
          printf ("%d", hwOut[i]);
     printf ("\n");
     return 0;
}

int compare(int swOut[A_LENGTH], int hwOut[A_LENGTH], int maxs, int max)
{
     if (maxs != max) {
          printf ("Values differ: maxs = %d,  max = %d\n", maxs, max);
          return -1;
     }
     for (int i = 0; i < A_LENGTH; i++) {
          if (swOut[i] != hwOut[i]) {
               printf ("Values differ: swOut[%d] = %d,  hwOut[%d] = %d\n", i, swOut[i], i, hwOut[i]);
               return -1;
          }
     }
     printf("RESULTS MATCH\n\n");
     return 0;
}

int main(int argc, char* argv[])
{
     int toutBufSw[A_LENGTH];
     int*    tinBuf = (int*)sds_alloc(A_LENGTH * sizeof(int));
     int* toutBufHw = (int*)sds_alloc(A_LENGTH * sizeof(int));
     for (int i = 1; i < 16; i++) {
          int max, maxs;
          init_array_int_range(tinBuf, A_LENGTH, i);
          init_array_int_const(toutBufHw, A_LENGTH, 0);
          init_array_int_const(toutBufSw, A_LENGTH, 0);
          maxs = arraycopy_sw(tinBuf, toutBufSw, i);
          max  = arraycopy(tinBuf, toutBufHw, i);
          print_results(tinBuf, toutBufSw, maxs, toutBufHw, max);
          compare(toutBufSw, toutBufHw, maxs, max);
     }
     return 0;
}
