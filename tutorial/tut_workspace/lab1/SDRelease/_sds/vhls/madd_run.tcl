open_project madd
set_top madd
add_files /home/trungnguyen/SDSoC/tutorial/tut_workspace/lab1/SDRelease/_sds/vhls/src/madd.cpp -cflags "-I/home/trungnguyen/SDSoC/tutorial/tut_workspace/lab1/src -Wall -O3 -fmessage-length=0 -MMD -MP -D __SDSCC__ -I/home/trungnguyen/SDSoC/tutorial/tut_workspace/lab1/src -D __SDSVHLS__ -I /home/trungnguyen/SDSoC/tutorial/tut_workspace/lab1/SDRelease -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 5.95
config_rtl -reset_level low
# end synthesis directives
csynth_design
export_design -acc
