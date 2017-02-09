open_project correlation_accel_v4
set_top correlation_accel_v4
add_files /home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls/src/correlation_accel_v4.cpp -cflags "-I/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src -Wall -O3 -fmessage-length=0 -MMD -MP -D __SDSCC__ -I/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src -D __SDSVHLS__ -I /home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 8.5
config_rtl -reset_level low
# end synthesis directives
csynth_design
export_design -acc
