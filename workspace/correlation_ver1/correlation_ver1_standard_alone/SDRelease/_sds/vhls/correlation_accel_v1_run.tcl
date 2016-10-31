open_project correlation_accel_v1
set_top correlation_accel_v1
add_files /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls/src/correlation_accel_v1.cpp -cflags "-I/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/src -Wall -O3 -fmessage-length=0 -MMD -MP -D __SDSCC__ -I/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/src -D __SDSVHLS__ -I /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 5.95
config_rtl -reset_level low
# end synthesis directives
csynth_design
export_design -acc
