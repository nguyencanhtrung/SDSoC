// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _sharpen_filter_HH_
#define _sharpen_filter_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sharpen_filter_buff_A_0.h"
#include "sharpen_filter_buff_A_2.h"

namespace ap_rtl {

struct sharpen_filter : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > input_r_dout;
    sc_in< sc_logic > input_r_empty_n;
    sc_out< sc_logic > input_r_read;
    sc_out< sc_lv<8> > output_r_din;
    sc_in< sc_logic > output_r_full_n;
    sc_out< sc_logic > output_r_write;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    sharpen_filter(sc_module_name name);
    SC_HAS_PROCESS(sharpen_filter);

    ~sharpen_filter();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sharpen_filter_buff_A_0* buff_A_0_U;
    sharpen_filter_buff_A_0* buff_A_1_U;
    sharpen_filter_buff_A_2* buff_A_2_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_21;
    sc_signal< sc_lv<21> > indvar_flatten_reg_167;
    sc_signal< sc_lv<11> > row_reg_178;
    sc_signal< sc_lv<11> > col_assign_reg_189;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_222_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_479;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_bdd_54;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_flatten_reg_479_pp0_it2;
    sc_signal< sc_lv<1> > tmp_7_reg_528;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_7_reg_528_pp0_it2;
    sc_signal< bool > ap_sig_bdd_72;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_lv<1> > or_cond_reg_532;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_reg_532_pp0_it6;
    sc_signal< bool > ap_sig_bdd_88;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_flatten_reg_479_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_flatten_reg_479_pp0_it3;
    sc_signal< sc_lv<21> > indvar_flatten_next_fu_228_p2;
    sc_signal< sc_lv<11> > col_assign_mid2_fu_240_p3;
    sc_signal< sc_lv<11> > col_assign_mid2_reg_488;
    sc_signal< sc_lv<11> > ap_reg_ppstg_col_assign_mid2_reg_488_pp0_it1;
    sc_signal< sc_lv<11> > ap_reg_ppstg_col_assign_mid2_reg_488_pp0_it2;
    sc_signal< sc_lv<11> > ap_reg_ppstg_col_assign_mid2_reg_488_pp0_it3;
    sc_signal< sc_lv<11> > row_mid2_fu_254_p3;
    sc_signal< sc_lv<11> > row_mid2_reg_498;
    sc_signal< sc_lv<1> > tmp_2_fu_272_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_505;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_2_reg_505_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_2_reg_505_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_2_reg_505_pp0_it4;
    sc_signal< sc_lv<64> > tmp_3_fu_277_p1;
    sc_signal< sc_lv<64> > tmp_3_reg_512;
    sc_signal< sc_lv<64> > ap_reg_ppstg_tmp_3_reg_512_pp0_it2;
    sc_signal< sc_lv<11> > buff_A_1_addr_reg_517;
    sc_signal< sc_lv<11> > ap_reg_ppstg_buff_A_1_addr_reg_517_pp0_it2;
    sc_signal< sc_lv<1> > tmp_7_fu_282_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_7_reg_528_pp0_it3;
    sc_signal< sc_lv<1> > or_cond_fu_293_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_reg_532_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_reg_532_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_reg_532_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_reg_532_pp0_it5;
    sc_signal< sc_lv<11> > col_fu_299_p2;
    sc_signal< sc_lv<8> > buff_A_1_q0;
    sc_signal< sc_lv<8> > buff_A_1_load_reg_541;
    sc_signal< sc_lv<8> > buff_A_0_q0;
    sc_signal< sc_lv<8> > return_value_reg_546;
    sc_signal< sc_lv<8> > buff_C_1_0_load_reg_552;
    sc_signal< sc_lv<8> > ap_reg_ppstg_buff_C_1_0_load_reg_552_pp0_it4;
    sc_signal< sc_lv<8> > y_reg_557;
    sc_signal< sc_lv<8> > buff_C_1_1_load_reg_563;
    sc_signal< sc_lv<8> > ap_reg_ppstg_buff_C_1_1_load_reg_563_pp0_it4;
    sc_signal< sc_lv<8> > buff_C_1_2_fu_318_p3;
    sc_signal< sc_lv<8> > buff_C_1_2_reg_569;
    sc_signal< sc_lv<8> > ap_reg_ppstg_buff_C_1_2_reg_569_pp0_it4;
    sc_signal< sc_lv<8> > ap_reg_ppstg_buff_C_1_2_reg_569_pp0_it5;
    sc_signal< sc_lv<8> > buff_C_2_1_load_reg_579;
    sc_signal< sc_lv<12> > x_weight_2_1_1_i_fu_399_p2;
    sc_signal< sc_lv<12> > x_weight_2_1_1_i_reg_584;
    sc_signal< sc_lv<1> > tmp_i_fu_432_p2;
    sc_signal< sc_lv<1> > tmp_i_reg_589;
    sc_signal< sc_lv<8> > tmp_8_fu_438_p1;
    sc_signal< sc_lv<8> > tmp_8_reg_594;
    sc_signal< sc_lv<8> > tmp_2_i_fu_442_p2;
    sc_signal< sc_lv<8> > tmp_2_i_reg_599;
    sc_signal< sc_lv<11> > buff_A_0_address0;
    sc_signal< sc_logic > buff_A_0_ce0;
    sc_signal< sc_lv<11> > buff_A_0_address1;
    sc_signal< sc_logic > buff_A_0_ce1;
    sc_signal< sc_logic > buff_A_0_we1;
    sc_signal< sc_lv<8> > buff_A_0_d1;
    sc_signal< sc_lv<11> > buff_A_1_address0;
    sc_signal< sc_logic > buff_A_1_ce0;
    sc_signal< sc_lv<11> > buff_A_1_address1;
    sc_signal< sc_logic > buff_A_1_ce1;
    sc_signal< sc_logic > buff_A_1_we1;
    sc_signal< sc_lv<8> > buff_A_1_d1;
    sc_signal< sc_lv<11> > buff_A_2_address0;
    sc_signal< sc_logic > buff_A_2_ce0;
    sc_signal< sc_logic > buff_A_2_we0;
    sc_signal< sc_lv<8> > buff_A_2_d0;
    sc_signal< sc_lv<11> > buff_A_2_address1;
    sc_signal< sc_logic > buff_A_2_ce1;
    sc_signal< sc_lv<8> > buff_A_2_q1;
    sc_signal< sc_lv<11> > row_phi_fu_182_p4;
    sc_signal< sc_lv<11> > col_assign_phi_fu_193_p4;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_buff_C_1_2_1_reg_200pp0_it2;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_buff_C_1_2_1_reg_200pp0_it3;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_buff_C_2_2_reg_211pp0_it4;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_buff_C_2_2_reg_211pp0_it5;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_buff_C_2_2_reg_211pp0_it1;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_buff_C_2_2_reg_211pp0_it2;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_buff_C_2_2_reg_211pp0_it3;
    sc_signal< sc_lv<64> > tmp_9_fu_330_p1;
    sc_signal< sc_lv<64> > tmp_6_fu_334_p1;
    sc_signal< sc_lv<8> > buff_C_2_1_fu_70;
    sc_signal< sc_lv<8> > buff_C_2_2_1_fu_351_p3;
    sc_signal< sc_lv<8> > buff_C_0_1_fu_74;
    sc_signal< sc_lv<8> > buff_C_0_2_1_fu_344_p3;
    sc_signal< sc_lv<8> > buff_C_1_0_fu_78;
    sc_signal< sc_lv<8> > buff_C_1_1_fu_82;
    sc_signal< sc_lv<1> > exitcond4_fu_234_p2;
    sc_signal< sc_lv<11> > row_s_fu_248_p2;
    sc_signal< sc_lv<1> > tmp_fu_262_p2;
    sc_signal< sc_lv<1> > tmp_1_fu_267_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_288_p2;
    sc_signal< sc_lv<9> > tmp_6_1_i_cast_fu_362_p1;
    sc_signal< sc_lv<9> > tmp_6_0_1_i_cast_fu_358_p1;
    sc_signal< sc_lv<9> > sum_i_fu_365_p2;
    sc_signal< sc_lv<10> > p_shl_i_fu_378_p3;
    sc_signal< sc_lv<11> > p_shl_i_cast_fu_385_p1;
    sc_signal< sc_lv<11> > tmp_6_1_1_i_cast2_fu_375_p1;
    sc_signal< sc_lv<11> > tmp_7_1_1_i_fu_389_p2;
    sc_signal< sc_lv<12> > tmp_7_1_1_i_cast_fu_395_p1;
    sc_signal< sc_lv<12> > sum_i_cast_fu_371_p1;
    sc_signal< sc_lv<12> > tmp_6_1_2_i_cast_fu_415_p1;
    sc_signal< sc_lv<12> > x_weight_2_1_2_i_fu_418_p2;
    sc_signal< sc_lv<12> > tmp_6_2_1_i_cast_fu_423_p1;
    sc_signal< sc_lv<12> > x_weight_2_2_1_i_fu_426_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_2;
    sc_signal< bool > ap_sig_bdd_444;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< bool > ap_sig_bdd_164;
    sc_signal< bool > ap_sig_bdd_251;
    sc_signal< bool > ap_sig_bdd_160;
    sc_signal< bool > ap_sig_bdd_267;
    sc_signal< bool > ap_sig_bdd_156;
    sc_signal< bool > ap_sig_bdd_260;
    sc_signal< bool > ap_sig_bdd_255;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_pp0_stg0_fsm_1;
    static const sc_lv<3> ap_ST_st10_fsm_2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<21> ap_const_lv21_1FAFB9;
    static const sc_lv<21> ap_const_lv21_1;
    static const sc_lv<11> ap_const_lv11_781;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_438;
    static const sc_lv<11> ap_const_lv11_780;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_true;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_reg_phiprechg_buff_C_1_2_1_reg_200pp0_it2();
    void thread_ap_reg_phiprechg_buff_C_2_2_reg_211pp0_it1();
    void thread_ap_return();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_bdd_156();
    void thread_ap_sig_bdd_160();
    void thread_ap_sig_bdd_164();
    void thread_ap_sig_bdd_21();
    void thread_ap_sig_bdd_251();
    void thread_ap_sig_bdd_255();
    void thread_ap_sig_bdd_260();
    void thread_ap_sig_bdd_267();
    void thread_ap_sig_bdd_444();
    void thread_ap_sig_bdd_54();
    void thread_ap_sig_bdd_72();
    void thread_ap_sig_bdd_88();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_st10_fsm_2();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_buff_A_0_address0();
    void thread_buff_A_0_address1();
    void thread_buff_A_0_ce0();
    void thread_buff_A_0_ce1();
    void thread_buff_A_0_d1();
    void thread_buff_A_0_we1();
    void thread_buff_A_1_address0();
    void thread_buff_A_1_address1();
    void thread_buff_A_1_ce0();
    void thread_buff_A_1_ce1();
    void thread_buff_A_1_d1();
    void thread_buff_A_1_we1();
    void thread_buff_A_2_address0();
    void thread_buff_A_2_address1();
    void thread_buff_A_2_ce0();
    void thread_buff_A_2_ce1();
    void thread_buff_A_2_d0();
    void thread_buff_A_2_we0();
    void thread_buff_C_0_2_1_fu_344_p3();
    void thread_buff_C_1_2_fu_318_p3();
    void thread_buff_C_2_2_1_fu_351_p3();
    void thread_col_assign_mid2_fu_240_p3();
    void thread_col_assign_phi_fu_193_p4();
    void thread_col_fu_299_p2();
    void thread_exitcond4_fu_234_p2();
    void thread_exitcond_flatten_fu_222_p2();
    void thread_indvar_flatten_next_fu_228_p2();
    void thread_input_r_read();
    void thread_or_cond_fu_293_p2();
    void thread_output_r_din();
    void thread_output_r_write();
    void thread_p_shl_i_cast_fu_385_p1();
    void thread_p_shl_i_fu_378_p3();
    void thread_row_mid2_fu_254_p3();
    void thread_row_phi_fu_182_p4();
    void thread_row_s_fu_248_p2();
    void thread_sum_i_cast_fu_371_p1();
    void thread_sum_i_fu_365_p2();
    void thread_tmp_1_fu_267_p2();
    void thread_tmp_2_fu_272_p2();
    void thread_tmp_2_i_fu_442_p2();
    void thread_tmp_3_fu_277_p1();
    void thread_tmp_5_fu_288_p2();
    void thread_tmp_6_0_1_i_cast_fu_358_p1();
    void thread_tmp_6_1_1_i_cast2_fu_375_p1();
    void thread_tmp_6_1_2_i_cast_fu_415_p1();
    void thread_tmp_6_1_i_cast_fu_362_p1();
    void thread_tmp_6_2_1_i_cast_fu_423_p1();
    void thread_tmp_6_fu_334_p1();
    void thread_tmp_7_1_1_i_cast_fu_395_p1();
    void thread_tmp_7_1_1_i_fu_389_p2();
    void thread_tmp_7_fu_282_p2();
    void thread_tmp_8_fu_438_p1();
    void thread_tmp_9_fu_330_p1();
    void thread_tmp_fu_262_p2();
    void thread_tmp_i_fu_432_p2();
    void thread_x_weight_2_1_1_i_fu_399_p2();
    void thread_x_weight_2_1_2_i_fu_418_p2();
    void thread_x_weight_2_2_1_i_fu_426_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
