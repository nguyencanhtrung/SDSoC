mmult_static_lib
================

This project shows how to build a static library using APFCC for later use in
GCC. The main objective is to show how one can create a fixed boot image that
inclides an FPGA bitstream that can be used by code that gets compiles with GCC
(as opposed to APFCC). This code will compile fast and will not change the
functions implemented in hardware.

The 'build' directory contains:
 + mmult_accel.cpp - Kernel code to be impleneted in PL 
 + mmult_accel.h - Header file for PL Kernel
 + mmult_call.c - Code that calls the Kernel. This is used by APFCC to
                  determine the data motion network.
 + Makefile - Builds the project using APFCC

After building the project, these files will be generated:
 + mmult_accel.elf - Executable file that uses the Kernel
 + _apfcc/swstubs/libmmult_accel.a - Static library suitable for usage in GCC
 + sd_card - Directory containing an SD card image for booting the board

The 'use' directory contains:
 + include/mmult_accel.h - Required header (copy from the 'build' directory)
 + lib/libmmult_accel.a - Copy of file generated on the 'build' directory
 + mmult.cpp - Code to call the fixed Kernel
 + Makefile - Build the project using GCC
