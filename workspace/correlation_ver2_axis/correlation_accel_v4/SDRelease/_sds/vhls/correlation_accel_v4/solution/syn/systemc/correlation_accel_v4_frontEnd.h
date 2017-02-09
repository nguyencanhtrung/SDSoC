// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _correlation_accel_v4_frontEnd_HH_
#define _correlation_accel_v4_frontEnd_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "correlation_accel_v4_fadd_32ns_32ns_32_5_full_dsp.h"
#include "correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp.h"
#include "correlation_accel_v4_fdiv_32ns_32ns_32_16.h"
#include "correlation_accel_v4_flog_32ns_32ns_32_13_full_dsp.h"
#include "correlation_accel_v4_frontEnd_weight_rom.h"
#include "correlation_accel_v4_frontEnd_lnReturnA.h"

namespace ap_rtl {

struct correlation_accel_v4_frontEnd : public sc_module {
    // Port declarations 78
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > NUMBER_OF_DAYS;
    sc_in< sc_lv<32> > NUMBER_OF_INDICES;
    sc_in< sc_lv<32> > in_indices_TDATA;
    sc_in< sc_logic > in_indices_TVALID;
    sc_out< sc_logic > in_indices_TREADY;
    sc_in< sc_lv<4> > in_indices_TKEEP;
    sc_in< sc_lv<4> > in_indices_TSTRB;
    sc_in< sc_lv<1> > in_indices_TUSER;
    sc_in< sc_lv<1> > in_indices_TLAST;
    sc_in< sc_lv<1> > in_indices_TID;
    sc_in< sc_lv<1> > in_indices_TDEST;
    sc_out< sc_lv<32> > ln_returnA_out_c1_V_din;
    sc_in< sc_logic > ln_returnA_out_c1_V_full_n;
    sc_out< sc_logic > ln_returnA_out_c1_V_write;
    sc_out< sc_lv<32> > weight_returnSquareA_out_c1_V_din;
    sc_in< sc_logic > weight_returnSquareA_out_c1_V_full_n;
    sc_out< sc_logic > weight_returnSquareA_out_c1_V_write;
    sc_out< sc_lv<32> > weight_returnA_out_c1_V_din;
    sc_in< sc_logic > weight_returnA_out_c1_V_full_n;
    sc_out< sc_logic > weight_returnA_out_c1_V_write;
    sc_out< sc_lv<32> > ln_returnA_out_c2_V_din;
    sc_in< sc_logic > ln_returnA_out_c2_V_full_n;
    sc_out< sc_logic > ln_returnA_out_c2_V_write;
    sc_out< sc_lv<32> > weight_returnSquareA_out_c2_V_din;
    sc_in< sc_logic > weight_returnSquareA_out_c2_V_full_n;
    sc_out< sc_logic > weight_returnSquareA_out_c2_V_write;
    sc_out< sc_lv<32> > weight_returnA_out_c2_V_din;
    sc_in< sc_logic > weight_returnA_out_c2_V_full_n;
    sc_out< sc_logic > weight_returnA_out_c2_V_write;
    sc_out< sc_lv<32> > sum_weight_out_c1_V_din;
    sc_in< sc_logic > sum_weight_out_c1_V_full_n;
    sc_out< sc_logic > sum_weight_out_c1_V_write;
    sc_out< sc_lv<32> > ln_returnB_out_c1_V_din;
    sc_in< sc_logic > ln_returnB_out_c1_V_full_n;
    sc_out< sc_logic > ln_returnB_out_c1_V_write;
    sc_out< sc_lv<32> > weight_returnSquareB_out_c1_V_din;
    sc_in< sc_logic > weight_returnSquareB_out_c1_V_full_n;
    sc_out< sc_logic > weight_returnSquareB_out_c1_V_write;
    sc_out< sc_lv<32> > weight_returnB_out_c1_V_din;
    sc_in< sc_logic > weight_returnB_out_c1_V_full_n;
    sc_out< sc_logic > weight_returnB_out_c1_V_write;
    sc_out< sc_lv<32> > weight_returnA_returnB_out_c1_s_din;
    sc_in< sc_logic > weight_returnA_returnB_out_c1_s_full_n;
    sc_out< sc_logic > weight_returnA_returnB_out_c1_s_write;
    sc_out< sc_lv<32> > sum_weight_out_c2_V_din;
    sc_in< sc_logic > sum_weight_out_c2_V_full_n;
    sc_out< sc_logic > sum_weight_out_c2_V_write;
    sc_out< sc_lv<32> > ln_returnB_out_c2_V_din;
    sc_in< sc_logic > ln_returnB_out_c2_V_full_n;
    sc_out< sc_logic > ln_returnB_out_c2_V_write;
    sc_out< sc_lv<32> > weight_returnSquareB_out_c2_V_din;
    sc_in< sc_logic > weight_returnSquareB_out_c2_V_full_n;
    sc_out< sc_logic > weight_returnSquareB_out_c2_V_write;
    sc_out< sc_lv<32> > weight_returnB_out_c2_V_din;
    sc_in< sc_logic > weight_returnB_out_c2_V_full_n;
    sc_out< sc_logic > weight_returnB_out_c2_V_write;
    sc_out< sc_lv<32> > weight_returnA_returnB_out_c2_s_din;
    sc_in< sc_logic > weight_returnA_returnB_out_c2_s_full_n;
    sc_out< sc_logic > weight_returnA_returnB_out_c2_s_write;
    sc_out< sc_lv<32> > NUMBER_OF_DAYS_out_din;
    sc_in< sc_logic > NUMBER_OF_DAYS_out_full_n;
    sc_out< sc_logic > NUMBER_OF_DAYS_out_write;
    sc_out< sc_lv<32> > NUMBER_OF_DAYS_out1_din;
    sc_in< sc_logic > NUMBER_OF_DAYS_out1_full_n;
    sc_out< sc_logic > NUMBER_OF_DAYS_out1_write;
    sc_out< sc_lv<32> > NUMBER_OF_INDICES_out_din;
    sc_in< sc_logic > NUMBER_OF_INDICES_out_full_n;
    sc_out< sc_logic > NUMBER_OF_INDICES_out_write;
    sc_out< sc_lv<32> > NUMBER_OF_INDICES_out2_din;
    sc_in< sc_logic > NUMBER_OF_INDICES_out2_full_n;
    sc_out< sc_logic > NUMBER_OF_INDICES_out2_write;


    // Module declarations
    correlation_accel_v4_frontEnd(sc_module_name name);
    SC_HAS_PROCESS(correlation_accel_v4_frontEnd);

    ~correlation_accel_v4_frontEnd();

    sc_trace_file* mVcdFile;

    correlation_accel_v4_frontEnd_weight_rom* weight_rom_U;
    correlation_accel_v4_frontEnd_lnReturnA* lnReturnA_U;
    correlation_accel_v4_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* correlation_accel_v4_fadd_32ns_32ns_32_5_full_dsp_U1;
    correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp_U2;
    correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp_U3;
    correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp_U4;
    correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp_U5;
    correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp_U6;
    correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp_U7;
    correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp_U8;
    correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* correlation_accel_v4_fmul_32ns_32ns_32_4_max_dsp_U9;
    correlation_accel_v4_fdiv_32ns_32ns_32_16<1,16,32,32,32>* correlation_accel_v4_fdiv_32ns_32ns_32_16_U10;
    correlation_accel_v4_flog_32ns_32ns_32_13_full_dsp<1,13,32,32,32>* correlation_accel_v4_flog_32ns_32ns_32_13_full_dsp_U11;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<20> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_39;
    sc_signal< sc_lv<8> > weight_rom_address0;
    sc_signal< sc_logic > weight_rom_ce0;
    sc_signal< sc_logic > weight_rom_we0;
    sc_signal< sc_lv<32> > weight_rom_d0;
    sc_signal< sc_lv<32> > weight_rom_q0;
    sc_signal< sc_lv<8> > weight_rom_address1;
    sc_signal< sc_logic > weight_rom_ce1;
    sc_signal< sc_logic > weight_rom_we1;
    sc_signal< sc_lv<32> > weight_rom_d1;
    sc_signal< sc_lv<32> > weight_rom_q1;
    sc_signal< sc_lv<8> > lnReturnA_address0;
    sc_signal< sc_logic > lnReturnA_ce0;
    sc_signal< sc_logic > lnReturnA_we0;
    sc_signal< sc_lv<32> > lnReturnA_d0;
    sc_signal< sc_lv<32> > lnReturnA_q0;
    sc_signal< sc_lv<32> > tmp_3_i_reg_537;
    sc_signal< sc_lv<32> > i_i_reg_546;
    sc_signal< sc_lv<32> > shift_reg_load_i_reg_569;
    sc_signal< sc_lv<32> > i1_i_reg_578;
    sc_signal< sc_lv<32> > grp_fu_594_p2;
    sc_signal< sc_lv<32> > reg_670;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_bdd_177;
    sc_signal< sc_lv<1> > tmp_18_i_fu_827_p2;
    sc_signal< bool > ap_sig_bdd_186;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it6;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it7;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it8;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it9;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it10;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it11;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it12;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it13;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it14;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it15;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it16;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it17;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it18;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it19;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it20;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it21;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it22;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it23;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it24;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it25;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it26;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it27;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it28;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it29;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it30;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it31;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it32;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it33;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it34;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it35;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it36;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it37;
    sc_signal< sc_lv<1> > tmp_42_reg_1009;
    sc_signal< bool > ap_sig_bdd_314;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it38;
    sc_signal< sc_lv<1> > tmp_18_i_reg_1018;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it32;
    sc_signal< sc_lv<32> > reg_677;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_bdd_333;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_bdd_340;
    sc_signal< sc_lv<32> > reg_684;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it2;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it3;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it4;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it5;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it6;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it7;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it8;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it9;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it10;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it11;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it12;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it13;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it14;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it15;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it16;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it17;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it18;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it19;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it20;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it21;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it22;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it23;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it24;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it25;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it26;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it27;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it28;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it29;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it30;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it31;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it32;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_684_pp1_it33;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp1_stg0_fsm_18;
    sc_signal< bool > ap_sig_bdd_387;
    sc_signal< sc_lv<32> > grp_fu_628_p2;
    sc_signal< sc_lv<32> > reg_695;
    sc_signal< sc_lv<1> > tmp_4_i_fu_757_p2;
    sc_signal< bool > ap_sig_bdd_397;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it7;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it8;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it9;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it10;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it11;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it12;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it13;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it14;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it15;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it16;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it17;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it18;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it19;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it20;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it21;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it22;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it23;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it24;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it25;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it26;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it27;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it28;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it29;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it30;
    sc_signal< sc_lv<1> > tmp_4_i_reg_973;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it15;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it15;
    sc_signal< sc_lv<32> > grp_fu_632_p2;
    sc_signal< sc_lv<32> > reg_700;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it28;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_700_pp1_it30;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_700_pp1_it31;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_700_pp1_it32;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_700_pp1_it33;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_700_pp1_it34;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_700_pp1_it35;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_700_pp1_it36;
    sc_signal< sc_lv<32> > ap_reg_ppstg_reg_700_pp1_it37;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it28;
    sc_signal< bool > ap_sig_bdd_526;
    sc_signal< sc_lv<8> > i_fu_722_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_bdd_538;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_bdd_547;
    sc_signal< sc_lv<1> > tmp_85_i_i_fu_732_p2;
    sc_signal< sc_lv<31> > i_3_fu_742_p2;
    sc_signal< sc_lv<31> > i_3_reg_946;
    sc_signal< sc_lv<32> > grp_fu_590_p2;
    sc_signal< sc_lv<32> > tmp_88_i_i_reg_957;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_bdd_562;
    sc_signal< sc_lv<32> > tmp_i_fu_748_p1;
    sc_signal< sc_lv<32> > tmp_1_i_fu_752_p2;
    sc_signal< sc_lv<32> > tmp_1_i_reg_967;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_15;
    sc_signal< bool > ap_sig_bdd_573;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it10;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it11;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it12;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it13;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it14;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it16;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it17;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it18;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it19;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it20;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it21;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it22;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it23;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it24;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it25;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it26;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it27;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_4_i_reg_973_pp0_it29;
    sc_signal< sc_lv<31> > tmp_fu_762_p1;
    sc_signal< sc_lv<31> > tmp_reg_977;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it1;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it2;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it3;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it4;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it5;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it6;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it7;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it8;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it9;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it10;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it11;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it12;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it13;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it14;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it15;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it16;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it17;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it18;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it19;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it20;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it21;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it22;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it23;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it24;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it25;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it26;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it27;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it28;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_reg_977_pp0_it29;
    sc_signal< sc_lv<32> > tmp_3_i_tmp_2_i_fu_772_p3;
    sc_signal< sc_lv<32> > tmp_3_i_tmp_2_i_reg_982;
    sc_signal< sc_lv<32> > tmp_14_i_fu_780_p1;
    sc_signal< sc_lv<32> > tmp_14_i_reg_988;
    sc_signal< sc_lv<32> > i_4_fu_784_p2;
    sc_signal< sc_lv<1> > tmp_6_i_fu_814_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st48_fsm_17;
    sc_signal< bool > ap_sig_bdd_685;
    sc_signal< bool > ap_sig_bdd_690;
    sc_signal< sc_lv<1> > tmp_42_fu_819_p1;
    sc_signal< sc_lv<32> > tmp_10_i_fu_823_p1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it10;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it11;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it12;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it13;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it14;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it16;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it17;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it18;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it19;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it20;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it21;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it22;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it23;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it24;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it25;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it26;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it27;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it29;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it30;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it31;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it33;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it34;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it35;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_18_i_reg_1018_pp1_it36;
    sc_signal< sc_lv<31> > tmp_43_fu_835_p1;
    sc_signal< sc_lv<31> > tmp_43_reg_1022;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it1;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it2;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it3;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it4;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it5;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it6;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it7;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it8;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it9;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it10;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it11;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it12;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it13;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it14;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it15;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it16;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it17;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it18;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it19;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it20;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it21;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it22;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it23;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it24;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it25;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it26;
    sc_signal< sc_lv<31> > ap_reg_ppstg_tmp_43_reg_1022_pp1_it27;
    sc_signal< sc_lv<32> > shift_reg_load_i_shift_reg_lo_fu_845_p3;
    sc_signal< sc_lv<32> > shift_reg_load_i_shift_reg_lo_reg_1027;
    sc_signal< sc_lv<32> > tmp_26_i_fu_853_p1;
    sc_signal< sc_lv<32> > tmp_26_i_reg_1033;
    sc_signal< sc_lv<32> > i_5_fu_862_p2;
    sc_signal< sc_lv<32> > lnReturnA_temp_reg_1053;
    sc_signal< sc_lv<32> > ap_reg_ppstg_lnReturnA_temp_reg_1053_pp1_it30;
    sc_signal< sc_lv<32> > ap_reg_ppstg_lnReturnA_temp_reg_1053_pp1_it31;
    sc_signal< sc_lv<32> > ap_reg_ppstg_lnReturnA_temp_reg_1053_pp1_it32;
    sc_signal< sc_lv<32> > ap_reg_ppstg_lnReturnA_temp_reg_1053_pp1_it33;
    sc_signal< sc_lv<32> > ap_reg_ppstg_lnReturnA_temp_reg_1053_pp1_it34;
    sc_signal< sc_lv<32> > ap_reg_ppstg_lnReturnA_temp_reg_1053_pp1_it35;
    sc_signal< sc_lv<32> > ap_reg_ppstg_lnReturnA_temp_reg_1053_pp1_it36;
    sc_signal< sc_lv<32> > ap_reg_ppstg_lnReturnA_temp_reg_1053_pp1_it37;
    sc_signal< sc_lv<32> > grp_fu_600_p2;
    sc_signal< sc_lv<32> > tmp_32_i_reg_1063;
    sc_signal< sc_lv<32> > grp_fu_604_p2;
    sc_signal< sc_lv<32> > tmp_33_i_reg_1068;
    sc_signal< sc_lv<32> > grp_fu_608_p2;
    sc_signal< sc_lv<32> > weight_returnA_temp_reg_1073;
    sc_signal< sc_lv<32> > grp_fu_612_p2;
    sc_signal< sc_lv<32> > weight_returnSquareA_temp_reg_1079;
    sc_signal< sc_lv<32> > grp_fu_616_p2;
    sc_signal< sc_lv<32> > weight_returnB_temp_reg_1085;
    sc_signal< sc_lv<32> > grp_fu_620_p2;
    sc_signal< sc_lv<32> > weight_returnSquareB_temp_reg_1091;
    sc_signal< sc_lv<32> > grp_fu_624_p2;
    sc_signal< sc_lv<32> > weight_returnA_returnB_temp_reg_1097;
    sc_signal< sc_lv<31> > column_index_fu_883_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st88_fsm_19;
    sc_signal< bool > ap_sig_bdd_851;
    sc_signal< sc_lv<32> > tmp_i_i_reg_502;
    sc_signal< sc_lv<8> > i_i_i_reg_514;
    sc_signal< sc_lv<31> > i1_i_i_reg_526;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_bdd_872;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_880;
    sc_signal< sc_lv<1> > exitcond_i_i_fu_711_p2;
    sc_signal< sc_lv<32> > tmp_3_i_phi_fu_540_p4;
    sc_signal< sc_lv<31> > column_index_i_reg_557;
    sc_signal< sc_logic > ap_sig_cseq_ST_st47_fsm_16;
    sc_signal< bool > ap_sig_bdd_901;
    sc_signal< sc_lv<32> > shift_reg_load_i_phi_fu_572_p4;
    sc_signal< sc_lv<64> > tmp_86_i_i_fu_717_p1;
    sc_signal< sc_lv<64> > tmp_87_i_i_fu_737_p1;
    sc_signal< sc_lv<64> > tmp_17_i_fu_800_p1;
    sc_signal< sc_lv<64> > tmp_28_i_fu_857_p1;
    sc_signal< sc_lv<64> > tmp_30_i_fu_878_p1;
    sc_signal< sc_lv<32> > tmp_2_i_fu_240;
    sc_signal< sc_lv<32> > shift_reg_load1_i_fu_244;
    sc_signal< sc_lv<32> > grp_fu_590_p0;
    sc_signal< sc_lv<32> > grp_fu_590_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_bdd_1003;
    sc_signal< sc_lv<32> > grp_fu_594_p0;
    sc_signal< sc_lv<32> > grp_fu_594_p1;
    sc_signal< sc_lv<32> > grp_fu_600_p0;
    sc_signal< sc_lv<32> > grp_fu_600_p1;
    sc_signal< sc_lv<32> > grp_fu_604_p0;
    sc_signal< sc_lv<32> > grp_fu_604_p1;
    sc_signal< sc_lv<32> > grp_fu_608_p0;
    sc_signal< sc_lv<32> > grp_fu_608_p1;
    sc_signal< sc_lv<32> > grp_fu_612_p0;
    sc_signal< sc_lv<32> > grp_fu_612_p1;
    sc_signal< sc_lv<32> > grp_fu_616_p0;
    sc_signal< sc_lv<32> > grp_fu_616_p1;
    sc_signal< sc_lv<32> > grp_fu_620_p0;
    sc_signal< sc_lv<32> > grp_fu_620_p1;
    sc_signal< sc_lv<32> > grp_fu_624_p0;
    sc_signal< sc_lv<32> > grp_fu_624_p1;
    sc_signal< sc_lv<32> > grp_fu_628_p0;
    sc_signal< sc_lv<32> > grp_fu_628_p1;
    sc_signal< sc_lv<32> > grp_fu_632_p1;
    sc_signal< sc_lv<32> > i1_i_cast_i_fu_728_p1;
    sc_signal< sc_lv<1> > tmp_5_i_fu_766_p2;
    sc_signal< sc_lv<31> > tmp_16_i_fu_795_p2;
    sc_signal< sc_lv<32> > column_index_cast_i_fu_810_p1;
    sc_signal< sc_lv<1> > tmp_19_i_fu_839_p2;
    sc_signal< sc_lv<31> > tmp_29_i_fu_873_p2;
    sc_signal< sc_logic > grp_fu_590_ce;
    sc_signal< sc_logic > grp_fu_594_ce;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_1103;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_bdd_1111;
    sc_signal< sc_logic > grp_fu_600_ce;
    sc_signal< sc_logic > grp_fu_604_ce;
    sc_signal< sc_logic > grp_fu_608_ce;
    sc_signal< sc_logic > grp_fu_612_ce;
    sc_signal< sc_logic > grp_fu_616_ce;
    sc_signal< sc_logic > grp_fu_620_ce;
    sc_signal< sc_logic > grp_fu_624_ce;
    sc_signal< sc_logic > grp_fu_628_ce;
    sc_signal< sc_lv<32> > grp_fu_632_p0;
    sc_signal< sc_logic > grp_fu_632_ce;
    sc_signal< sc_lv<20> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<20> ap_ST_st1_fsm_0;
    static const sc_lv<20> ap_ST_st2_fsm_1;
    static const sc_lv<20> ap_ST_st3_fsm_2;
    static const sc_lv<20> ap_ST_st4_fsm_3;
    static const sc_lv<20> ap_ST_st5_fsm_4;
    static const sc_lv<20> ap_ST_st6_fsm_5;
    static const sc_lv<20> ap_ST_st7_fsm_6;
    static const sc_lv<20> ap_ST_st8_fsm_7;
    static const sc_lv<20> ap_ST_st9_fsm_8;
    static const sc_lv<20> ap_ST_st10_fsm_9;
    static const sc_lv<20> ap_ST_st11_fsm_10;
    static const sc_lv<20> ap_ST_st12_fsm_11;
    static const sc_lv<20> ap_ST_st13_fsm_12;
    static const sc_lv<20> ap_ST_st14_fsm_13;
    static const sc_lv<20> ap_ST_st15_fsm_14;
    static const sc_lv<20> ap_ST_pp0_stg0_fsm_15;
    static const sc_lv<20> ap_ST_st47_fsm_16;
    static const sc_lv<20> ap_ST_st48_fsm_17;
    static const sc_lv<20> ap_ST_pp1_stg0_fsm_18;
    static const sc_lv<20> ap_ST_st88_fsm_19;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<31> ap_const_lv31_2;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_3F70A3D7;
    static const sc_lv<8> ap_const_lv8_FC;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<31> ap_const_lv31_7FFFFFFF;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_NUMBER_OF_DAYS_out1_din();
    void thread_NUMBER_OF_DAYS_out1_write();
    void thread_NUMBER_OF_DAYS_out_din();
    void thread_NUMBER_OF_DAYS_out_write();
    void thread_NUMBER_OF_INDICES_out2_din();
    void thread_NUMBER_OF_INDICES_out2_write();
    void thread_NUMBER_OF_INDICES_out_din();
    void thread_NUMBER_OF_INDICES_out_write();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_1003();
    void thread_ap_sig_bdd_1103();
    void thread_ap_sig_bdd_1111();
    void thread_ap_sig_bdd_177();
    void thread_ap_sig_bdd_186();
    void thread_ap_sig_bdd_314();
    void thread_ap_sig_bdd_333();
    void thread_ap_sig_bdd_340();
    void thread_ap_sig_bdd_387();
    void thread_ap_sig_bdd_39();
    void thread_ap_sig_bdd_397();
    void thread_ap_sig_bdd_526();
    void thread_ap_sig_bdd_538();
    void thread_ap_sig_bdd_547();
    void thread_ap_sig_bdd_562();
    void thread_ap_sig_bdd_573();
    void thread_ap_sig_bdd_685();
    void thread_ap_sig_bdd_690();
    void thread_ap_sig_bdd_851();
    void thread_ap_sig_bdd_872();
    void thread_ap_sig_bdd_880();
    void thread_ap_sig_bdd_901();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_15();
    void thread_ap_sig_cseq_ST_pp1_stg0_fsm_18();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st47_fsm_16();
    void thread_ap_sig_cseq_ST_st48_fsm_17();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st88_fsm_19();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_column_index_cast_i_fu_810_p1();
    void thread_column_index_fu_883_p2();
    void thread_exitcond_i_i_fu_711_p2();
    void thread_grp_fu_590_ce();
    void thread_grp_fu_590_p0();
    void thread_grp_fu_590_p1();
    void thread_grp_fu_594_ce();
    void thread_grp_fu_594_p0();
    void thread_grp_fu_594_p1();
    void thread_grp_fu_600_ce();
    void thread_grp_fu_600_p0();
    void thread_grp_fu_600_p1();
    void thread_grp_fu_604_ce();
    void thread_grp_fu_604_p0();
    void thread_grp_fu_604_p1();
    void thread_grp_fu_608_ce();
    void thread_grp_fu_608_p0();
    void thread_grp_fu_608_p1();
    void thread_grp_fu_612_ce();
    void thread_grp_fu_612_p0();
    void thread_grp_fu_612_p1();
    void thread_grp_fu_616_ce();
    void thread_grp_fu_616_p0();
    void thread_grp_fu_616_p1();
    void thread_grp_fu_620_ce();
    void thread_grp_fu_620_p0();
    void thread_grp_fu_620_p1();
    void thread_grp_fu_624_ce();
    void thread_grp_fu_624_p0();
    void thread_grp_fu_624_p1();
    void thread_grp_fu_628_ce();
    void thread_grp_fu_628_p0();
    void thread_grp_fu_628_p1();
    void thread_grp_fu_632_ce();
    void thread_grp_fu_632_p0();
    void thread_grp_fu_632_p1();
    void thread_i1_i_cast_i_fu_728_p1();
    void thread_i_3_fu_742_p2();
    void thread_i_4_fu_784_p2();
    void thread_i_5_fu_862_p2();
    void thread_i_fu_722_p2();
    void thread_in_indices_TREADY();
    void thread_lnReturnA_address0();
    void thread_lnReturnA_ce0();
    void thread_lnReturnA_d0();
    void thread_lnReturnA_we0();
    void thread_ln_returnA_out_c1_V_din();
    void thread_ln_returnA_out_c1_V_write();
    void thread_ln_returnA_out_c2_V_din();
    void thread_ln_returnA_out_c2_V_write();
    void thread_ln_returnB_out_c1_V_din();
    void thread_ln_returnB_out_c1_V_write();
    void thread_ln_returnB_out_c2_V_din();
    void thread_ln_returnB_out_c2_V_write();
    void thread_shift_reg_load_i_phi_fu_572_p4();
    void thread_shift_reg_load_i_shift_reg_lo_fu_845_p3();
    void thread_sum_weight_out_c1_V_din();
    void thread_sum_weight_out_c1_V_write();
    void thread_sum_weight_out_c2_V_din();
    void thread_sum_weight_out_c2_V_write();
    void thread_tmp_10_i_fu_823_p1();
    void thread_tmp_14_i_fu_780_p1();
    void thread_tmp_16_i_fu_795_p2();
    void thread_tmp_17_i_fu_800_p1();
    void thread_tmp_18_i_fu_827_p2();
    void thread_tmp_19_i_fu_839_p2();
    void thread_tmp_1_i_fu_752_p2();
    void thread_tmp_26_i_fu_853_p1();
    void thread_tmp_28_i_fu_857_p1();
    void thread_tmp_29_i_fu_873_p2();
    void thread_tmp_30_i_fu_878_p1();
    void thread_tmp_3_i_phi_fu_540_p4();
    void thread_tmp_3_i_tmp_2_i_fu_772_p3();
    void thread_tmp_42_fu_819_p1();
    void thread_tmp_43_fu_835_p1();
    void thread_tmp_4_i_fu_757_p2();
    void thread_tmp_5_i_fu_766_p2();
    void thread_tmp_6_i_fu_814_p2();
    void thread_tmp_85_i_i_fu_732_p2();
    void thread_tmp_86_i_i_fu_717_p1();
    void thread_tmp_87_i_i_fu_737_p1();
    void thread_tmp_fu_762_p1();
    void thread_tmp_i_fu_748_p1();
    void thread_weight_returnA_out_c1_V_din();
    void thread_weight_returnA_out_c1_V_write();
    void thread_weight_returnA_out_c2_V_din();
    void thread_weight_returnA_out_c2_V_write();
    void thread_weight_returnA_returnB_out_c1_s_din();
    void thread_weight_returnA_returnB_out_c1_s_write();
    void thread_weight_returnA_returnB_out_c2_s_din();
    void thread_weight_returnA_returnB_out_c2_s_write();
    void thread_weight_returnB_out_c1_V_din();
    void thread_weight_returnB_out_c1_V_write();
    void thread_weight_returnB_out_c2_V_din();
    void thread_weight_returnB_out_c2_V_write();
    void thread_weight_returnSquareA_out_c1_V_din();
    void thread_weight_returnSquareA_out_c1_V_write();
    void thread_weight_returnSquareA_out_c2_V_din();
    void thread_weight_returnSquareA_out_c2_V_write();
    void thread_weight_returnSquareB_out_c1_V_din();
    void thread_weight_returnSquareB_out_c1_V_write();
    void thread_weight_returnSquareB_out_c2_V_din();
    void thread_weight_returnSquareB_out_c2_V_write();
    void thread_weight_rom_address0();
    void thread_weight_rom_address1();
    void thread_weight_rom_ce0();
    void thread_weight_rom_ce1();
    void thread_weight_rom_d0();
    void thread_weight_rom_d1();
    void thread_weight_rom_we0();
    void thread_weight_rom_we1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif