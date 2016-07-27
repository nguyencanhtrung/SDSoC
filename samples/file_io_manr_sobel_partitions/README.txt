File IO Manr and Sobel Example for the MicroZed Board
=====================================================

This sample application shows how to implement the File IO Manr-Sobel
application on a platform with a small Zynq device.

A "Partition" in SDSoC is a programmable logic configuration. Partitions as
implemented as bitstreams. These bitstreams are loaded and used on demand at
different points in time, when the executing prgoram requires it, by taking
advantage of the programmable logic run-time reconfiguration capability.

There are times in which the functions implemented in programmable logic result
in a design will not fit on the available programmable logic in a device. Other
times it may be difficult to meet timing. When this happens, it is often
possible to break up the design into multiple partitions that can be used at
different points in time when the application is executed on the device.

In this example, we use the MicroZed platform, which contains a small device,
and we implement two functions in programmable logic. Since these two functions
do not fit at the same time in the available programmable logic, we break up
the design into two partitions.

By default, all functions that are implemented in programmable logic are
assigned to partition 0 (zero). By simply assigning functions to another
partition, that new partition will be created along with partition 0. In this
example, we assign the sobel_filter() function call in the top.cpp file to
partiton 1 by using the "SDS partition" pragma.

  #pragma SDS partition (1)
      sobel_filter(yc_out_tmp, out_frames[frame]);

The manr() function has no pragma and will remain in partition 0.

SDSoC will implement two bitstreams, one for each partition. The required
bitstream will be automatically loaded to the programmable logic at runtime
when the corresponding function gets executed.

