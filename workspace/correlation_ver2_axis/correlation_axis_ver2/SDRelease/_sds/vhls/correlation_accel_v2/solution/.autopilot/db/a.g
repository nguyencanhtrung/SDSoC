#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease/_sds/vhls/correlation_accel_v2/solution/.autopilot/db/a.g.bc ${1+"$@"}