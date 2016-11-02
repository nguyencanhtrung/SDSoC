puts "Running ipi tcl"
puts "Running ipi tcl"
open_project /home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease/_sds/p0/ipi/zed.xpr
set_param cg.skipHiddenCheck true
set_property ip_repo_paths {/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease/_sds/iprepo/repo /opt/Xilinx/SDSoC/2014.4/data/ip/xilinx} [current_fileset]
set_param bd.skipSupportedIPCheck true
update_ip_catalog -rebuild
close_project
open_project /home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease/_sds/p0/ipi/zed.xpr
set_param bd.get_bd_obj.warning_on_empty_result true
set_param bd.propagate.allow_set_readonly_param true
source top.bd.tcl
regenerate_bd_layout
write_bd_tcl -force top_flat.bd.tcl
save_bd_design
report_ip_status
validate_bd_design
generate_target all [get_files *.bd]
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
set bitstream [get_property top [current_fileset]].bit
set directory [get_property directory [current_run]]
file copy -force [file join $directory $bitstream] [file join $directory bitstream.bit]
open_bd_design [get_files *.bd]
open_run impl_1
file mkdir /home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease/_sds/p0/ipi/zed.sdk
write_hwdef -force -file /home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease/_sds/p0/ipi/zed.sdk/zed.hdf
