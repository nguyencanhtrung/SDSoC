#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include "arraycopy.h"

#ifdef __SDSCC__
#include "sds_lib.h"
#else 
#define sds_alloc(x)(malloc(x))
#define sds_free(x)(free(x))
#endif

int print_results(data_t A[A_LENGTH], data_t swOut[A_LENGTH], data_t hwOut[A_LENGTH])
{
     int i;
     std::cout << "     A   : ";
     for (i = 0; i < A_LENGTH; i++)
          std::cout << A[i];
     std::cout << std::endl << "(sw) A_cpy: ";
     for (i = 0; i < A_LENGTH; i++) 
          std::cout << swOut[i];
     std::cout << std::endl << "(hw) A_cpy: ";
     for (i = 0; i < A_LENGTH; i++) 
          std::cout << hwOut[i];
     std::cout << std::endl;
     return 0;
}

int compare(data_t swOut[A_LENGTH], data_t hwOut[A_LENGTH])
{
     for (int i = 0; i < A_LENGTH; i++) {
          if (swOut[i] != hwOut[i]) {
               std::cout << "Values differ: swOut[" << i 
                         << swOut[i] << "],  hwOut[" << i 
                         << "] = " << hwOut[i] << std::endl;
               return -1;
          }
     }
     std::cout << "RESULTS MATCH" << std::endl << std::endl;
     return 0;
}

int main(int argc, char* argv[])
{
     data_t  Bs[A_LENGTH];
     data_t *A = (data_t*)sds_alloc(A_LENGTH * sizeof(data_t));
     data_t *B = (data_t*)sds_alloc(A_LENGTH * sizeof(data_t));
     for (int i = 1; i < 16; i++) {
          for (int j = 1; j < A_LENGTH; j++) {
               A[j]  = i;
               B[j] = 0;
               Bs[j] = 0;
          }
          arraycopy_sw(A, Bs);
          arraycopy(A, B);
          print_results(A, Bs, B);
          compare(Bs, B);
     }
     
     return 0;
}
