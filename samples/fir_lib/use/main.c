#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "fir.h"

void get_data_array(signed char *x)
{
  int i;
  for (i = 0; i < N_DATA; i++)
    x[i] = (signed char) rand() % 256;
}

void print_short_array(short *A)
{
  int i, nrows = (int) ceil(sqrt(N_DATA));
  for (i = 0; i < N_DATA; ) {
    printf("%6d", A[i++]);
    if (!(i%nrows))
      printf("\n");
  }
  printf("\n");
}

void print_char_array(char *A)
{
  int i, nrows = (int) ceil(sqrt(N_DATA));
  for (i = 0; i < N_DATA; ) {
    printf("%6d", A[i++]);
    if (!(i%nrows))
      printf("\n");
  }
  printf("\n");
}

int compare_short_arrays(short *A, short *B)
{
  int i;
  for (i = 0; i < N_DATA; i++) {
    if (A[i] != B[i]) {
      printf ("Array[%d] values differ: %5d != %5d\n", i, A[i], B[i]);
      return -1;
    }
  }
  return 0;
}

// Conformance test function
void fir_sw(signed char X[N_DATA], short Y[N_DATA], signed char COEF[N_COEF])
{
  signed char H[N_DATA] = {0};
  int i, j, k;

  // Fill in the symetric coeficients
  for (i = 0; i < N_COEF; i++) {
    H[i] = COEF[i];
    H[(2*N_COEF)-2-i] = COEF[i];
  }

  // delay line
  static signed char D[N_DATA] =
    {0,  0,  0,  0,  0,  0,  0,  0,
     0,  0,  0,  0,  0,  0,  0,  0,
     0,  0,  0,  0,  0,  0,  0,  0,
     0,  0,  0,  0,  0,  0,  0,  0};

  for (i = 0; i < N_DATA; i++) {
    Y[i] = 0;
    D[i] = X[i];
    for (j = 0, k = i; k >= 0; j++, k--)
      Y[i] += D[j] * H[k];
  }
}

int main(int argc, char* argv[])
{
  signed char zeros[N_DATA] = { 0, 0, 0, 0, 0, 0, 0, 0,
                                0, 0, 0, 0, 0, 0, 0, 0,
                                0, 0, 0, 0, 0, 0, 0, 0,
                                0, 0, 0, 0, 0, 0, 0, 0};
  
  signed char impulse[N_DATA] = { 1, 0, 0, 0, 0, 0, 0, 0,
                                  0, 0, 0, 0, 0, 0, 0, 0,
                                  0, 0, 0, 0, 0, 0, 0, 0,
                                  0, 0, 0, 0, 0, 0, 0, 0};
  
  signed char x[N_DATA] = { 0, 0, 0, 0, 0, 0, 0, 0,
                            0, 0, 0, 0, 0, 0, 0, 0,
                            0, 0, 0, 0, 0, 0, 0, 0,
                            0, 0, 0, 0, 0, 0, 0, 0};
  
  short y[N_DATA] = { 0, 0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0, 0};
  
  short z[N_DATA] = { 0, 0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0, 0,
                      0, 0, 0, 0, 0, 0, 0, 0};
  
  signed char h1[N_DATA] = {  6,   0,  -4,  -3,
                              5,   6,  -6, -13,
                              7,  44,  64};

  signed char h2[N_DATA] = {  2,   0,  -4,  -3,
                              5,   6,  -6, -13,
                              7,  44,  64};
  
  signed char c[1] = {0};

  fir_reload(h1);
  fir_config(c);

  /* * * Impulse response * * */

  // Clear up the filter
  fir_sw(zeros, z, h1);
  fir(zeros, y);

  fir_sw(impulse, z, h1);
  fir(impulse, y);

  printf("\nFIR filter impulse response on h1:\n");
  printf("\nFIR software output\n");
  print_short_array(z);

  printf("\nFIR hardware output\n");
  print_short_array(y);

  if (compare_short_arrays(y, z)) {
    printf("\nTest failed...\n");
    return -1;
  }

  /* * * Random data * * */
  printf("\nRunning FIR filter on array:\n");
  get_data_array(x);
  print_char_array((char*)x);

  fir_sw(zeros, z, h1);
  fir_sw(x, z, h1);
  printf("\nFIR software output\n");
  print_short_array(z);

  fir(zeros, y);
  fir(x, y);
  printf("\nFIR hardware output\n");
  print_short_array(y);

  if (compare_short_arrays(y, z)) {
    printf("\nTest failed...\n");
    return -1;
  }

  /* * * Impulse response with h2 * * */

  fir_reload(h2);
  fir_config(c);

  // Clear up the filter
  fir_sw(zeros, z, h2);
  fir(zeros, y);

  fir_sw(impulse, z, h2);
  fir(impulse, y);

  printf("\nFIR filter impulse response on h2:");
  printf("\nFIR software output\n");
  print_short_array(z);

  printf("\nFIR hardware output\n");
  print_short_array(y);

  if (compare_short_arrays(y, z)) {
    printf("\nTest failed...\n");
    return -1;
  }

  printf("\nResults match!\n");

  return 0;
}
