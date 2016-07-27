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
  set_property webtalk.parent_dir /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.cache/wt [current_project]
  set_property parent.project_path /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.xpr [current_project]
  set_property ip_repo_paths {
  /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.cache/ip
  /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/iprepo/repo
  /opt/Xilinx/SDSoC/2014.4/data/ip/xilinx
} [current_project]
  set_property ip_output_repo /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.cache/ip [current_project]
  add_files -quiet /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.runs/synth_1/zed_wrapper.dcp
  read_xdc -ref zed_ps7_0 -cells inst /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_ps7_0/zed_ps7_0.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_ps7_0/zed_ps7_0.xdc]
  read_xdc -prop_thru_buffers -ref zed_proc_sys_reset_1_0 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_1_0/zed_proc_sys_reset_1_0_board.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_1_0/zed_proc_sys_reset_1_0_board.xdc]
  read_xdc -ref zed_proc_sys_reset_1_0 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_1_0/zed_proc_sys_reset_1_0.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_1_0/zed_proc_sys_reset_1_0.xdc]
  read_xdc -prop_thru_buffers -ref zed_proc_sys_reset_2_1 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_2_1/zed_proc_sys_reset_2_1_board.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_2_1/zed_proc_sys_reset_2_1_board.xdc]
  read_xdc -ref zed_proc_sys_reset_2_1 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_2_1/zed_proc_sys_reset_2_1.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_2_1/zed_proc_sys_reset_2_1.xdc]
  read_xdc -prop_thru_buffers -ref zed_proc_sys_reset_3_2 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_3_2/zed_proc_sys_reset_3_2_board.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_3_2/zed_proc_sys_reset_3_2_board.xdc]
  read_xdc -ref zed_proc_sys_reset_3_2 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_3_2/zed_proc_sys_reset_3_2.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_3_2/zed_proc_sys_reset_3_2.xdc]
  read_xdc -prop_thru_buffers -ref zed_proc_sys_reset_0_3 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_0_3/zed_proc_sys_reset_0_3_board.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_0_3/zed_proc_sys_reset_0_3_board.xdc]
  read_xdc -ref zed_proc_sys_reset_0_3 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_0_3/zed_proc_sys_reset_0_3.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_proc_sys_reset_0_3/zed_proc_sys_reset_0_3.xdc]
  read_xdc -ref zed_datamover_0_0 -cells U0 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_datamover_0_0/zed_datamover_0_0.xdc
  set_property processing_order EARLY [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_datamover_0_0/zed_datamover_0_0.xdc]
  read_xdc -ref zed_datamover_0_0 -cells U0 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_datamover_0_0/zed_datamover_0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_datamover_0_0/zed_datamover_0_0_clocks.xdc]
  read_xdc -ref zed_mmult_accel_0_if_0 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_mmult_accel_0_if_0/zed_mmult_accel_0_if_0.xdc
  set_property processing_order LATE [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_mmult_accel_0_if_0/zed_mmult_accel_0_if_0.xdc]
  read_xdc -ref zed_mmult_accel_0_if_0 /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_mmult_accel_0_if_0/zed_mmult_accel_0_if_0_clocks.xdc
  set_property processing_order LATE [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_mmult_accel_0_if_0/zed_mmult_accel_0_if_0_clocks.xdc]
  read_xdc -ref zed_auto_us_df_0 -cells inst /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_auto_us_df_0/zed_auto_us_df_0_clocks.xdc
  set_property processing_order LATE [get_files /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.srcs/sources_1/bd/zed/ip/zed_auto_us_df_0/zed_auto_us_df_0_clocks.xdc]
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
  catch {report_drc -file zed_wrapper_drc_opted.rpt}
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
  write_checkpoint -force zed_wrapper_placed.dcp
  catch { report_io -file zed_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file zed_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file zed_wrapper_utilization_placed.rpt -pb zed_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file zed_wrapper_control_sets_placed.rpt }
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
  catch { report_drc -file zed_wrapper_drc_routed.rpt -pb zed_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file zed_wrapper_timing_summary_routed.rpt -rpx zed_wrapper_timing_summary_routed.rpx }
  catch { report_power -file zed_wrapper_power_routed.rpt -pb zed_wrapper_power_summary_routed.pb }
  catch { report_route_status -file zed_wrapper_route_status.rpt -pb zed_wrapper_route_status.pb }
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
  write_bitstream -force zed_wrapper.bit 
  if { [file exists /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.runs/synth_1/zed_wrapper.hwdef] } {
    catch { write_sysdef -hwdef /home/trungnguyen/SDSoC/samples/mmult_hw/_sds/p0/ipi/zed.runs/synth_1/zed_wrapper.hwdef -bitfile zed_wrapper.bit -meminfo zed_wrapper.mmi -file zed_wrapper.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

