open_project C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.xpr
open_bd_design [get_files *.bd]
open_run impl_1
file mkdir C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.sdk
write_hwdef -force -file C:/labs/lab1_prebuilt/SDRelease/_sds/p0/ipi/zc702.sdk/zc702.hdf
