#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/_sds/vhls/correlation_accel_v4/solution/.autopilot/db/a.g.bc ${1+"$@"}
