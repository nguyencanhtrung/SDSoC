#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls/mmult/solution/.autopilot/db/a.g.bc ${1+"$@"}