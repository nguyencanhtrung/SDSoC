open_project /home/trungnguyen/SDSoC/samples/mmult_optimized/_sds/p0/ipi/zed.xpr
open_bd_design [get_files *.bd]
open_run impl_1
file mkdir /home/trungnguyen/SDSoC/samples/mmult_optimized/_sds/p0/ipi/zed.sdk
write_hwdef -force -file /home/trungnguyen/SDSoC/samples/mmult_optimized/_sds/p0/ipi/zed.sdk/zed.hdf
