#include "mmult.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void mmult::thread_a_buf_0_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_0_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()))) {
        a_buf_0_address0 =  (sc_lv<6>) (tmp_8_fu_1745_p1.read());
    } else {
        a_buf_0_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_0_address1() {
    a_buf_0_address1 =  (sc_lv<6>) (tmp_11_fu_1759_p3.read());
}

void mmult::thread_a_buf_0_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))))) {
        a_buf_0_ce0 = ap_const_logic_1;
    } else {
        a_buf_0_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_0_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it10.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_0_ce1 = ap_const_logic_1;
    } else {
        a_buf_0_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_0_d0() {
    a_buf_0_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_0_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_0)))) {
        a_buf_0_we0 = ap_const_logic_1;
    } else {
        a_buf_0_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_10_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_10_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it181.read())) {
        a_buf_10_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it180.read());
    } else {
        a_buf_10_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_10_address1() {
    a_buf_10_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it189.read());
}

void mmult::thread_a_buf_10_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it181.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_10_ce0 = ap_const_logic_1;
    } else {
        a_buf_10_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_10_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it190.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_10_ce1 = ap_const_logic_1;
    } else {
        a_buf_10_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_10_d0() {
    a_buf_10_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_10_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_A)))) {
        a_buf_10_we0 = ap_const_logic_1;
    } else {
        a_buf_10_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_11_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_11_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it199.read())) {
        a_buf_11_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it198.read());
    } else {
        a_buf_11_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_11_address1() {
    a_buf_11_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it207.read());
}

void mmult::thread_a_buf_11_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it199.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_11_ce0 = ap_const_logic_1;
    } else {
        a_buf_11_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_11_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it208.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_11_ce1 = ap_const_logic_1;
    } else {
        a_buf_11_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_11_d0() {
    a_buf_11_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_11_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_B)))) {
        a_buf_11_we0 = ap_const_logic_1;
    } else {
        a_buf_11_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_12_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_12_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        a_buf_12_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it216.read());
    } else {
        a_buf_12_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_12_address1() {
    a_buf_12_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it225.read());
}

void mmult::thread_a_buf_12_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_12_ce0 = ap_const_logic_1;
    } else {
        a_buf_12_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_12_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_12_ce1 = ap_const_logic_1;
    } else {
        a_buf_12_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_12_d0() {
    a_buf_12_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_12_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_C)))) {
        a_buf_12_we0 = ap_const_logic_1;
    } else {
        a_buf_12_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_13_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_13_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        a_buf_13_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it216.read());
    } else {
        a_buf_13_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_13_address1() {
    a_buf_13_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it225.read());
}

void mmult::thread_a_buf_13_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_13_ce0 = ap_const_logic_1;
    } else {
        a_buf_13_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_13_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_13_ce1 = ap_const_logic_1;
    } else {
        a_buf_13_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_13_d0() {
    a_buf_13_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_13_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_D)))) {
        a_buf_13_we0 = ap_const_logic_1;
    } else {
        a_buf_13_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_14_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_14_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        a_buf_14_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it216.read());
    } else {
        a_buf_14_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_14_address1() {
    a_buf_14_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it225.read());
}

void mmult::thread_a_buf_14_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_14_ce0 = ap_const_logic_1;
    } else {
        a_buf_14_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_14_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_14_ce1 = ap_const_logic_1;
    } else {
        a_buf_14_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_14_d0() {
    a_buf_14_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_14_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_E)))) {
        a_buf_14_we0 = ap_const_logic_1;
    } else {
        a_buf_14_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_15_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_15_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        a_buf_15_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it216.read());
    } else {
        a_buf_15_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_15_address1() {
    a_buf_15_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it225.read());
}

void mmult::thread_a_buf_15_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_15_ce0 = ap_const_logic_1;
    } else {
        a_buf_15_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_15_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_15_ce1 = ap_const_logic_1;
    } else {
        a_buf_15_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_15_d0() {
    a_buf_15_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_15_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_E) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_D) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_C) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_B) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_A) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_9) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_8) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_7) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_6) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_5) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_4) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_3) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_2) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_1) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_0)))) {
        a_buf_15_we0 = ap_const_logic_1;
    } else {
        a_buf_15_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_1_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_1_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it19.read())) {
        a_buf_1_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it18.read());
    } else {
        a_buf_1_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_1_address1() {
    a_buf_1_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it27.read());
}

void mmult::thread_a_buf_1_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it19.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_1_ce0 = ap_const_logic_1;
    } else {
        a_buf_1_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_1_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it28.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_1_ce1 = ap_const_logic_1;
    } else {
        a_buf_1_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_1_d0() {
    a_buf_1_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_1_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_1)))) {
        a_buf_1_we0 = ap_const_logic_1;
    } else {
        a_buf_1_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_2_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_2_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it37.read())) {
        a_buf_2_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it36.read());
    } else {
        a_buf_2_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_2_address1() {
    a_buf_2_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it45.read());
}

void mmult::thread_a_buf_2_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it37.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_2_ce0 = ap_const_logic_1;
    } else {
        a_buf_2_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_2_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it46.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_2_ce1 = ap_const_logic_1;
    } else {
        a_buf_2_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_2_d0() {
    a_buf_2_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_2_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_2)))) {
        a_buf_2_we0 = ap_const_logic_1;
    } else {
        a_buf_2_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_3_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_3_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it55.read())) {
        a_buf_3_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it54.read());
    } else {
        a_buf_3_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_3_address1() {
    a_buf_3_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it63.read());
}

void mmult::thread_a_buf_3_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it55.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_3_ce0 = ap_const_logic_1;
    } else {
        a_buf_3_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_3_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it64.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_3_ce1 = ap_const_logic_1;
    } else {
        a_buf_3_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_3_d0() {
    a_buf_3_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_3_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_3)))) {
        a_buf_3_we0 = ap_const_logic_1;
    } else {
        a_buf_3_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_4_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_4_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it73.read())) {
        a_buf_4_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it72.read());
    } else {
        a_buf_4_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_4_address1() {
    a_buf_4_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it81.read());
}

void mmult::thread_a_buf_4_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it73.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_4_ce0 = ap_const_logic_1;
    } else {
        a_buf_4_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_4_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it82.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_4_ce1 = ap_const_logic_1;
    } else {
        a_buf_4_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_4_d0() {
    a_buf_4_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_4_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_4)))) {
        a_buf_4_we0 = ap_const_logic_1;
    } else {
        a_buf_4_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_5_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_5_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it91.read())) {
        a_buf_5_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it90.read());
    } else {
        a_buf_5_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_5_address1() {
    a_buf_5_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it99.read());
}

void mmult::thread_a_buf_5_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it91.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_5_ce0 = ap_const_logic_1;
    } else {
        a_buf_5_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_5_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it100.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_5_ce1 = ap_const_logic_1;
    } else {
        a_buf_5_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_5_d0() {
    a_buf_5_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_5_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_5)))) {
        a_buf_5_we0 = ap_const_logic_1;
    } else {
        a_buf_5_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_6_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_6_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it109.read())) {
        a_buf_6_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it108.read());
    } else {
        a_buf_6_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_6_address1() {
    a_buf_6_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it117.read());
}

void mmult::thread_a_buf_6_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it109.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_6_ce0 = ap_const_logic_1;
    } else {
        a_buf_6_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_6_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it118.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_6_ce1 = ap_const_logic_1;
    } else {
        a_buf_6_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_6_d0() {
    a_buf_6_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_6_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_6)))) {
        a_buf_6_we0 = ap_const_logic_1;
    } else {
        a_buf_6_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_7_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_7_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it127.read())) {
        a_buf_7_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it126.read());
    } else {
        a_buf_7_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_7_address1() {
    a_buf_7_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it135.read());
}

void mmult::thread_a_buf_7_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it127.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_7_ce0 = ap_const_logic_1;
    } else {
        a_buf_7_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_7_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it136.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_7_ce1 = ap_const_logic_1;
    } else {
        a_buf_7_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_7_d0() {
    a_buf_7_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_7_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_7)))) {
        a_buf_7_we0 = ap_const_logic_1;
    } else {
        a_buf_7_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_8_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_8_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it145.read())) {
        a_buf_8_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it144.read());
    } else {
        a_buf_8_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_8_address1() {
    a_buf_8_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it153.read());
}

void mmult::thread_a_buf_8_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it145.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_8_ce0 = ap_const_logic_1;
    } else {
        a_buf_8_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_8_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it154.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_8_ce1 = ap_const_logic_1;
    } else {
        a_buf_8_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_8_d0() {
    a_buf_8_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_8_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_8)))) {
        a_buf_8_we0 = ap_const_logic_1;
    } else {
        a_buf_8_we0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_9_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read())) {
        a_buf_9_address0 =  (sc_lv<6>) (tmp_1_fu_1577_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it163.read())) {
        a_buf_9_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_8_reg_1910_pp2_it162.read());
    } else {
        a_buf_9_address0 = "XXXXXX";
    }
}

void mmult::thread_a_buf_9_address1() {
    a_buf_9_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_11_reg_1973_pp2_it171.read());
}

void mmult::thread_a_buf_9_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it163.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))))) {
        a_buf_9_ce0 = ap_const_logic_1;
    } else {
        a_buf_9_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_9_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it172.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        a_buf_9_ce1 = ap_const_logic_1;
    } else {
        a_buf_9_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_a_buf_9_d0() {
    a_buf_9_d0 = in_A_read_reg_1811.read();
}

void mmult::thread_a_buf_9_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it2.read()) && 
          !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo_cast_reg_1797_pp0_it1.read(), ap_const_lv5_9)))) {
        a_buf_9_we0 = ap_const_logic_1;
    } else {
        a_buf_9_we0 = ap_const_logic_0;
    }
}

void mmult::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st305_fsm_4.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void mmult::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void mmult::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st305_fsm_4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void mmult::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void mmult::thread_ap_sig_bdd_116() {
    ap_sig_bdd_116 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void mmult::thread_ap_sig_bdd_123() {
    ap_sig_bdd_123 = (esl_seteq<1,1,1>(in_B_empty_n.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_reg_1831.read()));
}

void mmult::thread_ap_sig_bdd_162() {
    ap_sig_bdd_162 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void mmult::thread_ap_sig_bdd_23() {
    ap_sig_bdd_23 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void mmult::thread_ap_sig_bdd_5269() {
    ap_sig_bdd_5269 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void mmult::thread_ap_sig_bdd_67() {
    ap_sig_bdd_67 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void mmult::thread_ap_sig_bdd_75() {
    ap_sig_bdd_75 = (esl_seteq<1,1,1>(in_A_empty_n.read(), ap_const_logic_0) && esl_seteq<1,1,1>(exitcond_flatten_reg_1782.read(), ap_const_lv1_0));
}

void mmult::thread_ap_sig_bdd_760() {
    ap_sig_bdd_760 = (esl_seteq<1,1,1>(out_C_full_n.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1879_pp2_it295.read()));
}

void mmult::thread_ap_sig_cseq_ST_pp0_stg0_fsm_1() {
    if (ap_sig_bdd_67.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    }
}

void mmult::thread_ap_sig_cseq_ST_pp1_stg0_fsm_2() {
    if (ap_sig_bdd_116.read()) {
        ap_sig_cseq_ST_pp1_stg0_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp1_stg0_fsm_2 = ap_const_logic_0;
    }
}

void mmult::thread_ap_sig_cseq_ST_pp2_stg0_fsm_3() {
    if (ap_sig_bdd_162.read()) {
        ap_sig_cseq_ST_pp2_stg0_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp2_stg0_fsm_3 = ap_const_logic_0;
    }
}

void mmult::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_23.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void mmult::thread_ap_sig_cseq_ST_st305_fsm_4() {
    if (ap_sig_bdd_5269.read()) {
        ap_sig_cseq_ST_st305_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st305_fsm_4 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_0_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_0_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()))) {
        b_buf_0_address0 =  (sc_lv<6>) (tmp_4_fu_1750_p1.read());
    } else {
        b_buf_0_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_0_address1() {
    b_buf_0_address1 =  (sc_lv<6>) (tmp_14_cast_fu_1777_p1.read());
}

void mmult::thread_b_buf_0_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_0_ce0 = ap_const_logic_1;
    } else {
        b_buf_0_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_0_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it10.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_0_ce1 = ap_const_logic_1;
    } else {
        b_buf_0_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_0_d0() {
    b_buf_0_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_0_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_0)))) {
        b_buf_0_we0 = ap_const_logic_1;
    } else {
        b_buf_0_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_10_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_10_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it181.read())) {
        b_buf_10_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it180.read());
    } else {
        b_buf_10_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_10_address1() {
    b_buf_10_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it189.read());
}

void mmult::thread_b_buf_10_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it181.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_10_ce0 = ap_const_logic_1;
    } else {
        b_buf_10_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_10_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it190.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_10_ce1 = ap_const_logic_1;
    } else {
        b_buf_10_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_10_d0() {
    b_buf_10_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_10_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_A)))) {
        b_buf_10_we0 = ap_const_logic_1;
    } else {
        b_buf_10_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_11_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_11_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it199.read())) {
        b_buf_11_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it198.read());
    } else {
        b_buf_11_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_11_address1() {
    b_buf_11_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it207.read());
}

void mmult::thread_b_buf_11_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it199.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_11_ce0 = ap_const_logic_1;
    } else {
        b_buf_11_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_11_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it208.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_11_ce1 = ap_const_logic_1;
    } else {
        b_buf_11_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_11_d0() {
    b_buf_11_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_11_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_B)))) {
        b_buf_11_we0 = ap_const_logic_1;
    } else {
        b_buf_11_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_12_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_12_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        b_buf_12_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it216.read());
    } else {
        b_buf_12_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_12_address1() {
    b_buf_12_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it225.read());
}

void mmult::thread_b_buf_12_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_12_ce0 = ap_const_logic_1;
    } else {
        b_buf_12_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_12_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_12_ce1 = ap_const_logic_1;
    } else {
        b_buf_12_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_12_d0() {
    b_buf_12_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_12_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_C)))) {
        b_buf_12_we0 = ap_const_logic_1;
    } else {
        b_buf_12_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_13_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_13_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        b_buf_13_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it216.read());
    } else {
        b_buf_13_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_13_address1() {
    b_buf_13_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it225.read());
}

void mmult::thread_b_buf_13_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_13_ce0 = ap_const_logic_1;
    } else {
        b_buf_13_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_13_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_13_ce1 = ap_const_logic_1;
    } else {
        b_buf_13_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_13_d0() {
    b_buf_13_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_13_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_D)))) {
        b_buf_13_we0 = ap_const_logic_1;
    } else {
        b_buf_13_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_14_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_14_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        b_buf_14_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it216.read());
    } else {
        b_buf_14_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_14_address1() {
    b_buf_14_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it225.read());
}

void mmult::thread_b_buf_14_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_14_ce0 = ap_const_logic_1;
    } else {
        b_buf_14_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_14_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_14_ce1 = ap_const_logic_1;
    } else {
        b_buf_14_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_14_d0() {
    b_buf_14_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_14_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_E)))) {
        b_buf_14_we0 = ap_const_logic_1;
    } else {
        b_buf_14_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_15_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_15_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read())) {
        b_buf_15_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it216.read());
    } else {
        b_buf_15_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_15_address1() {
    b_buf_15_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it225.read());
}

void mmult::thread_b_buf_15_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it217.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_15_ce0 = ap_const_logic_1;
    } else {
        b_buf_15_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_15_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it226.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_15_ce1 = ap_const_logic_1;
    } else {
        b_buf_15_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_15_d0() {
    b_buf_15_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_15_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_E) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_D) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_C) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_B) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_A) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_9) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_8) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_7) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_6) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_5) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_4) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_3) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_2) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_1) && 
          !esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_0)))) {
        b_buf_15_we0 = ap_const_logic_1;
    } else {
        b_buf_15_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_1_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_1_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it19.read())) {
        b_buf_1_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it18.read());
    } else {
        b_buf_1_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_1_address1() {
    b_buf_1_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it27.read());
}

void mmult::thread_b_buf_1_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it19.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_1_ce0 = ap_const_logic_1;
    } else {
        b_buf_1_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_1_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it28.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_1_ce1 = ap_const_logic_1;
    } else {
        b_buf_1_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_1_d0() {
    b_buf_1_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_1_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_1)))) {
        b_buf_1_we0 = ap_const_logic_1;
    } else {
        b_buf_1_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_2_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_2_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it37.read())) {
        b_buf_2_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it36.read());
    } else {
        b_buf_2_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_2_address1() {
    b_buf_2_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it45.read());
}

void mmult::thread_b_buf_2_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it37.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_2_ce0 = ap_const_logic_1;
    } else {
        b_buf_2_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_2_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it46.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_2_ce1 = ap_const_logic_1;
    } else {
        b_buf_2_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_2_d0() {
    b_buf_2_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_2_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_2)))) {
        b_buf_2_we0 = ap_const_logic_1;
    } else {
        b_buf_2_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_3_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_3_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it55.read())) {
        b_buf_3_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it54.read());
    } else {
        b_buf_3_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_3_address1() {
    b_buf_3_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it63.read());
}

void mmult::thread_b_buf_3_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it55.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_3_ce0 = ap_const_logic_1;
    } else {
        b_buf_3_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_3_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it64.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_3_ce1 = ap_const_logic_1;
    } else {
        b_buf_3_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_3_d0() {
    b_buf_3_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_3_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_3)))) {
        b_buf_3_we0 = ap_const_logic_1;
    } else {
        b_buf_3_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_4_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_4_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it73.read())) {
        b_buf_4_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it72.read());
    } else {
        b_buf_4_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_4_address1() {
    b_buf_4_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it81.read());
}

void mmult::thread_b_buf_4_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it73.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_4_ce0 = ap_const_logic_1;
    } else {
        b_buf_4_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_4_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it82.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_4_ce1 = ap_const_logic_1;
    } else {
        b_buf_4_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_4_d0() {
    b_buf_4_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_4_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_4)))) {
        b_buf_4_we0 = ap_const_logic_1;
    } else {
        b_buf_4_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_5_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_5_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it91.read())) {
        b_buf_5_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it90.read());
    } else {
        b_buf_5_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_5_address1() {
    b_buf_5_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it99.read());
}

void mmult::thread_b_buf_5_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it91.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_5_ce0 = ap_const_logic_1;
    } else {
        b_buf_5_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_5_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it100.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_5_ce1 = ap_const_logic_1;
    } else {
        b_buf_5_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_5_d0() {
    b_buf_5_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_5_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_5)))) {
        b_buf_5_we0 = ap_const_logic_1;
    } else {
        b_buf_5_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_6_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_6_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it109.read())) {
        b_buf_6_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it108.read());
    } else {
        b_buf_6_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_6_address1() {
    b_buf_6_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it117.read());
}

void mmult::thread_b_buf_6_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it109.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_6_ce0 = ap_const_logic_1;
    } else {
        b_buf_6_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_6_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it118.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_6_ce1 = ap_const_logic_1;
    } else {
        b_buf_6_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_6_d0() {
    b_buf_6_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_6_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_6)))) {
        b_buf_6_we0 = ap_const_logic_1;
    } else {
        b_buf_6_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_7_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_7_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it127.read())) {
        b_buf_7_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it126.read());
    } else {
        b_buf_7_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_7_address1() {
    b_buf_7_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it135.read());
}

void mmult::thread_b_buf_7_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it127.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_7_ce0 = ap_const_logic_1;
    } else {
        b_buf_7_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_7_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it136.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_7_ce1 = ap_const_logic_1;
    } else {
        b_buf_7_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_7_d0() {
    b_buf_7_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_7_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_7)))) {
        b_buf_7_we0 = ap_const_logic_1;
    } else {
        b_buf_7_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_8_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_8_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it145.read())) {
        b_buf_8_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it144.read());
    } else {
        b_buf_8_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_8_address1() {
    b_buf_8_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it153.read());
}

void mmult::thread_b_buf_8_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it145.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_8_ce0 = ap_const_logic_1;
    } else {
        b_buf_8_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_8_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it154.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_8_ce1 = ap_const_logic_1;
    } else {
        b_buf_8_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_8_d0() {
    b_buf_8_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_8_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_8)))) {
        b_buf_8_we0 = ap_const_logic_1;
    } else {
        b_buf_8_we0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_9_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read())) {
        b_buf_9_address0 =  (sc_lv<6>) (tmp_9_cast_fu_1673_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it163.read())) {
        b_buf_9_address0 =  (sc_lv<6>) (ap_reg_ppstg_tmp_4_reg_1934_pp2_it162.read());
    } else {
        b_buf_9_address0 = "XXXXXX";
    }
}

void mmult::thread_b_buf_9_address1() {
    b_buf_9_address1 =  (sc_lv<6>) (ap_reg_ppstg_tmp_14_cast_reg_1997_pp2_it171.read());
}

void mmult::thread_b_buf_9_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it163.read()) && 
          !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))))) {
        b_buf_9_ce0 = ap_const_logic_1;
    } else {
        b_buf_9_ce0 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_9_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it172.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        b_buf_9_ce1 = ap_const_logic_1;
    } else {
        b_buf_9_ce1 = ap_const_logic_0;
    }
}

void mmult::thread_b_buf_9_d0() {
    b_buf_9_d0 = in_B_read_reg_1859.read();
}

void mmult::thread_b_buf_9_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it2.read()) && 
          !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())) && 
          esl_seteq<1,5,5>(ap_reg_ppstg_arrayNo1_cast_reg_1845_pp1_it1.read(), ap_const_lv5_9)))) {
        b_buf_9_we0 = ap_const_logic_1;
    } else {
        b_buf_9_we0 = ap_const_logic_0;
    }
}

void mmult::thread_exitcond1_fu_1615_p2() {
    exitcond1_fu_1615_p2 = (!j_1_reg_1210.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j_1_reg_1210.read() == ap_const_lv6_20);
}

void mmult::thread_exitcond1_i_fu_1710_p2() {
    exitcond1_i_fu_1710_p2 = (!index_b_0_i_reg_1243.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(index_b_0_i_reg_1243.read() == ap_const_lv6_20);
}

void mmult::thread_exitcond_flatten1_fu_1692_p2() {
    exitcond_flatten1_fu_1692_p2 = (!indvar_flatten1_reg_1221.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten1_reg_1221.read() == ap_const_lv11_400);
}

void mmult::thread_exitcond_flatten8_fu_1597_p2() {
    exitcond_flatten8_fu_1597_p2 = (!indvar_flatten6_reg_1188.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten6_reg_1188.read() == ap_const_lv11_400);
}

void mmult::thread_exitcond_flatten_fu_1511_p2() {
    exitcond_flatten_fu_1511_p2 = (!indvar_flatten_reg_1155.read().is_01() || !ap_const_lv11_400.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_1155.read() == ap_const_lv11_400);
}

void mmult::thread_exitcond_fu_1529_p2() {
    exitcond_fu_1529_p2 = (!j_reg_1177.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_1177.read() == ap_const_lv6_20);
}

void mmult::thread_grp_fu_1254_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1254_ce = ap_const_logic_1;
    } else {
        grp_fu_1254_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1259_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1259_ce = ap_const_logic_1;
    } else {
        grp_fu_1259_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1263_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1263_ce = ap_const_logic_1;
    } else {
        grp_fu_1263_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1267_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1267_ce = ap_const_logic_1;
    } else {
        grp_fu_1267_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1271_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1271_ce = ap_const_logic_1;
    } else {
        grp_fu_1271_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1275_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1275_ce = ap_const_logic_1;
    } else {
        grp_fu_1275_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1279_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1279_ce = ap_const_logic_1;
    } else {
        grp_fu_1279_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1283_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1283_ce = ap_const_logic_1;
    } else {
        grp_fu_1283_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1287_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1287_ce = ap_const_logic_1;
    } else {
        grp_fu_1287_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1291_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1291_ce = ap_const_logic_1;
    } else {
        grp_fu_1291_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1295_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1295_ce = ap_const_logic_1;
    } else {
        grp_fu_1295_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1299_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1299_ce = ap_const_logic_1;
    } else {
        grp_fu_1299_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1303_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1303_ce = ap_const_logic_1;
    } else {
        grp_fu_1303_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1307_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1307_ce = ap_const_logic_1;
    } else {
        grp_fu_1307_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1311_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1311_ce = ap_const_logic_1;
    } else {
        grp_fu_1311_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1315_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1315_ce = ap_const_logic_1;
    } else {
        grp_fu_1315_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1319_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1319_ce = ap_const_logic_1;
    } else {
        grp_fu_1319_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1323_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1323_ce = ap_const_logic_1;
    } else {
        grp_fu_1323_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1327_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1327_ce = ap_const_logic_1;
    } else {
        grp_fu_1327_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1331_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1331_ce = ap_const_logic_1;
    } else {
        grp_fu_1331_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1335_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1335_ce = ap_const_logic_1;
    } else {
        grp_fu_1335_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1339_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1339_ce = ap_const_logic_1;
    } else {
        grp_fu_1339_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1343_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1343_ce = ap_const_logic_1;
    } else {
        grp_fu_1343_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1347_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1347_ce = ap_const_logic_1;
    } else {
        grp_fu_1347_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1351_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1351_ce = ap_const_logic_1;
    } else {
        grp_fu_1351_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1355_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1355_ce = ap_const_logic_1;
    } else {
        grp_fu_1355_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1359_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1359_ce = ap_const_logic_1;
    } else {
        grp_fu_1359_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1363_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1363_ce = ap_const_logic_1;
    } else {
        grp_fu_1363_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1367_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1367_ce = ap_const_logic_1;
    } else {
        grp_fu_1367_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1371_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1371_ce = ap_const_logic_1;
    } else {
        grp_fu_1371_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1375_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1375_ce = ap_const_logic_1;
    } else {
        grp_fu_1375_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1379_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1379_ce = ap_const_logic_1;
    } else {
        grp_fu_1379_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1383_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1383_ce = ap_const_logic_1;
    } else {
        grp_fu_1383_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1387_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1387_ce = ap_const_logic_1;
    } else {
        grp_fu_1387_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1391_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1391_ce = ap_const_logic_1;
    } else {
        grp_fu_1391_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1395_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1395_ce = ap_const_logic_1;
    } else {
        grp_fu_1395_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1399_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1399_ce = ap_const_logic_1;
    } else {
        grp_fu_1399_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1403_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1403_ce = ap_const_logic_1;
    } else {
        grp_fu_1403_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1407_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1407_ce = ap_const_logic_1;
    } else {
        grp_fu_1407_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1411_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1411_ce = ap_const_logic_1;
    } else {
        grp_fu_1411_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1415_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1415_ce = ap_const_logic_1;
    } else {
        grp_fu_1415_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1419_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1419_ce = ap_const_logic_1;
    } else {
        grp_fu_1419_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1423_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1423_ce = ap_const_logic_1;
    } else {
        grp_fu_1423_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1427_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1427_ce = ap_const_logic_1;
    } else {
        grp_fu_1427_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1431_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1431_ce = ap_const_logic_1;
    } else {
        grp_fu_1431_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1435_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1435_ce = ap_const_logic_1;
    } else {
        grp_fu_1435_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1439_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1439_ce = ap_const_logic_1;
    } else {
        grp_fu_1439_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1443_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1443_ce = ap_const_logic_1;
    } else {
        grp_fu_1443_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1447_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1447_ce = ap_const_logic_1;
    } else {
        grp_fu_1447_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1451_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1451_ce = ap_const_logic_1;
    } else {
        grp_fu_1451_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1455_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1455_ce = ap_const_logic_1;
    } else {
        grp_fu_1455_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1459_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1459_ce = ap_const_logic_1;
    } else {
        grp_fu_1459_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1463_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1463_ce = ap_const_logic_1;
    } else {
        grp_fu_1463_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1467_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1467_ce = ap_const_logic_1;
    } else {
        grp_fu_1467_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1471_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1471_ce = ap_const_logic_1;
    } else {
        grp_fu_1471_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1475_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1475_ce = ap_const_logic_1;
    } else {
        grp_fu_1475_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1479_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1479_ce = ap_const_logic_1;
    } else {
        grp_fu_1479_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1483_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1483_ce = ap_const_logic_1;
    } else {
        grp_fu_1483_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1487_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1487_ce = ap_const_logic_1;
    } else {
        grp_fu_1487_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1491_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1491_ce = ap_const_logic_1;
    } else {
        grp_fu_1491_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1495_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1495_ce = ap_const_logic_1;
    } else {
        grp_fu_1495_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1499_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1499_ce = ap_const_logic_1;
    } else {
        grp_fu_1499_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1503_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1503_ce = ap_const_logic_1;
    } else {
        grp_fu_1503_ce = ap_const_logic_0;
    }
}

void mmult::thread_grp_fu_1507_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        grp_fu_1507_ce = ap_const_logic_1;
    } else {
        grp_fu_1507_ce = ap_const_logic_0;
    }
}

void mmult::thread_i_1_mid2_fu_1629_p3() {
    i_1_mid2_fu_1629_p3 = (!exitcond1_fu_1615_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_fu_1615_p2.read()[0].to_bool())? i_3_fu_1609_p2.read(): i_1_phi_fu_1203_p4.read());
}

void mmult::thread_i_1_phi_fu_1203_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_reg_1831.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()))) {
        i_1_phi_fu_1203_p4 = i_1_mid2_reg_1840.read();
    } else {
        i_1_phi_fu_1203_p4 = i_1_reg_1199.read();
    }
}

void mmult::thread_i_2_fu_1523_p2() {
    i_2_fu_1523_p2 = (!ap_const_lv6_1.is_01() || !i_phi_fu_1170_p4.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_1) + sc_biguint<6>(i_phi_fu_1170_p4.read()));
}

void mmult::thread_i_3_fu_1609_p2() {
    i_3_fu_1609_p2 = (!ap_const_lv6_1.is_01() || !i_1_phi_fu_1203_p4.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_1) + sc_biguint<6>(i_1_phi_fu_1203_p4.read()));
}

void mmult::thread_i_mid2_fu_1543_p3() {
    i_mid2_fu_1543_p3 = (!exitcond_fu_1529_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond_fu_1529_p2.read()[0].to_bool())? i_2_fu_1523_p2.read(): i_phi_fu_1170_p4.read());
}

void mmult::thread_i_phi_fu_1170_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_1782.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        i_phi_fu_1170_p4 = i_mid2_reg_1791.read();
    } else {
        i_phi_fu_1170_p4 = i_reg_1166.read();
    }
}

void mmult::thread_in_A_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_1782.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !(ap_sig_bdd_75.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        in_A_read = ap_const_logic_1;
    } else {
        in_A_read = ap_const_logic_0;
    }
}

void mmult::thread_in_B_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp1_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten8_reg_1831.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read()) && 
         !(ap_sig_bdd_123.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp1_it1.read())))) {
        in_B_read = ap_const_logic_1;
    } else {
        in_B_read = ap_const_logic_0;
    }
}

void mmult::thread_index_a_0_i_mid2_fu_1724_p3() {
    index_a_0_i_mid2_fu_1724_p3 = (!exitcond1_i_fu_1710_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_i_fu_1710_p2.read()[0].to_bool())? index_a_fu_1704_p2.read(): index_a_0_i_phi_fu_1236_p4.read());
}

void mmult::thread_index_a_0_i_phi_fu_1236_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp2_stg0_fsm_3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten1_reg_1879.read()))) {
        index_a_0_i_phi_fu_1236_p4 = index_a_0_i_mid2_reg_1894.read();
    } else {
        index_a_0_i_phi_fu_1236_p4 = index_a_0_i_reg_1232.read();
    }
}

void mmult::thread_index_a_fu_1704_p2() {
    index_a_fu_1704_p2 = (!index_a_0_i_phi_fu_1236_p4.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(index_a_0_i_phi_fu_1236_p4.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult::thread_index_b_0_i_mid2_fu_1716_p3() {
    index_b_0_i_mid2_fu_1716_p3 = (!exitcond1_i_fu_1710_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_i_fu_1710_p2.read()[0].to_bool())? ap_const_lv6_0: index_b_0_i_reg_1243.read());
}

void mmult::thread_index_b_fu_1732_p2() {
    index_b_fu_1732_p2 = (!index_b_0_i_mid2_fu_1716_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(index_b_0_i_mid2_fu_1716_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult::thread_indvar_flatten_next1_fu_1698_p2() {
    indvar_flatten_next1_fu_1698_p2 = (!indvar_flatten1_reg_1221.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten1_reg_1221.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void mmult::thread_indvar_flatten_next7_fu_1603_p2() {
    indvar_flatten_next7_fu_1603_p2 = (!indvar_flatten6_reg_1188.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten6_reg_1188.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void mmult::thread_indvar_flatten_next_fu_1517_p2() {
    indvar_flatten_next_fu_1517_p2 = (!indvar_flatten_reg_1155.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(indvar_flatten_reg_1155.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void mmult::thread_j_1_mid2_fu_1621_p3() {
    j_1_mid2_fu_1621_p3 = (!exitcond1_fu_1615_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond1_fu_1615_p2.read()[0].to_bool())? ap_const_lv6_0: j_1_reg_1210.read());
}

void mmult::thread_j_2_fu_1565_p2() {
    j_2_fu_1565_p2 = (!j_mid2_fu_1535_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j_mid2_fu_1535_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult::thread_j_3_fu_1667_p2() {
    j_3_fu_1667_p2 = (!j_1_mid2_fu_1621_p3.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(j_1_mid2_fu_1621_p3.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void mmult::thread_j_mid2_fu_1535_p3() {
    j_mid2_fu_1535_p3 = (!exitcond_fu_1529_p2.read()[0].is_01())? sc_lv<6>(): ((exitcond_fu_1529_p2.read()[0].to_bool())? ap_const_lv6_0: j_reg_1177.read());
}

void mmult::thread_out_C_din() {
    out_C_din = result_30_reg_2941.read();
}

void mmult::thread_out_C_write() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond_flatten1_reg_1879_pp2_it295.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read()) && 
         !(ap_sig_bdd_760.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp2_it296.read())))) {
        out_C_write = ap_const_logic_1;
    } else {
        out_C_write = ap_const_logic_0;
    }
}

void mmult::thread_tmp_10_fu_1754_p2() {
    tmp_10_fu_1754_p2 = (ap_reg_ppstg_tmp_s_reg_1905_pp2_it9.read() | ap_const_lv7_1);
}

void mmult::thread_tmp_11_fu_1759_p3() {
    tmp_11_fu_1759_p3 = esl_concat<57,7>(ap_const_lv57_0, tmp_10_fu_1754_p2.read());
}

void mmult::thread_tmp_12_fu_1771_p2() {
    tmp_12_fu_1771_p2 = (!tmp_4_cast_fu_1768_p1.read().is_01() || !ap_const_lv7_20.is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_4_cast_fu_1768_p1.read()) + sc_biguint<7>(ap_const_lv7_20));
}

void mmult::thread_tmp_14_cast_fu_1777_p1() {
    tmp_14_cast_fu_1777_p1 = esl_zext<64,7>(tmp_12_fu_1771_p2.read());
}

void mmult::thread_tmp_1_fu_1577_p1() {
    tmp_1_fu_1577_p1 = esl_zext<64,7>(tmp_fu_1571_p3.read());
}

void mmult::thread_tmp_4_cast_fu_1768_p1() {
    tmp_4_cast_fu_1768_p1 = esl_zext<7,6>(ap_reg_ppstg_index_b_0_i_mid2_reg_1888_pp2_it9.read());
}

void mmult::thread_tmp_4_fu_1750_p1() {
    tmp_4_fu_1750_p1 = esl_zext<64,6>(index_b_0_i_mid2_reg_1888.read());
}

void mmult::thread_tmp_5_fu_1561_p1() {
    tmp_5_fu_1561_p1 = j_mid2_fu_1535_p3.read().range(1-1, 0);
}

void mmult::thread_tmp_6_fu_1647_p2() {
    tmp_6_fu_1647_p2 = (!ap_const_lv6_5.is_01())? sc_lv<6>(): i_1_mid2_fu_1629_p3.read() << (unsigned short)ap_const_lv6_5.to_uint();
}

void mmult::thread_tmp_8_cast_fu_1653_p1() {
    tmp_8_cast_fu_1653_p1 = esl_zext<7,6>(tmp_6_fu_1647_p2.read());
}

void mmult::thread_tmp_8_fu_1745_p1() {
    tmp_8_fu_1745_p1 = esl_zext<64,7>(tmp_s_fu_1738_p3.read());
}

void mmult::thread_tmp_9_cast_fu_1673_p1() {
    tmp_9_cast_fu_1673_p1 = esl_zext<64,7>(ap_reg_ppstg_tmp_9_reg_1849_pp1_it1.read());
}

void mmult::thread_tmp_9_fu_1661_p2() {
    tmp_9_fu_1661_p2 = (!tmp_8_cast_fu_1653_p1.read().is_01() || !tmp_cast_fu_1657_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_8_cast_fu_1653_p1.read()) + sc_biguint<7>(tmp_cast_fu_1657_p1.read()));
}

void mmult::thread_tmp_cast_fu_1657_p1() {
    tmp_cast_fu_1657_p1 = esl_zext<7,6>(j_1_mid2_fu_1621_p3.read());
}

void mmult::thread_tmp_fu_1571_p3() {
    tmp_fu_1571_p3 = esl_concat<6,1>(ap_reg_ppstg_i_mid2_reg_1791_pp0_it1.read(), ap_reg_ppstg_tmp_5_reg_1801_pp0_it1.read());
}

void mmult::thread_tmp_s_fu_1738_p3() {
    tmp_s_fu_1738_p3 = esl_concat<6,1>(index_a_0_i_mid2_reg_1894.read(), ap_const_lv1_0);
}

}

