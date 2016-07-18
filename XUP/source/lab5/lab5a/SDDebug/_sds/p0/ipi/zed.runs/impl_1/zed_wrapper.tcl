proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.cache/wt [current_project]
  set_property parent.project_path C:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.xpr [current_project]
  set_property ip_repo_paths {
  c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.cache/ip
  C:/xup/SDSoC/labs/lab5a/SDDebug/_sds/iprepo/repo
  C:/Xilinx/SDSoC/2015.4/data/ip/xilinx
} [current_project]
  set_property ip_output_repo c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.cache/ip [current_project]
  add_files -quiet C:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.runs/synth_1/zed_wrapper.dcp
  read_xdc -ref zed_ps7_0 -cells inst c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_ps7_0/zed_ps7_0.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_ps7_0/zed_ps7_0.xdc]
  read_xdc -prop_thru_buffers -ref zed_proc_sys_reset_1_0 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_1_0/zed_proc_sys_reset_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_1_0/zed_proc_sys_reset_1_0_board.xdc]
  read_xdc -ref zed_proc_sys_reset_1_0 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_1_0/zed_proc_sys_reset_1_0.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_1_0/zed_proc_sys_reset_1_0.xdc]
  read_xdc -prop_thru_buffers -ref zed_proc_sys_reset_2_1 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_2_1/zed_proc_sys_reset_2_1_board.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_2_1/zed_proc_sys_reset_2_1_board.xdc]
  read_xdc -ref zed_proc_sys_reset_2_1 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_2_1/zed_proc_sys_reset_2_1.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_2_1/zed_proc_sys_reset_2_1.xdc]
  read_xdc -prop_thru_buffers -ref zed_proc_sys_reset_3_2 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_3_2/zed_proc_sys_reset_3_2_board.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_3_2/zed_proc_sys_reset_3_2_board.xdc]
  read_xdc -ref zed_proc_sys_reset_3_2 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_3_2/zed_proc_sys_reset_3_2.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_3_2/zed_proc_sys_reset_3_2.xdc]
  read_xdc -prop_thru_buffers -ref zed_proc_sys_reset_0_3 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_0_3/zed_proc_sys_reset_0_3_board.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_0_3/zed_proc_sys_reset_0_3_board.xdc]
  read_xdc -ref zed_proc_sys_reset_0_3 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_0_3/zed_proc_sys_reset_0_3.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_0_3/zed_proc_sys_reset_0_3.xdc]
  read_xdc -ref zed_dm_0_0 -cells U0 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_dm_0_0/zed_dm_0_0.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_dm_0_0/zed_dm_0_0.xdc]
  read_xdc -ref zed_dm_1_0 -cells U0 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_dm_1_0/zed_dm_1_0.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_dm_1_0/zed_dm_1_0.xdc]
  read_xdc -ref zed_sharpen_filter_0_if_0 -cells U0 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_sharpen_filter_0_if_0/zed_sharpen_filter_0_if_0_xdc.xdc
  set_property processing_order EARLY [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_sharpen_filter_0_if_0/zed_sharpen_filter_0_if_0_xdc.xdc]
  read_xdc -ref zed_dm_0_0 -cells U0 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_dm_0_0/zed_dm_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_dm_0_0/zed_dm_0_0_clocks.xdc]
  read_xdc -ref zed_dm_1_0 -cells U0 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_dm_1_0/zed_dm_1_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_dm_1_0/zed_dm_1_0_clocks.xdc]
  read_xdc -ref zed_sharpen_filter_0_if_0 -cells U0 c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_sharpen_filter_0_if_0/zed_sharpen_filter_0_if_0_xdc_clocks.xdc
  set_property processing_order LATE [get_files c:/xup/SDSoC/labs/lab5a/SDDebug/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_sharpen_filter_0_if_0/zed_sharpen_filter_0_if_0_xdc_clocks.xdc]
  link_design -top zed_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force zed_wrapper_opt.dcp
  report_drc -file zed_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file zed_wrapper.hwdef}
  place_design 
  write_checkpoint -force zed_wrapper_placed.dcp
  report_io -file zed_wrapper_io_placed.rpt
  report_utilization -file zed_wrapper_utilization_placed.rpt -pb zed_wrapper_utilization_placed.pb
  report_control_sets -verbose -file zed_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force zed_wrapper_routed.dcp
  report_drc -file zed_wrapper_drc_routed.rpt -pb zed_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file zed_wrapper_timing_summary_routed.rpt -rpx zed_wrapper_timing_summary_routed.rpx
  report_power -file zed_wrapper_power_routed.rpt -pb zed_wrapper_power_summary_routed.pb
  report_route_status -file zed_wrapper_route_status.rpt -pb zed_wrapper_route_status.pb
  report_clock_utilization -file zed_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force zed_wrapper.mmi }
  write_bitstream -force zed_wrapper.bit 
  catch { write_sysdef -hwdef zed_wrapper.hwdef -bitfile zed_wrapper.bit -meminfo zed_wrapper.mmi -file zed_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

