# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name NUMBER_OF_DAYS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_NUMBER_OF_DAYS \
    op interface \
    ports { NUMBER_OF_DAYS_dout { I 32 vector } NUMBER_OF_DAYS_empty_n { I 1 bit } NUMBER_OF_DAYS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name NUMBER_OF_INDICES \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_NUMBER_OF_INDICES \
    op interface \
    ports { NUMBER_OF_INDICES_dout { I 32 vector } NUMBER_OF_INDICES_empty_n { I 1 bit } NUMBER_OF_INDICES_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name ln_returnA_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ln_returnA_in_V \
    op interface \
    ports { ln_returnA_in_V_dout { I 32 vector } ln_returnA_in_V_empty_n { I 1 bit } ln_returnA_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name weight_returnSquareA_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_returnSquareA_in_V \
    op interface \
    ports { weight_returnSquareA_in_V_dout { I 32 vector } weight_returnSquareA_in_V_empty_n { I 1 bit } weight_returnSquareA_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name weight_returnA_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_returnA_in_V \
    op interface \
    ports { weight_returnA_in_V_dout { I 32 vector } weight_returnA_in_V_empty_n { I 1 bit } weight_returnA_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name sum_weight_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_in_V \
    op interface \
    ports { sum_weight_in_V_dout { I 32 vector } sum_weight_in_V_empty_n { I 1 bit } sum_weight_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name ln_returnB_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ln_returnB_in_V \
    op interface \
    ports { ln_returnB_in_V_dout { I 32 vector } ln_returnB_in_V_empty_n { I 1 bit } ln_returnB_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name weight_returnSquareB_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_returnSquareB_in_V \
    op interface \
    ports { weight_returnSquareB_in_V_dout { I 32 vector } weight_returnSquareB_in_V_empty_n { I 1 bit } weight_returnSquareB_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name weight_returnB_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_returnB_in_V \
    op interface \
    ports { weight_returnB_in_V_dout { I 32 vector } weight_returnB_in_V_empty_n { I 1 bit } weight_returnB_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name weight_returnA_returnB_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_returnA_returnB_in_V \
    op interface \
    ports { weight_returnA_returnB_in_V_dout { I 32 vector } weight_returnA_returnB_in_V_empty_n { I 1 bit } weight_returnA_returnB_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name sum_weight_out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_out_V \
    op interface \
    ports { sum_weight_out_V_din { O 32 vector } sum_weight_out_V_full_n { I 1 bit } sum_weight_out_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name sum_return_out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_return_out_V \
    op interface \
    ports { sum_return_out_V_din { O 32 vector } sum_return_out_V_full_n { I 1 bit } sum_return_out_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name sum_weight_returnSquare_out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnSquare_out_V \
    op interface \
    ports { sum_weight_returnSquare_out_V_din { O 32 vector } sum_weight_returnSquare_out_V_full_n { I 1 bit } sum_weight_returnSquare_out_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name sum_weight_return_out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_return_out_V \
    op interface \
    ports { sum_weight_return_out_V_din { O 32 vector } sum_weight_return_out_V_full_n { I 1 bit } sum_weight_return_out_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name sum_weight_returnA_returnB_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnA_returnB_out \
    op interface \
    ports { sum_weight_returnA_returnB_out_din { O 32 vector } sum_weight_returnA_returnB_out_full_n { I 1 bit } sum_weight_returnA_returnB_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name sum_returnA_out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_returnA_out_V \
    op interface \
    ports { sum_returnA_out_V_din { O 32 vector } sum_returnA_out_V_full_n { I 1 bit } sum_returnA_out_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name sum_weight_returnSquareA_out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnSquareA_out_V \
    op interface \
    ports { sum_weight_returnSquareA_out_V_din { O 32 vector } sum_weight_returnSquareA_out_V_full_n { I 1 bit } sum_weight_returnSquareA_out_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name sum_weight_returnA_out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnA_out_V \
    op interface \
    ports { sum_weight_returnA_out_V_din { O 32 vector } sum_weight_returnA_out_V_full_n { I 1 bit } sum_weight_returnA_out_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


