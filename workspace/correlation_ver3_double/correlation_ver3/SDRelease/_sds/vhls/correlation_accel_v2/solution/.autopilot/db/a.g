#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/trungnguyen/SDSoC/workspace/correlation_ver3_double/correlation_ver3/SDRelease/_sds/vhls/correlation_accel_v2/solution/.autopilot/db/a.g.bc ${1+"$@"}