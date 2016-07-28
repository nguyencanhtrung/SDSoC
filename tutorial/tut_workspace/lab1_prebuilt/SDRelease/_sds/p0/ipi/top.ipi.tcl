puts "Running ipi tcl"
open_project C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.xpr
set_param cg.skipHiddenCheck true
set_property ip_repo_paths {C:/labs/lab1_prebuilt/SDRelease/_sds/iprepo/repo C:/Xilinx/SDSoC/2014.4/data/ip/xilinx} [current_fileset]
set_param bd.skipSupportedIPCheck true
update_ip_catalog -rebuild
close_project
open_project C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.xpr
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
file mkdir C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.sdk
write_hwdef -force -file C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.sdk/zc702.hdf
close_project