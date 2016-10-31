#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls/correlation_accel_v1/solution/.autopilot/db/a.g.bc ${1+"$@"}
