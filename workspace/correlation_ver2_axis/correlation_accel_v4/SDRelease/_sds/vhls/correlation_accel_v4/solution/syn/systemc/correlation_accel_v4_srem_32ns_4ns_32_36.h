// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __correlation_accel_v4_srem_32ns_4ns_32_36__HH__
#define __correlation_accel_v4_srem_32ns_4ns_32_36__HH__
#include "ACMP_srem.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(correlation_accel_v4_srem_32ns_4ns_32_36) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_srem<ID, 36, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_srem_U;

    SC_CTOR(correlation_accel_v4_srem_32ns_4ns_32_36):  ACMP_srem_U ("ACMP_srem_U") {
        ACMP_srem_U.clk(clk);
        ACMP_srem_U.reset(reset);
        ACMP_srem_U.ce(ce);
        ACMP_srem_U.din0(din0);
        ACMP_srem_U.din1(din1);
        ACMP_srem_U.dout(dout);

    }

};

#endif //