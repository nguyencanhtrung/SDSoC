// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "madd.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic madd::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic madd::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> madd::ap_ST_st1_fsm_0 = "1";
const sc_lv<3> madd::ap_ST_pp0_stg0_fsm_1 = "10";
const sc_lv<3> madd::ap_ST_st11_fsm_2 = "100";
const sc_lv<32> madd::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> madd::ap_const_lv1_1 = "1";
const bool madd::ap_true = true;
const sc_lv<32> madd::ap_const_lv32_1 = "1";
const sc_lv<1> madd::ap_const_lv1_0 = "0";
const sc_lv<11> madd::ap_const_lv11_0 = "00000000000";
const sc_lv<6> madd::ap_const_lv6_0 = "000000";
const sc_lv<32> madd::ap_const_lv32_2 = "10";
const sc_lv<4> madd::ap_const_lv4_0 = "0000";
const sc_lv<4> madd::ap_const_lv4_F = "1111";
const sc_lv<11> madd::ap_const_lv11_400 = "10000000000";
const sc_lv<11> madd::ap_const_lv11_1 = "1";
const sc_lv<6> madd::ap_const_lv6_20 = "100000";
const sc_lv<6> madd::ap_const_lv6_1 = "1";
const sc_lv<5> madd::ap_const_lv5_0 = "00000";

madd::madd(sc_module_name name) : sc_module(name), mVcdFile(0) {
    madd_fadd_32ns_32ns_32_5_full_dsp_U0 = new madd_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>("madd_fadd_32ns_32ns_32_5_full_dsp_U0");
    madd_fadd_32ns_32ns_32_5_full_dsp_U0->clk(ap_clk);
    madd_fadd_32ns_32ns_32_5_full_dsp_U0->reset(ap_rst_n_inv);
    madd_fadd_32ns_32ns_32_5_full_dsp_U0->din0(grp_fu_136_p0);
    madd_fadd_32ns_32ns_32_5_full_dsp_U0->din1(grp_fu_136_p1);
    madd_fadd_32ns_32ns_32_5_full_dsp_U0->ce(grp_fu_136_ce);
    madd_fadd_32ns_32ns_32_5_full_dsp_U0->dout(grp_fu_136_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_A_Addr_A);
    sensitive << ( A_Addr_A_orig );

    SC_METHOD(thread_A_Addr_A_orig);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_3_fu_208_p1 );

    SC_METHOD(thread_A_Clk_A);
    sensitive << ( ap_clk );

    SC_METHOD(thread_A_Din_A);

    SC_METHOD(thread_A_EN_A);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_A_Rst_A);
    sensitive << ( ap_rst_n_inv );

    SC_METHOD(thread_A_WEN_A);

    SC_METHOD(thread_B_Addr_A);
    sensitive << ( B_Addr_A_orig );

    SC_METHOD(thread_B_Addr_A_orig);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_3_fu_208_p1 );

    SC_METHOD(thread_B_Clk_A);
    sensitive << ( ap_clk );

    SC_METHOD(thread_B_Din_A);

    SC_METHOD(thread_B_EN_A);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_B_Rst_A);
    sensitive << ( ap_rst_n_inv );

    SC_METHOD(thread_B_WEN_A);

    SC_METHOD(thread_C_Addr_A);
    sensitive << ( C_Addr_A_orig );

    SC_METHOD(thread_C_Addr_A_orig);
    sensitive << ( ap_reg_ppiten_pp0_it8 );
    sensitive << ( ap_reg_ppstg_tmp_3_reg_237_pp0_it7 );

    SC_METHOD(thread_C_Clk_A);
    sensitive << ( ap_clk );

    SC_METHOD(thread_C_Din_A);
    sensitive << ( ap_reg_ppiten_pp0_it8 );
    sensitive << ( tmp_4_reg_262 );

    SC_METHOD(thread_C_EN_A);
    sensitive << ( ap_reg_ppiten_pp0_it8 );

    SC_METHOD(thread_C_Rst_A);
    sensitive << ( ap_rst_n_inv );

    SC_METHOD(thread_C_WEN_A);
    sensitive << ( ap_reg_ppiten_pp0_it8 );
    sensitive << ( ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it7 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sig_cseq_ST_st11_fsm_2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st11_fsm_2 );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sig_bdd_21);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_221);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_68);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_pp0_stg0_fsm_1);
    sensitive << ( ap_sig_bdd_68 );

    SC_METHOD(thread_ap_sig_cseq_ST_st11_fsm_2);
    sensitive << ( ap_sig_bdd_221 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_21 );

    SC_METHOD(thread_exitcond4_fu_152_p2);
    sensitive << ( j_reg_124 );
    sensitive << ( exitcond_flatten_fu_140_p2 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    SC_METHOD(thread_exitcond_flatten_fu_140_p2);
    sensitive << ( indvar_flatten_reg_102 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    SC_METHOD(thread_grp_fu_136_ce);

    SC_METHOD(thread_grp_fu_136_p0);
    sensitive << ( ap_reg_ppiten_pp0_it3 );
    sensitive << ( A_load_reg_252 );

    SC_METHOD(thread_grp_fu_136_p1);
    sensitive << ( ap_reg_ppiten_pp0_it3 );
    sensitive << ( B_load_reg_257 );

    SC_METHOD(thread_i_mid2_fu_172_p3);
    sensitive << ( i_phi_fu_117_p4 );
    sensitive << ( exitcond4_fu_152_p2 );
    sensitive << ( i_s_fu_166_p2 );

    SC_METHOD(thread_i_phi_fu_117_p4);
    sensitive << ( i_reg_113 );
    sensitive << ( exitcond_flatten_reg_213 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( i_mid2_reg_222 );

    SC_METHOD(thread_i_s_fu_166_p2);
    sensitive << ( i_phi_fu_117_p4 );

    SC_METHOD(thread_indvar_flatten_next_fu_146_p2);
    sensitive << ( indvar_flatten_reg_102 );

    SC_METHOD(thread_j_1_fu_202_p2);
    sensitive << ( j_mid2_fu_158_p3 );

    SC_METHOD(thread_j_cast1_fu_192_p1);
    sensitive << ( j_mid2_fu_158_p3 );

    SC_METHOD(thread_j_mid2_fu_158_p3);
    sensitive << ( j_reg_124 );
    sensitive << ( exitcond4_fu_152_p2 );

    SC_METHOD(thread_tmp_2_fu_196_p2);
    sensitive << ( j_cast1_fu_192_p1 );
    sensitive << ( tmp_fu_184_p3 );

    SC_METHOD(thread_tmp_3_fu_208_p1);
    sensitive << ( tmp_2_reg_227 );

    SC_METHOD(thread_tmp_5_fu_180_p1);
    sensitive << ( i_mid2_fu_172_p3 );

    SC_METHOD(thread_tmp_fu_184_p3);
    sensitive << ( tmp_5_fu_180_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_flatten_fu_140_p2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( ap_reg_ppiten_pp0_it7 );
    sensitive << ( ap_reg_ppiten_pp0_it8 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    ap_reg_ppiten_pp0_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it1 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it2 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it3 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it4 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it5 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it6 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it7 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it8 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "madd_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, A_Addr_A, "(port)A_Addr_A");
    sc_trace(mVcdFile, A_EN_A, "(port)A_EN_A");
    sc_trace(mVcdFile, A_WEN_A, "(port)A_WEN_A");
    sc_trace(mVcdFile, A_Din_A, "(port)A_Din_A");
    sc_trace(mVcdFile, A_Dout_A, "(port)A_Dout_A");
    sc_trace(mVcdFile, A_Clk_A, "(port)A_Clk_A");
    sc_trace(mVcdFile, A_Rst_A, "(port)A_Rst_A");
    sc_trace(mVcdFile, B_Addr_A, "(port)B_Addr_A");
    sc_trace(mVcdFile, B_EN_A, "(port)B_EN_A");
    sc_trace(mVcdFile, B_WEN_A, "(port)B_WEN_A");
    sc_trace(mVcdFile, B_Din_A, "(port)B_Din_A");
    sc_trace(mVcdFile, B_Dout_A, "(port)B_Dout_A");
    sc_trace(mVcdFile, B_Clk_A, "(port)B_Clk_A");
    sc_trace(mVcdFile, B_Rst_A, "(port)B_Rst_A");
    sc_trace(mVcdFile, C_Addr_A, "(port)C_Addr_A");
    sc_trace(mVcdFile, C_EN_A, "(port)C_EN_A");
    sc_trace(mVcdFile, C_WEN_A, "(port)C_WEN_A");
    sc_trace(mVcdFile, C_Din_A, "(port)C_Din_A");
    sc_trace(mVcdFile, C_Dout_A, "(port)C_Dout_A");
    sc_trace(mVcdFile, C_Clk_A, "(port)C_Clk_A");
    sc_trace(mVcdFile, C_Rst_A, "(port)C_Rst_A");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_21, "ap_sig_bdd_21");
    sc_trace(mVcdFile, indvar_flatten_reg_102, "indvar_flatten_reg_102");
    sc_trace(mVcdFile, i_reg_113, "i_reg_113");
    sc_trace(mVcdFile, j_reg_124, "j_reg_124");
    sc_trace(mVcdFile, exitcond_flatten_fu_140_p2, "exitcond_flatten_fu_140_p2");
    sc_trace(mVcdFile, exitcond_flatten_reg_213, "exitcond_flatten_reg_213");
    sc_trace(mVcdFile, ap_sig_cseq_ST_pp0_stg0_fsm_1, "ap_sig_cseq_ST_pp0_stg0_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_68, "ap_sig_bdd_68");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it0, "ap_reg_ppiten_pp0_it0");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it1, "ap_reg_ppiten_pp0_it1");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it2, "ap_reg_ppiten_pp0_it2");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it3, "ap_reg_ppiten_pp0_it3");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it4, "ap_reg_ppiten_pp0_it4");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it5, "ap_reg_ppiten_pp0_it5");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it6, "ap_reg_ppiten_pp0_it6");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it7, "ap_reg_ppiten_pp0_it7");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it8, "ap_reg_ppiten_pp0_it8");
    sc_trace(mVcdFile, ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it1, "ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it1");
    sc_trace(mVcdFile, ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it2, "ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it2");
    sc_trace(mVcdFile, ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it3, "ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it3");
    sc_trace(mVcdFile, ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it4, "ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it4");
    sc_trace(mVcdFile, ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it5, "ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it5");
    sc_trace(mVcdFile, ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it6, "ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it6");
    sc_trace(mVcdFile, ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it7, "ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it7");
    sc_trace(mVcdFile, indvar_flatten_next_fu_146_p2, "indvar_flatten_next_fu_146_p2");
    sc_trace(mVcdFile, i_mid2_fu_172_p3, "i_mid2_fu_172_p3");
    sc_trace(mVcdFile, i_mid2_reg_222, "i_mid2_reg_222");
    sc_trace(mVcdFile, tmp_2_fu_196_p2, "tmp_2_fu_196_p2");
    sc_trace(mVcdFile, tmp_2_reg_227, "tmp_2_reg_227");
    sc_trace(mVcdFile, j_1_fu_202_p2, "j_1_fu_202_p2");
    sc_trace(mVcdFile, tmp_3_fu_208_p1, "tmp_3_fu_208_p1");
    sc_trace(mVcdFile, tmp_3_reg_237, "tmp_3_reg_237");
    sc_trace(mVcdFile, ap_reg_ppstg_tmp_3_reg_237_pp0_it2, "ap_reg_ppstg_tmp_3_reg_237_pp0_it2");
    sc_trace(mVcdFile, ap_reg_ppstg_tmp_3_reg_237_pp0_it3, "ap_reg_ppstg_tmp_3_reg_237_pp0_it3");
    sc_trace(mVcdFile, ap_reg_ppstg_tmp_3_reg_237_pp0_it4, "ap_reg_ppstg_tmp_3_reg_237_pp0_it4");
    sc_trace(mVcdFile, ap_reg_ppstg_tmp_3_reg_237_pp0_it5, "ap_reg_ppstg_tmp_3_reg_237_pp0_it5");
    sc_trace(mVcdFile, ap_reg_ppstg_tmp_3_reg_237_pp0_it6, "ap_reg_ppstg_tmp_3_reg_237_pp0_it6");
    sc_trace(mVcdFile, ap_reg_ppstg_tmp_3_reg_237_pp0_it7, "ap_reg_ppstg_tmp_3_reg_237_pp0_it7");
    sc_trace(mVcdFile, A_load_reg_252, "A_load_reg_252");
    sc_trace(mVcdFile, B_load_reg_257, "B_load_reg_257");
    sc_trace(mVcdFile, grp_fu_136_p2, "grp_fu_136_p2");
    sc_trace(mVcdFile, tmp_4_reg_262, "tmp_4_reg_262");
    sc_trace(mVcdFile, i_phi_fu_117_p4, "i_phi_fu_117_p4");
    sc_trace(mVcdFile, A_Addr_A_orig, "A_Addr_A_orig");
    sc_trace(mVcdFile, B_Addr_A_orig, "B_Addr_A_orig");
    sc_trace(mVcdFile, C_Addr_A_orig, "C_Addr_A_orig");
    sc_trace(mVcdFile, grp_fu_136_p0, "grp_fu_136_p0");
    sc_trace(mVcdFile, grp_fu_136_p1, "grp_fu_136_p1");
    sc_trace(mVcdFile, exitcond4_fu_152_p2, "exitcond4_fu_152_p2");
    sc_trace(mVcdFile, i_s_fu_166_p2, "i_s_fu_166_p2");
    sc_trace(mVcdFile, tmp_5_fu_180_p1, "tmp_5_fu_180_p1");
    sc_trace(mVcdFile, j_mid2_fu_158_p3, "j_mid2_fu_158_p3");
    sc_trace(mVcdFile, j_cast1_fu_192_p1, "j_cast1_fu_192_p1");
    sc_trace(mVcdFile, tmp_fu_184_p3, "tmp_fu_184_p3");
    sc_trace(mVcdFile, grp_fu_136_ce, "grp_fu_136_ce");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st11_fsm_2, "ap_sig_cseq_ST_st11_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_221, "ap_sig_bdd_221");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("madd.hdltvin.dat");
    mHdltvoutHandle.open("madd.hdltvout.dat");
}

madd::~madd() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete madd_fadd_32ns_32ns_32_5_full_dsp_U0;
}

void madd::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
             !esl_seteq<1,1,1>(exitcond_flatten_fu_140_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                    !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
             esl_seteq<1,1,1>(exitcond_flatten_fu_140_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                     !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
                     !esl_seteq<1,1,1>(exitcond_flatten_fu_140_p2.read(), ap_const_lv1_0)))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            ap_reg_ppiten_pp0_it2 = ap_reg_ppiten_pp0_it1.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it3 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            ap_reg_ppiten_pp0_it3 = ap_reg_ppiten_pp0_it2.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it4 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            ap_reg_ppiten_pp0_it4 = ap_reg_ppiten_pp0_it3.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it5 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            ap_reg_ppiten_pp0_it5 = ap_reg_ppiten_pp0_it4.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it6 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            ap_reg_ppiten_pp0_it6 = ap_reg_ppiten_pp0_it5.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it7 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            ap_reg_ppiten_pp0_it7 = ap_reg_ppiten_pp0_it6.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it8 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_true, ap_true)) {
            ap_reg_ppiten_pp0_it8 = ap_reg_ppiten_pp0_it7.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                    !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
            ap_reg_ppiten_pp0_it8 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_213.read(), ap_const_lv1_0))) {
        i_reg_113 = i_mid2_reg_222.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_113 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_140_p2.read(), ap_const_lv1_0))) {
        indvar_flatten_reg_102 = indvar_flatten_next_fu_146_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        indvar_flatten_reg_102 = ap_const_lv11_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_140_p2.read(), ap_const_lv1_0))) {
        j_reg_124 = j_1_fu_202_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        j_reg_124 = ap_const_lv6_0;
    }
    if (esl_seteq<1,1,1>(ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it1.read(), ap_const_lv1_0)) {
        A_load_reg_252 = A_Dout_A.read();
        B_load_reg_257 = B_Dout_A.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read())) {
        ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it1 = exitcond_flatten_reg_213.read();
        exitcond_flatten_reg_213 = exitcond_flatten_fu_140_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_true, ap_true)) {
        ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it2 = ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it1.read();
        ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it3 = ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it2.read();
        ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it4 = ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it3.read();
        ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it5 = ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it4.read();
        ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it6 = ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it5.read();
        ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it7 = ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it6.read();
        ap_reg_ppstg_tmp_3_reg_237_pp0_it2 = tmp_3_reg_237.read();
        ap_reg_ppstg_tmp_3_reg_237_pp0_it3 = ap_reg_ppstg_tmp_3_reg_237_pp0_it2.read();
        ap_reg_ppstg_tmp_3_reg_237_pp0_it4 = ap_reg_ppstg_tmp_3_reg_237_pp0_it3.read();
        ap_reg_ppstg_tmp_3_reg_237_pp0_it5 = ap_reg_ppstg_tmp_3_reg_237_pp0_it4.read();
        ap_reg_ppstg_tmp_3_reg_237_pp0_it6 = ap_reg_ppstg_tmp_3_reg_237_pp0_it5.read();
        ap_reg_ppstg_tmp_3_reg_237_pp0_it7 = ap_reg_ppstg_tmp_3_reg_237_pp0_it6.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_140_p2.read(), ap_const_lv1_0))) {
        i_mid2_reg_222 = i_mid2_fu_172_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_140_p2.read(), ap_const_lv1_0))) {
        tmp_2_reg_227 = tmp_2_fu_196_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(exitcond_flatten_reg_213.read(), ap_const_lv1_0))) {
        tmp_3_reg_237 = tmp_3_fu_208_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it6.read(), ap_const_lv1_0)) {
        tmp_4_reg_262 = grp_fu_136_p2.read();
    }
}

void madd::thread_A_Addr_A() {
    A_Addr_A = (!ap_const_lv32_2.is_01())? sc_lv<32>(): A_Addr_A_orig.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void madd::thread_A_Addr_A_orig() {
    A_Addr_A_orig =  (sc_lv<32>) (tmp_3_fu_208_p1.read());
}

void madd::thread_A_Clk_A() {
    A_Clk_A = ap_clk.read()? SC_LOGIC_1 : SC_LOGIC_0;
}

void madd::thread_A_Din_A() {
    A_Din_A = ap_const_lv32_0;
}

void madd::thread_A_EN_A() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        A_EN_A = ap_const_logic_1;
    } else {
        A_EN_A = ap_const_logic_0;
    }
}

void madd::thread_A_Rst_A() {
    A_Rst_A = ap_rst_n_inv.read();
}

void madd::thread_A_WEN_A() {
    A_WEN_A = ap_const_lv4_0;
}

void madd::thread_B_Addr_A() {
    B_Addr_A = (!ap_const_lv32_2.is_01())? sc_lv<32>(): B_Addr_A_orig.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void madd::thread_B_Addr_A_orig() {
    B_Addr_A_orig =  (sc_lv<32>) (tmp_3_fu_208_p1.read());
}

void madd::thread_B_Clk_A() {
    B_Clk_A = ap_clk.read()? SC_LOGIC_1 : SC_LOGIC_0;
}

void madd::thread_B_Din_A() {
    B_Din_A = ap_const_lv32_0;
}

void madd::thread_B_EN_A() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        B_EN_A = ap_const_logic_1;
    } else {
        B_EN_A = ap_const_logic_0;
    }
}

void madd::thread_B_Rst_A() {
    B_Rst_A = ap_rst_n_inv.read();
}

void madd::thread_B_WEN_A() {
    B_WEN_A = ap_const_lv4_0;
}

void madd::thread_C_Addr_A() {
    C_Addr_A = (!ap_const_lv32_2.is_01())? sc_lv<32>(): C_Addr_A_orig.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void madd::thread_C_Addr_A_orig() {
    C_Addr_A_orig =  (sc_lv<32>) (ap_reg_ppstg_tmp_3_reg_237_pp0_it7.read());
}

void madd::thread_C_Clk_A() {
    C_Clk_A = ap_clk.read()? SC_LOGIC_1 : SC_LOGIC_0;
}

void madd::thread_C_Din_A() {
    C_Din_A = tmp_4_reg_262.read();
}

void madd::thread_C_EN_A() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it8.read())) {
        C_EN_A = ap_const_logic_1;
    } else {
        C_EN_A = ap_const_logic_0;
    }
}

void madd::thread_C_Rst_A() {
    C_Rst_A = ap_rst_n_inv.read();
}

void madd::thread_C_WEN_A() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it8.read()) && 
          esl_seteq<1,1,1>(ap_reg_ppstg_exitcond_flatten_reg_213_pp0_it7.read(), ap_const_lv1_0)))) {
        C_WEN_A = ap_const_lv4_F;
    } else {
        C_WEN_A = ap_const_lv4_0;
    }
}

void madd::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_2.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void madd::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void madd::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_2.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void madd::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void madd::thread_ap_sig_bdd_21() {
    ap_sig_bdd_21 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void madd::thread_ap_sig_bdd_221() {
    ap_sig_bdd_221 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void madd::thread_ap_sig_bdd_68() {
    ap_sig_bdd_68 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void madd::thread_ap_sig_cseq_ST_pp0_stg0_fsm_1() {
    if (ap_sig_bdd_68.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    }
}

void madd::thread_ap_sig_cseq_ST_st11_fsm_2() {
    if (ap_sig_bdd_221.read()) {
        ap_sig_cseq_ST_st11_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st11_fsm_2 = ap_const_logic_0;
    }
}

void madd::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_21.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void madd::thread_exitcond4_fu_152_p2() {
    exitcond4_fu_152_p2 = (!j_reg_124.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_124.read() == ap_const_lv6_20);
}

void madd::thread_exitcond_flatten_fu_140_p2() {
    exitcond_flatten_fu_140_p2 = (!indvar_flatten_reg_102.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_102.read() == ap_const_lv11_400);
}

void madd::thread_grp_fu_136_ce() {
    grp_fu_136_ce = ap_const_logic_1;
}

void madd::thread_grp_fu_136_p0() {
    grp_fu_136_p0 = A_load_reg_252.read();
}

void madd::thread_grp_fu_136_p1() {
    grp_fu_136_p1 = B_load_reg_257.read();
}

void madd::thread_i_mid2_fu_172_p3() {
    i_mid2_fu_172_p3 = (!exitcond4_fu_152_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond4_fu_152_p2.read()[0].to_bool())? i_s_fu_166_p2.read(): i_phi_fu_117_p4.read());
}

void madd::thread_i_phi_fu_117_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_213.read(), ap_const_lv1_0))) {
        i_phi_fu_117_p4 = i_mid2_reg_222.read();
    } else {
        i_phi_fu_117_p4 = i_reg_113.read();
    }
}

void madd::thread_i_s_fu_166_p2() {
    i_s_fu_166_p2 = (!i_phi_fu_117_p4.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_phi_fu_117_p4.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void madd::thread_indvar_flatten_next_fu_146_p2() {
    indvar_flatten_next_fu_146_p2 = (!indvar_flatten_reg_102.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten_reg_102.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void madd::thread_j_1_fu_202_p2() {
    j_1_fu_202_p2 = (!j_mid2_fu_158_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j_mid2_fu_158_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void madd::thread_j_cast1_fu_192_p1() {
    j_cast1_fu_192_p1 = esl_zext<10,6>(j_mid2_fu_158_p3.read());
}

void madd::thread_j_mid2_fu_158_p3() {
    j_mid2_fu_158_p3 = (!exitcond4_fu_152_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond4_fu_152_p2.read()[0].to_bool())? ap_const_lv6_0: j_reg_124.read());
}

void madd::thread_tmp_2_fu_196_p2() {
    tmp_2_fu_196_p2 = (!j_cast1_fu_192_p1.read().is_01() || !tmp_fu_184_p3.read().is_01())? sc_lv<10>(): (sc_biguint<10>(j_cast1_fu_192_p1.read()) + sc_biguint<10>(tmp_fu_184_p3.read()));
}

void madd::thread_tmp_3_fu_208_p1() {
    tmp_3_fu_208_p1 = esl_zext<64,10>(tmp_2_reg_227.read());
}

void madd::thread_tmp_5_fu_180_p1() {
    tmp_5_fu_180_p1 = i_mid2_fu_172_p3.read().range(5-1, 0);
}

void madd::thread_tmp_fu_184_p3() {
    tmp_fu_184_p3 = esl_concat<5,5>(tmp_5_fu_180_p1.read(), ap_const_lv5_0);
}

void madd::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it8.read()) && !esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it7.read())) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !esl_seteq<1,1,1>(exitcond_flatten_fu_140_p2.read(), ap_const_lv1_0) && !esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !esl_seteq<1,1,1>(exitcond_flatten_fu_140_p2.read(), ap_const_lv1_0) && !esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
                ap_NS_fsm = ap_ST_st11_fsm_2;
            } else {
                ap_NS_fsm = ap_ST_st11_fsm_2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

void madd::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_Addr_A\" :  \"" << A_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_EN_A\" :  \"" << A_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_WEN_A\" :  \"" << A_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_Din_A\" :  \"" << A_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_Dout_A\" :  \"" << A_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_Clk_A\" :  \"" << A_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_Rst_A\" :  \"" << A_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_Addr_A\" :  \"" << B_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_EN_A\" :  \"" << B_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_WEN_A\" :  \"" << B_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_Din_A\" :  \"" << B_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"B_Dout_A\" :  \"" << B_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_Clk_A\" :  \"" << B_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_Rst_A\" :  \"" << B_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_Addr_A\" :  \"" << C_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_EN_A\" :  \"" << C_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_WEN_A\" :  \"" << C_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_Din_A\" :  \"" << C_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"C_Dout_A\" :  \"" << C_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_Clk_A\" :  \"" << C_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_Rst_A\" :  \"" << C_Rst_A.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

