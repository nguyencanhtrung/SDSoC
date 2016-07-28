open_project mmult_accel
set_top mmult_accel
add_files /home/trungnguyen/SDSoC/samples/mmult_optimized/_sds/vhls/src/mmult_accel.cpp -cflags "-Wall -O3 -D __SDSCC__ -I/home/trungnguyen/SDSoC/samples/mmult_optimized -D __SDSVHLS__ -I /home/trungnguyen/SDSoC/samples/mmult_optimized -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 5.95
config_rtl -reset_level low
# end synthesis directives
csynth_design
export_design -acc
