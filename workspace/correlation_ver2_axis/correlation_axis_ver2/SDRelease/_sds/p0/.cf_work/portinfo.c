#include "cf_lib.h"
#include "cf_request.h"
#include "devreg.h"

#include "portinfo.h"

#include "stdio.h"  // for printf

#include "xlnk_core_cf.h"
#include "accel_info.h"
#include "axi_dma_simple_dm.h"
#include "axi_lite_dm.h"

extern axi_dma_simple_info_t _p0_datamover_0;
extern axi_dma_simple_info_t _p0_datamover_1;
extern accel_info_t _sds__p0_correlation_accel_v2_0;

axi_lite_info_t _p0_swinst_correlation_accel_v2_0_cmd_correlation_accel_v2_info = {
  .accel_info = &_sds__p0_correlation_accel_v2_0,
  .reg_name = "0x28"
};

axi_lite_info_t _p0_swinst_correlation_accel_v2_0_number_of_days_info = {
  .accel_info = &_sds__p0_correlation_accel_v2_0,
  .reg_name = "0x80"
};

axi_lite_info_t _p0_swinst_correlation_accel_v2_0_number_of_indices_info = {
  .accel_info = &_sds__p0_correlation_accel_v2_0,
  .reg_name = "0x84"
};

axi_dma_simple_channel_info_t _p0_swinst_correlation_accel_v2_0_in_indices_info = {
  .dma_info = &_p0_datamover_0,
  .in_use = 0,
  .needs_cache_flush_invalidate = 1
};

axi_dma_simple_channel_info_t _p0_swinst_correlation_accel_v2_0_out_correlation_info = {
  .dma_info = &_p0_datamover_1,
  .in_use = 0,
  .needs_cache_flush_invalidate = 1
};

struct _p0_swblk_correlation_accel_v2 _p0_swinst_correlation_accel_v2_0 = {
  .cmd_correlation_accel_v2 = { .base = { 
		.channel_info = &_p0_swinst_correlation_accel_v2_0_cmd_correlation_accel_v2_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .number_of_days = { .base = { 
		.channel_info = &_p0_swinst_correlation_accel_v2_0_number_of_days_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .number_of_indices = { .base = { 
		.channel_info = &_p0_swinst_correlation_accel_v2_0_number_of_indices_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .in_indices = { .base = { 
		.channel_info = &_p0_swinst_correlation_accel_v2_0_in_indices_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.send_i = &axi_dma_simple_send_i },
  .out_correlation = { .base = { 
		.channel_info = &_p0_swinst_correlation_accel_v2_0_out_correlation_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.receive_ref_i = 0,
		.receive_i = &axi_dma_simple_recv_i },
};

void _p0_cf_open_port (cf_port_base_t *port)
{
  port->open_i(port, NULL);
}

void _p0_cf_framework_open(int first)
{
  cf_context_init();
  xlnkCounterMap();
  _p0_cf_register(first);
  cf_get_current_context();
  accel_open(&_sds__p0_correlation_accel_v2_0);
  _p0_cf_open_port( &_p0_swinst_correlation_accel_v2_0.cmd_correlation_accel_v2.base );
  _p0_cf_open_port( &_p0_swinst_correlation_accel_v2_0.number_of_days.base );
  _p0_cf_open_port( &_p0_swinst_correlation_accel_v2_0.number_of_indices.base );
  _p0_cf_open_port( &_p0_swinst_correlation_accel_v2_0.in_indices.base );
  _p0_cf_open_port( &_p0_swinst_correlation_accel_v2_0.out_correlation.base );
}

void _p0_cf_framework_close(int last)
{
  cf_close_i( &_p0_swinst_correlation_accel_v2_0.cmd_correlation_accel_v2, NULL);
  cf_close_i( &_p0_swinst_correlation_accel_v2_0.number_of_days, NULL);
  cf_close_i( &_p0_swinst_correlation_accel_v2_0.number_of_indices, NULL);
  cf_close_i( &_p0_swinst_correlation_accel_v2_0.in_indices, NULL);
  cf_close_i( &_p0_swinst_correlation_accel_v2_0.out_correlation, NULL);
  accel_close(&_sds__p0_correlation_accel_v2_0);
  _p0_cf_unregister(last);
}

