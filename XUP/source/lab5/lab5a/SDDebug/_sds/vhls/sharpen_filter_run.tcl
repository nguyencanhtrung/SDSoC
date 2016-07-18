open_project sharpen_filter
set_top sharpen_filter
add_files C:/xup/SDSoC/labs/lab5a/src/sharpen.c -cflags "-IC:/xup/SDSoC/labs/lab5a/src -Wall -O0 -g -fmessage-length=0 -MMD -MP -D __SDSCC__ -I C:/Xilinx/SDSoC/2015.4/arm-xilinx-linux-gnueabi/include -IC:/xup/SDSoC/labs/lab5a/src -D __SDSVHLS__ -I C:/xup/SDSoC/labs/lab5a/SDDebug -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 5.95000085
config_rtl -reset_level low
source C:/xup/SDSoC/labs/lab5a/SDDebug/_sds/vhls/sharpen_filter.tcl
# end synthesis directives
csynth_design
export_design -acc