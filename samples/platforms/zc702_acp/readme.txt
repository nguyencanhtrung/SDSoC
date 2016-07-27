================================================================================
Example SDI platform with shared ACP port

This simple platform shows how to share a processing_system7 AXI port between an
SDSoC platform and generated system.  The platform shares the Accelerator
Coherent Port (S_AXI_ACP) by exporting a slave port on the connected
axi_interconnect IP.

For more detail on SDSoC platform requirements, and on this design, please refer
to the Tutorial Chapter 4 in ug-1146 SDSoC Platforms and Libraries in the
SDSoC docs directory.
================================================================================
The Makefile in this directory provides targets to build and test the platform.

In general, once you have built a platform hardware using Vivado IP Integrator
project, you can export a tcl script to rebuild the platform by executing in
the Vivado tcl console

       write_bd_tcl -force zc702_led.bd.tcl

While entirely optional, this approach simplifies revision control of platform
source files.

The flow to export a platform interface from Vivado to SDSoC is described in
UG1146.  To this end, we have modified the generated tcl script to mark the
SDSoC platform interface as follows.

1. After the Vivado version check, add:

# zc702_led start
create_project -force zc702_acp vivado -part xc7z020clg484-1
set_property BOARD_PART xilinx.com:zc702:part0:0.9 [current_project]

set_property ip_repo_paths {repo} [current_fileset]
set_param ips.overrideSupersededIPLock true
set_param bd.skipSupportedIPCheck true
update_ip_catalog -rebuild
# zc702_acp end

2. At the end of the script append the following:

# zc702_acp start - archive to encapsulate all IP
make_wrapper -files "[get_files [file join vivado zc702_acp.srcs sources_1 bd zc702_acp zc702_acp.bd]]" -top
add_files -norecurse [file join vivado zc702_acp.srcs sources_1 bd zc702_acp hdl zc702_acp_wrapper.v]
add_files -fileset constrs_1 -norecurse zc702_acp.xdc
import_files -fileset constrs_1 zc702_acp.xdc
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
if {![llength [info vars pf]]} {
  set pf "zc702_acp"
}
set_param project.enablePlatformHandoff true
set_property BD_ATTRIBUTE.SDI_PFM_CLOCK TRUE [get_bd_pins /ps7/FCLK_CLK2]
set_property BD_ATTRIBUTE.SDI_PFM_CLOCK_ID 2 [get_bd_pins /ps7/FCLK_CLK2]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /ps7/FCLK_CLK2]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /proc_sys_reset_2/interconnect_aresetn]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /proc_sys_reset_2/peripheral_aresetn]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /proc_sys_reset_2/peripheral_reset]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_intf_pins /axi_interconnect_0/S00_AXI]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /axi_interconnect_0/S00_ARESETN]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /axi_interconnect_0/S00_ACLK] 
reset_target all [get_files "[file join vivado ${pf}.srcs sources_1 bd ${pf} ${pf}.bd]"]
validate_bd_design
save_bd_design
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
file mkdir "[file join vivado ${pf}.sdk]"
write_hwdef  -file "[file join vivado ${pf}.sdk ${pf}_wrapper.hdf]"
file copy -force "[file join vivado ${pf}.runs impl_1 ${pf}_wrapper.sysdef]" "[file join vivado ${pf}.sdk ${pf}_wrapper.hdf]"
archive_project zc702_acp.xpr.zip -force
# zc702_acp end

================================================================================

To build the hardware platform, open an SDSoC terminal console and execute the
following.

1. 'make vivado'  which builds the Vivado project, marks platform interfaces,
and exports the project for the hsi utility within SDSoC.

2. Run 'hsi'
   hsi% open_hw_design "vivado/zc702_acp.sdk/zc702_acp_wrapper.hdf"
   hsi% generate_target {sdi} [current_hw_design] -dir hsm

3. cd into the vivado directory and run 'vivado zc702_acp.xpr'.  Open the block
diagram and delete the connection to /axi_interconnect_0/S00_ACLK.  You will
need to reconnect all of the other clock signals to the /ps7/FCLK_CLK2 source.

IMPORTANT: If you skip this step, you are forcing SDSoC to use the same clock as
your platform.  In this simple example it is not a problem (there is only one
clock), but in general, platform IP may need to run off of a completely
independent clock from the SDSoC generated IPs.  The axi_interconnect will
correctly handle clock domain crossing between platform IP and SDSoC IP, but
only if you disconnect this interconnect clock pin.

================================================================================

To build the SDSoC platform, run 'make zc702_acp'.

================================================================================

To test the SDSoC platform, run 'make -C pf_test', which will create an SD card
image in pf_test/sd_card.  Copy this directory onto an SD card, and insert into a
zc702 configured to boot from SD.  

After Linux boots, at the prompt, run '/mnt/zc702_acp_test.elf'.  This simple
application copies an array argument using an HLS hardware function within a
loop, lighting the LEDs on the zc702 to indicate the loop index.


