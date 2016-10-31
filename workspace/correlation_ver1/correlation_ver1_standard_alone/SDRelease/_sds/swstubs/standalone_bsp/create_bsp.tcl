hsi::open_hw_design /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/p0/ipi/zed.sdk/zed.hdf
set hw_design [hsi::current_hw_design]
hsi::generate_bsp -dir /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/swstubs/standalone_bsp -hw ${hw_design} -os standalone -proc ps7_cortexa9_0
quit
