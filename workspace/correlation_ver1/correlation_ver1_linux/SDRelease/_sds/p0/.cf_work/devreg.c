#include "cf_lib.h"
#include "cf_request.h"
#include "devreg.h"

#include "stdio.h"  // for getting printf
#include "xlnk_core_cf.h"
#include "accel_info.h"
#include "axi_lite_dm.h"
#include "zero_copy_dm.h"

accel_info_t _sds__p0_correlation_accel_v1_0 = {
  .device_id = 0,
  .phys_base_addr = 0x43c00000,
  .addr_range = 0x10000,
  .ip_type = "axis_acc_adapter"
};

void _p0_cf_register(int first)
{
  int xlnk_init_done = cf_xlnk_open(first);
  if (xlnk_init_done == 0) {
    accel_register(&_sds__p0_correlation_accel_v1_0);
    cf_xlnk_init(first);
  }
  else if (xlnk_init_done <0) {
    fprintf(stderr, "ERROR: unable to open xlnk %d\n", xlnk_init_done);
  }
  else {
  }
}

void _p0_cf_unregister(int last)
{
  accel_unregister(&_sds__p0_correlation_accel_v1_0);
  xlnkClose(last,NULL);
}
