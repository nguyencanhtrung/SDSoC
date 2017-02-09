# This script segment is generated automatically by AutoPilot

set id 98
set name correlation_accel_v4_faddfsub_32ns_32ns_32_5_full_dsp
set corename simcore_faddfsub
set op faddfsub
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_faddfsub] == "ap_gen_simcore_faddfsub"} {
eval "ap_gen_simcore_faddfsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_faddfsub, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op faddfsub
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 105
set name correlation_accel_v4_sitofp_32ns_32_6
set corename simcore_sitofp
set op sitofp
set stage_num 6
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_sitofp] == "ap_gen_simcore_sitofp"} {
eval "ap_gen_simcore_sitofp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_sitofp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op sitofp
set corename Int2Float
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 106
set name correlation_accel_v4_fsqrt_32ns_32ns_32_16
set corename simcore_fsqrt
set op fsqrt
set stage_num 16
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fsqrt] == "ap_gen_simcore_fsqrt"} {
eval "ap_gen_simcore_fsqrt { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fsqrt, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fsqrt
set corename FSqrt
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 126 \
    name out_correlation_data_V \
    reset_level 1 \
    sync_rst true \
    corename {out_correlation} \
    metadata {  } \
    op interface \
    ports { out_correlation_TDATA { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_correlation_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 127 \
    name out_correlation_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {out_correlation} \
    metadata {  } \
    op interface \
    ports { out_correlation_TKEEP { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_correlation_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 128 \
    name out_correlation_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {out_correlation} \
    metadata {  } \
    op interface \
    ports { out_correlation_TSTRB { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_correlation_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 129 \
    name out_correlation_user_V \
    reset_level 1 \
    sync_rst true \
    corename {out_correlation} \
    metadata {  } \
    op interface \
    ports { out_correlation_TUSER { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_correlation_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 130 \
    name out_correlation_last_V \
    reset_level 1 \
    sync_rst true \
    corename {out_correlation} \
    metadata {  } \
    op interface \
    ports { out_correlation_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_correlation_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 131 \
    name out_correlation_id_V \
    reset_level 1 \
    sync_rst true \
    corename {out_correlation} \
    metadata {  } \
    op interface \
    ports { out_correlation_TID { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_correlation_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 132 \
    name out_correlation_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {out_correlation} \
    metadata {  } \
    op interface \
    ports { out_correlation_TVALID { O 1 bit } out_correlation_TREADY { I 1 bit } out_correlation_TDEST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_correlation_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
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
    id 109 \
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
    id 110 \
    name sum_weight_in_c1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_in_c1_V \
    op interface \
    ports { sum_weight_in_c1_V_dout { I 32 vector } sum_weight_in_c1_V_empty_n { I 1 bit } sum_weight_in_c1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name sum_return_in_c1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_return_in_c1_V \
    op interface \
    ports { sum_return_in_c1_V_dout { I 32 vector } sum_return_in_c1_V_empty_n { I 1 bit } sum_return_in_c1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name sum_weight_returnSquare_in_c1_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnSquare_in_c1_s \
    op interface \
    ports { sum_weight_returnSquare_in_c1_s_dout { I 32 vector } sum_weight_returnSquare_in_c1_s_empty_n { I 1 bit } sum_weight_returnSquare_in_c1_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name sum_weight_return_in_c1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_return_in_c1_V \
    op interface \
    ports { sum_weight_return_in_c1_V_dout { I 32 vector } sum_weight_return_in_c1_V_empty_n { I 1 bit } sum_weight_return_in_c1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name sum_weight_returnA_returnB_in_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnA_returnB_in_s \
    op interface \
    ports { sum_weight_returnA_returnB_in_s_dout { I 32 vector } sum_weight_returnA_returnB_in_s_empty_n { I 1 bit } sum_weight_returnA_returnB_in_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name sum_returnA_in_c1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_returnA_in_c1_V \
    op interface \
    ports { sum_returnA_in_c1_V_dout { I 32 vector } sum_returnA_in_c1_V_empty_n { I 1 bit } sum_returnA_in_c1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name sum_weight_returnSquareA_in_c1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnSquareA_in_c1 \
    op interface \
    ports { sum_weight_returnSquareA_in_c1_dout { I 32 vector } sum_weight_returnSquareA_in_c1_empty_n { I 1 bit } sum_weight_returnSquareA_in_c1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name sum_weight_returnA_in_c1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnA_in_c1_V \
    op interface \
    ports { sum_weight_returnA_in_c1_V_dout { I 32 vector } sum_weight_returnA_in_c1_V_empty_n { I 1 bit } sum_weight_returnA_in_c1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name sum_weight_in_c2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_in_c2_V \
    op interface \
    ports { sum_weight_in_c2_V_dout { I 32 vector } sum_weight_in_c2_V_empty_n { I 1 bit } sum_weight_in_c2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name sum_return_in_c2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_return_in_c2_V \
    op interface \
    ports { sum_return_in_c2_V_dout { I 32 vector } sum_return_in_c2_V_empty_n { I 1 bit } sum_return_in_c2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name sum_weight_returnSquare_in_c2_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnSquare_in_c2_s \
    op interface \
    ports { sum_weight_returnSquare_in_c2_s_dout { I 32 vector } sum_weight_returnSquare_in_c2_s_empty_n { I 1 bit } sum_weight_returnSquare_in_c2_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name sum_weight_return_in_c2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_return_in_c2_V \
    op interface \
    ports { sum_weight_return_in_c2_V_dout { I 32 vector } sum_weight_return_in_c2_V_empty_n { I 1 bit } sum_weight_return_in_c2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name sum_weight_returnA_returnB_in_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnA_returnB_in_2 \
    op interface \
    ports { sum_weight_returnA_returnB_in_2_dout { I 32 vector } sum_weight_returnA_returnB_in_2_empty_n { I 1 bit } sum_weight_returnA_returnB_in_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name sum_returnA_in_c2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_returnA_in_c2_V \
    op interface \
    ports { sum_returnA_in_c2_V_dout { I 32 vector } sum_returnA_in_c2_V_empty_n { I 1 bit } sum_returnA_in_c2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name sum_weight_returnSquareA_in_c2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnSquareA_in_c2 \
    op interface \
    ports { sum_weight_returnSquareA_in_c2_dout { I 32 vector } sum_weight_returnSquareA_in_c2_empty_n { I 1 bit } sum_weight_returnSquareA_in_c2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name sum_weight_returnA_in_c2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_weight_returnA_in_c2_V \
    op interface \
    ports { sum_weight_returnA_in_c2_V_dout { I 32 vector } sum_weight_returnA_in_c2_V_empty_n { I 1 bit } sum_weight_returnA_in_c2_V_read { O 1 bit } } \
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


