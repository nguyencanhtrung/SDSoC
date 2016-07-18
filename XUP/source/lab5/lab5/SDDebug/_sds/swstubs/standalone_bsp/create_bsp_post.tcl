hsi::open_hw_design C:/xup/SDSoC/labs/lab5/SDDebug/_sds/p0/ipi/zed.sdk/zed.hdf
set hw_design [hsi::current_hw_design]
hsi::generate_bsp -dir C:/xup/SDSoC/labs/lab5/SDDebug/_sds/swstubs/standalone_bsp -sw_mss C:/xup/SDSoC/labs/lab5/SDDebug/_sds/swstubs/standalone_bsp/system.mss -compile
quit
