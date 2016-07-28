open_project mmult
set_top mmult
add_files C:/labs/lab1_prebuilt/SDRelease/_sds/vhls/src/mmult.cpp -cflags "-IC:/labs/lab1_prebuilt/src -Wall -O3 -I../src -fmessage-length=0 -MMD -MP -D __SDSCC__ -IC:/labs/lab1_prebuilt/src -D __SDSVHLS__ -I C:/labs/lab1_prebuilt/SDRelease"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 8.5
config_rtl -reset_level low
# end synthesis directives
csynth_design
export_design -acc
