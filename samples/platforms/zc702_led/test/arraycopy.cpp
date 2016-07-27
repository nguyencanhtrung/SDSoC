#include <stdio.h>
#include <stdlib.h>
#include "zc702_led_test.h"

#ifdef DEBUG
#include <stdio.h>
extern void print_int_array(int*);
#endif

void arraycopy(uint32 a[N], uint32 b[N])
{
#pragma HLS INTERFACE ap_memory port=a
#pragma HLS RESOURCE variable=a core=RAM_1P metadata="-bus_bundle control"
#pragma HLS INTERFACE ap_memory port=b
#pragma HLS RESOURCE variable=b core=RAM_1P metadata="-bus_bundle control"
#pragma HLS RESOURCE variable=return core=AXI4LiteS metadata="-bus_bundle control"

     uint32 tmp = 0;

     for (int i = 0; i < N; i++) {
          tmp = a[i];
          b[i] = tmp;
     }
}

void arraycopy_sw(uint32 a[N], uint32 b[N])
{
#ifdef DEBUG
     printf("Entering arraycopy_sw:\n");
     printf("a:\n");
     print_int_array((int*)a);
#endif

     uint32 tmp = 0;

     for (int i = 0; i < N; i++) {
          tmp = a[i];
          b[i] = tmp;
     }

#ifdef DEBUG
     printf("Exiting arraysum_sw:\n");
#endif
}

