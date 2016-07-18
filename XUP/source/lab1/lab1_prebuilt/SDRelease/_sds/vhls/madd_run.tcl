open_project madd
set_top madd
add_files C:/xup/SDSoC/labs/lab1_prebuilt/src/madd.cpp -cflags "-IC:/xup/SDSoC/labs/lab1_prebuilt/src -Wall -O3 -fmessage-length=0 -MMD -MP -D __SDSCC__ -I C:/Xilinx/SDSoC/2015.4/arm-xilinx-linux-gnueabi/include -IC:/xup/SDSoC/labs/lab1_prebuilt/src -D __SDSVHLS__ -I C:/xup/SDSoC/labs/lab1_prebuilt/SDRelease -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 5.95000085
config_rtl -reset_level low
source C:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls/madd.tcl
# end synthesis directives
csynth_design
export_design -acc
