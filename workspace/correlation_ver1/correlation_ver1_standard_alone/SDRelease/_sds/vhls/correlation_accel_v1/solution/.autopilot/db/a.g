#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls/correlation_accel_v1/solution/.autopilot/db/a.g.bc ${1+"$@"}
