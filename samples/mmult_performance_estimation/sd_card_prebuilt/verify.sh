SW=`grep mmult_accel sw_perf_data.xml |awk '{print $3}'|grep -o '[0-9]\+'`
MIN_SW=179200000
MAX_SW=184320000

if [ $MIN_SW -lt $SW ] && [ $SW -lt $MAX_SW ]; then
    echo "PASS: Profile data within expexted range"
else
    echo "FAIL: Profile data out of expected range"
    exit 1
fi

