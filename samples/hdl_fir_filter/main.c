#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "fir.h"

void get_data_array(signed char *x)
{
  int i;
  for (i = 0; i < N; i++)
    x[i] = (signed char) rand() % 256;
}

void print_short_array(short *A)
{
  int i, nrows = (int) ceil(sqrt(N));
  for (i = 0; i < N; ) {
    printf("%6d", A[i++]);
    if (!(i%nrows))
      printf("\n");
  }
  printf("\n");
}

void print_char_array(char *A)
{
  int i, nrows = (int) ceil(sqrt(N));
  for (i = 0; i < N; ) {
    printf("%6d", A[i++]);
    if (!(i%nrows))
      printf("\n");
  }
  printf("\n");
}

int compare_short_arrays(short *A, short *B)
{
  int i;
  for (i = 0; i < N; i++) {
    if (A[i] != B[i]) {
      printf ("Array[%d] values differ: %5d != %5d\n", i, A[i], B[i]);
      return -1;
    }
  }
  return 0;
}

int main(int argc, char* argv[]) 
{
  signed char x[N] = { 1, 0, 0, 0, 0, 0, 0, 0, 
                       0, 0, 0, 0, 0, 0, 0, 0, 
                       0, 0, 0, 0, 0, 0, 0, 0, 
                       0, 0, 0, 0, 0, 0, 0, 0}; 

  short y[N] = { 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0, 0, 0, 0, 0, 0};

  short z[N] = { 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0, 0, 0, 0, 0, 0,
                 0, 0, 0, 0, 0, 0, 0, 0};

  fir_sw(x, z);
  fir(x, y);
  if (compare_short_arrays(y, z)) {
    printf("\nTest failed...\n");
    return -1;
  }
  printf("FIR filter impulse response:\n");
  print_short_array(y);

  printf("\nRunning FIR filter on array:\n");
  get_data_array(x);
  print_char_array((char*)x);

  fir_sw(x, z);
  printf("\nFIR software output\n");
  print_short_array(z);

  fir(x, y);
  printf("\nFIR hardware output\n");
  print_short_array(y);

  if (compare_short_arrays(y, z)) {
    printf("\nTest failed...\n");
    return -1;
  }
  printf("\nResults match!\n");
  return 0;
}
