#include "mmult_accel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void mmult_accel::thread_a_buf_0_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_0_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()))) {
        a_buf_0_address0 =  (sc_lv<6>) (tmp_9_fu_1778_p1.read());
    } else {
        a_buf_0_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_0_address1() {
    a_buf_0_address1 =  (sc_lv<6>) (tmp_10_fu_1800_p1.read());
}

void mmult_accel::thread_a_buf_0_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_0_ce0 = ap_const_logic_1;
    } else {
        a_buf_0_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_0_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it10.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_0_ce1 = ap_const_logic_1;
    } else {
        a_buf_0_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_0_d0() {
    a_buf_0_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_0_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_0)))) {
        a_buf_0_we0 = ap_const_logic_1;
    } else {
        a_buf_0_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_10_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_10_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it181.read())) {
        a_buf_10_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it180.read());
    } else {
        a_buf_10_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_10_address1() {
    a_buf_10_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it189.read());
}

void mmult_accel::thread_a_buf_10_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it181.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_10_ce0 = ap_const_logic_1;
    } else {
        a_buf_10_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_10_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it190.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_10_ce1 = ap_const_logic_1;
    } else {
        a_buf_10_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_10_d0() {
    a_buf_10_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_10_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_A)))) {
        a_buf_10_we0 = ap_const_logic_1;
    } else {
        a_buf_10_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_11_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_11_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it199.read())) {
        a_buf_11_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it198.read());
    } else {
        a_buf_11_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_11_address1() {
    a_buf_11_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it207.read());
}

void mmult_accel::thread_a_buf_11_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it199.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_11_ce0 = ap_const_logic_1;
    } else {
        a_buf_11_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_11_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it208.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_11_ce1 = ap_const_logic_1;
    } else {
        a_buf_11_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_11_d0() {
    a_buf_11_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_11_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_B)))) {
        a_buf_11_we0 = ap_const_logic_1;
    } else {
        a_buf_11_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_12_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_12_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        a_buf_12_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it216.read());
    } else {
        a_buf_12_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_12_address1() {
    a_buf_12_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it225.read());
}

void mmult_accel::thread_a_buf_12_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_12_ce0 = ap_const_logic_1;
    } else {
        a_buf_12_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_12_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_12_ce1 = ap_const_logic_1;
    } else {
        a_buf_12_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_12_d0() {
    a_buf_12_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_12_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_C)))) {
        a_buf_12_we0 = ap_const_logic_1;
    } else {
        a_buf_12_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_13_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_13_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        a_buf_13_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it216.read());
    } else {
        a_buf_13_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_13_address1() {
    a_buf_13_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it225.read());
}

void mmult_accel::thread_a_buf_13_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_13_ce0 = ap_const_logic_1;
    } else {
        a_buf_13_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_13_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_13_ce1 = ap_const_logic_1;
    } else {
        a_buf_13_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_13_d0() {
    a_buf_13_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_13_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_D)))) {
        a_buf_13_we0 = ap_const_logic_1;
    } else {
        a_buf_13_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_14_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_14_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        a_buf_14_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it216.read());
    } else {
        a_buf_14_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_14_address1() {
    a_buf_14_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it225.read());
}

void mmult_accel::thread_a_buf_14_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_14_ce0 = ap_const_logic_1;
    } else {
        a_buf_14_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_14_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_14_ce1 = ap_const_logic_1;
    } else {
        a_buf_14_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_14_d0() {
    a_buf_14_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_14_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_E)))) {
        a_buf_14_we0 = ap_const_logic_1;
    } else {
        a_buf_14_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_15_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_15_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        a_buf_15_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it216.read());
    } else {
        a_buf_15_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_15_address1() {
    a_buf_15_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it225.read());
}

void mmult_accel::thread_a_buf_15_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_15_ce0 = ap_const_logic_1;
    } else {
        a_buf_15_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_15_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_15_ce1 = ap_const_logic_1;
    } else {
        a_buf_15_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_15_d0() {
    a_buf_15_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_15_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_E) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_D) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_C) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_B) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_A) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_9) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_8) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_7) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_6) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_5) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_4) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_3) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_2) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_1) && 
          !esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_0)))) {
        a_buf_15_we0 = ap_const_logic_1;
    } else {
        a_buf_15_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_1_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_1_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it19.read())) {
        a_buf_1_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it18.read());
    } else {
        a_buf_1_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_1_address1() {
    a_buf_1_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it27.read());
}

void mmult_accel::thread_a_buf_1_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it19.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_1_ce0 = ap_const_logic_1;
    } else {
        a_buf_1_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_1_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it28.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_1_ce1 = ap_const_logic_1;
    } else {
        a_buf_1_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_1_d0() {
    a_buf_1_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_1_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_1)))) {
        a_buf_1_we0 = ap_const_logic_1;
    } else {
        a_buf_1_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_2_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_2_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it37.read())) {
        a_buf_2_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it36.read());
    } else {
        a_buf_2_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_2_address1() {
    a_buf_2_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it45.read());
}

void mmult_accel::thread_a_buf_2_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it37.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_2_ce0 = ap_const_logic_1;
    } else {
        a_buf_2_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_2_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it46.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_2_ce1 = ap_const_logic_1;
    } else {
        a_buf_2_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_2_d0() {
    a_buf_2_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_2_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_2)))) {
        a_buf_2_we0 = ap_const_logic_1;
    } else {
        a_buf_2_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_3_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_3_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it55.read())) {
        a_buf_3_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it54.read());
    } else {
        a_buf_3_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_3_address1() {
    a_buf_3_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it63.read());
}

void mmult_accel::thread_a_buf_3_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it55.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_3_ce0 = ap_const_logic_1;
    } else {
        a_buf_3_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_3_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it64.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_3_ce1 = ap_const_logic_1;
    } else {
        a_buf_3_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_3_d0() {
    a_buf_3_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_3_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_3)))) {
        a_buf_3_we0 = ap_const_logic_1;
    } else {
        a_buf_3_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_4_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_4_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it73.read())) {
        a_buf_4_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it72.read());
    } else {
        a_buf_4_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_4_address1() {
    a_buf_4_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it81.read());
}

void mmult_accel::thread_a_buf_4_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it73.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_4_ce0 = ap_const_logic_1;
    } else {
        a_buf_4_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_4_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it82.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_4_ce1 = ap_const_logic_1;
    } else {
        a_buf_4_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_4_d0() {
    a_buf_4_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_4_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_4)))) {
        a_buf_4_we0 = ap_const_logic_1;
    } else {
        a_buf_4_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_5_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_5_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it91.read())) {
        a_buf_5_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it90.read());
    } else {
        a_buf_5_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_5_address1() {
    a_buf_5_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it99.read());
}

void mmult_accel::thread_a_buf_5_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it91.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_5_ce0 = ap_const_logic_1;
    } else {
        a_buf_5_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_5_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it100.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_5_ce1 = ap_const_logic_1;
    } else {
        a_buf_5_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_5_d0() {
    a_buf_5_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_5_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_5)))) {
        a_buf_5_we0 = ap_const_logic_1;
    } else {
        a_buf_5_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_6_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_6_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it109.read())) {
        a_buf_6_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it108.read());
    } else {
        a_buf_6_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_6_address1() {
    a_buf_6_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it117.read());
}

void mmult_accel::thread_a_buf_6_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it109.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_6_ce0 = ap_const_logic_1;
    } else {
        a_buf_6_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_6_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it118.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_6_ce1 = ap_const_logic_1;
    } else {
        a_buf_6_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_6_d0() {
    a_buf_6_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_6_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_6)))) {
        a_buf_6_we0 = ap_const_logic_1;
    } else {
        a_buf_6_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_7_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_7_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it127.read())) {
        a_buf_7_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it126.read());
    } else {
        a_buf_7_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_7_address1() {
    a_buf_7_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it135.read());
}

void mmult_accel::thread_a_buf_7_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it127.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_7_ce0 = ap_const_logic_1;
    } else {
        a_buf_7_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_7_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it136.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_7_ce1 = ap_const_logic_1;
    } else {
        a_buf_7_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_7_d0() {
    a_buf_7_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_7_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_7)))) {
        a_buf_7_we0 = ap_const_logic_1;
    } else {
        a_buf_7_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_8_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_8_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it145.read())) {
        a_buf_8_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it144.read());
    } else {
        a_buf_8_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_8_address1() {
    a_buf_8_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it153.read());
}

void mmult_accel::thread_a_buf_8_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it145.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_8_ce0 = ap_const_logic_1;
    } else {
        a_buf_8_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_8_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it154.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_8_ce1 = ap_const_logic_1;
    } else {
        a_buf_8_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_8_d0() {
    a_buf_8_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_8_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_8)))) {
        a_buf_8_we0 = ap_const_logic_1;
    } else {
        a_buf_8_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_9_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        a_buf_9_address0 =  (sc_lv<6>) (tmp_1_fu_1610_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it163.read())) {
        a_buf_9_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_9_reg_1907_pp2_it162.read());
    } else {
        a_buf_9_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_a_buf_9_address1() {
    a_buf_9_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_10_reg_1970_pp2_it171.read());
}

void mmult_accel::thread_a_buf_9_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it163.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_9_ce0 = ap_const_logic_1;
    } else {
        a_buf_9_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_9_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it172.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_9_ce1 = ap_const_logic_1;
    } else {
        a_buf_9_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_a_buf_9_d0() {
    a_buf_9_d0 = in_A_dout.read();
}

void mmult_accel::thread_a_buf_9_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo_cast_reg_1834.read(), ap_const_lv5_9)))) {
        a_buf_9_we0 = ap_const_logic_1;
    } else {
        a_buf_9_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st303_fsm_4.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void mmult_accel::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void mmult_accel::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st303_fsm_4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void mmult_accel::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void mmult_accel::thread_ap_sig_bdd_103() {
    ap_sig_bdd_103 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void mmult_accel::thread_ap_sig_bdd_110() {
    ap_sig_bdd_110 = (esl_seteq<1,1,1>(in_B_empty_n.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_reg_1848.read()));
}

void mmult_accel::thread_ap_sig_bdd_138() {
    ap_sig_bdd_138 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void mmult_accel::thread_ap_sig_bdd_23() {
    ap_sig_bdd_23 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void mmult_accel::thread_ap_sig_bdd_5276() {
    ap_sig_bdd_5276 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void mmult_accel::thread_ap_sig_bdd_67() {
    ap_sig_bdd_67 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void mmult_accel::thread_ap_sig_bdd_736() {
    ap_sig_bdd_736 = (esl_seteq<1,1,1>(out_C_full_n.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it295.read()));
}

void mmult_accel::thread_ap_sig_bdd_75() {
    ap_sig_bdd_75 = (esl_seteq<1,1,1>(in_A_empty_n.read(), ap_const_logic_0) && esl_seteq<1,1,1>(exitcond_flatten_reg_1819.read(), ap_const_lv1_0));
}

void mmult_accel::thread_ap_sig_cseq_ST_pp0_stg0_fsm_1() {
    if (ap_sig_bdd_67.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_ap_sig_cseq_ST_pp1_stg0_fsm_2() {
    if (ap_sig_bdd_103.read()) {
        ap_sig_cseq_ST_pp1_stg0_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg0_fsm_2 = ap_const_logic_0;
    }
}

void mmult_accel::thread_ap_sig_cseq_ST_pp2_stg0_fsm_3() {
    if (ap_sig_bdd_138.read()) {
        ap_sig_cseq_ST_pp2_stg0_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp2_stg0_fsm_3 = ap_const_logic_0;
    }
}

void mmult_accel::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_23.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_ap_sig_cseq_ST_st303_fsm_4() {
    if (ap_sig_bdd_5276.read()) {
        ap_sig_cseq_ST_st303_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st303_fsm_4 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_0_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_0_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()))) {
        b_buf_0_address0 =  (sc_lv<6>) (tmp_11_fu_1783_p1.read());
    } else {
        b_buf_0_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_0_address1() {
    b_buf_0_address1 =  (sc_lv<6>) (tmp_12_fu_1814_p1.read());
}

void mmult_accel::thread_b_buf_0_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_0_ce0 = ap_const_logic_1;
    } else {
        b_buf_0_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_0_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it10.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_0_ce1 = ap_const_logic_1;
    } else {
        b_buf_0_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_0_d0() {
    b_buf_0_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_0_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_0)))) {
        b_buf_0_we0 = ap_const_logic_1;
    } else {
        b_buf_0_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_10_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_10_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it181.read())) {
        b_buf_10_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it180.read());
    } else {
        b_buf_10_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_10_address1() {
    b_buf_10_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it189.read());
}

void mmult_accel::thread_b_buf_10_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it181.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_10_ce0 = ap_const_logic_1;
    } else {
        b_buf_10_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_10_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it190.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_10_ce1 = ap_const_logic_1;
    } else {
        b_buf_10_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_10_d0() {
    b_buf_10_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_10_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_A)))) {
        b_buf_10_we0 = ap_const_logic_1;
    } else {
        b_buf_10_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_11_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_11_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it199.read())) {
        b_buf_11_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it198.read());
    } else {
        b_buf_11_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_11_address1() {
    b_buf_11_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it207.read());
}

void mmult_accel::thread_b_buf_11_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it199.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_11_ce0 = ap_const_logic_1;
    } else {
        b_buf_11_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_11_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it208.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_11_ce1 = ap_const_logic_1;
    } else {
        b_buf_11_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_11_d0() {
    b_buf_11_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_11_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_B)))) {
        b_buf_11_we0 = ap_const_logic_1;
    } else {
        b_buf_11_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_12_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_12_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        b_buf_12_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it216.read());
    } else {
        b_buf_12_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_12_address1() {
    b_buf_12_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it225.read());
}

void mmult_accel::thread_b_buf_12_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_12_ce0 = ap_const_logic_1;
    } else {
        b_buf_12_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_12_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_12_ce1 = ap_const_logic_1;
    } else {
        b_buf_12_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_12_d0() {
    b_buf_12_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_12_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_C)))) {
        b_buf_12_we0 = ap_const_logic_1;
    } else {
        b_buf_12_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_13_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_13_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        b_buf_13_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it216.read());
    } else {
        b_buf_13_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_13_address1() {
    b_buf_13_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it225.read());
}

void mmult_accel::thread_b_buf_13_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_13_ce0 = ap_const_logic_1;
    } else {
        b_buf_13_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_13_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_13_ce1 = ap_const_logic_1;
    } else {
        b_buf_13_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_13_d0() {
    b_buf_13_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_13_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_D)))) {
        b_buf_13_we0 = ap_const_logic_1;
    } else {
        b_buf_13_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_14_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_14_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        b_buf_14_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it216.read());
    } else {
        b_buf_14_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_14_address1() {
    b_buf_14_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it225.read());
}

void mmult_accel::thread_b_buf_14_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_14_ce0 = ap_const_logic_1;
    } else {
        b_buf_14_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_14_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_14_ce1 = ap_const_logic_1;
    } else {
        b_buf_14_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_14_d0() {
    b_buf_14_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_14_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_E)))) {
        b_buf_14_we0 = ap_const_logic_1;
    } else {
        b_buf_14_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_15_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_15_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        b_buf_15_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it216.read());
    } else {
        b_buf_15_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_15_address1() {
    b_buf_15_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it225.read());
}

void mmult_accel::thread_b_buf_15_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_15_ce0 = ap_const_logic_1;
    } else {
        b_buf_15_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_15_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_15_ce1 = ap_const_logic_1;
    } else {
        b_buf_15_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_15_d0() {
    b_buf_15_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_15_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_E) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_D) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_C) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_B) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_A) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_9) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_8) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_7) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_6) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_5) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_4) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_3) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_2) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_1) && 
          !esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_0)))) {
        b_buf_15_we0 = ap_const_logic_1;
    } else {
        b_buf_15_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_1_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_1_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it19.read())) {
        b_buf_1_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it18.read());
    } else {
        b_buf_1_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_1_address1() {
    b_buf_1_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it27.read());
}

void mmult_accel::thread_b_buf_1_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it19.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_1_ce0 = ap_const_logic_1;
    } else {
        b_buf_1_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_1_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it28.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_1_ce1 = ap_const_logic_1;
    } else {
        b_buf_1_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_1_d0() {
    b_buf_1_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_1_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_1)))) {
        b_buf_1_we0 = ap_const_logic_1;
    } else {
        b_buf_1_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_2_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_2_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it37.read())) {
        b_buf_2_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it36.read());
    } else {
        b_buf_2_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_2_address1() {
    b_buf_2_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it45.read());
}

void mmult_accel::thread_b_buf_2_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it37.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_2_ce0 = ap_const_logic_1;
    } else {
        b_buf_2_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_2_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it46.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_2_ce1 = ap_const_logic_1;
    } else {
        b_buf_2_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_2_d0() {
    b_buf_2_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_2_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_2)))) {
        b_buf_2_we0 = ap_const_logic_1;
    } else {
        b_buf_2_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_3_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_3_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it55.read())) {
        b_buf_3_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it54.read());
    } else {
        b_buf_3_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_3_address1() {
    b_buf_3_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it63.read());
}

void mmult_accel::thread_b_buf_3_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it55.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_3_ce0 = ap_const_logic_1;
    } else {
        b_buf_3_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_3_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it64.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_3_ce1 = ap_const_logic_1;
    } else {
        b_buf_3_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_3_d0() {
    b_buf_3_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_3_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_3)))) {
        b_buf_3_we0 = ap_const_logic_1;
    } else {
        b_buf_3_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_4_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_4_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it73.read())) {
        b_buf_4_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it72.read());
    } else {
        b_buf_4_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_4_address1() {
    b_buf_4_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it81.read());
}

void mmult_accel::thread_b_buf_4_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it73.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_4_ce0 = ap_const_logic_1;
    } else {
        b_buf_4_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_4_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it82.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_4_ce1 = ap_const_logic_1;
    } else {
        b_buf_4_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_4_d0() {
    b_buf_4_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_4_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_4)))) {
        b_buf_4_we0 = ap_const_logic_1;
    } else {
        b_buf_4_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_5_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_5_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it91.read())) {
        b_buf_5_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it90.read());
    } else {
        b_buf_5_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_5_address1() {
    b_buf_5_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it99.read());
}

void mmult_accel::thread_b_buf_5_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it91.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_5_ce0 = ap_const_logic_1;
    } else {
        b_buf_5_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_5_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it100.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_5_ce1 = ap_const_logic_1;
    } else {
        b_buf_5_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_5_d0() {
    b_buf_5_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_5_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_5)))) {
        b_buf_5_we0 = ap_const_logic_1;
    } else {
        b_buf_5_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_6_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_6_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it109.read())) {
        b_buf_6_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it108.read());
    } else {
        b_buf_6_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_6_address1() {
    b_buf_6_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it117.read());
}

void mmult_accel::thread_b_buf_6_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it109.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_6_ce0 = ap_const_logic_1;
    } else {
        b_buf_6_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_6_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it118.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_6_ce1 = ap_const_logic_1;
    } else {
        b_buf_6_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_6_d0() {
    b_buf_6_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_6_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_6)))) {
        b_buf_6_we0 = ap_const_logic_1;
    } else {
        b_buf_6_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_7_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_7_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it127.read())) {
        b_buf_7_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it126.read());
    } else {
        b_buf_7_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_7_address1() {
    b_buf_7_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it135.read());
}

void mmult_accel::thread_b_buf_7_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it127.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_7_ce0 = ap_const_logic_1;
    } else {
        b_buf_7_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_7_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it136.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_7_ce1 = ap_const_logic_1;
    } else {
        b_buf_7_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_7_d0() {
    b_buf_7_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_7_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_7)))) {
        b_buf_7_we0 = ap_const_logic_1;
    } else {
        b_buf_7_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_8_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_8_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it145.read())) {
        b_buf_8_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it144.read());
    } else {
        b_buf_8_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_8_address1() {
    b_buf_8_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it153.read());
}

void mmult_accel::thread_b_buf_8_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it145.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_8_ce0 = ap_const_logic_1;
    } else {
        b_buf_8_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_8_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it154.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_8_ce1 = ap_const_logic_1;
    } else {
        b_buf_8_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_8_d0() {
    b_buf_8_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_8_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_8)))) {
        b_buf_8_we0 = ap_const_logic_1;
    } else {
        b_buf_8_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_9_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        b_buf_9_address0 =  (sc_lv<6>) (tmp_6_fu_1706_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it163.read())) {
        b_buf_9_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1931_pp2_it162.read());
    } else {
        b_buf_9_address0 = "XXXXXX";
    }
}

void mmult_accel::thread_b_buf_9_address1() {
    b_buf_9_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_12_reg_1994_pp2_it171.read());
}

void mmult_accel::thread_b_buf_9_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it163.read()) && 
          !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        b_buf_9_ce0 = ap_const_logic_1;
    } else {
        b_buf_9_ce0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_9_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it172.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_9_ce1 = ap_const_logic_1;
    } else {
        b_buf_9_ce1 = ap_const_logic_0;
    }
}

void mmult_accel::thread_b_buf_9_d0() {
    b_buf_9_d0 = in_B_dout.read();
}

void mmult_accel::thread_b_buf_9_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
          !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(arrayNo1_cast_reg_1862.read(), ap_const_lv5_9)))) {
        b_buf_9_we0 = ap_const_logic_1;
    } else {
        b_buf_9_we0 = ap_const_logic_0;
    }
}

void mmult_accel::thread_exitcond1_fu_1642_p2() {
    exitcond1_fu_1642_p2 = (!j_1_reg_1242.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j_1_reg_1242.read() == ap_const_lv6_20);
}

void mmult_accel::thread_exitcond1_i_fu_1737_p2() {
    exitcond1_i_fu_1737_p2 = (!index_b_0_i_reg_1275.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(index_b_0_i_reg_1275.read() == ap_const_lv6_20);
}

void mmult_accel::thread_exitcond_flatten1_fu_1725_p2() {
    exitcond_flatten1_fu_1725_p2 = (!indvar_flatten1_reg_1253.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten1_reg_1253.read() == ap_const_lv11_400);
}

void mmult_accel::thread_exitcond_flatten8_fu_1630_p2() {
    exitcond_flatten8_fu_1630_p2 = (!indvar_flatten6_reg_1220.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten6_reg_1220.read() == ap_const_lv11_400);
}

void mmult_accel::thread_exitcond_flatten_fu_1544_p2() {
    exitcond_flatten_fu_1544_p2 = (!indvar_flatten_reg_1187.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_1187.read() == ap_const_lv11_400);
}

void mmult_accel::thread_exitcond_fu_1556_p2() {
    exitcond_fu_1556_p2 = (!j_reg_1209.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_1209.read() == ap_const_lv6_20);
}

void mmult_accel::thread_grp_fu_1287_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it9.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it10.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it15.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it7.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it8.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it11.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it12.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it13.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it14.read())))) {
        grp_fu_1287_ce = ap_const_logic_1;
    } else {
        grp_fu_1287_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1287_p0() {
    grp_fu_1287_p0 = product_term_reg_1965.read();
}

void mmult_accel::thread_grp_fu_1287_p1() {
    grp_fu_1287_p1 = ap_const_lv32_0;
}

void mmult_accel::thread_grp_fu_1292_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it18.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it19.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it24.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it16.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it17.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it20.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it21.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it22.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it23.read())))) {
        grp_fu_1292_ce = ap_const_logic_1;
    } else {
        grp_fu_1292_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1292_p0() {
    grp_fu_1292_p0 = result_reg_2028.read();
}

void mmult_accel::thread_grp_fu_1292_p1() {
    grp_fu_1292_p1 = product_term_1_reg_2033.read();
}

void mmult_accel::thread_grp_fu_1296_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it27.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it28.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it33.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it25.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it26.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it29.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it30.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it31.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it32.read())))) {
        grp_fu_1296_ce = ap_const_logic_1;
    } else {
        grp_fu_1296_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1296_p0() {
    grp_fu_1296_p0 = result_1_reg_2058.read();
}

void mmult_accel::thread_grp_fu_1296_p1() {
    grp_fu_1296_p1 = product_term_2_reg_2063.read();
}

void mmult_accel::thread_grp_fu_1300_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it36.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it37.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it42.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it34.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it35.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it38.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it39.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it40.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it41.read())))) {
        grp_fu_1300_ce = ap_const_logic_1;
    } else {
        grp_fu_1300_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1300_p0() {
    grp_fu_1300_p0 = result_2_reg_2088.read();
}

void mmult_accel::thread_grp_fu_1300_p1() {
    grp_fu_1300_p1 = product_term_3_reg_2093.read();
}

void mmult_accel::thread_grp_fu_1304_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it45.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it46.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it51.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it43.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it44.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it47.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it48.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it49.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it50.read())))) {
        grp_fu_1304_ce = ap_const_logic_1;
    } else {
        grp_fu_1304_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1304_p0() {
    grp_fu_1304_p0 = result_3_reg_2118.read();
}

void mmult_accel::thread_grp_fu_1304_p1() {
    grp_fu_1304_p1 = product_term_4_reg_2123.read();
}

void mmult_accel::thread_grp_fu_1308_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it54.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it55.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it60.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it52.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it53.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it56.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it57.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it58.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it59.read())))) {
        grp_fu_1308_ce = ap_const_logic_1;
    } else {
        grp_fu_1308_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1308_p0() {
    grp_fu_1308_p0 = result_4_reg_2148.read();
}

void mmult_accel::thread_grp_fu_1308_p1() {
    grp_fu_1308_p1 = product_term_5_reg_2153.read();
}

void mmult_accel::thread_grp_fu_1312_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it63.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it64.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it69.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it61.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it62.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it65.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it66.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it67.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it68.read())))) {
        grp_fu_1312_ce = ap_const_logic_1;
    } else {
        grp_fu_1312_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1312_p0() {
    grp_fu_1312_p0 = result_5_reg_2178.read();
}

void mmult_accel::thread_grp_fu_1312_p1() {
    grp_fu_1312_p1 = product_term_6_reg_2183.read();
}

void mmult_accel::thread_grp_fu_1316_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it72.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it73.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it78.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it70.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it71.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it74.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it75.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it76.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it77.read())))) {
        grp_fu_1316_ce = ap_const_logic_1;
    } else {
        grp_fu_1316_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1316_p0() {
    grp_fu_1316_p0 = result_6_reg_2208.read();
}

void mmult_accel::thread_grp_fu_1316_p1() {
    grp_fu_1316_p1 = product_term_7_reg_2213.read();
}

void mmult_accel::thread_grp_fu_1320_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it81.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it82.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it87.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it79.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it80.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it83.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it84.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it85.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it86.read())))) {
        grp_fu_1320_ce = ap_const_logic_1;
    } else {
        grp_fu_1320_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1320_p0() {
    grp_fu_1320_p0 = result_7_reg_2238.read();
}

void mmult_accel::thread_grp_fu_1320_p1() {
    grp_fu_1320_p1 = product_term_8_reg_2243.read();
}

void mmult_accel::thread_grp_fu_1324_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it90.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it91.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it96.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it88.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it89.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it92.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it93.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it94.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it95.read())))) {
        grp_fu_1324_ce = ap_const_logic_1;
    } else {
        grp_fu_1324_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1324_p0() {
    grp_fu_1324_p0 = result_8_reg_2268.read();
}

void mmult_accel::thread_grp_fu_1324_p1() {
    grp_fu_1324_p1 = product_term_9_reg_2273.read();
}

void mmult_accel::thread_grp_fu_1328_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it99.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it100.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it105.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it97.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it98.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it101.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it102.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it103.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it104.read())))) {
        grp_fu_1328_ce = ap_const_logic_1;
    } else {
        grp_fu_1328_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1328_p0() {
    grp_fu_1328_p0 = result_9_reg_2298.read();
}

void mmult_accel::thread_grp_fu_1328_p1() {
    grp_fu_1328_p1 = product_term_s_reg_2303.read();
}

void mmult_accel::thread_grp_fu_1332_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it108.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it109.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it114.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it106.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it107.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it110.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it111.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it112.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it113.read())))) {
        grp_fu_1332_ce = ap_const_logic_1;
    } else {
        grp_fu_1332_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1332_p0() {
    grp_fu_1332_p0 = result_s_reg_2328.read();
}

void mmult_accel::thread_grp_fu_1332_p1() {
    grp_fu_1332_p1 = product_term_10_reg_2333.read();
}

void mmult_accel::thread_grp_fu_1336_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it117.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it118.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it123.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it115.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it116.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it119.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it120.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it121.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it122.read())))) {
        grp_fu_1336_ce = ap_const_logic_1;
    } else {
        grp_fu_1336_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1336_p0() {
    grp_fu_1336_p0 = result_10_reg_2358.read();
}

void mmult_accel::thread_grp_fu_1336_p1() {
    grp_fu_1336_p1 = product_term_11_reg_2363.read();
}

void mmult_accel::thread_grp_fu_1340_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it126.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it127.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it132.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it124.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it125.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it128.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it129.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it130.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it131.read())))) {
        grp_fu_1340_ce = ap_const_logic_1;
    } else {
        grp_fu_1340_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1340_p0() {
    grp_fu_1340_p0 = result_11_reg_2388.read();
}

void mmult_accel::thread_grp_fu_1340_p1() {
    grp_fu_1340_p1 = product_term_12_reg_2393.read();
}

void mmult_accel::thread_grp_fu_1344_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it135.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it136.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it141.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it133.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it134.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it137.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it138.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it139.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it140.read())))) {
        grp_fu_1344_ce = ap_const_logic_1;
    } else {
        grp_fu_1344_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1344_p0() {
    grp_fu_1344_p0 = result_12_reg_2418.read();
}

void mmult_accel::thread_grp_fu_1344_p1() {
    grp_fu_1344_p1 = product_term_13_reg_2423.read();
}

void mmult_accel::thread_grp_fu_1348_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it144.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it145.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it150.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it142.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it143.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it146.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it147.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it148.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it149.read())))) {
        grp_fu_1348_ce = ap_const_logic_1;
    } else {
        grp_fu_1348_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1348_p0() {
    grp_fu_1348_p0 = result_13_reg_2448.read();
}

void mmult_accel::thread_grp_fu_1348_p1() {
    grp_fu_1348_p1 = product_term_14_reg_2453.read();
}

void mmult_accel::thread_grp_fu_1352_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it153.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it154.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it159.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it151.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it152.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it155.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it156.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it157.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it158.read())))) {
        grp_fu_1352_ce = ap_const_logic_1;
    } else {
        grp_fu_1352_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1352_p0() {
    grp_fu_1352_p0 = result_14_reg_2478.read();
}

void mmult_accel::thread_grp_fu_1352_p1() {
    grp_fu_1352_p1 = product_term_15_reg_2483.read();
}

void mmult_accel::thread_grp_fu_1356_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it162.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it163.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it168.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it160.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it161.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it164.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it165.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it166.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it167.read())))) {
        grp_fu_1356_ce = ap_const_logic_1;
    } else {
        grp_fu_1356_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1356_p0() {
    grp_fu_1356_p0 = result_15_reg_2508.read();
}

void mmult_accel::thread_grp_fu_1356_p1() {
    grp_fu_1356_p1 = product_term_16_reg_2513.read();
}

void mmult_accel::thread_grp_fu_1360_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it171.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it172.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it177.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it169.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it170.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it173.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it174.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it175.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it176.read())))) {
        grp_fu_1360_ce = ap_const_logic_1;
    } else {
        grp_fu_1360_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1360_p0() {
    grp_fu_1360_p0 = result_16_reg_2538.read();
}

void mmult_accel::thread_grp_fu_1360_p1() {
    grp_fu_1360_p1 = product_term_17_reg_2543.read();
}

void mmult_accel::thread_grp_fu_1364_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it180.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it181.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it186.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it178.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it179.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it182.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it183.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it184.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it185.read())))) {
        grp_fu_1364_ce = ap_const_logic_1;
    } else {
        grp_fu_1364_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1364_p0() {
    grp_fu_1364_p0 = result_17_reg_2568.read();
}

void mmult_accel::thread_grp_fu_1364_p1() {
    grp_fu_1364_p1 = product_term_18_reg_2573.read();
}

void mmult_accel::thread_grp_fu_1368_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it189.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it190.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it195.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it187.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it188.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it191.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it192.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it193.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it194.read())))) {
        grp_fu_1368_ce = ap_const_logic_1;
    } else {
        grp_fu_1368_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1368_p0() {
    grp_fu_1368_p0 = result_18_reg_2598.read();
}

void mmult_accel::thread_grp_fu_1368_p1() {
    grp_fu_1368_p1 = product_term_19_reg_2603.read();
}

void mmult_accel::thread_grp_fu_1372_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it198.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it199.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it204.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it196.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it197.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it200.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it201.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it202.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it203.read())))) {
        grp_fu_1372_ce = ap_const_logic_1;
    } else {
        grp_fu_1372_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1372_p0() {
    grp_fu_1372_p0 = result_19_reg_2628.read();
}

void mmult_accel::thread_grp_fu_1372_p1() {
    grp_fu_1372_p1 = product_term_20_reg_2633.read();
}

void mmult_accel::thread_grp_fu_1376_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it207.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it208.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it213.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it205.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it206.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it209.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it210.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it211.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it212.read())))) {
        grp_fu_1376_ce = ap_const_logic_1;
    } else {
        grp_fu_1376_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1376_p0() {
    grp_fu_1376_p0 = result_20_reg_2658.read();
}

void mmult_accel::thread_grp_fu_1376_p1() {
    grp_fu_1376_p1 = product_term_21_reg_2663.read();
}

void mmult_accel::thread_grp_fu_1380_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it216.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it217.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it222.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it214.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it215.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it218.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it219.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it220.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it221.read())))) {
        grp_fu_1380_ce = ap_const_logic_1;
    } else {
        grp_fu_1380_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1380_p0() {
    grp_fu_1380_p0 = result_21_reg_2688.read();
}

void mmult_accel::thread_grp_fu_1380_p1() {
    grp_fu_1380_p1 = product_term_22_reg_2693.read();
}

void mmult_accel::thread_grp_fu_1384_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it225.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it226.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it231.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it223.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it224.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it227.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it228.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it229.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it230.read())))) {
        grp_fu_1384_ce = ap_const_logic_1;
    } else {
        grp_fu_1384_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1384_p0() {
    grp_fu_1384_p0 = result_22_reg_2778.read();
}

void mmult_accel::thread_grp_fu_1384_p1() {
    grp_fu_1384_p1 = product_term_23_reg_2783.read();
}

void mmult_accel::thread_grp_fu_1388_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it240.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it232.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it233.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it234.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it235.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it236.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it237.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it238.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it239.read())))) {
        grp_fu_1388_ce = ap_const_logic_1;
    } else {
        grp_fu_1388_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1388_p0() {
    grp_fu_1388_p0 = result_23_reg_2883.read();
}

void mmult_accel::thread_grp_fu_1388_p1() {
    grp_fu_1388_p1 = product_term_24_reg_2888.read();
}

void mmult_accel::thread_grp_fu_1392_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it249.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it241.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it242.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it243.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it244.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it245.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it246.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it247.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it248.read())))) {
        grp_fu_1392_ce = ap_const_logic_1;
    } else {
        grp_fu_1392_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1392_p0() {
    grp_fu_1392_p0 = result_24_reg_2908.read();
}

void mmult_accel::thread_grp_fu_1392_p1() {
    grp_fu_1392_p1 = ap_reg_ppstg_product_term_25_reg_2788_pp2_it241.read();
}

void mmult_accel::thread_grp_fu_1396_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it258.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it250.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it251.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it252.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it253.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it254.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it255.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it256.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it257.read())))) {
        grp_fu_1396_ce = ap_const_logic_1;
    } else {
        grp_fu_1396_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1396_p0() {
    grp_fu_1396_p0 = result_25_reg_2913.read();
}

void mmult_accel::thread_grp_fu_1396_p1() {
    grp_fu_1396_p1 = ap_reg_ppstg_product_term_26_reg_2893_pp2_it250.read();
}

void mmult_accel::thread_grp_fu_1400_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it267.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it259.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it260.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it261.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it262.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it263.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it264.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it265.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it266.read())))) {
        grp_fu_1400_ce = ap_const_logic_1;
    } else {
        grp_fu_1400_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1400_p0() {
    grp_fu_1400_p0 = result_26_reg_2918.read();
}

void mmult_accel::thread_grp_fu_1400_p1() {
    grp_fu_1400_p1 = ap_reg_ppstg_product_term_27_reg_2793_pp2_it259.read();
}

void mmult_accel::thread_grp_fu_1404_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it276.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it268.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it269.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it270.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it271.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it272.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it273.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it274.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it275.read())))) {
        grp_fu_1404_ce = ap_const_logic_1;
    } else {
        grp_fu_1404_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1404_p0() {
    grp_fu_1404_p0 = result_27_reg_2923.read();
}

void mmult_accel::thread_grp_fu_1404_p1() {
    grp_fu_1404_p1 = ap_reg_ppstg_product_term_28_reg_2898_pp2_it268.read();
}

void mmult_accel::thread_grp_fu_1408_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it285.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it277.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it278.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it279.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it280.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it281.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it282.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it283.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it284.read())))) {
        grp_fu_1408_ce = ap_const_logic_1;
    } else {
        grp_fu_1408_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1408_p0() {
    grp_fu_1408_p0 = result_28_reg_2928.read();
}

void mmult_accel::thread_grp_fu_1408_p1() {
    grp_fu_1408_p1 = ap_reg_ppstg_product_term_29_reg_2798_pp2_it277.read();
}

void mmult_accel::thread_grp_fu_1412_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it294.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it286.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it287.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it288.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it289.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it290.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it291.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it292.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it293.read())))) {
        grp_fu_1412_ce = ap_const_logic_1;
    } else {
        grp_fu_1412_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1412_p0() {
    grp_fu_1412_p0 = result_29_reg_2933.read();
}

void mmult_accel::thread_grp_fu_1412_p1() {
    grp_fu_1412_p1 = ap_reg_ppstg_product_term_30_reg_2903_pp2_it286.read();
}

void mmult_accel::thread_grp_fu_1416_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it6.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it2.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it3.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it4.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it5.read())))) {
        grp_fu_1416_ce = ap_const_logic_1;
    } else {
        grp_fu_1416_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1416_p0() {
    grp_fu_1416_p0 = a_buf_0_load_reg_1955.read();
}

void mmult_accel::thread_grp_fu_1416_p1() {
    grp_fu_1416_p1 = b_buf_0_load_reg_1960.read();
}

void mmult_accel::thread_grp_fu_1420_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it15.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it11.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it12.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it13.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it14.read())))) {
        grp_fu_1420_ce = ap_const_logic_1;
    } else {
        grp_fu_1420_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1420_p0() {
    grp_fu_1420_p0 = a_buf_0_load_1_reg_2018.read();
}

void mmult_accel::thread_grp_fu_1420_p1() {
    grp_fu_1420_p1 = b_buf_0_load_1_reg_2023.read();
}

void mmult_accel::thread_grp_fu_1424_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it24.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it20.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it21.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it22.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it23.read())))) {
        grp_fu_1424_ce = ap_const_logic_1;
    } else {
        grp_fu_1424_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1424_p0() {
    grp_fu_1424_p0 = a_buf_1_load_reg_2048.read();
}

void mmult_accel::thread_grp_fu_1424_p1() {
    grp_fu_1424_p1 = b_buf_1_load_reg_2053.read();
}

void mmult_accel::thread_grp_fu_1428_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it33.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it29.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it30.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it31.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it32.read())))) {
        grp_fu_1428_ce = ap_const_logic_1;
    } else {
        grp_fu_1428_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1428_p0() {
    grp_fu_1428_p0 = a_buf_1_load_1_reg_2078.read();
}

void mmult_accel::thread_grp_fu_1428_p1() {
    grp_fu_1428_p1 = b_buf_1_load_1_reg_2083.read();
}

void mmult_accel::thread_grp_fu_1432_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it42.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it38.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it39.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it40.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it41.read())))) {
        grp_fu_1432_ce = ap_const_logic_1;
    } else {
        grp_fu_1432_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1432_p0() {
    grp_fu_1432_p0 = a_buf_2_load_reg_2108.read();
}

void mmult_accel::thread_grp_fu_1432_p1() {
    grp_fu_1432_p1 = b_buf_2_load_reg_2113.read();
}

void mmult_accel::thread_grp_fu_1436_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it51.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it47.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it48.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it49.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it50.read())))) {
        grp_fu_1436_ce = ap_const_logic_1;
    } else {
        grp_fu_1436_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1436_p0() {
    grp_fu_1436_p0 = a_buf_2_load_1_reg_2138.read();
}

void mmult_accel::thread_grp_fu_1436_p1() {
    grp_fu_1436_p1 = b_buf_2_load_1_reg_2143.read();
}

void mmult_accel::thread_grp_fu_1440_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it60.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it56.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it57.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it58.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it59.read())))) {
        grp_fu_1440_ce = ap_const_logic_1;
    } else {
        grp_fu_1440_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1440_p0() {
    grp_fu_1440_p0 = a_buf_3_load_reg_2168.read();
}

void mmult_accel::thread_grp_fu_1440_p1() {
    grp_fu_1440_p1 = b_buf_3_load_reg_2173.read();
}

void mmult_accel::thread_grp_fu_1444_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it69.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it65.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it66.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it67.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it68.read())))) {
        grp_fu_1444_ce = ap_const_logic_1;
    } else {
        grp_fu_1444_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1444_p0() {
    grp_fu_1444_p0 = a_buf_3_load_1_reg_2198.read();
}

void mmult_accel::thread_grp_fu_1444_p1() {
    grp_fu_1444_p1 = b_buf_3_load_1_reg_2203.read();
}

void mmult_accel::thread_grp_fu_1448_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it78.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it74.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it75.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it76.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it77.read())))) {
        grp_fu_1448_ce = ap_const_logic_1;
    } else {
        grp_fu_1448_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1448_p0() {
    grp_fu_1448_p0 = a_buf_4_load_reg_2228.read();
}

void mmult_accel::thread_grp_fu_1448_p1() {
    grp_fu_1448_p1 = b_buf_4_load_reg_2233.read();
}

void mmult_accel::thread_grp_fu_1452_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it87.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it83.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it84.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it85.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it86.read())))) {
        grp_fu_1452_ce = ap_const_logic_1;
    } else {
        grp_fu_1452_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1452_p0() {
    grp_fu_1452_p0 = a_buf_4_load_1_reg_2258.read();
}

void mmult_accel::thread_grp_fu_1452_p1() {
    grp_fu_1452_p1 = b_buf_4_load_1_reg_2263.read();
}

void mmult_accel::thread_grp_fu_1456_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it96.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it92.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it93.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it94.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it95.read())))) {
        grp_fu_1456_ce = ap_const_logic_1;
    } else {
        grp_fu_1456_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1456_p0() {
    grp_fu_1456_p0 = a_buf_5_load_reg_2288.read();
}

void mmult_accel::thread_grp_fu_1456_p1() {
    grp_fu_1456_p1 = b_buf_5_load_reg_2293.read();
}

void mmult_accel::thread_grp_fu_1460_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it105.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it101.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it102.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it103.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it104.read())))) {
        grp_fu_1460_ce = ap_const_logic_1;
    } else {
        grp_fu_1460_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1460_p0() {
    grp_fu_1460_p0 = a_buf_5_load_1_reg_2318.read();
}

void mmult_accel::thread_grp_fu_1460_p1() {
    grp_fu_1460_p1 = b_buf_5_load_1_reg_2323.read();
}

void mmult_accel::thread_grp_fu_1464_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it114.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it110.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it111.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it112.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it113.read())))) {
        grp_fu_1464_ce = ap_const_logic_1;
    } else {
        grp_fu_1464_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1464_p0() {
    grp_fu_1464_p0 = a_buf_6_load_reg_2348.read();
}

void mmult_accel::thread_grp_fu_1464_p1() {
    grp_fu_1464_p1 = b_buf_6_load_reg_2353.read();
}

void mmult_accel::thread_grp_fu_1468_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it123.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it119.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it120.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it121.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it122.read())))) {
        grp_fu_1468_ce = ap_const_logic_1;
    } else {
        grp_fu_1468_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1468_p0() {
    grp_fu_1468_p0 = a_buf_6_load_1_reg_2378.read();
}

void mmult_accel::thread_grp_fu_1468_p1() {
    grp_fu_1468_p1 = b_buf_6_load_1_reg_2383.read();
}

void mmult_accel::thread_grp_fu_1472_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it132.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it128.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it129.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it130.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it131.read())))) {
        grp_fu_1472_ce = ap_const_logic_1;
    } else {
        grp_fu_1472_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1472_p0() {
    grp_fu_1472_p0 = a_buf_7_load_reg_2408.read();
}

void mmult_accel::thread_grp_fu_1472_p1() {
    grp_fu_1472_p1 = b_buf_7_load_reg_2413.read();
}

void mmult_accel::thread_grp_fu_1476_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it141.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it137.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it138.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it139.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it140.read())))) {
        grp_fu_1476_ce = ap_const_logic_1;
    } else {
        grp_fu_1476_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1476_p0() {
    grp_fu_1476_p0 = a_buf_7_load_1_reg_2438.read();
}

void mmult_accel::thread_grp_fu_1476_p1() {
    grp_fu_1476_p1 = b_buf_7_load_1_reg_2443.read();
}

void mmult_accel::thread_grp_fu_1480_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it150.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it146.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it147.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it148.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it149.read())))) {
        grp_fu_1480_ce = ap_const_logic_1;
    } else {
        grp_fu_1480_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1480_p0() {
    grp_fu_1480_p0 = a_buf_8_load_reg_2468.read();
}

void mmult_accel::thread_grp_fu_1480_p1() {
    grp_fu_1480_p1 = b_buf_8_load_reg_2473.read();
}

void mmult_accel::thread_grp_fu_1484_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it159.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it155.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it156.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it157.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it158.read())))) {
        grp_fu_1484_ce = ap_const_logic_1;
    } else {
        grp_fu_1484_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1484_p0() {
    grp_fu_1484_p0 = a_buf_8_load_1_reg_2498.read();
}

void mmult_accel::thread_grp_fu_1484_p1() {
    grp_fu_1484_p1 = b_buf_8_load_1_reg_2503.read();
}

void mmult_accel::thread_grp_fu_1488_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it168.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it164.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it165.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it166.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it167.read())))) {
        grp_fu_1488_ce = ap_const_logic_1;
    } else {
        grp_fu_1488_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1488_p0() {
    grp_fu_1488_p0 = a_buf_9_load_reg_2528.read();
}

void mmult_accel::thread_grp_fu_1488_p1() {
    grp_fu_1488_p1 = b_buf_9_load_reg_2533.read();
}

void mmult_accel::thread_grp_fu_1492_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it177.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it173.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it174.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it175.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it176.read())))) {
        grp_fu_1492_ce = ap_const_logic_1;
    } else {
        grp_fu_1492_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1492_p0() {
    grp_fu_1492_p0 = a_buf_9_load_1_reg_2558.read();
}

void mmult_accel::thread_grp_fu_1492_p1() {
    grp_fu_1492_p1 = b_buf_9_load_1_reg_2563.read();
}

void mmult_accel::thread_grp_fu_1496_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it186.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it182.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it183.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it184.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it185.read())))) {
        grp_fu_1496_ce = ap_const_logic_1;
    } else {
        grp_fu_1496_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1496_p0() {
    grp_fu_1496_p0 = a_buf_10_load_reg_2588.read();
}

void mmult_accel::thread_grp_fu_1496_p1() {
    grp_fu_1496_p1 = b_buf_10_load_reg_2593.read();
}

void mmult_accel::thread_grp_fu_1500_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it195.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it191.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it192.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it193.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it194.read())))) {
        grp_fu_1500_ce = ap_const_logic_1;
    } else {
        grp_fu_1500_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1500_p0() {
    grp_fu_1500_p0 = a_buf_10_load_1_reg_2618.read();
}

void mmult_accel::thread_grp_fu_1500_p1() {
    grp_fu_1500_p1 = b_buf_10_load_1_reg_2623.read();
}

void mmult_accel::thread_grp_fu_1504_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it204.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it200.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it201.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it202.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it203.read())))) {
        grp_fu_1504_ce = ap_const_logic_1;
    } else {
        grp_fu_1504_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1504_p0() {
    grp_fu_1504_p0 = a_buf_11_load_reg_2648.read();
}

void mmult_accel::thread_grp_fu_1504_p1() {
    grp_fu_1504_p1 = b_buf_11_load_reg_2653.read();
}

void mmult_accel::thread_grp_fu_1508_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it213.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it209.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it210.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it211.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it212.read())))) {
        grp_fu_1508_ce = ap_const_logic_1;
    } else {
        grp_fu_1508_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1508_p0() {
    grp_fu_1508_p0 = a_buf_11_load_1_reg_2678.read();
}

void mmult_accel::thread_grp_fu_1508_p1() {
    grp_fu_1508_p1 = b_buf_11_load_1_reg_2683.read();
}

void mmult_accel::thread_grp_fu_1512_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it222.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it218.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it219.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it220.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it221.read())))) {
        grp_fu_1512_ce = ap_const_logic_1;
    } else {
        grp_fu_1512_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1512_p0() {
    grp_fu_1512_p0 = a_buf_12_load_reg_2738.read();
}

void mmult_accel::thread_grp_fu_1512_p1() {
    grp_fu_1512_p1 = b_buf_12_load_reg_2758.read();
}

void mmult_accel::thread_grp_fu_1516_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it222.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it218.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it219.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it220.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it221.read())))) {
        grp_fu_1516_ce = ap_const_logic_1;
    } else {
        grp_fu_1516_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1516_p0() {
    grp_fu_1516_p0 = a_buf_13_load_reg_2743.read();
}

void mmult_accel::thread_grp_fu_1516_p1() {
    grp_fu_1516_p1 = b_buf_13_load_reg_2763.read();
}

void mmult_accel::thread_grp_fu_1520_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it222.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it218.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it219.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it220.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it221.read())))) {
        grp_fu_1520_ce = ap_const_logic_1;
    } else {
        grp_fu_1520_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1520_p0() {
    grp_fu_1520_p0 = a_buf_14_load_reg_2748.read();
}

void mmult_accel::thread_grp_fu_1520_p1() {
    grp_fu_1520_p1 = b_buf_14_load_reg_2768.read();
}

void mmult_accel::thread_grp_fu_1524_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it222.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it218.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it219.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it220.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it221.read())))) {
        grp_fu_1524_ce = ap_const_logic_1;
    } else {
        grp_fu_1524_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1524_p0() {
    grp_fu_1524_p0 = a_buf_15_load_reg_2753.read();
}

void mmult_accel::thread_grp_fu_1524_p1() {
    grp_fu_1524_p1 = b_buf_15_load_reg_2773.read();
}

void mmult_accel::thread_grp_fu_1528_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it231.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it227.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it228.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it229.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it230.read())))) {
        grp_fu_1528_ce = ap_const_logic_1;
    } else {
        grp_fu_1528_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1528_p0() {
    grp_fu_1528_p0 = a_buf_12_load_1_reg_2843.read();
}

void mmult_accel::thread_grp_fu_1528_p1() {
    grp_fu_1528_p1 = b_buf_12_load_1_reg_2863.read();
}

void mmult_accel::thread_grp_fu_1532_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it231.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it227.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it228.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it229.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it230.read())))) {
        grp_fu_1532_ce = ap_const_logic_1;
    } else {
        grp_fu_1532_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1532_p0() {
    grp_fu_1532_p0 = a_buf_13_load_1_reg_2848.read();
}

void mmult_accel::thread_grp_fu_1532_p1() {
    grp_fu_1532_p1 = b_buf_13_load_1_reg_2868.read();
}

void mmult_accel::thread_grp_fu_1536_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it231.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it227.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it228.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it229.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it230.read())))) {
        grp_fu_1536_ce = ap_const_logic_1;
    } else {
        grp_fu_1536_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1536_p0() {
    grp_fu_1536_p0 = a_buf_14_load_1_reg_2853.read();
}

void mmult_accel::thread_grp_fu_1536_p1() {
    grp_fu_1536_p1 = b_buf_14_load_1_reg_2873.read();
}

void mmult_accel::thread_grp_fu_1540_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it231.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it227.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it228.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it229.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it230.read())))) {
        grp_fu_1540_ce = ap_const_logic_1;
    } else {
        grp_fu_1540_ce = ap_const_logic_0;
    }
}

void mmult_accel::thread_grp_fu_1540_p0() {
    grp_fu_1540_p0 = a_buf_15_load_1_reg_2858.read();
}

void mmult_accel::thread_grp_fu_1540_p1() {
    grp_fu_1540_p1 = b_buf_15_load_1_reg_2878.read();
}

void mmult_accel::thread_i_1_mid2_fu_1662_p3() {
    i_1_mid2_fu_1662_p3 = (!exitcond1_fu_1642_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_fu_1642_p2.read()[0].to_bool())? i_2_fu_1656_p2.read(): i_1_phi_fu_1235_p4.read());
}

void mmult_accel::thread_i_1_phi_fu_1235_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_reg_1848.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        i_1_phi_fu_1235_p4 = i_1_mid2_reg_1857.read();
    } else {
        i_1_phi_fu_1235_p4 = i_1_reg_1231.read();
    }
}

void mmult_accel::thread_i_2_fu_1656_p2() {
    i_2_fu_1656_p2 = (!i_1_phi_fu_1235_p4.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_1_phi_fu_1235_p4.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult_accel::thread_i_mid2_fu_1576_p3() {
    i_mid2_fu_1576_p3 = (!exitcond_fu_1556_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond_fu_1556_p2.read()[0].to_bool())? i_s_fu_1570_p2.read(): i_phi_fu_1202_p4.read());
}

void mmult_accel::thread_i_phi_fu_1202_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_1819.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        i_phi_fu_1202_p4 = i_mid2_reg_1828.read();
    } else {
        i_phi_fu_1202_p4 = i_reg_1198.read();
    }
}

void mmult_accel::thread_i_s_fu_1570_p2() {
    i_s_fu_1570_p2 = (!i_phi_fu_1202_p4.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_phi_fu_1202_p4.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult_accel::thread_in_A_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_1819.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        in_A_read = ap_const_logic_1;
    } else {
        in_A_read = ap_const_logic_0;
    }
}

void mmult_accel::thread_in_B_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_reg_1848.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_110.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())))) {
        in_B_read = ap_const_logic_1;
    } else {
        in_B_read = ap_const_logic_0;
    }
}

void mmult_accel::thread_index_a_0_i_mid2_fu_1757_p3() {
    index_a_0_i_mid2_fu_1757_p3 = (!exitcond1_i_fu_1737_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_i_fu_1737_p2.read()[0].to_bool())? index_a_fu_1751_p2.read(): index_a_0_i_phi_fu_1268_p4.read());
}

void mmult_accel::thread_index_a_0_i_phi_fu_1268_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten1_reg_1876.read()))) {
        index_a_0_i_phi_fu_1268_p4 = index_a_0_i_mid2_reg_1891.read();
    } else {
        index_a_0_i_phi_fu_1268_p4 = index_a_0_i_reg_1264.read();
    }
}

void mmult_accel::thread_index_a_fu_1751_p2() {
    index_a_fu_1751_p2 = (!index_a_0_i_phi_fu_1268_p4.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(index_a_0_i_phi_fu_1268_p4.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult_accel::thread_index_b_0_i_mid2_fu_1743_p3() {
    index_b_0_i_mid2_fu_1743_p3 = (!exitcond1_i_fu_1737_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_i_fu_1737_p2.read()[0].to_bool())? ap_const_lv6_0: index_b_0_i_reg_1275.read());
}

void mmult_accel::thread_index_b_fu_1765_p2() {
    index_b_fu_1765_p2 = (!index_b_0_i_mid2_fu_1743_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(index_b_0_i_mid2_fu_1743_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult_accel::thread_indvar_flatten_next1_fu_1731_p2() {
    indvar_flatten_next1_fu_1731_p2 = (!indvar_flatten1_reg_1253.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten1_reg_1253.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void mmult_accel::thread_indvar_flatten_next7_fu_1636_p2() {
    indvar_flatten_next7_fu_1636_p2 = (!indvar_flatten6_reg_1220.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten6_reg_1220.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void mmult_accel::thread_indvar_flatten_next_fu_1550_p2() {
    indvar_flatten_next_fu_1550_p2 = (!indvar_flatten_reg_1187.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten_reg_1187.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void mmult_accel::thread_j_1_mid2_fu_1648_p3() {
    j_1_mid2_fu_1648_p3 = (!exitcond1_fu_1642_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_fu_1642_p2.read()[0].to_bool())? ap_const_lv6_0: j_1_reg_1242.read());
}

void mmult_accel::thread_j_2_fu_1598_p2() {
    j_2_fu_1598_p2 = (!j_mid2_fu_1562_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j_mid2_fu_1562_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult_accel::thread_j_3_fu_1700_p2() {
    j_3_fu_1700_p2 = (!j_1_mid2_fu_1648_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j_1_mid2_fu_1648_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult_accel::thread_j_mid2_fu_1562_p3() {
    j_mid2_fu_1562_p3 = (!exitcond_fu_1556_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond_fu_1556_p2.read()[0].to_bool())? ap_const_lv6_0: j_reg_1209.read());
}

void mmult_accel::thread_out_C_din() {
    out_C_din = result_30_reg_2938.read();
}

void mmult_accel::thread_out_C_write() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1876_pp2_it295.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()) && 
         !(ap_sig_bdd_736.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        out_C_write = ap_const_logic_1;
    } else {
        out_C_write = ap_const_logic_0;
    }
}

void mmult_accel::thread_p_addr1_fu_1694_p2() {
    p_addr1_fu_1694_p2 = (!p_addr_cast_fu_1690_p1.read().is_01() || !tmp_trn_cast_fu_1680_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(p_addr_cast_fu_1690_p1.read()) + sc_biguint<7>(tmp_trn_cast_fu_1680_p1.read()));
}

void mmult_accel::thread_p_addr2_fu_1792_p3() {
    p_addr2_fu_1792_p3 = esl_concat<25,7>(ap_const_lv25_0, tmp_s_fu_1787_p2.read());
}

void mmult_accel::thread_p_addr3_fu_1808_p2() {
    p_addr3_fu_1808_p2 = (!tmp_4_trn_cast_fu_1805_p1.read().is_01() || !ap_const_lv7_20.is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_4_trn_cast_fu_1805_p1.read()) + sc_biguint<7>(ap_const_lv7_20));
}

void mmult_accel::thread_p_addr_cast_fu_1690_p1() {
    p_addr_cast_fu_1690_p1 = esl_zext<7,6>(tmp_5_fu_1684_p2.read());
}

void mmult_accel::thread_tmp_10_fu_1800_p1() {
    tmp_10_fu_1800_p1 = esl_zext<64,32>(p_addr2_fu_1792_p3.read());
}

void mmult_accel::thread_tmp_11_fu_1783_p1() {
    tmp_11_fu_1783_p1 = esl_zext<64,6>(index_b_0_i_mid2_reg_1885.read());
}

void mmult_accel::thread_tmp_12_fu_1814_p1() {
    tmp_12_fu_1814_p1 = esl_zext<64,7>(p_addr3_fu_1808_p2.read());
}

void mmult_accel::thread_tmp_1_fu_1610_p1() {
    tmp_1_fu_1610_p1 = esl_zext<64,7>(tmp_fu_1604_p3.read());
}

void mmult_accel::thread_tmp_4_fu_1594_p1() {
    tmp_4_fu_1594_p1 = j_mid2_fu_1562_p3.read().range(1-1, 0);
}

void mmult_accel::thread_tmp_4_trn_cast_fu_1805_p1() {
    tmp_4_trn_cast_fu_1805_p1 = esl_zext<7,6>(ap_reg_ppstg_index_b_0_i_mid2_reg_1885_pp2_it9.read());
}

void mmult_accel::thread_tmp_5_fu_1684_p2() {
    tmp_5_fu_1684_p2 = (!ap_const_lv6_5.is_01())? sc_lv<6>(): i_1_mid2_fu_1662_p3.read() << (unsigned short)ap_const_lv6_5.to_uint();
}

void mmult_accel::thread_tmp_6_fu_1706_p1() {
    tmp_6_fu_1706_p1 = esl_zext<64,7>(p_addr1_reg_1866.read());
}

void mmult_accel::thread_tmp_8_fu_1771_p3() {
    tmp_8_fu_1771_p3 = esl_concat<6,1>(index_a_0_i_mid2_reg_1891.read(), ap_const_lv1_0);
}

void mmult_accel::thread_tmp_9_fu_1778_p1() {
    tmp_9_fu_1778_p1 = esl_zext<64,7>(tmp_8_fu_1771_p3.read());
}

void mmult_accel::thread_tmp_fu_1604_p3() {
    tmp_fu_1604_p3 = esl_concat<6,1>(i_mid2_reg_1828.read(), tmp_4_reg_1838.read());
}

void mmult_accel::thread_tmp_s_fu_1787_p2() {
    tmp_s_fu_1787_p2 = (ap_reg_ppstg_tmp_8_reg_1902_pp2_it9.read() | ap_const_lv7_1);
}

void mmult_accel::thread_tmp_trn_cast_fu_1680_p1() {
    tmp_trn_cast_fu_1680_p1 = esl_zext<7,6>(j_1_mid2_fu_1648_p3.read());
}

}

