/*
 * This example demonstrates the recommended use of SDSoC when HLS native axi-stream transport
 * is required.  You are recommended to use ap_fifo and bram interfaces in HLS with standard 
 * C array types which possible; SDSoC will autmoatically convert these interface types into 
 * axis transport interfaces
 *
 * SDSoC datamovers require axi_dma compatible signaling, packetized with TLAST denoting end of
 * packet.  TLAST must be explicitly coded within the top level function, which is incompatible
 * with standard software usage of the function (calling code does not "generate" the transport
 * side band signals)
 * 
 * This example demonstrates how to use compiler preprocessor directives (#if) to hide all
 * axis transport from any calling code, but still have SDSoC pass the explicit axis transport code
 * to HLS where it will be synthesized into the hardware interface.
 *
 * By using this mechanism, SDSoC will automatically generate the correct stub functions using
 * cf_send/cf_recv APIs to communicate with the HLS function.  From a sofware perspective, any
 * caller will pass arrays of the scalar type, which will be packed into axis TDATA portion of the
 * interface
 * 
 * All explicit axis code must be guarded by "#ifdef __SDSVHLS__ ... #endif".  Note that the
 * equivalent non-axis code can be cross compiled for ARM or x86 using gcc.
 *
 * NOTE: the use the #ifdef __SDSVHLS__ mechanism is convenient, but optional.  You are free to use
 *       HLS to generate a Vivado IP and then import into SDSoC as a C callable 
 *       library as documented in the Introduction to the SDSoC C/C++ Compiler (UG1027)
 */
#include <stdio.h>
#include <stdlib.h>

#include "pf_test.h"

#ifdef __SDSVHLS__
void arraycopy(ap_axiu<64,1,1,1> in_buf[N], ap_axiu<64,1,1,1> out_buf[N]) 
{
#pragma HLS interface axis port=in_buf
#pragma HLS interface axis port=out_buf
#pragma HLS interface ap_ctrl_none port=return
     
     volatile ap_axiu<64,1,1,1> tmp;

     for(int i = 0; i < N; i++) {
               
#pragma HLS PIPELINE II=1
          tmp.data = in_buf[i].data;
          tmp.strb = in_buf[i].strb;
          tmp.keep = in_buf[i].keep;
          tmp.user = in_buf[i].user;
          tmp.last = in_buf[i].last;
          tmp.id   = in_buf[i].id;
          tmp.dest = in_buf[i].dest;

          out_buf[i].data = tmp.data;
          out_buf[i].strb = tmp.strb;
          out_buf[i].keep = tmp.keep;
          out_buf[i].user = tmp.user;
          out_buf[i].last = tmp.last;
          out_buf[i].id   = tmp.id;
          out_buf[i].dest = tmp.dest;
    }
}

#else
void arraycopy(u64 in_buf[N], u64 out_buf[N]) 
{
    for(int i = 0; i < N; i++) {
               
          out_buf[i] = in_buf[i];
     }
}
#endif

