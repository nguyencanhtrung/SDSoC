================================================================================
Example SDI platform with a UIO library and peripheral.

This simple platform shows how to incorporate a UIO driver for IP within an
SDSoC platform.  The platform employs the Vivado axi_gpio IP to provide software
access to the LEDs on a zc702 board.  Although this IP has a Linux kernel
driver, for this platform we provide a Linux UIO (userspace I/O) driver. Replace
the axi_gpio IP by the IP appropriate for your platform.

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
create_project -force zc702_led vivado -part xc7z020clg484-1
set_property BOARD_PART xilinx.com:zc702:part0:0.9 [current_project]

set_property ip_repo_paths {repo} [current_fileset]
set_param ips.overrideSupersededIPLock true
set_param bd.skipSupportedIPCheck true
update_ip_catalog -rebuild
# zc702_led end

2. At the end of the script append the following:

# zc702_led start - archive to encapsulate all IP
make_wrapper -files "[get_files [file join vivado zc702_led.srcs sources_1 bd zc702_led zc702_led.bd]]" -top
add_files -norecurse [file join vivado zc702_led.srcs sources_1 bd zc702_led hdl zc702_led_wrapper.v]
add_files -fileset constrs_1 -norecurse zc702_led.xdc
import_files -fileset constrs_1 zc702_led.xdc
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
if {![llength [info vars pf]]} {
  set pf "zc702_led"
}
set_param project.enablePlatformHandoff true
set_property BD_ATTRIBUTE.SDI_PFM_CLOCK TRUE [get_bd_pins /ps7/FCLK_CLK2]
set_property BD_ATTRIBUTE.SDI_PFM_CLOCK_ID 2 [get_bd_pins /ps7/FCLK_CLK2]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /ps7/FCLK_CLK2]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /proc_sys_reset_2/interconnect_aresetn]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /proc_sys_reset_2/peripheral_aresetn]
set_property BD_ATTRIBUTE.MARK_SDI true [get_bd_pins /proc_sys_reset_2/peripheral_reset]
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
archive_project zc702_led.xpr.zip -force
archive_project zc702_led.xpr.zip -force
# zc702_led end

================================================================================

To build the hardware platform, open an SDSoC terminal console and execute the
following.

1. 'make vivado'  which builds the Vivado project, marks platform interfaces,
and exports the project for the hsi utility within SDSoC.

2. Run 'hsi'
   hsi% open_hw_design "vivado/zc702_led.sdk/zc702_led_wrapper.hdf"
   hsi% generate_target {sdi} [current_hw_design] -dir hsm

================================================================================

To build the SDSoC platform, run 'make zc702_led'.

================================================================================

To test the SDSoC platform, run 'make -C test', which will create an SD card
image in test/sd_card.  Copy this directory onto an SD card, and insert into a
zc702 configured to boot from SD.  

After Linux boots, at the prompt, run '/mnt/zc702_led_test.elf'.  This simple
application copies an array argument using an HLS hardware function within a
loop, lighting the LEDs on the zc702 to indicate the loop index.


