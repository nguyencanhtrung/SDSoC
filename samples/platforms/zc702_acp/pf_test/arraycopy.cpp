#include <stdio.h>
#include <stdlib.h>

#include "arraycopy.h"

int arraycopy(data_t *a, data_t *b)
{
#pragma HLS interface m_axi port=a depth=16 offset=slave
#pragma HLS interface m_axi port=b depth=16 offset=slave
#pragma HLS interface s_axilite port=return
     int tmp;
     for(int i = 0; i < A_LENGTH; i++) {
          tmp = a[i];
          b[i] = tmp;
     }
     return 0;
}

int arraycopy_sw(data_t *a, data_t *b)
{
     for(int i = 0; i < A_LENGTH; i++) {
          b[i] = a[i];
     }
     return 0;
}
