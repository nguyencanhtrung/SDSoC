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
  set_property board_part xilinx.com:zc702:part0:0.9 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.cache/wt [current_project]
  set_property parent.project_path C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.xpr [current_project]
  set_property ip_repo_paths {
  c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.cache/ip
  C:/labs/lab1_prebuilt/SDRelease/_sds/iprepo/repo
  C:/Xilinx/SDSoC/2014.4/data/ip/xilinx
} [current_project]
  set_property ip_output_repo c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.cache/ip [current_project]
  add_files -quiet C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.runs/synth_1/zc702_wrapper.dcp
  read_xdc -ref zc702_processing_system7_1_0 -cells inst c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_processing_system7_1_0/zc702_processing_system7_1_0.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_processing_system7_1_0/zc702_processing_system7_1_0.xdc]
  read_xdc -prop_thru_buffers -ref zc702_proc_sys_reset_1_0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_1_0/zc702_proc_sys_reset_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_1_0/zc702_proc_sys_reset_1_0_board.xdc]
  read_xdc -ref zc702_proc_sys_reset_1_0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_1_0/zc702_proc_sys_reset_1_0.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_1_0/zc702_proc_sys_reset_1_0.xdc]
  read_xdc -prop_thru_buffers -ref zc702_proc_sys_reset_2_1 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_2_1/zc702_proc_sys_reset_2_1_board.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_2_1/zc702_proc_sys_reset_2_1_board.xdc]
  read_xdc -ref zc702_proc_sys_reset_2_1 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_2_1/zc702_proc_sys_reset_2_1.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_2_1/zc702_proc_sys_reset_2_1.xdc]
  read_xdc -prop_thru_buffers -ref zc702_proc_sys_reset_3_2 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_3_2/zc702_proc_sys_reset_3_2_board.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_3_2/zc702_proc_sys_reset_3_2_board.xdc]
  read_xdc -ref zc702_proc_sys_reset_3_2 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_3_2/zc702_proc_sys_reset_3_2.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_3_2/zc702_proc_sys_reset_3_2.xdc]
  read_xdc -prop_thru_buffers -ref zc702_proc_sys_reset_4_3 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_4_3/zc702_proc_sys_reset_4_3_board.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_4_3/zc702_proc_sys_reset_4_3_board.xdc]
  read_xdc -ref zc702_proc_sys_reset_4_3 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_4_3/zc702_proc_sys_reset_4_3.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_proc_sys_reset_4_3/zc702_proc_sys_reset_4_3.xdc]
  read_xdc -ref zc702_datamover_0_0 -cells U0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_0_0/zc702_datamover_0_0.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_0_0/zc702_datamover_0_0.xdc]
  read_xdc -ref zc702_datamover_1_0 -cells U0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_1_0/zc702_datamover_1_0.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_1_0/zc702_datamover_1_0.xdc]
  read_xdc -ref zc702_datamover_2_0 -cells U0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_2_0/zc702_datamover_2_0.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_2_0/zc702_datamover_2_0.xdc]
  read_xdc -ref zc702_datamover_3_0 -cells U0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_3_0/zc702_datamover_3_0.xdc
  set_property processing_order EARLY [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_3_0/zc702_datamover_3_0.xdc]
  read_xdc -ref zc702_datamover_0_0 -cells U0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_0_0/zc702_datamover_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_0_0/zc702_datamover_0_0_clocks.xdc]
  read_xdc -ref zc702_datamover_1_0 -cells U0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_1_0/zc702_datamover_1_0_clocks.xdc
  set_property processing_order LATE [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_1_0/zc702_datamover_1_0_clocks.xdc]
  read_xdc -ref zc702_datamover_2_0 -cells U0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_2_0/zc702_datamover_2_0_clocks.xdc
  set_property processing_order LATE [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_2_0/zc702_datamover_2_0_clocks.xdc]
  read_xdc -ref zc702_datamover_3_0 -cells U0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_3_0/zc702_datamover_3_0_clocks.xdc
  set_property processing_order LATE [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_datamover_3_0/zc702_datamover_3_0_clocks.xdc]
  read_xdc -ref zc702_madd_0_if_0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_madd_0_if_0/zc702_madd_0_if_0.xdc
  set_property processing_order LATE [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_madd_0_if_0/zc702_madd_0_if_0.xdc]
  read_xdc -ref zc702_madd_0_if_0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_madd_0_if_0/zc702_madd_0_if_0_clocks.xdc
  set_property processing_order LATE [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_madd_0_if_0/zc702_madd_0_if_0_clocks.xdc]
  read_xdc -ref zc702_mmult_0_if_0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_mmult_0_if_0/zc702_mmult_0_if_0.xdc
  set_property processing_order LATE [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_mmult_0_if_0/zc702_mmult_0_if_0.xdc]
  read_xdc -ref zc702_mmult_0_if_0 c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_mmult_0_if_0/zc702_mmult_0_if_0_clocks.xdc
  set_property processing_order LATE [get_files c:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.srcs/sources_1/bd/zc702/ip/zc702_mmult_0_if_0/zc702_mmult_0_if_0_clocks.xdc]
  link_design -top zc702_wrapper -part xc7z020clg484-1
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
  write_checkpoint -force zc702_wrapper_opt.dcp
  catch {report_drc -file zc702_wrapper_drc_opted.rpt}
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
  place_design 
  write_checkpoint -force zc702_wrapper_placed.dcp
  catch { report_io -file zc702_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file zc702_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file zc702_wrapper_utilization_placed.rpt -pb zc702_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file zc702_wrapper_control_sets_placed.rpt }
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
  write_checkpoint -force zc702_wrapper_routed.dcp
  catch { report_drc -file zc702_wrapper_drc_routed.rpt -pb zc702_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file zc702_wrapper_timing_summary_routed.rpt -rpx zc702_wrapper_timing_summary_routed.rpx }
  catch { report_power -file zc702_wrapper_power_routed.rpt -pb zc702_wrapper_power_summary_routed.pb }
  catch { report_route_status -file zc702_wrapper_route_status.rpt -pb zc702_wrapper_route_status.pb }
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
  write_bitstream -force zc702_wrapper.bit 
  if { [file exists C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.runs/synth_1/zc702_wrapper.hwdef] } {
    catch { write_sysdef -hwdef C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.runs/synth_1/zc702_wrapper.hwdef -bitfile zc702_wrapper.bit -meminfo zc702_wrapper.mmi -file zc702_wrapper.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

