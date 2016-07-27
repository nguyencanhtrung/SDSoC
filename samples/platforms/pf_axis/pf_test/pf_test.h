#ifndef PF_TEST_H_
#define PF_TEST_H_

#include "pf_axis.h"

#ifdef __SDSVHLS__

#include "ap_int.h"
template<int D,int U,int TI,int TD>
struct ap_axiu{
     ap_uint<D>   data;
     ap_uint<D/8> strb;
     ap_uint<D/8> keep;
     ap_uint<U>   user;
     ap_uint<1>   last;
     ap_uint<TI>  id;   
     ap_uint<TD>  dest; 
};

void arraycopy(ap_axiu<64,1,1,1> in_buf[N], ap_axiu<64,1,1,1> out_buf[N]);
#else
void arraycopy(u64 in_buf[N], u64 out_buf[N]);
#endif

#endif /* PF_TEST_H_ */

