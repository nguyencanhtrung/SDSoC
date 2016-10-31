puts "Running ipi tcl"
open_project /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/p0/ipi/zed.xpr
set_param cg.skipHiddenCheck true
set_property ip_repo_paths {/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/iprepo/repo /opt/Xilinx/SDSoC/2014.4/data/ip/xilinx} [current_fileset]
set_param bd.skipSupportedIPCheck true
update_ip_catalog -rebuild
close_project
open_project /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/p0/ipi/zed.xpr
set_param bd.get_bd_obj.warning_on_empty_result true
set_param bd.propagate.allow_set_readonly_param true
source top.bd.tcl
regenerate_bd_layout
write_bd_tcl -force top_flat.bd.tcl
save_bd_design
report_ip_status
validate_bd_design
update_compile_order -fileset sim_1
update_compile_order -fileset sources_1
generate_target all [get_files -of_objects [get_fileset {sources_1}] *.bd]
file mkdir /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/p0/ipi/zed.sdk
write_hwdef -force -file /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/p0/ipi/zed.sdk/zed.hdf
close_project
