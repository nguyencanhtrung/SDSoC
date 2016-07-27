#include "fir.h"

#include <stdlib.h>
#include <stdio.h>

void fir(signed char X[N], short Y[N])
{
     // APFCC replaces function body by CF API
     // calls for data transfer between CPU / IP

     // filter coefficient vector
     static signed char H[N] = 
          {  6,   0,  -4,  -3,   5,   6,  -6, -13,  
             7,  44,  64,  44,   7, -13,  -6,   6,   
             5,  -3,  -4,   0,   6,   0,   0,   0,   
             0,   0,  0,    0,   0,   0,   0,   0};
     // delay line
     static signed char D[N] = 
          {0,  0,  0,  0,  0,  0,  0,  0,  
           0,  0,  0,  0,  0,  0,  0,  0,  
           0,  0,  0,  0,  0,  0,  0,  0,  
           0,  0,  0,  0,  0,  0,  0,  0};
     int i, j, k;
     for (i = 0; i < N; i++) {
          Y[i] = 0;
          D[i] = X[i]; 
          for (j = 0, k = i; k >= 0; j++, k--)
               Y[i] += D[j] * H[k];
     }
}

void fir_sw(signed char X[N], short Y[N])
{
     // Conformance test function

     // filter coefficient vector
     static signed char H[N] = 
          {  6,   0,  -4,  -3,   5,   6,  -6, -13,  
             7,  44,  64,  44,   7, -13,  -6,   6,   
             5,  -3,  -4,   0,   6,   0,   0,   0,   
             0,   0,  0,    0,   0,   0,   0,   0};
     // delay line
     static signed char D[N] = 
          {0,  0,  0,  0,  0,  0,  0,  0,  
           0,  0,  0,  0,  0,  0,  0,  0,  
           0,  0,  0,  0,  0,  0,  0,  0,  
           0,  0,  0,  0,  0,  0,  0,  0};
     int i, j, k;
     for (i = 0; i < N; i++) {
          Y[i] = 0;
          D[i] = X[i]; 
          for (j = 0, k = i; k >= 0; j++, k--)
               Y[i] += D[j] * H[k];
     }
}

