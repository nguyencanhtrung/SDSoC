# This script segment is generated automatically by AutoPilot

set id 50
set name correlation_accel_v4_srem_32ns_4ns_32_36
set corename simcore_srem
set op srem
set stage_num 36
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set in1_width 4
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_srem] == "ap_gen_simcore_srem"} {
eval "ap_gen_simcore_srem { \
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
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_srem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op srem
set corename DivnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
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
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 51
set MemName correlation_accel_v4_midEnd_acc_returnA
set CoreName ap_simcore_mem
set PortList { 2 0 }
set DataWd 32
set AddrRange 6
set AddrWd 3
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.39
set ClkPeriod 8.5
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
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
    id 53 \
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
    id 54 \
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
    id 55 \
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
    id 56 \
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
    id 57 \
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
    id 58 \
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
    id 59 \
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
    id 60 \
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
    id 61 \
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
    id 62 \
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
    id 63 \
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
    id 64 \
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
    id 65 \
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
    id 66 \
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
    id 67 \
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
    id 68 \
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
    id 69 \
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
    id 70 \
    name NUMBER_OF_DAYS_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_NUMBER_OF_DAYS_out \
    op interface \
    ports { NUMBER_OF_DAYS_out_din { O 32 vector } NUMBER_OF_DAYS_out_full_n { I 1 bit } NUMBER_OF_DAYS_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name NUMBER_OF_INDICES_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_NUMBER_OF_INDICES_out \
    op interface \
    ports { NUMBER_OF_INDICES_out_din { O 32 vector } NUMBER_OF_INDICES_out_full_n { I 1 bit } NUMBER_OF_INDICES_out_write { O 1 bit } } \
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


