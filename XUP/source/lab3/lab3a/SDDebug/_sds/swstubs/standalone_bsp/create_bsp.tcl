hsi::open_hw_design C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/p0/ipi/zed.sdk/zed.hdf
set hw_design [hsi::current_hw_design]
hsi::generate_bsp -dir C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/swstubs/standalone_bsp/scratch -hw ${hw_design} -os standalone -proc ps7_cortexa9_0
quit
