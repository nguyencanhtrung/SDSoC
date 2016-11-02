#include "correlation_accel_v2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void correlation_accel_v2::thread_acc_return_addr_3_gep_fu_324_p3() {
    acc_return_addr_3_gep_fu_324_p3 =  (sc_lv<3>) (ap_const_lv64_1);
}

void correlation_accel_v2::thread_acc_return_addr_4_gep_fu_361_p3() {
    acc_return_addr_4_gep_fu_361_p3 =  (sc_lv<3>) (ap_const_lv64_2);
}

void correlation_accel_v2::thread_acc_return_addr_6_gep_fu_385_p3() {
    acc_return_addr_6_gep_fu_385_p3 =  (sc_lv<3>) (ap_const_lv64_3);
}

void correlation_accel_v2::thread_acc_return_addr_7_gep_fu_409_p3() {
    acc_return_addr_7_gep_fu_409_p3 =  (sc_lv<3>) (ap_const_lv64_4);
}

void correlation_accel_v2::thread_acc_return_addr_8_gep_fu_433_p3() {
    acc_return_addr_8_gep_fu_433_p3 =  (sc_lv<3>) (ap_const_lv64_5);
}

void correlation_accel_v2::thread_acc_return_addr_gep_fu_285_p3() {
    acc_return_addr_gep_fu_285_p3 =  (sc_lv<3>) (ap_const_lv64_0);
}

void correlation_accel_v2::thread_acc_return_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it29.read()))) {
        acc_return_address0 = ap_reg_ppstg_acc_return_addr_2_reg_1432_pp0_it28.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read())) {
        acc_return_address0 =  (sc_lv<3>) (ap_const_lv64_4);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read())) {
        acc_return_address0 =  (sc_lv<3>) (ap_const_lv64_2);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read())) {
        acc_return_address0 =  (sc_lv<3>) (ap_const_lv64_0);
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st318_fsm_178.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()))) {
        acc_return_address0 = acc_return_addr_8_reg_1374.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st300_fsm_160.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_return_address0 = acc_return_addr_6_reg_1344.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st282_fsm_142.read()))) {
        acc_return_address0 = acc_return_addr_3_reg_1314.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it23.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        acc_return_address0 = acc_return_addr_5_reg_1570.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_23.read()))) {
        acc_return_address0 =  (sc_lv<3>) (tmp_15_fu_1122_p1.read());
    } else {
        acc_return_address0 = "XXX";
    }
}

void correlation_accel_v2::thread_acc_return_address1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it29.read()))) {
        acc_return_address1 = ap_reg_ppstg_acc_return_addr_5_reg_1570_pp2_it28.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read())) {
        acc_return_address1 =  (sc_lv<3>) (ap_const_lv64_5);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read())) {
        acc_return_address1 =  (sc_lv<3>) (ap_const_lv64_3);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read())) {
        acc_return_address1 =  (sc_lv<3>) (ap_const_lv64_1);
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st309_fsm_169.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()))) {
        acc_return_address1 = acc_return_addr_7_reg_1359.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st291_fsm_151.read()))) {
        acc_return_address1 = acc_return_addr_4_reg_1329.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st273_fsm_133.read()))) {
        acc_return_address1 = acc_return_addr_reg_1299.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it23.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        acc_return_address1 = acc_return_addr_2_reg_1432.read();
    } else {
        acc_return_address1 = "XXX";
    }
}

void correlation_accel_v2::thread_acc_return_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st318_fsm_178.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st300_fsm_160.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_23.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it29.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it23.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st282_fsm_142.read()))) {
        acc_return_ce0 = ap_const_logic_1;
    } else {
        acc_return_ce0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_return_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st309_fsm_169.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st273_fsm_133.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it23.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it29.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st291_fsm_151.read()))) {
        acc_return_ce1 = ap_const_logic_1;
    } else {
        acc_return_ce1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_return_d0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it29.read()))) {
        acc_return_d0 = reg_890.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_return_d0 = ap_const_lv32_0;
    } else {
        acc_return_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_acc_return_d1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it29.read()))) {
        acc_return_d1 = reg_956.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_return_d1 = ap_const_lv32_0;
    } else {
        acc_return_d1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_acc_return_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_78_i_fu_1023_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it29.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it28.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_return_we0 = ap_const_logic_1;
    } else {
        acc_return_we0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_return_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_78_i_fu_1023_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it29.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it28.read())))) {
        acc_return_we1 = ap_const_logic_1;
    } else {
        acc_return_we1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_add_1_gep_fu_523_p3() {
    acc_weight_returnA_returnB_add_1_gep_fu_523_p3 =  (sc_lv<3>) (ap_const_lv64_1);
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_add_2_gep_fu_530_p3() {
    acc_weight_returnA_returnB_add_2_gep_fu_530_p3 =  (sc_lv<3>) (ap_const_lv64_2);
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_add_3_gep_fu_537_p3() {
    acc_weight_returnA_returnB_add_3_gep_fu_537_p3 =  (sc_lv<3>) (ap_const_lv64_3);
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_add_4_gep_fu_544_p3() {
    acc_weight_returnA_returnB_add_4_gep_fu_544_p3 =  (sc_lv<3>) (ap_const_lv64_4);
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_add_5_gep_fu_551_p3() {
    acc_weight_returnA_returnB_add_5_gep_fu_551_p3 =  (sc_lv<3>) (ap_const_lv64_5);
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_add_gep_fu_516_p3() {
    acc_weight_returnA_returnB_add_gep_fu_516_p3 =  (sc_lv<3>) (ap_const_lv64_0);
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st335_fsm_195.read()))) {
        acc_weight_returnA_returnB_address0 = acc_weight_returnA_returnB_add_4_reg_1517.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st317_fsm_177.read()))) {
        acc_weight_returnA_returnB_address0 = acc_weight_returnA_returnB_add_2_reg_1507.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st299_fsm_159.read()))) {
        acc_weight_returnA_returnB_address0 = acc_weight_returnA_returnB_add_reg_1497.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it29.read()))) {
        acc_weight_returnA_returnB_address0 = ap_reg_ppstg_acc_weight_returnA_returnB_add_6_reg_1588_pp2_it28.read();
    } else {
        acc_weight_returnA_returnB_address0 = "XXX";
    }
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_address1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        acc_weight_returnA_returnB_address1 = ap_reg_ppstg_acc_weight_returnA_returnB_add_6_reg_1588_pp2_it34.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st344_fsm_204.read()))) {
        acc_weight_returnA_returnB_address1 = acc_weight_returnA_returnB_add_5_reg_1522.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st326_fsm_186.read()))) {
        acc_weight_returnA_returnB_address1 = acc_weight_returnA_returnB_add_3_reg_1512.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st308_fsm_168.read()))) {
        acc_weight_returnA_returnB_address1 = acc_weight_returnA_returnB_add_1_reg_1502.read();
    } else {
        acc_weight_returnA_returnB_address1 = "XXX";
    }
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it29.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st299_fsm_159.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st317_fsm_177.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st335_fsm_195.read()))) {
        acc_weight_returnA_returnB_ce0 = ap_const_logic_1;
    } else {
        acc_weight_returnA_returnB_ce0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it34.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st308_fsm_168.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st326_fsm_186.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st344_fsm_204.read()))) {
        acc_weight_returnA_returnB_ce1 = ap_const_logic_1;
    } else {
        acc_weight_returnA_returnB_ce1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_d0() {
    acc_weight_returnA_returnB_d0 = ap_const_lv32_0;
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_d1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        acc_weight_returnA_returnB_d1 = reg_949.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_weight_returnA_returnB_d1 = ap_const_lv32_0;
    } else {
        acc_weight_returnA_returnB_d1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_we0() {
    if (((!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_weight_returnA_returnB_we0 = ap_const_logic_1;
    } else {
        acc_weight_returnA_returnB_we0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_returnA_returnB_we1() {
    if (((!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it34.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it34.read())))) {
        acc_weight_returnA_returnB_we1 = ap_const_logic_1;
    } else {
        acc_weight_returnA_returnB_we1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_returnSquare_addr_3_gep_fu_336_p3() {
    acc_weight_returnSquare_addr_3_gep_fu_336_p3 =  (sc_lv<3>) (ap_const_lv64_1);
}

void correlation_accel_v2::thread_acc_weight_returnSquare_addr_4_gep_fu_369_p3() {
    acc_weight_returnSquare_addr_4_gep_fu_369_p3 =  (sc_lv<3>) (ap_const_lv64_2);
}

void correlation_accel_v2::thread_acc_weight_returnSquare_addr_6_gep_fu_393_p3() {
    acc_weight_returnSquare_addr_6_gep_fu_393_p3 =  (sc_lv<3>) (ap_const_lv64_3);
}

void correlation_accel_v2::thread_acc_weight_returnSquare_addr_7_gep_fu_417_p3() {
    acc_weight_returnSquare_addr_7_gep_fu_417_p3 =  (sc_lv<3>) (ap_const_lv64_4);
}

void correlation_accel_v2::thread_acc_weight_returnSquare_addr_8_gep_fu_441_p3() {
    acc_weight_returnSquare_addr_8_gep_fu_441_p3 =  (sc_lv<3>) (ap_const_lv64_5);
}

void correlation_accel_v2::thread_acc_weight_returnSquare_addr_gep_fu_298_p3() {
    acc_weight_returnSquare_addr_gep_fu_298_p3 =  (sc_lv<3>) (ap_const_lv64_0);
}

void correlation_accel_v2::thread_acc_weight_returnSquare_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it34.read()))) {
        acc_weight_returnSquare_address0 = ap_reg_ppstg_acc_weight_returnSquare_addr_2_reg_1438_pp0_it33.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read())) {
        acc_weight_returnSquare_address0 =  (sc_lv<3>) (ap_const_lv64_4);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read())) {
        acc_weight_returnSquare_address0 =  (sc_lv<3>) (ap_const_lv64_2);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read())) {
        acc_weight_returnSquare_address0 =  (sc_lv<3>) (ap_const_lv64_0);
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st358_fsm_218.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()))) {
        acc_weight_returnSquare_address0 = acc_weight_returnSquare_addr_8_reg_1379.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st340_fsm_200.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_weight_returnSquare_address0 = acc_weight_returnSquare_addr_6_reg_1349.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st322_fsm_182.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()))) {
        acc_weight_returnSquare_address0 = acc_weight_returnSquare_addr_3_reg_1319.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it28.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        acc_weight_returnSquare_address0 = ap_reg_ppstg_acc_weight_returnSquare_addr_5_reg_1576_pp2_it28.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg1_fsm_24.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()))) {
        acc_weight_returnSquare_address0 =  (sc_lv<3>) (tmp_15_reg_1459.read());
    } else {
        acc_weight_returnSquare_address0 = "XXX";
    }
}

void correlation_accel_v2::thread_acc_weight_returnSquare_address1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it34.read()))) {
        acc_weight_returnSquare_address1 = ap_reg_ppstg_acc_weight_returnSquare_addr_5_reg_1576_pp2_it33.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read())) {
        acc_weight_returnSquare_address1 =  (sc_lv<3>) (ap_const_lv64_5);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read())) {
        acc_weight_returnSquare_address1 =  (sc_lv<3>) (ap_const_lv64_3);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read())) {
        acc_weight_returnSquare_address1 =  (sc_lv<3>) (ap_const_lv64_1);
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st349_fsm_209.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()))) {
        acc_weight_returnSquare_address1 = acc_weight_returnSquare_addr_7_reg_1364.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st331_fsm_191.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_weight_returnSquare_address1 = acc_weight_returnSquare_addr_4_reg_1334.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st313_fsm_173.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()))) {
        acc_weight_returnSquare_address1 = acc_weight_returnSquare_addr_reg_1304.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it28.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        acc_weight_returnSquare_address1 = ap_reg_ppstg_acc_weight_returnSquare_addr_2_reg_1438_pp0_it28.read();
    } else {
        acc_weight_returnSquare_address1 = "XXX";
    }
}

void correlation_accel_v2::thread_acc_weight_returnSquare_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st322_fsm_182.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st340_fsm_200.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st358_fsm_218.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg1_fsm_24.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it34.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it28.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read())))) {
        acc_weight_returnSquare_ce0 = ap_const_logic_1;
    } else {
        acc_weight_returnSquare_ce0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_returnSquare_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st313_fsm_173.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st331_fsm_191.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st349_fsm_209.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it28.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it34.read())))) {
        acc_weight_returnSquare_ce1 = ap_const_logic_1;
    } else {
        acc_weight_returnSquare_ce1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_returnSquare_d0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it34.read()))) {
        acc_weight_returnSquare_d0 = reg_949.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_weight_returnSquare_d0 = ap_const_lv32_0;
    } else {
        acc_weight_returnSquare_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_acc_weight_returnSquare_d1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it34.read()))) {
        acc_weight_returnSquare_d1 = reg_949.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_weight_returnSquare_d1 = ap_const_lv32_0;
    } else {
        acc_weight_returnSquare_d1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_acc_weight_returnSquare_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_78_i_fu_1023_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it34.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it33.read())))) {
        acc_weight_returnSquare_we0 = ap_const_logic_1;
    } else {
        acc_weight_returnSquare_we0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_returnSquare_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_78_i_fu_1023_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it34.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it33.read())))) {
        acc_weight_returnSquare_we1 = ap_const_logic_1;
    } else {
        acc_weight_returnSquare_we1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_return_addr_3_gep_fu_348_p3() {
    acc_weight_return_addr_3_gep_fu_348_p3 =  (sc_lv<3>) (ap_const_lv64_1);
}

void correlation_accel_v2::thread_acc_weight_return_addr_4_gep_fu_377_p3() {
    acc_weight_return_addr_4_gep_fu_377_p3 =  (sc_lv<3>) (ap_const_lv64_2);
}

void correlation_accel_v2::thread_acc_weight_return_addr_6_gep_fu_401_p3() {
    acc_weight_return_addr_6_gep_fu_401_p3 =  (sc_lv<3>) (ap_const_lv64_3);
}

void correlation_accel_v2::thread_acc_weight_return_addr_7_gep_fu_425_p3() {
    acc_weight_return_addr_7_gep_fu_425_p3 =  (sc_lv<3>) (ap_const_lv64_4);
}

void correlation_accel_v2::thread_acc_weight_return_addr_8_gep_fu_449_p3() {
    acc_weight_return_addr_8_gep_fu_449_p3 =  (sc_lv<3>) (ap_const_lv64_5);
}

void correlation_accel_v2::thread_acc_weight_return_addr_gep_fu_311_p3() {
    acc_weight_return_addr_gep_fu_311_p3 =  (sc_lv<3>) (ap_const_lv64_0);
}

void correlation_accel_v2::thread_acc_weight_return_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        acc_weight_return_address0 = ap_reg_ppstg_acc_weight_return_addr_5_reg_1582_pp2_it31.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read())) {
        acc_weight_return_address0 =  (sc_lv<3>) (ap_const_lv64_4);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read())) {
        acc_weight_return_address0 =  (sc_lv<3>) (ap_const_lv64_2);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read())) {
        acc_weight_return_address0 =  (sc_lv<3>) (ap_const_lv64_0);
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st339_fsm_199.read()))) {
        acc_weight_return_address0 = acc_weight_return_addr_8_reg_1384.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st321_fsm_181.read()))) {
        acc_weight_return_address0 = acc_weight_return_addr_6_reg_1354.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st303_fsm_163.read()))) {
        acc_weight_return_address0 = acc_weight_return_addr_3_reg_1324.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg1_fsm_24.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()))) {
        acc_weight_return_address0 =  (sc_lv<3>) (tmp_15_reg_1459.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it26.read()))) {
        acc_weight_return_address0 = ap_reg_ppstg_acc_weight_return_addr_2_reg_1444_pp0_it25.read();
    } else {
        acc_weight_return_address0 = "XXX";
    }
}

void correlation_accel_v2::thread_acc_weight_return_address1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        acc_weight_return_address1 = ap_reg_ppstg_acc_weight_return_addr_2_reg_1444_pp0_it31.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read())) {
        acc_weight_return_address1 =  (sc_lv<3>) (ap_const_lv64_5);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read())) {
        acc_weight_return_address1 =  (sc_lv<3>) (ap_const_lv64_3);
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read())) {
        acc_weight_return_address1 =  (sc_lv<3>) (ap_const_lv64_1);
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st330_fsm_190.read()))) {
        acc_weight_return_address1 = acc_weight_return_addr_7_reg_1369.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st312_fsm_172.read()))) {
        acc_weight_return_address1 = acc_weight_return_addr_4_reg_1339.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st294_fsm_154.read()))) {
        acc_weight_return_address1 = acc_weight_return_addr_reg_1309.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it26.read()))) {
        acc_weight_return_address1 = ap_reg_ppstg_acc_weight_return_addr_5_reg_1582_pp2_it25.read();
    } else {
        acc_weight_return_address1 = "XXX";
    }
}

void correlation_accel_v2::thread_acc_weight_return_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg1_fsm_24.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it26.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it31.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st303_fsm_163.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st321_fsm_181.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st339_fsm_199.read()))) {
        acc_weight_return_ce0 = ap_const_logic_1;
    } else {
        acc_weight_return_ce0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_return_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it31.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it26.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st294_fsm_154.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st312_fsm_172.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st330_fsm_190.read()))) {
        acc_weight_return_ce1 = ap_const_logic_1;
    } else {
        acc_weight_return_ce1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_return_d0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        acc_weight_return_d0 = reg_956.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_weight_return_d0 = ap_const_lv32_0;
    } else {
        acc_weight_return_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_acc_weight_return_d1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        acc_weight_return_d1 = reg_890.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()))) {
        acc_weight_return_d1 = ap_const_lv32_0;
    } else {
        acc_weight_return_d1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_acc_weight_return_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_78_i_fu_1023_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it31.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it31.read())))) {
        acc_weight_return_we0 = ap_const_logic_1;
    } else {
        acc_weight_return_we0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_acc_weight_return_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_78_i_fu_1023_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st201_fsm_129.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it31.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it31.read())))) {
        acc_weight_return_we1 = ap_const_logic_1;
    } else {
        acc_weight_return_we1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st200_fsm_128.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_29_fu_1141_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void correlation_accel_v2::thread_ap_sig_bdd_1000() {
    ap_sig_bdd_1000 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(155, 155));
}

void correlation_accel_v2::thread_ap_sig_bdd_1008() {
    ap_sig_bdd_1008 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(164, 164));
}

void correlation_accel_v2::thread_ap_sig_bdd_1016() {
    ap_sig_bdd_1016 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(173, 173));
}

void correlation_accel_v2::thread_ap_sig_bdd_1024() {
    ap_sig_bdd_1024 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(182, 182));
}

void correlation_accel_v2::thread_ap_sig_bdd_1032() {
    ap_sig_bdd_1032 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(191, 191));
}

void correlation_accel_v2::thread_ap_sig_bdd_1040() {
    ap_sig_bdd_1040 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(200, 200));
}

void correlation_accel_v2::thread_ap_sig_bdd_1063() {
    ap_sig_bdd_1063 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(267, 267));
}

void correlation_accel_v2::thread_ap_sig_bdd_1084() {
    ap_sig_bdd_1084 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(174, 174));
}

void correlation_accel_v2::thread_ap_sig_bdd_1092() {
    ap_sig_bdd_1092 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(183, 183));
}

void correlation_accel_v2::thread_ap_sig_bdd_1100() {
    ap_sig_bdd_1100 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(192, 192));
}

void correlation_accel_v2::thread_ap_sig_bdd_1108() {
    ap_sig_bdd_1108 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(201, 201));
}

void correlation_accel_v2::thread_ap_sig_bdd_1116() {
    ap_sig_bdd_1116 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(210, 210));
}

void correlation_accel_v2::thread_ap_sig_bdd_1124() {
    ap_sig_bdd_1124 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(219, 219));
}

void correlation_accel_v2::thread_ap_sig_bdd_1159() {
    ap_sig_bdd_1159 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(188, 188));
}

void correlation_accel_v2::thread_ap_sig_bdd_1169() {
    ap_sig_bdd_1169 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(237, 237));
}

void correlation_accel_v2::thread_ap_sig_bdd_1177() {
    ap_sig_bdd_1177 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(271, 271));
}

void correlation_accel_v2::thread_ap_sig_bdd_1193() {
    ap_sig_bdd_1193 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(209, 209));
}

void correlation_accel_v2::thread_ap_sig_bdd_1201() {
    ap_sig_bdd_1201 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(232, 232));
}

void correlation_accel_v2::thread_ap_sig_bdd_1209() {
    ap_sig_bdd_1209 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(276, 276));
}

void correlation_accel_v2::thread_ap_sig_bdd_1218() {
    ap_sig_bdd_1218 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(26, 26));
}

void correlation_accel_v2::thread_ap_sig_bdd_1227() {
    ap_sig_bdd_1227 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(169, 169));
}

void correlation_accel_v2::thread_ap_sig_bdd_1235() {
    ap_sig_bdd_1235 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(178, 178));
}

void correlation_accel_v2::thread_ap_sig_bdd_1243() {
    ap_sig_bdd_1243 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(187, 187));
}

void correlation_accel_v2::thread_ap_sig_bdd_1251() {
    ap_sig_bdd_1251 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(196, 196));
}

void correlation_accel_v2::thread_ap_sig_bdd_1259() {
    ap_sig_bdd_1259 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(205, 205));
}

void correlation_accel_v2::thread_ap_sig_bdd_1283() {
    ap_sig_bdd_1283 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(218, 218));
}

void correlation_accel_v2::thread_ap_sig_bdd_1302() {
    ap_sig_bdd_1302 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(160, 160));
}

void correlation_accel_v2::thread_ap_sig_bdd_1328() {
    ap_sig_bdd_1328 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(6, 6));
}

void correlation_accel_v2::thread_ap_sig_bdd_1337() {
    ap_sig_bdd_1337 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(7, 7));
}

void correlation_accel_v2::thread_ap_sig_bdd_1365() {
    ap_sig_bdd_1365 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(19, 19));
}

void correlation_accel_v2::thread_ap_sig_bdd_1527() {
    ap_sig_bdd_1527 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(23, 23));
}

void correlation_accel_v2::thread_ap_sig_bdd_1550() {
    ap_sig_bdd_1550 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(39, 39));
}

void correlation_accel_v2::thread_ap_sig_bdd_1573() {
    ap_sig_bdd_1573 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(128, 128));
}

void correlation_accel_v2::thread_ap_sig_bdd_1582() {
    ap_sig_bdd_1582 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(130, 130));
}

void correlation_accel_v2::thread_ap_sig_bdd_1752() {
    ap_sig_bdd_1752 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(133, 133));
}

void correlation_accel_v2::thread_ap_sig_bdd_1764() {
    ap_sig_bdd_1764 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(304, 304));
}

void correlation_accel_v2::thread_ap_sig_bdd_1782() {
    ap_sig_bdd_1782 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(31, 31));
}

void correlation_accel_v2::thread_ap_sig_bdd_1855() {
    ap_sig_bdd_1855 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(18, 18));
}

void correlation_accel_v2::thread_ap_sig_bdd_1863() {
    ap_sig_bdd_1863 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void correlation_accel_v2::thread_ap_sig_bdd_1888() {
    ap_sig_bdd_1888 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(339, 339));
}

void correlation_accel_v2::thread_ap_sig_bdd_1952() {
    ap_sig_bdd_1952 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(32, 32));
}

void correlation_accel_v2::thread_ap_sig_bdd_2008() {
    ap_sig_bdd_2008 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(129, 129));
}

void correlation_accel_v2::thread_ap_sig_bdd_2021() {
    ap_sig_bdd_2021 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(142, 142));
}

void correlation_accel_v2::thread_ap_sig_bdd_2050() {
    ap_sig_bdd_2050 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(151, 151));
}

void correlation_accel_v2::thread_ap_sig_bdd_2116() {
    ap_sig_bdd_2116 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(163, 163));
}

void correlation_accel_v2::thread_ap_sig_bdd_2124() {
    ap_sig_bdd_2124 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(181, 181));
}

void correlation_accel_v2::thread_ap_sig_bdd_2132() {
    ap_sig_bdd_2132 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(199, 199));
}

void correlation_accel_v2::thread_ap_sig_bdd_2159() {
    ap_sig_bdd_2159 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(154, 154));
}

void correlation_accel_v2::thread_ap_sig_bdd_2167() {
    ap_sig_bdd_2167 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(172, 172));
}

void correlation_accel_v2::thread_ap_sig_bdd_2175() {
    ap_sig_bdd_2175 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(190, 190));
}

void correlation_accel_v2::thread_ap_sig_bdd_2201() {
    ap_sig_bdd_2201 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(159, 159));
}

void correlation_accel_v2::thread_ap_sig_bdd_2209() {
    ap_sig_bdd_2209 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(177, 177));
}

void correlation_accel_v2::thread_ap_sig_bdd_2217() {
    ap_sig_bdd_2217 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(195, 195));
}

void correlation_accel_v2::thread_ap_sig_bdd_2236() {
    ap_sig_bdd_2236 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(168, 168));
}

void correlation_accel_v2::thread_ap_sig_bdd_2243() {
    ap_sig_bdd_2243 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(186, 186));
}

void correlation_accel_v2::thread_ap_sig_bdd_2251() {
    ap_sig_bdd_2251 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(204, 204));
}

void correlation_accel_v2::thread_ap_sig_bdd_2275() {
    ap_sig_bdd_2275 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(9, 9));
}

void correlation_accel_v2::thread_ap_sig_bdd_2285() {
    ap_sig_bdd_2285 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(27, 27));
}

void correlation_accel_v2::thread_ap_sig_bdd_2293() {
    ap_sig_bdd_2293 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(80, 80));
}

void correlation_accel_v2::thread_ap_sig_bdd_2300() {
    ap_sig_bdd_2300 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(119, 119));
}

void correlation_accel_v2::thread_ap_sig_bdd_2311() {
    ap_sig_bdd_2311 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(135, 135));
}

void correlation_accel_v2::thread_ap_sig_bdd_2319() {
    ap_sig_bdd_2319 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(144, 144));
}

void correlation_accel_v2::thread_ap_sig_bdd_2326() {
    ap_sig_bdd_2326 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(153, 153));
}

void correlation_accel_v2::thread_ap_sig_bdd_2334() {
    ap_sig_bdd_2334 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(156, 156));
}

void correlation_accel_v2::thread_ap_sig_bdd_2342() {
    ap_sig_bdd_2342 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(162, 162));
}

void correlation_accel_v2::thread_ap_sig_bdd_2350() {
    ap_sig_bdd_2350 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(165, 165));
}

void correlation_accel_v2::thread_ap_sig_bdd_2357() {
    ap_sig_bdd_2357 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(171, 171));
}

void correlation_accel_v2::thread_ap_sig_bdd_2366() {
    ap_sig_bdd_2366 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(175, 175));
}

void correlation_accel_v2::thread_ap_sig_bdd_2374() {
    ap_sig_bdd_2374 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(180, 180));
}

void correlation_accel_v2::thread_ap_sig_bdd_2383() {
    ap_sig_bdd_2383 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(184, 184));
}

void correlation_accel_v2::thread_ap_sig_bdd_2392() {
    ap_sig_bdd_2392 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(193, 193));
}

void correlation_accel_v2::thread_ap_sig_bdd_2400() {
    ap_sig_bdd_2400 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(197, 197));
}

void correlation_accel_v2::thread_ap_sig_bdd_2409() {
    ap_sig_bdd_2409 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(202, 202));
}

void correlation_accel_v2::thread_ap_sig_bdd_2417() {
    ap_sig_bdd_2417 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(206, 206));
}

void correlation_accel_v2::thread_ap_sig_bdd_2425() {
    ap_sig_bdd_2425 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(211, 211));
}

void correlation_accel_v2::thread_ap_sig_bdd_2433() {
    ap_sig_bdd_2433 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(215, 215));
}

void correlation_accel_v2::thread_ap_sig_bdd_2441() {
    ap_sig_bdd_2441 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(220, 220));
}

void correlation_accel_v2::thread_ap_sig_bdd_2449() {
    ap_sig_bdd_2449 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(224, 224));
}

void correlation_accel_v2::thread_ap_sig_bdd_2457() {
    ap_sig_bdd_2457 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(229, 229));
}

void correlation_accel_v2::thread_ap_sig_bdd_2465() {
    ap_sig_bdd_2465 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(263, 263));
}

void correlation_accel_v2::thread_ap_sig_bdd_2472() {
    ap_sig_bdd_2472 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(268, 268));
}

void correlation_accel_v2::thread_ap_sig_bdd_2513() {
    ap_sig_bdd_2513 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(70, 70));
}

void correlation_accel_v2::thread_ap_sig_bdd_2520() {
    ap_sig_bdd_2520 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(75, 75));
}

void correlation_accel_v2::thread_ap_sig_bdd_2528() {
    ap_sig_bdd_2528 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(114, 114));
}

void correlation_accel_v2::thread_ap_sig_bdd_2539() {
    ap_sig_bdd_2539 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(258, 258));
}

void correlation_accel_v2::thread_ap_sig_bdd_2548() {
    ap_sig_bdd_2548 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(305, 305));
}

void correlation_accel_v2::thread_ap_sig_bdd_2564() {
    ap_sig_bdd_2564 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(40, 40));
}

void correlation_accel_v2::thread_ap_sig_bdd_2571() {
    ap_sig_bdd_2571 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(89, 89));
}

void correlation_accel_v2::thread_ap_sig_bdd_2578() {
    ap_sig_bdd_2578 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(189, 189));
}

void correlation_accel_v2::thread_ap_sig_bdd_2585() {
    ap_sig_bdd_2585 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(233, 233));
}

void correlation_accel_v2::thread_ap_sig_bdd_2592() {
    ap_sig_bdd_2592 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(238, 238));
}

void correlation_accel_v2::thread_ap_sig_bdd_2600() {
    ap_sig_bdd_2600 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(310, 310));
}

void correlation_accel_v2::thread_ap_sig_bdd_2613() {
    ap_sig_bdd_2613 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(277, 277));
}

void correlation_accel_v2::thread_ap_sig_bdd_2833() {
    ap_sig_bdd_2833 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(10, 10));
}

void correlation_accel_v2::thread_ap_sig_bdd_2841() {
    ap_sig_bdd_2841 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(11, 11));
}

void correlation_accel_v2::thread_ap_sig_bdd_2849() {
    ap_sig_bdd_2849 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(12, 12));
}

void correlation_accel_v2::thread_ap_sig_bdd_2857() {
    ap_sig_bdd_2857 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(13, 13));
}

void correlation_accel_v2::thread_ap_sig_bdd_2865() {
    ap_sig_bdd_2865 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(14, 14));
}

void correlation_accel_v2::thread_ap_sig_bdd_2873() {
    ap_sig_bdd_2873 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(15, 15));
}

void correlation_accel_v2::thread_ap_sig_bdd_2881() {
    ap_sig_bdd_2881 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(16, 16));
}

void correlation_accel_v2::thread_ap_sig_bdd_2900() {
    ap_sig_bdd_2900 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(28, 28));
}

void correlation_accel_v2::thread_ap_sig_bdd_2909() {
    ap_sig_bdd_2909 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(29, 29));
}

void correlation_accel_v2::thread_ap_sig_bdd_2918() {
    ap_sig_bdd_2918 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(30, 30));
}

void correlation_accel_v2::thread_ap_sig_bdd_2934() {
    ap_sig_bdd_2934 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(81, 81));
}

void correlation_accel_v2::thread_ap_sig_bdd_2942() {
    ap_sig_bdd_2942 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(82, 82));
}

void correlation_accel_v2::thread_ap_sig_bdd_2950() {
    ap_sig_bdd_2950 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(83, 83));
}

void correlation_accel_v2::thread_ap_sig_bdd_2958() {
    ap_sig_bdd_2958 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(84, 84));
}

void correlation_accel_v2::thread_ap_sig_bdd_2966() {
    ap_sig_bdd_2966 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(85, 85));
}

void correlation_accel_v2::thread_ap_sig_bdd_2974() {
    ap_sig_bdd_2974 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(86, 86));
}

void correlation_accel_v2::thread_ap_sig_bdd_2982() {
    ap_sig_bdd_2982 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(87, 87));
}

void correlation_accel_v2::thread_ap_sig_bdd_2992() {
    ap_sig_bdd_2992 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(120, 120));
}

void correlation_accel_v2::thread_ap_sig_bdd_3000() {
    ap_sig_bdd_3000 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(121, 121));
}

void correlation_accel_v2::thread_ap_sig_bdd_3008() {
    ap_sig_bdd_3008 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(122, 122));
}

void correlation_accel_v2::thread_ap_sig_bdd_3016() {
    ap_sig_bdd_3016 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(123, 123));
}

void correlation_accel_v2::thread_ap_sig_bdd_3024() {
    ap_sig_bdd_3024 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(124, 124));
}

void correlation_accel_v2::thread_ap_sig_bdd_3032() {
    ap_sig_bdd_3032 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(125, 125));
}

void correlation_accel_v2::thread_ap_sig_bdd_3040() {
    ap_sig_bdd_3040 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(126, 126));
}

void correlation_accel_v2::thread_ap_sig_bdd_3054() {
    ap_sig_bdd_3054 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(136, 136));
}

void correlation_accel_v2::thread_ap_sig_bdd_3062() {
    ap_sig_bdd_3062 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(137, 137));
}

void correlation_accel_v2::thread_ap_sig_bdd_3070() {
    ap_sig_bdd_3070 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(138, 138));
}

void correlation_accel_v2::thread_ap_sig_bdd_3078() {
    ap_sig_bdd_3078 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(139, 139));
}

void correlation_accel_v2::thread_ap_sig_bdd_3086() {
    ap_sig_bdd_3086 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(140, 140));
}

void correlation_accel_v2::thread_ap_sig_bdd_3094() {
    ap_sig_bdd_3094 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(141, 141));
}

void correlation_accel_v2::thread_ap_sig_bdd_3105() {
    ap_sig_bdd_3105 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(145, 145));
}

void correlation_accel_v2::thread_ap_sig_bdd_3113() {
    ap_sig_bdd_3113 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(146, 146));
}

void correlation_accel_v2::thread_ap_sig_bdd_3121() {
    ap_sig_bdd_3121 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(147, 147));
}

void correlation_accel_v2::thread_ap_sig_bdd_3129() {
    ap_sig_bdd_3129 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(148, 148));
}

void correlation_accel_v2::thread_ap_sig_bdd_3137() {
    ap_sig_bdd_3137 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(149, 149));
}

void correlation_accel_v2::thread_ap_sig_bdd_3145() {
    ap_sig_bdd_3145 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(150, 150));
}

void correlation_accel_v2::thread_ap_sig_bdd_3159() {
    ap_sig_bdd_3159 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(157, 157));
}

void correlation_accel_v2::thread_ap_sig_bdd_3167() {
    ap_sig_bdd_3167 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(158, 158));
}

void correlation_accel_v2::thread_ap_sig_bdd_3182() {
    ap_sig_bdd_3182 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(166, 166));
}

void correlation_accel_v2::thread_ap_sig_bdd_3190() {
    ap_sig_bdd_3190 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(167, 167));
}

void correlation_accel_v2::thread_ap_sig_bdd_3206() {
    ap_sig_bdd_3206 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(176, 176));
}

void correlation_accel_v2::thread_ap_sig_bdd_3222() {
    ap_sig_bdd_3222 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(185, 185));
}

void correlation_accel_v2::thread_ap_sig_bdd_3238() {
    ap_sig_bdd_3238 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(194, 194));
}

void correlation_accel_v2::thread_ap_sig_bdd_3249() {
    ap_sig_bdd_3249 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(198, 198));
}

void correlation_accel_v2::thread_ap_sig_bdd_3261() {
    ap_sig_bdd_3261 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(203, 203));
}

void correlation_accel_v2::thread_ap_sig_bdd_3272() {
    ap_sig_bdd_3272 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(207, 207));
}

void correlation_accel_v2::thread_ap_sig_bdd_3280() {
    ap_sig_bdd_3280 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(208, 208));
}

void correlation_accel_v2::thread_ap_sig_bdd_3291() {
    ap_sig_bdd_3291 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(212, 212));
}

void correlation_accel_v2::thread_ap_sig_bdd_3299() {
    ap_sig_bdd_3299 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(213, 213));
}

void correlation_accel_v2::thread_ap_sig_bdd_3309() {
    ap_sig_bdd_3309 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(216, 216));
}

void correlation_accel_v2::thread_ap_sig_bdd_3317() {
    ap_sig_bdd_3317 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(217, 217));
}

void correlation_accel_v2::thread_ap_sig_bdd_3328() {
    ap_sig_bdd_3328 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(221, 221));
}

void correlation_accel_v2::thread_ap_sig_bdd_3336() {
    ap_sig_bdd_3336 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(222, 222));
}

void correlation_accel_v2::thread_ap_sig_bdd_3346() {
    ap_sig_bdd_3346 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(225, 225));
}

void correlation_accel_v2::thread_ap_sig_bdd_3354() {
    ap_sig_bdd_3354 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(226, 226));
}

void correlation_accel_v2::thread_ap_sig_bdd_3362() {
    ap_sig_bdd_3362 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(227, 227));
}

void correlation_accel_v2::thread_ap_sig_bdd_3372() {
    ap_sig_bdd_3372 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(230, 230));
}

void correlation_accel_v2::thread_ap_sig_bdd_3380() {
    ap_sig_bdd_3380 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(231, 231));
}

void correlation_accel_v2::thread_ap_sig_bdd_3390() {
    ap_sig_bdd_3390 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(234, 234));
}

void correlation_accel_v2::thread_ap_sig_bdd_3398() {
    ap_sig_bdd_3398 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(235, 235));
}

void correlation_accel_v2::thread_ap_sig_bdd_3406() {
    ap_sig_bdd_3406 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(236, 236));
}

void correlation_accel_v2::thread_ap_sig_bdd_3416() {
    ap_sig_bdd_3416 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(264, 264));
}

void correlation_accel_v2::thread_ap_sig_bdd_3424() {
    ap_sig_bdd_3424 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(265, 265));
}

void correlation_accel_v2::thread_ap_sig_bdd_3432() {
    ap_sig_bdd_3432 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(266, 266));
}

void correlation_accel_v2::thread_ap_sig_bdd_3442() {
    ap_sig_bdd_3442 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(269, 269));
}

void correlation_accel_v2::thread_ap_sig_bdd_3450() {
    ap_sig_bdd_3450 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(270, 270));
}

void correlation_accel_v2::thread_ap_sig_bdd_3459() {
    ap_sig_bdd_3459 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(272, 272));
}

void correlation_accel_v2::thread_ap_sig_bdd_3467() {
    ap_sig_bdd_3467 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(273, 273));
}

void correlation_accel_v2::thread_ap_sig_bdd_3475() {
    ap_sig_bdd_3475 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(274, 274));
}

void correlation_accel_v2::thread_ap_sig_bdd_3483() {
    ap_sig_bdd_3483 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(275, 275));
}

void correlation_accel_v2::thread_ap_sig_bdd_3516() {
    ap_sig_bdd_3516 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void correlation_accel_v2::thread_ap_sig_bdd_3524() {
    ap_sig_bdd_3524 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void correlation_accel_v2::thread_ap_sig_bdd_3532() {
    ap_sig_bdd_3532 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void correlation_accel_v2::thread_ap_sig_bdd_3546() {
    ap_sig_bdd_3546 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(71, 71));
}

void correlation_accel_v2::thread_ap_sig_bdd_3554() {
    ap_sig_bdd_3554 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(72, 72));
}

void correlation_accel_v2::thread_ap_sig_bdd_3562() {
    ap_sig_bdd_3562 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(73, 73));
}

void correlation_accel_v2::thread_ap_sig_bdd_3572() {
    ap_sig_bdd_3572 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(76, 76));
}

void correlation_accel_v2::thread_ap_sig_bdd_358() {
    ap_sig_bdd_358 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void correlation_accel_v2::thread_ap_sig_bdd_3580() {
    ap_sig_bdd_3580 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(77, 77));
}

void correlation_accel_v2::thread_ap_sig_bdd_3588() {
    ap_sig_bdd_3588 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(78, 78));
}

void correlation_accel_v2::thread_ap_sig_bdd_3598() {
    ap_sig_bdd_3598 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(115, 115));
}

void correlation_accel_v2::thread_ap_sig_bdd_3606() {
    ap_sig_bdd_3606 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(116, 116));
}

void correlation_accel_v2::thread_ap_sig_bdd_3614() {
    ap_sig_bdd_3614 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(117, 117));
}

void correlation_accel_v2::thread_ap_sig_bdd_3643() {
    ap_sig_bdd_3643 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(259, 259));
}

void correlation_accel_v2::thread_ap_sig_bdd_3651() {
    ap_sig_bdd_3651 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(260, 260));
}

void correlation_accel_v2::thread_ap_sig_bdd_3659() {
    ap_sig_bdd_3659 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(261, 261));
}

void correlation_accel_v2::thread_ap_sig_bdd_3674() {
    ap_sig_bdd_3674 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(306, 306));
}

void correlation_accel_v2::thread_ap_sig_bdd_3682() {
    ap_sig_bdd_3682 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(307, 307));
}

void correlation_accel_v2::thread_ap_sig_bdd_3690() {
    ap_sig_bdd_3690 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(308, 308));
}

void correlation_accel_v2::thread_ap_sig_bdd_3775() {
    ap_sig_bdd_3775 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(41, 41));
}

void correlation_accel_v2::thread_ap_sig_bdd_3783() {
    ap_sig_bdd_3783 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(42, 42));
}

void correlation_accel_v2::thread_ap_sig_bdd_3791() {
    ap_sig_bdd_3791 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(43, 43));
}

void correlation_accel_v2::thread_ap_sig_bdd_3799() {
    ap_sig_bdd_3799 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(44, 44));
}

void correlation_accel_v2::thread_ap_sig_bdd_3807() {
    ap_sig_bdd_3807 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(45, 45));
}

void correlation_accel_v2::thread_ap_sig_bdd_3815() {
    ap_sig_bdd_3815 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(46, 46));
}

void correlation_accel_v2::thread_ap_sig_bdd_3823() {
    ap_sig_bdd_3823 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(47, 47));
}

void correlation_accel_v2::thread_ap_sig_bdd_3831() {
    ap_sig_bdd_3831 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(48, 48));
}

void correlation_accel_v2::thread_ap_sig_bdd_3839() {
    ap_sig_bdd_3839 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(49, 49));
}

void correlation_accel_v2::thread_ap_sig_bdd_3847() {
    ap_sig_bdd_3847 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(50, 50));
}

void correlation_accel_v2::thread_ap_sig_bdd_3855() {
    ap_sig_bdd_3855 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(51, 51));
}

void correlation_accel_v2::thread_ap_sig_bdd_3863() {
    ap_sig_bdd_3863 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(52, 52));
}

void correlation_accel_v2::thread_ap_sig_bdd_3871() {
    ap_sig_bdd_3871 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(53, 53));
}

void correlation_accel_v2::thread_ap_sig_bdd_3879() {
    ap_sig_bdd_3879 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(54, 54));
}

void correlation_accel_v2::thread_ap_sig_bdd_3887() {
    ap_sig_bdd_3887 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(55, 55));
}

void correlation_accel_v2::thread_ap_sig_bdd_3895() {
    ap_sig_bdd_3895 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(56, 56));
}

void correlation_accel_v2::thread_ap_sig_bdd_3903() {
    ap_sig_bdd_3903 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(57, 57));
}

void correlation_accel_v2::thread_ap_sig_bdd_3911() {
    ap_sig_bdd_3911 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(58, 58));
}

void correlation_accel_v2::thread_ap_sig_bdd_3919() {
    ap_sig_bdd_3919 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(59, 59));
}

void correlation_accel_v2::thread_ap_sig_bdd_3927() {
    ap_sig_bdd_3927 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(60, 60));
}

void correlation_accel_v2::thread_ap_sig_bdd_3935() {
    ap_sig_bdd_3935 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(61, 61));
}

void correlation_accel_v2::thread_ap_sig_bdd_3943() {
    ap_sig_bdd_3943 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(62, 62));
}

void correlation_accel_v2::thread_ap_sig_bdd_3951() {
    ap_sig_bdd_3951 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(63, 63));
}

void correlation_accel_v2::thread_ap_sig_bdd_3959() {
    ap_sig_bdd_3959 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(64, 64));
}

void correlation_accel_v2::thread_ap_sig_bdd_3967() {
    ap_sig_bdd_3967 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(65, 65));
}

void correlation_accel_v2::thread_ap_sig_bdd_3975() {
    ap_sig_bdd_3975 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(66, 66));
}

void correlation_accel_v2::thread_ap_sig_bdd_3983() {
    ap_sig_bdd_3983 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(67, 67));
}

void correlation_accel_v2::thread_ap_sig_bdd_3991() {
    ap_sig_bdd_3991 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(68, 68));
}

void correlation_accel_v2::thread_ap_sig_bdd_4001() {
    ap_sig_bdd_4001 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(90, 90));
}

void correlation_accel_v2::thread_ap_sig_bdd_4009() {
    ap_sig_bdd_4009 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(91, 91));
}

void correlation_accel_v2::thread_ap_sig_bdd_4017() {
    ap_sig_bdd_4017 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(92, 92));
}

void correlation_accel_v2::thread_ap_sig_bdd_4025() {
    ap_sig_bdd_4025 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(93, 93));
}

void correlation_accel_v2::thread_ap_sig_bdd_4033() {
    ap_sig_bdd_4033 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(94, 94));
}

void correlation_accel_v2::thread_ap_sig_bdd_4041() {
    ap_sig_bdd_4041 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(95, 95));
}

void correlation_accel_v2::thread_ap_sig_bdd_4049() {
    ap_sig_bdd_4049 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(96, 96));
}

void correlation_accel_v2::thread_ap_sig_bdd_4057() {
    ap_sig_bdd_4057 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(97, 97));
}

void correlation_accel_v2::thread_ap_sig_bdd_4065() {
    ap_sig_bdd_4065 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(98, 98));
}

void correlation_accel_v2::thread_ap_sig_bdd_4073() {
    ap_sig_bdd_4073 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(99, 99));
}

void correlation_accel_v2::thread_ap_sig_bdd_4081() {
    ap_sig_bdd_4081 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(100, 100));
}

void correlation_accel_v2::thread_ap_sig_bdd_4089() {
    ap_sig_bdd_4089 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(101, 101));
}

void correlation_accel_v2::thread_ap_sig_bdd_4097() {
    ap_sig_bdd_4097 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(102, 102));
}

void correlation_accel_v2::thread_ap_sig_bdd_4105() {
    ap_sig_bdd_4105 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(103, 103));
}

void correlation_accel_v2::thread_ap_sig_bdd_4113() {
    ap_sig_bdd_4113 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(104, 104));
}

void correlation_accel_v2::thread_ap_sig_bdd_4121() {
    ap_sig_bdd_4121 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(105, 105));
}

void correlation_accel_v2::thread_ap_sig_bdd_4129() {
    ap_sig_bdd_4129 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(106, 106));
}

void correlation_accel_v2::thread_ap_sig_bdd_4137() {
    ap_sig_bdd_4137 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(107, 107));
}

void correlation_accel_v2::thread_ap_sig_bdd_4145() {
    ap_sig_bdd_4145 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(108, 108));
}

void correlation_accel_v2::thread_ap_sig_bdd_4153() {
    ap_sig_bdd_4153 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(109, 109));
}

void correlation_accel_v2::thread_ap_sig_bdd_4161() {
    ap_sig_bdd_4161 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(110, 110));
}

void correlation_accel_v2::thread_ap_sig_bdd_4169() {
    ap_sig_bdd_4169 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(111, 111));
}

void correlation_accel_v2::thread_ap_sig_bdd_4177() {
    ap_sig_bdd_4177 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(112, 112));
}

void correlation_accel_v2::thread_ap_sig_bdd_4185() {
    ap_sig_bdd_4185 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(113, 113));
}

void correlation_accel_v2::thread_ap_sig_bdd_422() {
    ap_sig_bdd_422 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(21, 21));
}

void correlation_accel_v2::thread_ap_sig_bdd_4238() {
    ap_sig_bdd_4238 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(239, 239));
}

void correlation_accel_v2::thread_ap_sig_bdd_4246() {
    ap_sig_bdd_4246 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(240, 240));
}

void correlation_accel_v2::thread_ap_sig_bdd_4254() {
    ap_sig_bdd_4254 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(241, 241));
}

void correlation_accel_v2::thread_ap_sig_bdd_4262() {
    ap_sig_bdd_4262 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(242, 242));
}

void correlation_accel_v2::thread_ap_sig_bdd_4270() {
    ap_sig_bdd_4270 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(243, 243));
}

void correlation_accel_v2::thread_ap_sig_bdd_4278() {
    ap_sig_bdd_4278 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(244, 244));
}

void correlation_accel_v2::thread_ap_sig_bdd_4286() {
    ap_sig_bdd_4286 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(245, 245));
}

void correlation_accel_v2::thread_ap_sig_bdd_4294() {
    ap_sig_bdd_4294 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(246, 246));
}

void correlation_accel_v2::thread_ap_sig_bdd_4302() {
    ap_sig_bdd_4302 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(247, 247));
}

void correlation_accel_v2::thread_ap_sig_bdd_4310() {
    ap_sig_bdd_4310 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(248, 248));
}

void correlation_accel_v2::thread_ap_sig_bdd_4318() {
    ap_sig_bdd_4318 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(249, 249));
}

void correlation_accel_v2::thread_ap_sig_bdd_4326() {
    ap_sig_bdd_4326 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(250, 250));
}

void correlation_accel_v2::thread_ap_sig_bdd_4334() {
    ap_sig_bdd_4334 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(251, 251));
}

void correlation_accel_v2::thread_ap_sig_bdd_4342() {
    ap_sig_bdd_4342 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(252, 252));
}

void correlation_accel_v2::thread_ap_sig_bdd_4350() {
    ap_sig_bdd_4350 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(253, 253));
}

void correlation_accel_v2::thread_ap_sig_bdd_4358() {
    ap_sig_bdd_4358 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(254, 254));
}

void correlation_accel_v2::thread_ap_sig_bdd_4366() {
    ap_sig_bdd_4366 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(255, 255));
}

void correlation_accel_v2::thread_ap_sig_bdd_4374() {
    ap_sig_bdd_4374 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(256, 256));
}

void correlation_accel_v2::thread_ap_sig_bdd_4382() {
    ap_sig_bdd_4382 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(257, 257));
}

void correlation_accel_v2::thread_ap_sig_bdd_4401() {
    ap_sig_bdd_4401 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(311, 311));
}

void correlation_accel_v2::thread_ap_sig_bdd_4409() {
    ap_sig_bdd_4409 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(312, 312));
}

void correlation_accel_v2::thread_ap_sig_bdd_4417() {
    ap_sig_bdd_4417 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(313, 313));
}

void correlation_accel_v2::thread_ap_sig_bdd_4425() {
    ap_sig_bdd_4425 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(314, 314));
}

void correlation_accel_v2::thread_ap_sig_bdd_4433() {
    ap_sig_bdd_4433 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(315, 315));
}

void correlation_accel_v2::thread_ap_sig_bdd_4441() {
    ap_sig_bdd_4441 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(316, 316));
}

void correlation_accel_v2::thread_ap_sig_bdd_4449() {
    ap_sig_bdd_4449 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(317, 317));
}

void correlation_accel_v2::thread_ap_sig_bdd_4457() {
    ap_sig_bdd_4457 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(318, 318));
}

void correlation_accel_v2::thread_ap_sig_bdd_4465() {
    ap_sig_bdd_4465 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(319, 319));
}

void correlation_accel_v2::thread_ap_sig_bdd_4473() {
    ap_sig_bdd_4473 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(320, 320));
}

void correlation_accel_v2::thread_ap_sig_bdd_4481() {
    ap_sig_bdd_4481 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(321, 321));
}

void correlation_accel_v2::thread_ap_sig_bdd_4489() {
    ap_sig_bdd_4489 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(322, 322));
}

void correlation_accel_v2::thread_ap_sig_bdd_4497() {
    ap_sig_bdd_4497 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(323, 323));
}

void correlation_accel_v2::thread_ap_sig_bdd_4505() {
    ap_sig_bdd_4505 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(324, 324));
}

void correlation_accel_v2::thread_ap_sig_bdd_4513() {
    ap_sig_bdd_4513 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(325, 325));
}

void correlation_accel_v2::thread_ap_sig_bdd_4521() {
    ap_sig_bdd_4521 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(326, 326));
}

void correlation_accel_v2::thread_ap_sig_bdd_4529() {
    ap_sig_bdd_4529 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(327, 327));
}

void correlation_accel_v2::thread_ap_sig_bdd_4537() {
    ap_sig_bdd_4537 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(328, 328));
}

void correlation_accel_v2::thread_ap_sig_bdd_4545() {
    ap_sig_bdd_4545 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(329, 329));
}

void correlation_accel_v2::thread_ap_sig_bdd_4553() {
    ap_sig_bdd_4553 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(330, 330));
}

void correlation_accel_v2::thread_ap_sig_bdd_4561() {
    ap_sig_bdd_4561 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(331, 331));
}

void correlation_accel_v2::thread_ap_sig_bdd_4569() {
    ap_sig_bdd_4569 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(332, 332));
}

void correlation_accel_v2::thread_ap_sig_bdd_4577() {
    ap_sig_bdd_4577 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(333, 333));
}

void correlation_accel_v2::thread_ap_sig_bdd_4585() {
    ap_sig_bdd_4585 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(334, 334));
}

void correlation_accel_v2::thread_ap_sig_bdd_4593() {
    ap_sig_bdd_4593 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(335, 335));
}

void correlation_accel_v2::thread_ap_sig_bdd_4601() {
    ap_sig_bdd_4601 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(336, 336));
}

void correlation_accel_v2::thread_ap_sig_bdd_4609() {
    ap_sig_bdd_4609 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(337, 337));
}

void correlation_accel_v2::thread_ap_sig_bdd_4617() {
    ap_sig_bdd_4617 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(338, 338));
}

void correlation_accel_v2::thread_ap_sig_bdd_533() {
    ap_sig_bdd_533 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(131, 131));
}

void correlation_accel_v2::thread_ap_sig_bdd_633() {
    ap_sig_bdd_633 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void correlation_accel_v2::thread_ap_sig_bdd_642() {
    ap_sig_bdd_642 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(22, 22));
}

void correlation_accel_v2::thread_ap_sig_bdd_649() {
    ap_sig_bdd_649 = (esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && esl_seteq<1,1,1>(tmp_6_reg_1401.read(), ap_const_lv1_0));
}

void correlation_accel_v2::thread_ap_sig_bdd_660() {
    ap_sig_bdd_660 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(132, 132));
}

void correlation_accel_v2::thread_ap_sig_bdd_665() {
    ap_sig_bdd_665 = (esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_34_reg_1540.read()));
}

void correlation_accel_v2::thread_ap_sig_bdd_679() {
    ap_sig_bdd_679 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(74, 74));
}

void correlation_accel_v2::thread_ap_sig_bdd_687() {
    ap_sig_bdd_687 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(79, 79));
}

void correlation_accel_v2::thread_ap_sig_bdd_695() {
    ap_sig_bdd_695 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(118, 118));
}

void correlation_accel_v2::thread_ap_sig_bdd_707() {
    ap_sig_bdd_707 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(214, 214));
}

void correlation_accel_v2::thread_ap_sig_bdd_715() {
    ap_sig_bdd_715 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(223, 223));
}

void correlation_accel_v2::thread_ap_sig_bdd_723() {
    ap_sig_bdd_723 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(228, 228));
}

void correlation_accel_v2::thread_ap_sig_bdd_731() {
    ap_sig_bdd_731 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(262, 262));
}

void correlation_accel_v2::thread_ap_sig_bdd_739() {
    ap_sig_bdd_739 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(309, 309));
}

void correlation_accel_v2::thread_ap_sig_bdd_748() {
    ap_sig_bdd_748 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(8, 8));
}

void correlation_accel_v2::thread_ap_sig_bdd_755() {
    ap_sig_bdd_755 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(20, 20));
}

void correlation_accel_v2::thread_ap_sig_bdd_819() {
    ap_sig_bdd_819 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(17, 17));
}

void correlation_accel_v2::thread_ap_sig_bdd_834() {
    ap_sig_bdd_834 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(88, 88));
}

void correlation_accel_v2::thread_ap_sig_bdd_842() {
    ap_sig_bdd_842 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(127, 127));
}

void correlation_accel_v2::thread_ap_sig_bdd_864() {
    ap_sig_bdd_864 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(69, 69));
}

void correlation_accel_v2::thread_ap_sig_bdd_902() {
    ap_sig_bdd_902 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(24, 24));
}

void correlation_accel_v2::thread_ap_sig_bdd_917() {
    ap_sig_bdd_917 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(134, 134));
}

void correlation_accel_v2::thread_ap_sig_bdd_925() {
    ap_sig_bdd_925 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(143, 143));
}

void correlation_accel_v2::thread_ap_sig_bdd_933() {
    ap_sig_bdd_933 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(152, 152));
}

void correlation_accel_v2::thread_ap_sig_bdd_941() {
    ap_sig_bdd_941 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(161, 161));
}

void correlation_accel_v2::thread_ap_sig_bdd_949() {
    ap_sig_bdd_949 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(170, 170));
}

void correlation_accel_v2::thread_ap_sig_bdd_957() {
    ap_sig_bdd_957 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(179, 179));
}

void correlation_accel_v2::thread_ap_sig_bdd_986() {
    ap_sig_bdd_986 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(25, 25));
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp0_stg0_fsm_21() {
    if (ap_sig_bdd_422.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_21 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_21 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp0_stg1_fsm_22() {
    if (ap_sig_bdd_642.read()) {
        ap_sig_cseq_ST_pp0_stg1_fsm_22 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg1_fsm_22 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp1_stg0_fsm_23() {
    if (ap_sig_bdd_1527.read()) {
        ap_sig_cseq_ST_pp1_stg0_fsm_23 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg0_fsm_23 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp1_stg1_fsm_24() {
    if (ap_sig_bdd_902.read()) {
        ap_sig_cseq_ST_pp1_stg1_fsm_24 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg1_fsm_24 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp1_stg2_fsm_25() {
    if (ap_sig_bdd_986.read()) {
        ap_sig_cseq_ST_pp1_stg2_fsm_25 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg2_fsm_25 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp1_stg3_fsm_26() {
    if (ap_sig_bdd_1218.read()) {
        ap_sig_cseq_ST_pp1_stg3_fsm_26 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg3_fsm_26 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp1_stg4_fsm_27() {
    if (ap_sig_bdd_2285.read()) {
        ap_sig_cseq_ST_pp1_stg4_fsm_27 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg4_fsm_27 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp1_stg5_fsm_28() {
    if (ap_sig_bdd_2900.read()) {
        ap_sig_cseq_ST_pp1_stg5_fsm_28 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg5_fsm_28 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp1_stg6_fsm_29() {
    if (ap_sig_bdd_2909.read()) {
        ap_sig_cseq_ST_pp1_stg6_fsm_29 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg6_fsm_29 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp1_stg7_fsm_30() {
    if (ap_sig_bdd_2918.read()) {
        ap_sig_cseq_ST_pp1_stg7_fsm_30 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg7_fsm_30 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp1_stg8_fsm_31() {
    if (ap_sig_bdd_1782.read()) {
        ap_sig_cseq_ST_pp1_stg8_fsm_31 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg8_fsm_31 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp2_stg0_fsm_131() {
    if (ap_sig_bdd_533.read()) {
        ap_sig_cseq_ST_pp2_stg0_fsm_131 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp2_stg0_fsm_131 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_pp2_stg1_fsm_132() {
    if (ap_sig_bdd_660.read()) {
        ap_sig_cseq_ST_pp2_stg1_fsm_132 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp2_stg1_fsm_132 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st104_fsm_32() {
    if (ap_sig_bdd_1952.read()) {
        ap_sig_cseq_ST_st104_fsm_32 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st104_fsm_32 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st10_fsm_9() {
    if (ap_sig_bdd_2275.read()) {
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st10_fsm_9 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st111_fsm_39() {
    if (ap_sig_bdd_1550.read()) {
        ap_sig_cseq_ST_st111_fsm_39 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st111_fsm_39 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st112_fsm_40() {
    if (ap_sig_bdd_2564.read()) {
        ap_sig_cseq_ST_st112_fsm_40 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st112_fsm_40 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st113_fsm_41() {
    if (ap_sig_bdd_3775.read()) {
        ap_sig_cseq_ST_st113_fsm_41 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st113_fsm_41 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st114_fsm_42() {
    if (ap_sig_bdd_3783.read()) {
        ap_sig_cseq_ST_st114_fsm_42 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st114_fsm_42 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st115_fsm_43() {
    if (ap_sig_bdd_3791.read()) {
        ap_sig_cseq_ST_st115_fsm_43 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st115_fsm_43 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st116_fsm_44() {
    if (ap_sig_bdd_3799.read()) {
        ap_sig_cseq_ST_st116_fsm_44 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st116_fsm_44 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st117_fsm_45() {
    if (ap_sig_bdd_3807.read()) {
        ap_sig_cseq_ST_st117_fsm_45 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st117_fsm_45 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st118_fsm_46() {
    if (ap_sig_bdd_3815.read()) {
        ap_sig_cseq_ST_st118_fsm_46 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st118_fsm_46 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st119_fsm_47() {
    if (ap_sig_bdd_3823.read()) {
        ap_sig_cseq_ST_st119_fsm_47 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st119_fsm_47 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st11_fsm_10() {
    if (ap_sig_bdd_2833.read()) {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st120_fsm_48() {
    if (ap_sig_bdd_3831.read()) {
        ap_sig_cseq_ST_st120_fsm_48 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st120_fsm_48 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st121_fsm_49() {
    if (ap_sig_bdd_3839.read()) {
        ap_sig_cseq_ST_st121_fsm_49 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st121_fsm_49 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st122_fsm_50() {
    if (ap_sig_bdd_3847.read()) {
        ap_sig_cseq_ST_st122_fsm_50 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st122_fsm_50 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st123_fsm_51() {
    if (ap_sig_bdd_3855.read()) {
        ap_sig_cseq_ST_st123_fsm_51 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st123_fsm_51 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st124_fsm_52() {
    if (ap_sig_bdd_3863.read()) {
        ap_sig_cseq_ST_st124_fsm_52 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st124_fsm_52 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st125_fsm_53() {
    if (ap_sig_bdd_3871.read()) {
        ap_sig_cseq_ST_st125_fsm_53 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st125_fsm_53 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st126_fsm_54() {
    if (ap_sig_bdd_3879.read()) {
        ap_sig_cseq_ST_st126_fsm_54 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st126_fsm_54 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st127_fsm_55() {
    if (ap_sig_bdd_3887.read()) {
        ap_sig_cseq_ST_st127_fsm_55 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st127_fsm_55 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st128_fsm_56() {
    if (ap_sig_bdd_3895.read()) {
        ap_sig_cseq_ST_st128_fsm_56 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st128_fsm_56 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st129_fsm_57() {
    if (ap_sig_bdd_3903.read()) {
        ap_sig_cseq_ST_st129_fsm_57 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st129_fsm_57 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st12_fsm_11() {
    if (ap_sig_bdd_2841.read()) {
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st130_fsm_58() {
    if (ap_sig_bdd_3911.read()) {
        ap_sig_cseq_ST_st130_fsm_58 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st130_fsm_58 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st131_fsm_59() {
    if (ap_sig_bdd_3919.read()) {
        ap_sig_cseq_ST_st131_fsm_59 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st131_fsm_59 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st132_fsm_60() {
    if (ap_sig_bdd_3927.read()) {
        ap_sig_cseq_ST_st132_fsm_60 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st132_fsm_60 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st133_fsm_61() {
    if (ap_sig_bdd_3935.read()) {
        ap_sig_cseq_ST_st133_fsm_61 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st133_fsm_61 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st134_fsm_62() {
    if (ap_sig_bdd_3943.read()) {
        ap_sig_cseq_ST_st134_fsm_62 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st134_fsm_62 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st135_fsm_63() {
    if (ap_sig_bdd_3951.read()) {
        ap_sig_cseq_ST_st135_fsm_63 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st135_fsm_63 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st136_fsm_64() {
    if (ap_sig_bdd_3959.read()) {
        ap_sig_cseq_ST_st136_fsm_64 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st136_fsm_64 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st137_fsm_65() {
    if (ap_sig_bdd_3967.read()) {
        ap_sig_cseq_ST_st137_fsm_65 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st137_fsm_65 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st138_fsm_66() {
    if (ap_sig_bdd_3975.read()) {
        ap_sig_cseq_ST_st138_fsm_66 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st138_fsm_66 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st139_fsm_67() {
    if (ap_sig_bdd_3983.read()) {
        ap_sig_cseq_ST_st139_fsm_67 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st139_fsm_67 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st13_fsm_12() {
    if (ap_sig_bdd_2849.read()) {
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st13_fsm_12 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st140_fsm_68() {
    if (ap_sig_bdd_3991.read()) {
        ap_sig_cseq_ST_st140_fsm_68 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st140_fsm_68 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st141_fsm_69() {
    if (ap_sig_bdd_864.read()) {
        ap_sig_cseq_ST_st141_fsm_69 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st141_fsm_69 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st142_fsm_70() {
    if (ap_sig_bdd_2513.read()) {
        ap_sig_cseq_ST_st142_fsm_70 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st142_fsm_70 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st143_fsm_71() {
    if (ap_sig_bdd_3546.read()) {
        ap_sig_cseq_ST_st143_fsm_71 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st143_fsm_71 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st144_fsm_72() {
    if (ap_sig_bdd_3554.read()) {
        ap_sig_cseq_ST_st144_fsm_72 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st144_fsm_72 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st145_fsm_73() {
    if (ap_sig_bdd_3562.read()) {
        ap_sig_cseq_ST_st145_fsm_73 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st145_fsm_73 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st146_fsm_74() {
    if (ap_sig_bdd_679.read()) {
        ap_sig_cseq_ST_st146_fsm_74 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st146_fsm_74 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st147_fsm_75() {
    if (ap_sig_bdd_2520.read()) {
        ap_sig_cseq_ST_st147_fsm_75 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st147_fsm_75 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st148_fsm_76() {
    if (ap_sig_bdd_3572.read()) {
        ap_sig_cseq_ST_st148_fsm_76 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st148_fsm_76 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st149_fsm_77() {
    if (ap_sig_bdd_3580.read()) {
        ap_sig_cseq_ST_st149_fsm_77 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st149_fsm_77 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st14_fsm_13() {
    if (ap_sig_bdd_2857.read()) {
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st14_fsm_13 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st150_fsm_78() {
    if (ap_sig_bdd_3588.read()) {
        ap_sig_cseq_ST_st150_fsm_78 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st150_fsm_78 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st151_fsm_79() {
    if (ap_sig_bdd_687.read()) {
        ap_sig_cseq_ST_st151_fsm_79 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st151_fsm_79 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st152_fsm_80() {
    if (ap_sig_bdd_2293.read()) {
        ap_sig_cseq_ST_st152_fsm_80 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st152_fsm_80 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st153_fsm_81() {
    if (ap_sig_bdd_2934.read()) {
        ap_sig_cseq_ST_st153_fsm_81 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st153_fsm_81 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st154_fsm_82() {
    if (ap_sig_bdd_2942.read()) {
        ap_sig_cseq_ST_st154_fsm_82 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st154_fsm_82 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st155_fsm_83() {
    if (ap_sig_bdd_2950.read()) {
        ap_sig_cseq_ST_st155_fsm_83 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st155_fsm_83 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st156_fsm_84() {
    if (ap_sig_bdd_2958.read()) {
        ap_sig_cseq_ST_st156_fsm_84 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st156_fsm_84 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st157_fsm_85() {
    if (ap_sig_bdd_2966.read()) {
        ap_sig_cseq_ST_st157_fsm_85 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st157_fsm_85 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st158_fsm_86() {
    if (ap_sig_bdd_2974.read()) {
        ap_sig_cseq_ST_st158_fsm_86 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st158_fsm_86 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st159_fsm_87() {
    if (ap_sig_bdd_2982.read()) {
        ap_sig_cseq_ST_st159_fsm_87 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st159_fsm_87 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st15_fsm_14() {
    if (ap_sig_bdd_2865.read()) {
        ap_sig_cseq_ST_st15_fsm_14 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st15_fsm_14 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st160_fsm_88() {
    if (ap_sig_bdd_834.read()) {
        ap_sig_cseq_ST_st160_fsm_88 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st160_fsm_88 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st161_fsm_89() {
    if (ap_sig_bdd_2571.read()) {
        ap_sig_cseq_ST_st161_fsm_89 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st161_fsm_89 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st162_fsm_90() {
    if (ap_sig_bdd_4001.read()) {
        ap_sig_cseq_ST_st162_fsm_90 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st162_fsm_90 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st163_fsm_91() {
    if (ap_sig_bdd_4009.read()) {
        ap_sig_cseq_ST_st163_fsm_91 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st163_fsm_91 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st164_fsm_92() {
    if (ap_sig_bdd_4017.read()) {
        ap_sig_cseq_ST_st164_fsm_92 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st164_fsm_92 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st165_fsm_93() {
    if (ap_sig_bdd_4025.read()) {
        ap_sig_cseq_ST_st165_fsm_93 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st165_fsm_93 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st166_fsm_94() {
    if (ap_sig_bdd_4033.read()) {
        ap_sig_cseq_ST_st166_fsm_94 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st166_fsm_94 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st167_fsm_95() {
    if (ap_sig_bdd_4041.read()) {
        ap_sig_cseq_ST_st167_fsm_95 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st167_fsm_95 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st168_fsm_96() {
    if (ap_sig_bdd_4049.read()) {
        ap_sig_cseq_ST_st168_fsm_96 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st168_fsm_96 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st169_fsm_97() {
    if (ap_sig_bdd_4057.read()) {
        ap_sig_cseq_ST_st169_fsm_97 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st169_fsm_97 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st16_fsm_15() {
    if (ap_sig_bdd_2873.read()) {
        ap_sig_cseq_ST_st16_fsm_15 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st16_fsm_15 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st170_fsm_98() {
    if (ap_sig_bdd_4065.read()) {
        ap_sig_cseq_ST_st170_fsm_98 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st170_fsm_98 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st171_fsm_99() {
    if (ap_sig_bdd_4073.read()) {
        ap_sig_cseq_ST_st171_fsm_99 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st171_fsm_99 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st172_fsm_100() {
    if (ap_sig_bdd_4081.read()) {
        ap_sig_cseq_ST_st172_fsm_100 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st172_fsm_100 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st173_fsm_101() {
    if (ap_sig_bdd_4089.read()) {
        ap_sig_cseq_ST_st173_fsm_101 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st173_fsm_101 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st174_fsm_102() {
    if (ap_sig_bdd_4097.read()) {
        ap_sig_cseq_ST_st174_fsm_102 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st174_fsm_102 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st175_fsm_103() {
    if (ap_sig_bdd_4105.read()) {
        ap_sig_cseq_ST_st175_fsm_103 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st175_fsm_103 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st176_fsm_104() {
    if (ap_sig_bdd_4113.read()) {
        ap_sig_cseq_ST_st176_fsm_104 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st176_fsm_104 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st177_fsm_105() {
    if (ap_sig_bdd_4121.read()) {
        ap_sig_cseq_ST_st177_fsm_105 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st177_fsm_105 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st178_fsm_106() {
    if (ap_sig_bdd_4129.read()) {
        ap_sig_cseq_ST_st178_fsm_106 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st178_fsm_106 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st179_fsm_107() {
    if (ap_sig_bdd_4137.read()) {
        ap_sig_cseq_ST_st179_fsm_107 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st179_fsm_107 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st17_fsm_16() {
    if (ap_sig_bdd_2881.read()) {
        ap_sig_cseq_ST_st17_fsm_16 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st17_fsm_16 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st180_fsm_108() {
    if (ap_sig_bdd_4145.read()) {
        ap_sig_cseq_ST_st180_fsm_108 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st180_fsm_108 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st181_fsm_109() {
    if (ap_sig_bdd_4153.read()) {
        ap_sig_cseq_ST_st181_fsm_109 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st181_fsm_109 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st182_fsm_110() {
    if (ap_sig_bdd_4161.read()) {
        ap_sig_cseq_ST_st182_fsm_110 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st182_fsm_110 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st183_fsm_111() {
    if (ap_sig_bdd_4169.read()) {
        ap_sig_cseq_ST_st183_fsm_111 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st183_fsm_111 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st184_fsm_112() {
    if (ap_sig_bdd_4177.read()) {
        ap_sig_cseq_ST_st184_fsm_112 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st184_fsm_112 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st185_fsm_113() {
    if (ap_sig_bdd_4185.read()) {
        ap_sig_cseq_ST_st185_fsm_113 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st185_fsm_113 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st186_fsm_114() {
    if (ap_sig_bdd_2528.read()) {
        ap_sig_cseq_ST_st186_fsm_114 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st186_fsm_114 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st187_fsm_115() {
    if (ap_sig_bdd_3598.read()) {
        ap_sig_cseq_ST_st187_fsm_115 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st187_fsm_115 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st188_fsm_116() {
    if (ap_sig_bdd_3606.read()) {
        ap_sig_cseq_ST_st188_fsm_116 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st188_fsm_116 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st189_fsm_117() {
    if (ap_sig_bdd_3614.read()) {
        ap_sig_cseq_ST_st189_fsm_117 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st189_fsm_117 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st18_fsm_17() {
    if (ap_sig_bdd_819.read()) {
        ap_sig_cseq_ST_st18_fsm_17 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st18_fsm_17 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st190_fsm_118() {
    if (ap_sig_bdd_695.read()) {
        ap_sig_cseq_ST_st190_fsm_118 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st190_fsm_118 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st191_fsm_119() {
    if (ap_sig_bdd_2300.read()) {
        ap_sig_cseq_ST_st191_fsm_119 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st191_fsm_119 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st192_fsm_120() {
    if (ap_sig_bdd_2992.read()) {
        ap_sig_cseq_ST_st192_fsm_120 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st192_fsm_120 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st193_fsm_121() {
    if (ap_sig_bdd_3000.read()) {
        ap_sig_cseq_ST_st193_fsm_121 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st193_fsm_121 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st194_fsm_122() {
    if (ap_sig_bdd_3008.read()) {
        ap_sig_cseq_ST_st194_fsm_122 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st194_fsm_122 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st195_fsm_123() {
    if (ap_sig_bdd_3016.read()) {
        ap_sig_cseq_ST_st195_fsm_123 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st195_fsm_123 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st196_fsm_124() {
    if (ap_sig_bdd_3024.read()) {
        ap_sig_cseq_ST_st196_fsm_124 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st196_fsm_124 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st197_fsm_125() {
    if (ap_sig_bdd_3032.read()) {
        ap_sig_cseq_ST_st197_fsm_125 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st197_fsm_125 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st198_fsm_126() {
    if (ap_sig_bdd_3040.read()) {
        ap_sig_cseq_ST_st198_fsm_126 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st198_fsm_126 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st199_fsm_127() {
    if (ap_sig_bdd_842.read()) {
        ap_sig_cseq_ST_st199_fsm_127 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st199_fsm_127 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st19_fsm_18() {
    if (ap_sig_bdd_1855.read()) {
        ap_sig_cseq_ST_st19_fsm_18 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st19_fsm_18 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_358.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st200_fsm_128() {
    if (ap_sig_bdd_1573.read()) {
        ap_sig_cseq_ST_st200_fsm_128 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st200_fsm_128 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st201_fsm_129() {
    if (ap_sig_bdd_2008.read()) {
        ap_sig_cseq_ST_st201_fsm_129 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st201_fsm_129 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st202_fsm_130() {
    if (ap_sig_bdd_1582.read()) {
        ap_sig_cseq_ST_st202_fsm_130 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st202_fsm_130 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st20_fsm_19() {
    if (ap_sig_bdd_1365.read()) {
        ap_sig_cseq_ST_st20_fsm_19 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st20_fsm_19 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st21_fsm_20() {
    if (ap_sig_bdd_755.read()) {
        ap_sig_cseq_ST_st21_fsm_20 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st21_fsm_20 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st273_fsm_133() {
    if (ap_sig_bdd_1752.read()) {
        ap_sig_cseq_ST_st273_fsm_133 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st273_fsm_133 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st274_fsm_134() {
    if (ap_sig_bdd_917.read()) {
        ap_sig_cseq_ST_st274_fsm_134 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st274_fsm_134 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st275_fsm_135() {
    if (ap_sig_bdd_2311.read()) {
        ap_sig_cseq_ST_st275_fsm_135 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st275_fsm_135 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st276_fsm_136() {
    if (ap_sig_bdd_3054.read()) {
        ap_sig_cseq_ST_st276_fsm_136 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st276_fsm_136 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st277_fsm_137() {
    if (ap_sig_bdd_3062.read()) {
        ap_sig_cseq_ST_st277_fsm_137 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st277_fsm_137 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st278_fsm_138() {
    if (ap_sig_bdd_3070.read()) {
        ap_sig_cseq_ST_st278_fsm_138 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st278_fsm_138 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st279_fsm_139() {
    if (ap_sig_bdd_3078.read()) {
        ap_sig_cseq_ST_st279_fsm_139 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st279_fsm_139 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st280_fsm_140() {
    if (ap_sig_bdd_3086.read()) {
        ap_sig_cseq_ST_st280_fsm_140 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st280_fsm_140 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st281_fsm_141() {
    if (ap_sig_bdd_3094.read()) {
        ap_sig_cseq_ST_st281_fsm_141 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st281_fsm_141 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st282_fsm_142() {
    if (ap_sig_bdd_2021.read()) {
        ap_sig_cseq_ST_st282_fsm_142 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st282_fsm_142 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st283_fsm_143() {
    if (ap_sig_bdd_925.read()) {
        ap_sig_cseq_ST_st283_fsm_143 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st283_fsm_143 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st284_fsm_144() {
    if (ap_sig_bdd_2319.read()) {
        ap_sig_cseq_ST_st284_fsm_144 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st284_fsm_144 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st285_fsm_145() {
    if (ap_sig_bdd_3105.read()) {
        ap_sig_cseq_ST_st285_fsm_145 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st285_fsm_145 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st286_fsm_146() {
    if (ap_sig_bdd_3113.read()) {
        ap_sig_cseq_ST_st286_fsm_146 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st286_fsm_146 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st287_fsm_147() {
    if (ap_sig_bdd_3121.read()) {
        ap_sig_cseq_ST_st287_fsm_147 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st287_fsm_147 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st288_fsm_148() {
    if (ap_sig_bdd_3129.read()) {
        ap_sig_cseq_ST_st288_fsm_148 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st288_fsm_148 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st289_fsm_149() {
    if (ap_sig_bdd_3137.read()) {
        ap_sig_cseq_ST_st289_fsm_149 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st289_fsm_149 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st290_fsm_150() {
    if (ap_sig_bdd_3145.read()) {
        ap_sig_cseq_ST_st290_fsm_150 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st290_fsm_150 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st291_fsm_151() {
    if (ap_sig_bdd_2050.read()) {
        ap_sig_cseq_ST_st291_fsm_151 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st291_fsm_151 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st292_fsm_152() {
    if (ap_sig_bdd_933.read()) {
        ap_sig_cseq_ST_st292_fsm_152 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st292_fsm_152 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st293_fsm_153() {
    if (ap_sig_bdd_2326.read()) {
        ap_sig_cseq_ST_st293_fsm_153 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st293_fsm_153 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st294_fsm_154() {
    if (ap_sig_bdd_2159.read()) {
        ap_sig_cseq_ST_st294_fsm_154 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st294_fsm_154 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st295_fsm_155() {
    if (ap_sig_bdd_1000.read()) {
        ap_sig_cseq_ST_st295_fsm_155 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st295_fsm_155 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st296_fsm_156() {
    if (ap_sig_bdd_2334.read()) {
        ap_sig_cseq_ST_st296_fsm_156 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st296_fsm_156 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st297_fsm_157() {
    if (ap_sig_bdd_3159.read()) {
        ap_sig_cseq_ST_st297_fsm_157 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st297_fsm_157 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st298_fsm_158() {
    if (ap_sig_bdd_3167.read()) {
        ap_sig_cseq_ST_st298_fsm_158 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st298_fsm_158 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st299_fsm_159() {
    if (ap_sig_bdd_2201.read()) {
        ap_sig_cseq_ST_st299_fsm_159 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st299_fsm_159 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_1863.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st300_fsm_160() {
    if (ap_sig_bdd_1302.read()) {
        ap_sig_cseq_ST_st300_fsm_160 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st300_fsm_160 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st301_fsm_161() {
    if (ap_sig_bdd_941.read()) {
        ap_sig_cseq_ST_st301_fsm_161 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st301_fsm_161 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st302_fsm_162() {
    if (ap_sig_bdd_2342.read()) {
        ap_sig_cseq_ST_st302_fsm_162 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st302_fsm_162 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st303_fsm_163() {
    if (ap_sig_bdd_2116.read()) {
        ap_sig_cseq_ST_st303_fsm_163 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st303_fsm_163 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st304_fsm_164() {
    if (ap_sig_bdd_1008.read()) {
        ap_sig_cseq_ST_st304_fsm_164 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st304_fsm_164 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st305_fsm_165() {
    if (ap_sig_bdd_2350.read()) {
        ap_sig_cseq_ST_st305_fsm_165 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st305_fsm_165 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st306_fsm_166() {
    if (ap_sig_bdd_3182.read()) {
        ap_sig_cseq_ST_st306_fsm_166 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st306_fsm_166 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st307_fsm_167() {
    if (ap_sig_bdd_3190.read()) {
        ap_sig_cseq_ST_st307_fsm_167 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st307_fsm_167 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st308_fsm_168() {
    if (ap_sig_bdd_2236.read()) {
        ap_sig_cseq_ST_st308_fsm_168 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st308_fsm_168 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st309_fsm_169() {
    if (ap_sig_bdd_1227.read()) {
        ap_sig_cseq_ST_st309_fsm_169 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st309_fsm_169 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st310_fsm_170() {
    if (ap_sig_bdd_949.read()) {
        ap_sig_cseq_ST_st310_fsm_170 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st310_fsm_170 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st311_fsm_171() {
    if (ap_sig_bdd_2357.read()) {
        ap_sig_cseq_ST_st311_fsm_171 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st311_fsm_171 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st312_fsm_172() {
    if (ap_sig_bdd_2167.read()) {
        ap_sig_cseq_ST_st312_fsm_172 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st312_fsm_172 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st313_fsm_173() {
    if (ap_sig_bdd_1016.read()) {
        ap_sig_cseq_ST_st313_fsm_173 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st313_fsm_173 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st314_fsm_174() {
    if (ap_sig_bdd_1084.read()) {
        ap_sig_cseq_ST_st314_fsm_174 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st314_fsm_174 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st315_fsm_175() {
    if (ap_sig_bdd_2366.read()) {
        ap_sig_cseq_ST_st315_fsm_175 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st315_fsm_175 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st316_fsm_176() {
    if (ap_sig_bdd_3206.read()) {
        ap_sig_cseq_ST_st316_fsm_176 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st316_fsm_176 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st317_fsm_177() {
    if (ap_sig_bdd_2209.read()) {
        ap_sig_cseq_ST_st317_fsm_177 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st317_fsm_177 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st318_fsm_178() {
    if (ap_sig_bdd_1235.read()) {
        ap_sig_cseq_ST_st318_fsm_178 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st318_fsm_178 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st319_fsm_179() {
    if (ap_sig_bdd_957.read()) {
        ap_sig_cseq_ST_st319_fsm_179 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st319_fsm_179 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st320_fsm_180() {
    if (ap_sig_bdd_2374.read()) {
        ap_sig_cseq_ST_st320_fsm_180 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st320_fsm_180 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st321_fsm_181() {
    if (ap_sig_bdd_2124.read()) {
        ap_sig_cseq_ST_st321_fsm_181 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st321_fsm_181 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st322_fsm_182() {
    if (ap_sig_bdd_1024.read()) {
        ap_sig_cseq_ST_st322_fsm_182 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st322_fsm_182 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st323_fsm_183() {
    if (ap_sig_bdd_1092.read()) {
        ap_sig_cseq_ST_st323_fsm_183 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st323_fsm_183 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st324_fsm_184() {
    if (ap_sig_bdd_2383.read()) {
        ap_sig_cseq_ST_st324_fsm_184 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st324_fsm_184 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st325_fsm_185() {
    if (ap_sig_bdd_3222.read()) {
        ap_sig_cseq_ST_st325_fsm_185 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st325_fsm_185 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st326_fsm_186() {
    if (ap_sig_bdd_2243.read()) {
        ap_sig_cseq_ST_st326_fsm_186 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st326_fsm_186 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st327_fsm_187() {
    if (ap_sig_bdd_1243.read()) {
        ap_sig_cseq_ST_st327_fsm_187 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st327_fsm_187 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st328_fsm_188() {
    if (ap_sig_bdd_1159.read()) {
        ap_sig_cseq_ST_st328_fsm_188 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st328_fsm_188 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st329_fsm_189() {
    if (ap_sig_bdd_2578.read()) {
        ap_sig_cseq_ST_st329_fsm_189 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st329_fsm_189 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st330_fsm_190() {
    if (ap_sig_bdd_2175.read()) {
        ap_sig_cseq_ST_st330_fsm_190 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st330_fsm_190 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st331_fsm_191() {
    if (ap_sig_bdd_1032.read()) {
        ap_sig_cseq_ST_st331_fsm_191 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st331_fsm_191 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st332_fsm_192() {
    if (ap_sig_bdd_1100.read()) {
        ap_sig_cseq_ST_st332_fsm_192 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st332_fsm_192 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st333_fsm_193() {
    if (ap_sig_bdd_2392.read()) {
        ap_sig_cseq_ST_st333_fsm_193 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st333_fsm_193 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st334_fsm_194() {
    if (ap_sig_bdd_3238.read()) {
        ap_sig_cseq_ST_st334_fsm_194 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st334_fsm_194 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st335_fsm_195() {
    if (ap_sig_bdd_2217.read()) {
        ap_sig_cseq_ST_st335_fsm_195 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st335_fsm_195 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st336_fsm_196() {
    if (ap_sig_bdd_1251.read()) {
        ap_sig_cseq_ST_st336_fsm_196 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st336_fsm_196 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st337_fsm_197() {
    if (ap_sig_bdd_2400.read()) {
        ap_sig_cseq_ST_st337_fsm_197 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st337_fsm_197 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st338_fsm_198() {
    if (ap_sig_bdd_3249.read()) {
        ap_sig_cseq_ST_st338_fsm_198 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st338_fsm_198 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st339_fsm_199() {
    if (ap_sig_bdd_2132.read()) {
        ap_sig_cseq_ST_st339_fsm_199 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st339_fsm_199 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st340_fsm_200() {
    if (ap_sig_bdd_1040.read()) {
        ap_sig_cseq_ST_st340_fsm_200 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st340_fsm_200 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st341_fsm_201() {
    if (ap_sig_bdd_1108.read()) {
        ap_sig_cseq_ST_st341_fsm_201 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st341_fsm_201 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st342_fsm_202() {
    if (ap_sig_bdd_2409.read()) {
        ap_sig_cseq_ST_st342_fsm_202 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st342_fsm_202 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st343_fsm_203() {
    if (ap_sig_bdd_3261.read()) {
        ap_sig_cseq_ST_st343_fsm_203 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st343_fsm_203 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st344_fsm_204() {
    if (ap_sig_bdd_2251.read()) {
        ap_sig_cseq_ST_st344_fsm_204 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st344_fsm_204 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st345_fsm_205() {
    if (ap_sig_bdd_1259.read()) {
        ap_sig_cseq_ST_st345_fsm_205 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st345_fsm_205 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st346_fsm_206() {
    if (ap_sig_bdd_2417.read()) {
        ap_sig_cseq_ST_st346_fsm_206 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st346_fsm_206 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st347_fsm_207() {
    if (ap_sig_bdd_3272.read()) {
        ap_sig_cseq_ST_st347_fsm_207 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st347_fsm_207 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st348_fsm_208() {
    if (ap_sig_bdd_3280.read()) {
        ap_sig_cseq_ST_st348_fsm_208 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st348_fsm_208 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st349_fsm_209() {
    if (ap_sig_bdd_1193.read()) {
        ap_sig_cseq_ST_st349_fsm_209 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st349_fsm_209 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st350_fsm_210() {
    if (ap_sig_bdd_1116.read()) {
        ap_sig_cseq_ST_st350_fsm_210 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st350_fsm_210 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st351_fsm_211() {
    if (ap_sig_bdd_2425.read()) {
        ap_sig_cseq_ST_st351_fsm_211 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st351_fsm_211 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st352_fsm_212() {
    if (ap_sig_bdd_3291.read()) {
        ap_sig_cseq_ST_st352_fsm_212 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st352_fsm_212 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st353_fsm_213() {
    if (ap_sig_bdd_3299.read()) {
        ap_sig_cseq_ST_st353_fsm_213 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st353_fsm_213 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st354_fsm_214() {
    if (ap_sig_bdd_707.read()) {
        ap_sig_cseq_ST_st354_fsm_214 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st354_fsm_214 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st355_fsm_215() {
    if (ap_sig_bdd_2433.read()) {
        ap_sig_cseq_ST_st355_fsm_215 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st355_fsm_215 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st356_fsm_216() {
    if (ap_sig_bdd_3309.read()) {
        ap_sig_cseq_ST_st356_fsm_216 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st356_fsm_216 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st357_fsm_217() {
    if (ap_sig_bdd_3317.read()) {
        ap_sig_cseq_ST_st357_fsm_217 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st357_fsm_217 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st358_fsm_218() {
    if (ap_sig_bdd_1283.read()) {
        ap_sig_cseq_ST_st358_fsm_218 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st358_fsm_218 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st359_fsm_219() {
    if (ap_sig_bdd_1124.read()) {
        ap_sig_cseq_ST_st359_fsm_219 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st359_fsm_219 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st360_fsm_220() {
    if (ap_sig_bdd_2441.read()) {
        ap_sig_cseq_ST_st360_fsm_220 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st360_fsm_220 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st361_fsm_221() {
    if (ap_sig_bdd_3328.read()) {
        ap_sig_cseq_ST_st361_fsm_221 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st361_fsm_221 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st362_fsm_222() {
    if (ap_sig_bdd_3336.read()) {
        ap_sig_cseq_ST_st362_fsm_222 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st362_fsm_222 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st363_fsm_223() {
    if (ap_sig_bdd_715.read()) {
        ap_sig_cseq_ST_st363_fsm_223 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st363_fsm_223 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st364_fsm_224() {
    if (ap_sig_bdd_2449.read()) {
        ap_sig_cseq_ST_st364_fsm_224 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st364_fsm_224 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st365_fsm_225() {
    if (ap_sig_bdd_3346.read()) {
        ap_sig_cseq_ST_st365_fsm_225 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st365_fsm_225 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st366_fsm_226() {
    if (ap_sig_bdd_3354.read()) {
        ap_sig_cseq_ST_st366_fsm_226 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st366_fsm_226 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st367_fsm_227() {
    if (ap_sig_bdd_3362.read()) {
        ap_sig_cseq_ST_st367_fsm_227 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st367_fsm_227 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st368_fsm_228() {
    if (ap_sig_bdd_723.read()) {
        ap_sig_cseq_ST_st368_fsm_228 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st368_fsm_228 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st369_fsm_229() {
    if (ap_sig_bdd_2457.read()) {
        ap_sig_cseq_ST_st369_fsm_229 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st369_fsm_229 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st370_fsm_230() {
    if (ap_sig_bdd_3372.read()) {
        ap_sig_cseq_ST_st370_fsm_230 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st370_fsm_230 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st371_fsm_231() {
    if (ap_sig_bdd_3380.read()) {
        ap_sig_cseq_ST_st371_fsm_231 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st371_fsm_231 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st372_fsm_232() {
    if (ap_sig_bdd_1201.read()) {
        ap_sig_cseq_ST_st372_fsm_232 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st372_fsm_232 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st373_fsm_233() {
    if (ap_sig_bdd_2585.read()) {
        ap_sig_cseq_ST_st373_fsm_233 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st373_fsm_233 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st374_fsm_234() {
    if (ap_sig_bdd_3390.read()) {
        ap_sig_cseq_ST_st374_fsm_234 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st374_fsm_234 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st375_fsm_235() {
    if (ap_sig_bdd_3398.read()) {
        ap_sig_cseq_ST_st375_fsm_235 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st375_fsm_235 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st376_fsm_236() {
    if (ap_sig_bdd_3406.read()) {
        ap_sig_cseq_ST_st376_fsm_236 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st376_fsm_236 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st377_fsm_237() {
    if (ap_sig_bdd_1169.read()) {
        ap_sig_cseq_ST_st377_fsm_237 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st377_fsm_237 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st378_fsm_238() {
    if (ap_sig_bdd_2592.read()) {
        ap_sig_cseq_ST_st378_fsm_238 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st378_fsm_238 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st379_fsm_239() {
    if (ap_sig_bdd_4238.read()) {
        ap_sig_cseq_ST_st379_fsm_239 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st379_fsm_239 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st380_fsm_240() {
    if (ap_sig_bdd_4246.read()) {
        ap_sig_cseq_ST_st380_fsm_240 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st380_fsm_240 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st381_fsm_241() {
    if (ap_sig_bdd_4254.read()) {
        ap_sig_cseq_ST_st381_fsm_241 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st381_fsm_241 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st382_fsm_242() {
    if (ap_sig_bdd_4262.read()) {
        ap_sig_cseq_ST_st382_fsm_242 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st382_fsm_242 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st383_fsm_243() {
    if (ap_sig_bdd_4270.read()) {
        ap_sig_cseq_ST_st383_fsm_243 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st383_fsm_243 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st384_fsm_244() {
    if (ap_sig_bdd_4278.read()) {
        ap_sig_cseq_ST_st384_fsm_244 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st384_fsm_244 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st385_fsm_245() {
    if (ap_sig_bdd_4286.read()) {
        ap_sig_cseq_ST_st385_fsm_245 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st385_fsm_245 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st386_fsm_246() {
    if (ap_sig_bdd_4294.read()) {
        ap_sig_cseq_ST_st386_fsm_246 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st386_fsm_246 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st387_fsm_247() {
    if (ap_sig_bdd_4302.read()) {
        ap_sig_cseq_ST_st387_fsm_247 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st387_fsm_247 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st388_fsm_248() {
    if (ap_sig_bdd_4310.read()) {
        ap_sig_cseq_ST_st388_fsm_248 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st388_fsm_248 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st389_fsm_249() {
    if (ap_sig_bdd_4318.read()) {
        ap_sig_cseq_ST_st389_fsm_249 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st389_fsm_249 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st390_fsm_250() {
    if (ap_sig_bdd_4326.read()) {
        ap_sig_cseq_ST_st390_fsm_250 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st390_fsm_250 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st391_fsm_251() {
    if (ap_sig_bdd_4334.read()) {
        ap_sig_cseq_ST_st391_fsm_251 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st391_fsm_251 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st392_fsm_252() {
    if (ap_sig_bdd_4342.read()) {
        ap_sig_cseq_ST_st392_fsm_252 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st392_fsm_252 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st393_fsm_253() {
    if (ap_sig_bdd_4350.read()) {
        ap_sig_cseq_ST_st393_fsm_253 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st393_fsm_253 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st394_fsm_254() {
    if (ap_sig_bdd_4358.read()) {
        ap_sig_cseq_ST_st394_fsm_254 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st394_fsm_254 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st395_fsm_255() {
    if (ap_sig_bdd_4366.read()) {
        ap_sig_cseq_ST_st395_fsm_255 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st395_fsm_255 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st396_fsm_256() {
    if (ap_sig_bdd_4374.read()) {
        ap_sig_cseq_ST_st396_fsm_256 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st396_fsm_256 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st397_fsm_257() {
    if (ap_sig_bdd_4382.read()) {
        ap_sig_cseq_ST_st397_fsm_257 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st397_fsm_257 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st398_fsm_258() {
    if (ap_sig_bdd_2539.read()) {
        ap_sig_cseq_ST_st398_fsm_258 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st398_fsm_258 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st399_fsm_259() {
    if (ap_sig_bdd_3643.read()) {
        ap_sig_cseq_ST_st399_fsm_259 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st399_fsm_259 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_bdd_3516.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st400_fsm_260() {
    if (ap_sig_bdd_3651.read()) {
        ap_sig_cseq_ST_st400_fsm_260 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st400_fsm_260 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st401_fsm_261() {
    if (ap_sig_bdd_3659.read()) {
        ap_sig_cseq_ST_st401_fsm_261 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st401_fsm_261 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st402_fsm_262() {
    if (ap_sig_bdd_731.read()) {
        ap_sig_cseq_ST_st402_fsm_262 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st402_fsm_262 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st403_fsm_263() {
    if (ap_sig_bdd_2465.read()) {
        ap_sig_cseq_ST_st403_fsm_263 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st403_fsm_263 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st404_fsm_264() {
    if (ap_sig_bdd_3416.read()) {
        ap_sig_cseq_ST_st404_fsm_264 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st404_fsm_264 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st405_fsm_265() {
    if (ap_sig_bdd_3424.read()) {
        ap_sig_cseq_ST_st405_fsm_265 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st405_fsm_265 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st406_fsm_266() {
    if (ap_sig_bdd_3432.read()) {
        ap_sig_cseq_ST_st406_fsm_266 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st406_fsm_266 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st407_fsm_267() {
    if (ap_sig_bdd_1063.read()) {
        ap_sig_cseq_ST_st407_fsm_267 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st407_fsm_267 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st408_fsm_268() {
    if (ap_sig_bdd_2472.read()) {
        ap_sig_cseq_ST_st408_fsm_268 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st408_fsm_268 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st409_fsm_269() {
    if (ap_sig_bdd_3442.read()) {
        ap_sig_cseq_ST_st409_fsm_269 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st409_fsm_269 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st410_fsm_270() {
    if (ap_sig_bdd_3450.read()) {
        ap_sig_cseq_ST_st410_fsm_270 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st410_fsm_270 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st411_fsm_271() {
    if (ap_sig_bdd_1177.read()) {
        ap_sig_cseq_ST_st411_fsm_271 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st411_fsm_271 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st412_fsm_272() {
    if (ap_sig_bdd_3459.read()) {
        ap_sig_cseq_ST_st412_fsm_272 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st412_fsm_272 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st413_fsm_273() {
    if (ap_sig_bdd_3467.read()) {
        ap_sig_cseq_ST_st413_fsm_273 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st413_fsm_273 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st414_fsm_274() {
    if (ap_sig_bdd_3475.read()) {
        ap_sig_cseq_ST_st414_fsm_274 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st414_fsm_274 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st415_fsm_275() {
    if (ap_sig_bdd_3483.read()) {
        ap_sig_cseq_ST_st415_fsm_275 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st415_fsm_275 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st416_fsm_276() {
    if (ap_sig_bdd_1209.read()) {
        ap_sig_cseq_ST_st416_fsm_276 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st416_fsm_276 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st417_fsm_277() {
    if (ap_sig_bdd_2613.read()) {
        ap_sig_cseq_ST_st417_fsm_277 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st417_fsm_277 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st444_fsm_304() {
    if (ap_sig_bdd_1764.read()) {
        ap_sig_cseq_ST_st444_fsm_304 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st444_fsm_304 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st445_fsm_305() {
    if (ap_sig_bdd_2548.read()) {
        ap_sig_cseq_ST_st445_fsm_305 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st445_fsm_305 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st446_fsm_306() {
    if (ap_sig_bdd_3674.read()) {
        ap_sig_cseq_ST_st446_fsm_306 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st446_fsm_306 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st447_fsm_307() {
    if (ap_sig_bdd_3682.read()) {
        ap_sig_cseq_ST_st447_fsm_307 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st447_fsm_307 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st448_fsm_308() {
    if (ap_sig_bdd_3690.read()) {
        ap_sig_cseq_ST_st448_fsm_308 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st448_fsm_308 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st449_fsm_309() {
    if (ap_sig_bdd_739.read()) {
        ap_sig_cseq_ST_st449_fsm_309 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st449_fsm_309 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st450_fsm_310() {
    if (ap_sig_bdd_2600.read()) {
        ap_sig_cseq_ST_st450_fsm_310 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st450_fsm_310 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st451_fsm_311() {
    if (ap_sig_bdd_4401.read()) {
        ap_sig_cseq_ST_st451_fsm_311 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st451_fsm_311 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st452_fsm_312() {
    if (ap_sig_bdd_4409.read()) {
        ap_sig_cseq_ST_st452_fsm_312 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st452_fsm_312 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st453_fsm_313() {
    if (ap_sig_bdd_4417.read()) {
        ap_sig_cseq_ST_st453_fsm_313 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st453_fsm_313 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st454_fsm_314() {
    if (ap_sig_bdd_4425.read()) {
        ap_sig_cseq_ST_st454_fsm_314 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st454_fsm_314 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st455_fsm_315() {
    if (ap_sig_bdd_4433.read()) {
        ap_sig_cseq_ST_st455_fsm_315 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st455_fsm_315 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st456_fsm_316() {
    if (ap_sig_bdd_4441.read()) {
        ap_sig_cseq_ST_st456_fsm_316 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st456_fsm_316 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st457_fsm_317() {
    if (ap_sig_bdd_4449.read()) {
        ap_sig_cseq_ST_st457_fsm_317 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st457_fsm_317 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st458_fsm_318() {
    if (ap_sig_bdd_4457.read()) {
        ap_sig_cseq_ST_st458_fsm_318 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st458_fsm_318 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st459_fsm_319() {
    if (ap_sig_bdd_4465.read()) {
        ap_sig_cseq_ST_st459_fsm_319 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st459_fsm_319 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st460_fsm_320() {
    if (ap_sig_bdd_4473.read()) {
        ap_sig_cseq_ST_st460_fsm_320 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st460_fsm_320 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st461_fsm_321() {
    if (ap_sig_bdd_4481.read()) {
        ap_sig_cseq_ST_st461_fsm_321 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st461_fsm_321 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st462_fsm_322() {
    if (ap_sig_bdd_4489.read()) {
        ap_sig_cseq_ST_st462_fsm_322 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st462_fsm_322 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st463_fsm_323() {
    if (ap_sig_bdd_4497.read()) {
        ap_sig_cseq_ST_st463_fsm_323 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st463_fsm_323 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st464_fsm_324() {
    if (ap_sig_bdd_4505.read()) {
        ap_sig_cseq_ST_st464_fsm_324 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st464_fsm_324 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st465_fsm_325() {
    if (ap_sig_bdd_4513.read()) {
        ap_sig_cseq_ST_st465_fsm_325 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st465_fsm_325 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st466_fsm_326() {
    if (ap_sig_bdd_4521.read()) {
        ap_sig_cseq_ST_st466_fsm_326 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st466_fsm_326 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st467_fsm_327() {
    if (ap_sig_bdd_4529.read()) {
        ap_sig_cseq_ST_st467_fsm_327 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st467_fsm_327 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st468_fsm_328() {
    if (ap_sig_bdd_4537.read()) {
        ap_sig_cseq_ST_st468_fsm_328 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st468_fsm_328 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st469_fsm_329() {
    if (ap_sig_bdd_4545.read()) {
        ap_sig_cseq_ST_st469_fsm_329 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st469_fsm_329 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st470_fsm_330() {
    if (ap_sig_bdd_4553.read()) {
        ap_sig_cseq_ST_st470_fsm_330 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st470_fsm_330 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st471_fsm_331() {
    if (ap_sig_bdd_4561.read()) {
        ap_sig_cseq_ST_st471_fsm_331 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st471_fsm_331 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st472_fsm_332() {
    if (ap_sig_bdd_4569.read()) {
        ap_sig_cseq_ST_st472_fsm_332 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st472_fsm_332 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st473_fsm_333() {
    if (ap_sig_bdd_4577.read()) {
        ap_sig_cseq_ST_st473_fsm_333 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st473_fsm_333 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st474_fsm_334() {
    if (ap_sig_bdd_4585.read()) {
        ap_sig_cseq_ST_st474_fsm_334 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st474_fsm_334 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st475_fsm_335() {
    if (ap_sig_bdd_4593.read()) {
        ap_sig_cseq_ST_st475_fsm_335 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st475_fsm_335 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st476_fsm_336() {
    if (ap_sig_bdd_4601.read()) {
        ap_sig_cseq_ST_st476_fsm_336 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st476_fsm_336 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st477_fsm_337() {
    if (ap_sig_bdd_4609.read()) {
        ap_sig_cseq_ST_st477_fsm_337 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st477_fsm_337 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st478_fsm_338() {
    if (ap_sig_bdd_4617.read()) {
        ap_sig_cseq_ST_st478_fsm_338 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st478_fsm_338 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st479_fsm_339() {
    if (ap_sig_bdd_1888.read()) {
        ap_sig_cseq_ST_st479_fsm_339 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st479_fsm_339 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_bdd_3524.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_bdd_3532.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_bdd_633.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st7_fsm_6() {
    if (ap_sig_bdd_1328.read()) {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st8_fsm_7() {
    if (ap_sig_bdd_1337.read()) {
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_cseq_ST_st9_fsm_8() {
    if (ap_sig_bdd_748.read()) {
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_ap_sig_ioackin_out_correlation_TREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_out_correlation_TREADY.read())) {
        ap_sig_ioackin_out_correlation_TREADY = out_correlation_TREADY.read();
    } else {
        ap_sig_ioackin_out_correlation_TREADY = ap_const_logic_1;
    }
}

void correlation_accel_v2::thread_column_index_1_fu_1225_p2() {
    column_index_1_fu_1225_p2 = (!column_index_reg_722.read().is_01() || !ap_const_lv31_1.is_01())? sc_lv<31>(): (sc_biguint<31>(column_index_reg_722.read()) + sc_biguint<31>(ap_const_lv31_1));
}

void correlation_accel_v2::thread_column_index_cast_fu_1137_p1() {
    column_index_cast_fu_1137_p1 = esl_zext<32,31>(column_index_reg_722.read());
}

void correlation_accel_v2::thread_exitcond2_fu_1110_p2() {
    exitcond2_fu_1110_p2 = (!i2_phi_fu_715_p4.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(i2_phi_fu_715_p4.read() == ap_const_lv3_6);
}

void correlation_accel_v2::thread_exitcond_i_fu_1002_p2() {
    exitcond_i_fu_1002_p2 = (!i_i_reg_619.read().is_01() || !ap_const_lv8_FC.is_01())? sc_lv<1>(): sc_lv<1>(i_i_reg_619.read() == ap_const_lv8_FC);
}

void correlation_accel_v2::thread_grp_fu_1087_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it5.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it14.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it22.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it6.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it7.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it8.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it9.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it10.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it11.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it12.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it13.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it15.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it16.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it17.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it18.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it19.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it20.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it21.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it5.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it14.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it22.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it6.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it7.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it8.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it9.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it10.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it11.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it12.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it13.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it15.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it16.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it17.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it18.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it19.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it20.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it21.read()))))) {
        grp_fu_1087_ce = ap_const_logic_1;
    } else {
        grp_fu_1087_ce = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_grp_fu_1087_p0() {
    grp_fu_1087_p0 = ap_reg_ppstg_i1_reg_663_pp0_it5.read();
}

void correlation_accel_v2::thread_grp_fu_1087_p1() {
    grp_fu_1087_p1 =  (sc_lv<4>) (ap_const_lv32_6);
}

void correlation_accel_v2::thread_grp_fu_1197_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it5.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it14.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it22.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it6.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it7.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it8.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it9.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it10.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it11.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it12.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it13.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it15.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it16.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it17.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it18.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it19.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it20.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it21.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it5.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it14.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it22.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it6.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it7.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it8.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it9.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it10.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it11.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it12.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it13.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it15.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it16.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it17.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it18.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it19.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it20.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it21.read()))))) {
        grp_fu_1197_ce = ap_const_logic_1;
    } else {
        grp_fu_1197_ce = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_grp_fu_1197_p0() {
    grp_fu_1197_p0 = ap_reg_ppstg_i4_reg_743_pp2_it5.read();
}

void correlation_accel_v2::thread_grp_fu_1197_p1() {
    grp_fu_1197_p1 =  (sc_lv<4>) (ap_const_lv32_6);
}

void correlation_accel_v2::thread_grp_fu_756_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st354_fsm_214.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st363_fsm_223.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st368_fsm_228.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st18_fsm_17.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st160_fsm_88.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st199_fsm_127.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st283_fsm_143.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st292_fsm_152.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st301_fsm_161.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st310_fsm_170.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st319_fsm_179.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st295_fsm_155.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st304_fsm_164.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st313_fsm_173.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st322_fsm_182.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st331_fsm_191.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st340_fsm_200.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st407_fsm_267.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st314_fsm_174.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st323_fsm_183.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st332_fsm_192.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st341_fsm_201.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st350_fsm_210.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st359_fsm_219.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st328_fsm_188.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st377_fsm_237.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st411_fsm_271.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st349_fsm_209.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st372_fsm_232.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st416_fsm_276.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st309_fsm_169.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st318_fsm_178.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st327_fsm_187.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st336_fsm_196.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st345_fsm_205.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st358_fsm_218.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st300_fsm_160.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st282_fsm_142.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st291_fsm_151.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st303_fsm_163.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st321_fsm_181.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st339_fsm_199.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st294_fsm_154.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st312_fsm_172.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st330_fsm_190.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st299_fsm_159.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st317_fsm_177.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st335_fsm_195.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st308_fsm_168.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st326_fsm_186.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st344_fsm_204.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st10_fsm_9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st152_fsm_80.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st191_fsm_119.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st275_fsm_135.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st284_fsm_144.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st293_fsm_153.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st296_fsm_156.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st302_fsm_162.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st305_fsm_165.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st311_fsm_171.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st315_fsm_175.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st320_fsm_180.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st324_fsm_184.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st333_fsm_193.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st337_fsm_197.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st342_fsm_202.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st346_fsm_206.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st351_fsm_211.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st355_fsm_215.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st360_fsm_220.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st364_fsm_224.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st369_fsm_229.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st403_fsm_263.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st408_fsm_268.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st329_fsm_189.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st373_fsm_233.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st12_fsm_11.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st13_fsm_12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st14_fsm_13.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st15_fsm_14.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st16_fsm_15.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st17_fsm_16.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it30.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it27.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it29.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it30.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it27.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it29.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg2_fsm_25.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_1450_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg3_fsm_26.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_1450_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg4_fsm_27.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read()))) || 
         ((esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read())) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg5_fsm_28.read())) || 
         ((esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read())) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg6_fsm_29.read())) || 
         ((esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read())) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg7_fsm_30.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg8_fsm_31.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_23.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg1_fsm_24.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_1450_pp1_it1.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st153_fsm_81.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st154_fsm_82.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st155_fsm_83.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st156_fsm_84.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st157_fsm_85.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st158_fsm_86.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st159_fsm_87.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st192_fsm_120.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st193_fsm_121.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st194_fsm_122.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st195_fsm_123.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st196_fsm_124.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st197_fsm_125.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st198_fsm_126.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it30.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it29.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it27.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it30.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it29.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it27.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st276_fsm_136.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st277_fsm_137.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st278_fsm_138.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st279_fsm_139.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st280_fsm_140.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st281_fsm_141.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st285_fsm_145.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st286_fsm_146.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st287_fsm_147.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st288_fsm_148.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st289_fsm_149.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st290_fsm_150.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st297_fsm_157.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st298_fsm_158.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st306_fsm_166.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st307_fsm_167.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st316_fsm_176.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st325_fsm_185.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st334_fsm_194.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st338_fsm_198.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st343_fsm_203.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st347_fsm_207.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st348_fsm_208.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st352_fsm_212.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st353_fsm_213.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st356_fsm_216.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st357_fsm_217.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st361_fsm_221.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st362_fsm_222.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st365_fsm_225.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st366_fsm_226.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st367_fsm_227.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st370_fsm_230.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st371_fsm_231.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st374_fsm_234.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st375_fsm_235.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st376_fsm_236.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st404_fsm_264.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st405_fsm_265.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st406_fsm_266.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st409_fsm_269.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st410_fsm_270.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st412_fsm_272.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st413_fsm_273.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st414_fsm_274.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st415_fsm_275.read()))) {
        grp_fu_756_ce = ap_const_logic_1;
    } else {
        grp_fu_756_ce = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_grp_fu_756_opcode() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st152_fsm_80.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st355_fsm_215.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st364_fsm_224.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st369_fsm_229.read()))) {
        grp_fu_756_opcode = ap_const_lv2_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st301_fsm_161.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st310_fsm_170.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st319_fsm_179.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st314_fsm_174.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st323_fsm_183.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st332_fsm_192.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st341_fsm_201.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st328_fsm_188.read()) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
                 !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it24.read())) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st10_fsm_9.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st191_fsm_119.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st275_fsm_135.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st284_fsm_144.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st293_fsm_153.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st296_fsm_156.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st302_fsm_162.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st305_fsm_165.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st311_fsm_171.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st315_fsm_175.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st320_fsm_180.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st324_fsm_184.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st333_fsm_193.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st337_fsm_197.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st342_fsm_202.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st346_fsm_206.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st351_fsm_211.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st360_fsm_220.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st403_fsm_263.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st408_fsm_268.read()) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it27.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it26.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg2_fsm_25.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg3_fsm_26.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg4_fsm_27.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
                 !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it24.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it27.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it26.read())))) {
        grp_fu_756_opcode = ap_const_lv2_0;
    } else {
        grp_fu_756_opcode =  (sc_lv<2>) ("XX");
    }
}

void correlation_accel_v2::thread_grp_fu_756_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st403_fsm_263.read())) {
        grp_fu_756_p0 = tmp_46_reg_1624.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st324_fsm_184.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st333_fsm_193.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st342_fsm_202.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st351_fsm_211.read()))) {
        grp_fu_756_p0 = reg_997.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st315_fsm_175.read())) {
        grp_fu_756_p0 = reg_941.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st310_fsm_170.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st319_fsm_179.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st328_fsm_188.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st337_fsm_197.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st346_fsm_206.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st355_fsm_215.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st364_fsm_224.read()))) {
        grp_fu_756_p0 = reg_974.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st314_fsm_174.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st323_fsm_183.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st332_fsm_192.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st341_fsm_201.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st305_fsm_165.read()))) {
        grp_fu_756_p0 = reg_965.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st301_fsm_161.read())) {
        grp_fu_756_p0 = reg_989.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st284_fsm_144.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st293_fsm_153.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st302_fsm_162.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st311_fsm_171.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st320_fsm_180.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st360_fsm_220.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st369_fsm_229.read()))) {
        grp_fu_756_p0 = reg_956.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st191_fsm_119.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st408_fsm_268.read()))) {
        grp_fu_756_p0 = reg_980.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st152_fsm_80.read())) {
        grp_fu_756_p0 = sum_weight_returnSquareA_reg_687.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg4_fsm_27.read()))) {
        grp_fu_756_p0 = sum_weight_returnA_reg_699.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg3_fsm_26.read()))) {
        grp_fu_756_p0 = sum_weight_returnSquareA_phi_fu_691_p4.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg2_fsm_25.read()))) {
        grp_fu_756_p0 = sum_returnA_phi_fu_679_p4.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it27.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it27.read())) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st296_fsm_156.read()))) {
        grp_fu_756_p0 = reg_928.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read())) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st275_fsm_135.read()))) {
        grp_fu_756_p0 = reg_916.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st10_fsm_9.read())) {
        grp_fu_756_p0 = reg_882.read();
    } else {
        grp_fu_756_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_756_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st408_fsm_268.read())) {
        grp_fu_756_p1 = reg_935.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st310_fsm_170.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st319_fsm_179.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st328_fsm_188.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st337_fsm_197.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st346_fsm_206.read()))) {
        grp_fu_756_p1 = reg_989.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st301_fsm_161.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st275_fsm_135.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st296_fsm_156.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st315_fsm_175.read()))) {
        grp_fu_756_p1 = ap_const_lv32_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st152_fsm_80.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st191_fsm_119.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st355_fsm_215.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st369_fsm_229.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st403_fsm_263.read()))) {
        grp_fu_756_p1 = reg_866.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st314_fsm_174.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st323_fsm_183.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st332_fsm_192.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st341_fsm_201.read()) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg4_fsm_27.read())) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st305_fsm_165.read()))) {
        grp_fu_756_p1 = reg_928.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg3_fsm_26.read())) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st324_fsm_184.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st333_fsm_193.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st342_fsm_202.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st351_fsm_211.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st360_fsm_220.read()))) {
        grp_fu_756_p1 = reg_941.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it0.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg2_fsm_25.read())) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st284_fsm_144.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st293_fsm_153.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st302_fsm_162.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st311_fsm_171.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st320_fsm_180.read()))) {
        grp_fu_756_p1 = reg_916.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it27.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it27.read())) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st364_fsm_224.read()))) {
        grp_fu_756_p1 = reg_923.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read())))) {
        grp_fu_756_p1 = reg_906.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st10_fsm_9.read())) {
        grp_fu_756_p1 = reg_875.read();
    } else {
        grp_fu_756_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_760_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it30.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it33.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it31.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it29.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it32.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it30.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it31.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it29.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it32.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it33.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it30.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it29.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it31.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it32.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it33.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it30.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it29.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it31.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it32.read()))))) {
        grp_fu_760_ce = ap_const_logic_1;
    } else {
        grp_fu_760_ce = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_grp_fu_760_p0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it30.read()))) {
        grp_fu_760_p0 = reg_989.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it29.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it29.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read())))) {
        grp_fu_760_p0 = reg_941.read();
    } else {
        grp_fu_760_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_760_p1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it30.read()))) {
        grp_fu_760_p1 = tmp_64_reg_1609.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it29.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it29.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read())))) {
        grp_fu_760_p1 = reg_935.read();
    } else {
        grp_fu_760_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_768_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st146_fsm_74.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st151_fsm_79.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st190_fsm_118.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st354_fsm_214.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st363_fsm_223.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st368_fsm_228.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st402_fsm_262.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st449_fsm_309.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st407_fsm_267.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st350_fsm_210.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st359_fsm_219.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st351_fsm_211.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st360_fsm_220.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st364_fsm_224.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st403_fsm_263.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st142_fsm_70.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st147_fsm_75.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st186_fsm_114.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st398_fsm_258.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st445_fsm_305.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st352_fsm_212.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st353_fsm_213.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st361_fsm_221.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st362_fsm_222.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st365_fsm_225.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st366_fsm_226.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st367_fsm_227.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st404_fsm_264.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st405_fsm_265.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st406_fsm_266.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_fu_1002_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it27.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it27.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st143_fsm_71.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st144_fsm_72.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st145_fsm_73.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st148_fsm_76.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st149_fsm_77.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st150_fsm_78.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st187_fsm_115.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st188_fsm_116.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st189_fsm_117.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it27.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it27.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st399_fsm_259.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st400_fsm_260.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st401_fsm_261.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st446_fsm_306.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st447_fsm_307.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st448_fsm_308.read()))) {
        grp_fu_768_ce = ap_const_logic_1;
    } else {
        grp_fu_768_ce = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_grp_fu_768_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st445_fsm_305.read())) {
        grp_fu_768_p0 = volatilityA_reg_1629.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st359_fsm_219.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st403_fsm_263.read()))) {
        grp_fu_768_p0 = reg_980.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st350_fsm_210.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st142_fsm_70.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st186_fsm_114.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st398_fsm_258.read()))) {
        grp_fu_768_p0 = reg_899.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it27.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it27.read())) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st364_fsm_224.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st147_fsm_75.read()))) {
        grp_fu_768_p0 = reg_866.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read())))) {
        grp_fu_768_p0 = reg_906.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        grp_fu_768_p0 = tmp_i_reg_607.read();
    } else {
        grp_fu_768_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_768_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st445_fsm_305.read())) {
        grp_fu_768_p1 = volatilityB_reg_1634.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st403_fsm_263.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st398_fsm_258.read()))) {
        grp_fu_768_p1 = reg_980.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st350_fsm_210.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st364_fsm_224.read()))) {
        grp_fu_768_p1 = reg_965.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it27.read()))) {
        grp_fu_768_p1 = ap_reg_ppstg_reg_882_pp2_it26.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st186_fsm_114.read())) {
        grp_fu_768_p1 = reg_899.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st147_fsm_75.read())) {
        grp_fu_768_p1 = sum_weight_returnA_reg_699.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st359_fsm_219.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st142_fsm_70.read()))) {
        grp_fu_768_p1 = ap_const_lv32_40000000;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it27.read()))) {
        grp_fu_768_p1 = ap_reg_ppstg_reg_882_pp0_it26.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read())))) {
        grp_fu_768_p1 = reg_906.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        grp_fu_768_p1 = ap_const_lv32_3F70A3D7;
    } else {
        grp_fu_768_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_774_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st363_fsm_223.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st359_fsm_219.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st360_fsm_220.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st361_fsm_221.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st362_fsm_222.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it27.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it28.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it25.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it27.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it25.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it25.read()))))) {
        grp_fu_774_ce = ap_const_logic_1;
    } else {
        grp_fu_774_ce = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_grp_fu_774_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st359_fsm_219.read())) {
        grp_fu_774_p0 = reg_980.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it27.read()))) {
        grp_fu_774_p0 = tmp_63_reg_1604.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read())) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it24.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read())))) {
        grp_fu_774_p0 = reg_906.read();
    } else {
        grp_fu_774_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_774_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st359_fsm_219.read())) {
        grp_fu_774_p1 = sum_weight_returnA_reg_699.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it27.read()))) {
        grp_fu_774_p1 = ap_reg_ppstg_reg_882_pp2_it26.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it24.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        grp_fu_774_p1 = ap_reg_ppstg_reg_882_pp2_it24.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        grp_fu_774_p1 = ap_reg_ppstg_reg_882_pp0_it24.read();
    } else {
        grp_fu_774_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_780_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it26.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it25.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it24.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it25.read()))))) {
        grp_fu_780_ce = ap_const_logic_1;
    } else {
        grp_fu_780_ce = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_grp_fu_780_p0() {
    grp_fu_780_p0 = lnReturnA_load_reg_1599.read();
}

void correlation_accel_v2::thread_grp_fu_780_p1() {
    grp_fu_780_p1 = reg_906.read();
}

void correlation_accel_v2::thread_grp_fu_785_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st190_fsm_118.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st354_fsm_214.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st402_fsm_262.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st141_fsm_69.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st331_fsm_191.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st340_fsm_200.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st407_fsm_267.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st332_fsm_192.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st341_fsm_201.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st350_fsm_210.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st377_fsm_237.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st349_fsm_209.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st336_fsm_196.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st345_fsm_205.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st358_fsm_218.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st479_fsm_339.read()) && 
          !esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_out_correlation_TREADY.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st339_fsm_199.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st330_fsm_190.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st335_fsm_195.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st344_fsm_204.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st333_fsm_193.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st337_fsm_197.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st342_fsm_202.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st346_fsm_206.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st351_fsm_211.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st355_fsm_215.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st403_fsm_263.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st186_fsm_114.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st398_fsm_258.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st112_fsm_40.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st161_fsm_89.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st329_fsm_189.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st373_fsm_233.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st378_fsm_238.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st450_fsm_310.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st334_fsm_194.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st338_fsm_198.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st343_fsm_203.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st347_fsm_207.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st348_fsm_208.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st352_fsm_212.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st353_fsm_213.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st356_fsm_216.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st357_fsm_217.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st374_fsm_234.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st375_fsm_235.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st376_fsm_236.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st404_fsm_264.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st405_fsm_265.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st406_fsm_266.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st187_fsm_115.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st188_fsm_116.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st189_fsm_117.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st399_fsm_259.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st400_fsm_260.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st401_fsm_261.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
          (esl_seteq<1,1,1>(tmp_6_reg_1401.read(), ap_const_lv1_0) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it5.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it14.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it1.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it2.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it3.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it4.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it6.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it7.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it8.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it9.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it10.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it11.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it12.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it13.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          (esl_seteq<1,1,1>(tmp_6_reg_1401.read(), ap_const_lv1_0) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it5.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it14.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it1.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it2.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it3.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it4.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it6.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it7.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it8.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it9.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it10.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it11.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it12.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it13.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st113_fsm_41.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st114_fsm_42.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st115_fsm_43.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st116_fsm_44.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st117_fsm_45.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st118_fsm_46.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st119_fsm_47.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st120_fsm_48.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st121_fsm_49.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st122_fsm_50.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st123_fsm_51.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st124_fsm_52.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st125_fsm_53.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st126_fsm_54.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st127_fsm_55.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st128_fsm_56.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st129_fsm_57.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st130_fsm_58.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st131_fsm_59.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st132_fsm_60.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st133_fsm_61.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st134_fsm_62.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st135_fsm_63.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st136_fsm_64.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st137_fsm_65.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st138_fsm_66.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st139_fsm_67.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st140_fsm_68.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st162_fsm_90.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st163_fsm_91.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st164_fsm_92.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st165_fsm_93.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st166_fsm_94.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st167_fsm_95.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st168_fsm_96.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st169_fsm_97.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st170_fsm_98.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st171_fsm_99.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st172_fsm_100.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st173_fsm_101.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st174_fsm_102.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st175_fsm_103.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st176_fsm_104.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st177_fsm_105.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st178_fsm_106.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st179_fsm_107.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st180_fsm_108.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st181_fsm_109.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st182_fsm_110.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st183_fsm_111.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st184_fsm_112.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st185_fsm_113.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_34_reg_1540.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it5.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it14.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it1.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it2.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it3.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it4.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it6.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it7.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it8.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it9.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it10.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it11.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it12.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it13.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_34_reg_1540.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it5.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it14.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it1.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it2.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it3.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it4.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it6.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it7.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it8.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it9.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it10.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it11.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it12.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it13.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st379_fsm_239.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st380_fsm_240.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st381_fsm_241.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st382_fsm_242.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st383_fsm_243.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st384_fsm_244.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st385_fsm_245.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st386_fsm_246.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st387_fsm_247.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st388_fsm_248.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st389_fsm_249.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st390_fsm_250.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st391_fsm_251.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st392_fsm_252.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st393_fsm_253.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st394_fsm_254.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st395_fsm_255.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st396_fsm_256.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st397_fsm_257.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st451_fsm_311.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st452_fsm_312.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st453_fsm_313.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st454_fsm_314.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st455_fsm_315.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st456_fsm_316.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st457_fsm_317.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st458_fsm_318.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st459_fsm_319.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st460_fsm_320.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st461_fsm_321.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st462_fsm_322.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st463_fsm_323.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st464_fsm_324.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st465_fsm_325.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st466_fsm_326.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st467_fsm_327.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st468_fsm_328.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st469_fsm_329.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st470_fsm_330.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st471_fsm_331.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st472_fsm_332.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st473_fsm_333.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st474_fsm_334.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st475_fsm_335.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st476_fsm_336.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st477_fsm_337.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st478_fsm_338.read()))) {
        grp_fu_785_ce = ap_const_logic_1;
    } else {
        grp_fu_785_ce = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_grp_fu_785_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st373_fsm_233.read())) {
        grp_fu_785_p0 = reg_965.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st329_fsm_189.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st378_fsm_238.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st450_fsm_310.read()))) {
        grp_fu_785_p0 = reg_956.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        grp_fu_785_p0 = tmp_34_tmp_s_reg_1544.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st161_fsm_89.read())) {
        grp_fu_785_p0 = reg_890.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st112_fsm_40.read())) {
        grp_fu_785_p0 = sum_returnA_reg_675.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        grp_fu_785_p0 = tmp_4_tmp_5_reg_1405.read();
    } else {
        grp_fu_785_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_785_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st450_fsm_310.read())) {
        grp_fu_785_p1 = reg_866.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        grp_fu_785_p1 = tmp_51_fu_1172_p1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st161_fsm_89.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st373_fsm_233.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st378_fsm_238.read()))) {
        grp_fu_785_p1 = reg_875.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st112_fsm_40.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st329_fsm_189.read()))) {
        grp_fu_785_p1 = tmp_3_reg_1487.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        grp_fu_785_p1 = tmp_16_fu_1067_p1.read();
    } else {
        grp_fu_785_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_grp_fu_790_ce() {
    grp_fu_790_ce = ap_const_logic_1;
}

void correlation_accel_v2::thread_grp_fu_790_p0() {
    grp_fu_790_p0 = tmp_1_reg_1394.read();
}

void correlation_accel_v2::thread_grp_fu_793_ce() {
    grp_fu_793_ce = ap_const_logic_1;
}

void correlation_accel_v2::thread_grp_fu_793_p0() {
    grp_fu_793_p0 = ap_const_lv32_0;
}

void correlation_accel_v2::thread_grp_fu_793_p1() {
    grp_fu_793_p1 = reg_890.read();
}

void correlation_accel_v2::thread_grp_fu_798_ce() {
    grp_fu_798_ce = ap_const_logic_1;
}

void correlation_accel_v2::thread_grp_fu_798_p0() {
    grp_fu_798_p0 = ap_const_lv32_0;
}

void correlation_accel_v2::thread_grp_fu_798_p1() {
    grp_fu_798_p1 = reg_965.read();
}

void correlation_accel_v2::thread_grp_fu_803_ce() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it23.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it22.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it15.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it16.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it17.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it18.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it19.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it20.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it21.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it23.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it22.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it15.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it16.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it17.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it18.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it19.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it20.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it21.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it23.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it22.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it15.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it16.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it17.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it18.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it19.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it20.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it21.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it23.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it22.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it15.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it16.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it17.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it18.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it19.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it20.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_34_reg_1540_pp2_it21.read()))))) {
        grp_fu_803_ce = ap_const_logic_1;
    } else {
        grp_fu_803_ce = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_grp_fu_803_p0() {
    grp_fu_803_p0 = ap_const_lv32_0;
}

void correlation_accel_v2::thread_grp_fu_803_p1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        grp_fu_803_p1 = reg_980.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it15.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        grp_fu_803_p1 = reg_899.read();
    } else {
        grp_fu_803_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_i1_i_cast_fu_1019_p1() {
    i1_i_cast_fu_1019_p1 = esl_zext<32,31>(i1_i_reg_631.read());
}

void correlation_accel_v2::thread_i1_phi_fu_667_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(tmp_6_reg_1401.read(), ap_const_lv1_0))) {
        i1_phi_fu_667_p4 = i_1_reg_1417.read();
    } else {
        i1_phi_fu_667_p4 = i1_reg_663.read();
    }
}

void correlation_accel_v2::thread_i2_phi_fu_715_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_1450.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_23.read()))) {
        i2_phi_fu_715_p4 = i_reg_1454.read();
    } else {
        i2_phi_fu_715_p4 = i2_reg_711.read();
    }
}

void correlation_accel_v2::thread_i4_phi_fu_747_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_34_reg_1540.read()))) {
        i4_phi_fu_747_p4 = i_2_reg_1555.read();
    } else {
        i4_phi_fu_747_p4 = i4_reg_743.read();
    }
}

void correlation_accel_v2::thread_i_1_fu_1072_p2() {
    i_1_fu_1072_p2 = (!i1_reg_663.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(i1_reg_663.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void correlation_accel_v2::thread_i_2_fu_1177_p2() {
    i_2_fu_1177_p2 = (!i4_reg_743.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(i4_reg_743.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void correlation_accel_v2::thread_i_3_fu_1013_p2() {
    i_3_fu_1013_p2 = (!i_i_reg_619.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(i_i_reg_619.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void correlation_accel_v2::thread_i_4_fu_1033_p2() {
    i_4_fu_1033_p2 = (!i1_i_reg_631.read().is_01() || !ap_const_lv31_1.is_01())? sc_lv<31>(): (sc_biguint<31>(i1_i_reg_631.read()) + sc_biguint<31>(ap_const_lv31_1));
}

void correlation_accel_v2::thread_i_fu_1116_p2() {
    i_fu_1116_p2 = (!i2_phi_fu_715_p4.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i2_phi_fu_715_p4.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void correlation_accel_v2::thread_in_indices_TREADY() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st21_fsm_20.read()) && 
          !esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          esl_seteq<1,1,1>(tmp_6_reg_1401.read(), ap_const_lv1_0) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read())) || 
         (!esl_seteq<1,1,1>(in_indices_TVALID.read(), ap_const_logic_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st202_fsm_130.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_34_reg_1540.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read())))) {
        in_indices_TREADY = ap_const_logic_1;
    } else {
        in_indices_TREADY = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_lnReturnA_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        lnReturnA_address0 =  (sc_lv<8>) (tmp_28_fu_1105_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it23.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        lnReturnA_address0 =  (sc_lv<8>) (tmp_62_fu_1216_p1.read());
    } else {
        lnReturnA_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void correlation_accel_v2::thread_lnReturnA_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it23.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read())))) {
        lnReturnA_ce0 = ap_const_logic_1;
    } else {
        lnReturnA_ce0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_lnReturnA_d0() {
    lnReturnA_d0 = reg_906.read();
}

void correlation_accel_v2::thread_lnReturnA_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it24.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_6_reg_1401_pp0_it24.read())))) {
        lnReturnA_we0 = ap_const_logic_1;
    } else {
        lnReturnA_we0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_out_correlation_TDATA() {
    out_correlation_TDATA = grp_fu_785_p2.read();
}

void correlation_accel_v2::thread_out_correlation_TDEST() {
    out_correlation_TDEST = ap_const_lv1_0;
}

void correlation_accel_v2::thread_out_correlation_TID() {
    out_correlation_TID = ap_const_lv1_0;
}

void correlation_accel_v2::thread_out_correlation_TKEEP() {
    out_correlation_TKEEP = ap_const_lv4_F;
}

void correlation_accel_v2::thread_out_correlation_TLAST() {
    out_correlation_TLAST = tmp_49_reg_1614.read();
}

void correlation_accel_v2::thread_out_correlation_TSTRB() {
    out_correlation_TSTRB = ap_const_lv4_1;
}

void correlation_accel_v2::thread_out_correlation_TUSER() {
    out_correlation_TUSER = ap_const_lv1_0;
}

void correlation_accel_v2::thread_out_correlation_TVALID() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st479_fsm_339.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_out_correlation_TREADY.read())))) {
        out_correlation_TVALID = ap_const_logic_1;
    } else {
        out_correlation_TVALID = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_sum_returnA_phi_fu_679_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg2_fsm_25.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_1450_pp1_it1.read()))) {
        sum_returnA_phi_fu_679_p4 = reg_956.read();
    } else {
        sum_returnA_phi_fu_679_p4 = sum_returnA_reg_675.read();
    }
}

void correlation_accel_v2::thread_sum_weight_returnSquareA_phi_fu_691_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_1450_pp1_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg3_fsm_26.read()))) {
        sum_weight_returnSquareA_phi_fu_691_p4 = reg_965.read();
    } else {
        sum_weight_returnSquareA_phi_fu_691_p4 = sum_weight_returnSquareA_reg_687.read();
    }
}

void correlation_accel_v2::thread_tmp_13_fu_1132_p2() {
    tmp_13_fu_1132_p2 = (!number_of_indices.read().is_01() || !ap_const_lv32_FFFFFFFF.is_01())? sc_lv<32>(): (sc_biguint<32>(number_of_indices.read()) + sc_bigint<32>(ap_const_lv32_FFFFFFFF));
}

void correlation_accel_v2::thread_tmp_15_fu_1122_p1() {
    tmp_15_fu_1122_p1 = esl_zext<64,3>(i2_phi_fu_715_p4.read());
}

void correlation_accel_v2::thread_tmp_16_fu_1067_p1() {
    tmp_16_fu_1067_p1 = in_indices_TDATA.read();
}

void correlation_accel_v2::thread_tmp_19_fu_1082_p1() {
    tmp_19_fu_1082_p1 = esl_zext<64,32>(ap_reg_ppstg_i1_reg_663_pp0_it5.read());
}

void correlation_accel_v2::thread_tmp_1_fu_1043_p2() {
    tmp_1_fu_1043_p2 = (!number_of_days.read().is_01() || !ap_const_lv32_FFFFFFFF.is_01())? sc_lv<32>(): (sc_biguint<32>(number_of_days.read()) + sc_bigint<32>(ap_const_lv32_FFFFFFFF));
}

void correlation_accel_v2::thread_tmp_20_fu_1093_p1() {
    tmp_20_fu_1093_p1 = esl_zext<64,32>(grp_fu_1087_p2.read());
}

void correlation_accel_v2::thread_tmp_27_fu_1100_p2() {
    tmp_27_fu_1100_p2 = (!ap_reg_ppstg_tmp_32_reg_1422_pp0_it23.read().is_01() || !ap_const_lv31_7FFFFFFF.is_01())? sc_lv<31>(): (sc_biguint<31>(ap_reg_ppstg_tmp_32_reg_1422_pp0_it23.read()) + sc_bigint<31>(ap_const_lv31_7FFFFFFF));
}

void correlation_accel_v2::thread_tmp_28_fu_1105_p1() {
    tmp_28_fu_1105_p1 = esl_zext<64,31>(tmp_27_fu_1100_p2.read());
}

void correlation_accel_v2::thread_tmp_29_fu_1141_p2() {
    tmp_29_fu_1141_p2 = (!column_index_cast_fu_1137_p1.read().is_01() || !number_of_indices.read().is_01())? sc_lv<1>(): (sc_bigint<32>(column_index_cast_fu_1137_p1.read()) < sc_bigint<32>(number_of_indices.read()));
}

void correlation_accel_v2::thread_tmp_31_fu_1146_p1() {
    tmp_31_fu_1146_p1 = in_indices_TDATA.read();
}

void correlation_accel_v2::thread_tmp_32_fu_1078_p1() {
    tmp_32_fu_1078_p1 = ap_reg_ppstg_i1_reg_663_pp0_it5.read().range(31-1, 0);
}

void correlation_accel_v2::thread_tmp_33_phi_fu_737_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_34_reg_1540.read()))) {
        tmp_33_phi_fu_737_p4 = tmp_34_tmp_s_reg_1544.read();
    } else {
        tmp_33_phi_fu_737_p4 = tmp_33_reg_734.read();
    }
}

void correlation_accel_v2::thread_tmp_34_fu_1150_p2() {
    tmp_34_fu_1150_p2 = (!i4_phi_fu_747_p4.read().is_01() || !tmp_1_reg_1394.read().is_01())? sc_lv<1>(): (sc_bigint<32>(i4_phi_fu_747_p4.read()) > sc_bigint<32>(tmp_1_reg_1394.read()));
}

void correlation_accel_v2::thread_tmp_34_tmp_s_fu_1164_p3() {
    tmp_34_tmp_s_fu_1164_p3 = (!tmp_39_fu_1158_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_39_fu_1158_p2.read()[0].to_bool())? tmp_33_phi_fu_737_p4.read(): tmp_17_fu_194.read());
}

void correlation_accel_v2::thread_tmp_39_fu_1158_p2() {
    tmp_39_fu_1158_p2 = (!i4_phi_fu_747_p4.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<1>(): sc_lv<1>(i4_phi_fu_747_p4.read() == ap_const_lv32_1);
}

void correlation_accel_v2::thread_tmp_49_fu_1221_p2() {
    tmp_49_fu_1221_p2 = (!column_index_cast_reg_1527.read().is_01() || !tmp_13_reg_1492.read().is_01())? sc_lv<1>(): sc_lv<1>(column_index_cast_reg_1527.read() == tmp_13_reg_1492.read());
}

void correlation_accel_v2::thread_tmp_4_phi_fu_645_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(tmp_6_reg_1401.read(), ap_const_lv1_0))) {
        tmp_4_phi_fu_645_p4 = tmp_4_tmp_5_reg_1405.read();
    } else {
        tmp_4_phi_fu_645_p4 = tmp_4_reg_642.read();
    }
}

void correlation_accel_v2::thread_tmp_4_tmp_5_fu_1059_p3() {
    tmp_4_tmp_5_fu_1059_p3 = (!tmp_7_fu_1053_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_7_fu_1053_p2.read()[0].to_bool())? tmp_4_phi_fu_645_p4.read(): tmp_5_phi_fu_655_p4.read());
}

void correlation_accel_v2::thread_tmp_51_fu_1172_p1() {
    tmp_51_fu_1172_p1 = in_indices_TDATA.read();
}

void correlation_accel_v2::thread_tmp_53_fu_1192_p1() {
    tmp_53_fu_1192_p1 = esl_zext<64,32>(ap_reg_ppstg_i4_reg_743_pp2_it5.read());
}

void correlation_accel_v2::thread_tmp_54_fu_1203_p1() {
    tmp_54_fu_1203_p1 = esl_zext<64,32>(grp_fu_1197_p2.read());
}

void correlation_accel_v2::thread_tmp_5_phi_fu_655_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(tmp_6_reg_1401.read(), ap_const_lv1_0))) {
        tmp_5_phi_fu_655_p4 = tmp_16_reg_1411.read();
    } else {
        tmp_5_phi_fu_655_p4 = tmp_5_reg_651.read();
    }
}

void correlation_accel_v2::thread_tmp_61_fu_1211_p2() {
    tmp_61_fu_1211_p2 = (!ap_reg_ppstg_tmp_66_reg_1560_pp2_it22.read().is_01() || !ap_const_lv31_7FFFFFFF.is_01())? sc_lv<31>(): (sc_biguint<31>(ap_reg_ppstg_tmp_66_reg_1560_pp2_it22.read()) + sc_bigint<31>(ap_const_lv31_7FFFFFFF));
}

void correlation_accel_v2::thread_tmp_62_fu_1216_p1() {
    tmp_62_fu_1216_p1 = esl_zext<64,31>(tmp_61_fu_1211_p2.read());
}

void correlation_accel_v2::thread_tmp_66_fu_1188_p1() {
    tmp_66_fu_1188_p1 = ap_reg_ppstg_i4_reg_743_pp2_it5.read().range(31-1, 0);
}

void correlation_accel_v2::thread_tmp_6_fu_1048_p2() {
    tmp_6_fu_1048_p2 = (!i1_phi_fu_667_p4.read().is_01() || !tmp_1_reg_1394.read().is_01())? sc_lv<1>(): (sc_bigint<32>(i1_phi_fu_667_p4.read()) > sc_bigint<32>(tmp_1_reg_1394.read()));
}

void correlation_accel_v2::thread_tmp_78_i_fu_1023_p2() {
    tmp_78_i_fu_1023_p2 = (!i1_i_cast_fu_1019_p1.read().is_01() || !number_of_days.read().is_01())? sc_lv<1>(): (sc_bigint<32>(i1_i_cast_fu_1019_p1.read()) < sc_bigint<32>(number_of_days.read()));
}

void correlation_accel_v2::thread_tmp_79_i_fu_1008_p1() {
    tmp_79_i_fu_1008_p1 = esl_zext<64,8>(i_i_reg_619.read());
}

void correlation_accel_v2::thread_tmp_7_fu_1053_p2() {
    tmp_7_fu_1053_p2 = (!i1_phi_fu_667_p4.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<1>(): sc_lv<1>(i1_phi_fu_667_p4.read() == ap_const_lv32_1);
}

void correlation_accel_v2::thread_tmp_80_i_fu_1028_p1() {
    tmp_80_i_fu_1028_p1 = esl_zext<64,31>(i1_i_reg_631.read());
}

void correlation_accel_v2::thread_tmp_fu_1039_p1() {
    tmp_fu_1039_p1 = in_indices_TDATA.read();
}

void correlation_accel_v2::thread_weight_rom_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) {
        weight_rom_address0 =  (sc_lv<8>) (tmp_79_i_fu_1008_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it5.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()))) {
        weight_rom_address0 =  (sc_lv<8>) (tmp_53_fu_1192_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()))) {
        weight_rom_address0 = ap_const_lv8_0;
    } else {
        weight_rom_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void correlation_accel_v2::thread_weight_rom_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st19_fsm_18.read())) {
        weight_rom_address1 = ap_const_lv8_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) {
        weight_rom_address1 = ap_const_lv8_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it5.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()))) {
        weight_rom_address1 =  (sc_lv<8>) (tmp_19_fu_1082_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read())) {
        weight_rom_address1 =  (sc_lv<8>) (tmp_80_i_fu_1028_p1.read());
    } else {
        weight_rom_address1 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void correlation_accel_v2::thread_weight_rom_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
          !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st20_fsm_19.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it5.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg1_fsm_132.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it0.read()) && ap_sig_bdd_665.read())))) {
        weight_rom_ce0 = ap_const_logic_1;
    } else {
        weight_rom_ce0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_weight_rom_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
          !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st19_fsm_18.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it5.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_22.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && ap_sig_bdd_649.read())))) {
        weight_rom_ce1 = ap_const_logic_1;
    } else {
        weight_rom_ce1 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_weight_rom_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) {
        weight_rom_d0 = reg_866.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) {
        weight_rom_d0 = ap_const_lv32_3F800000;
    } else {
        weight_rom_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_weight_rom_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st19_fsm_18.read())) {
        weight_rom_d1 = reg_890.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) {
        weight_rom_d1 = ap_const_lv32_3F800000;
    } else {
        weight_rom_d1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void correlation_accel_v2::thread_weight_rom_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
          !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()))) {
        weight_rom_we0 = ap_const_logic_1;
    } else {
        weight_rom_we0 = ap_const_logic_0;
    }
}

void correlation_accel_v2::thread_weight_rom_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
          !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st19_fsm_18.read()))) {
        weight_rom_we1 = ap_const_logic_1;
    } else {
        weight_rom_we1 = ap_const_logic_0;
    }
}

}

