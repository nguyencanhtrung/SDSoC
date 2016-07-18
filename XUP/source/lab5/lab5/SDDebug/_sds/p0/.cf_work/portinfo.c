#include "cf_lib.h"
#include "cf_request.h"
#include "devreg.h"

#include "portinfo.h"

#include "stdio.h"  // for printf

#include "xlnk_core_cf.h"
#include "accel_info.h"
#include "axi_dma_simple_dm.h"
#include "axi_lite_dm.h"

extern axi_dma_simple_info_t _p0_dm_0;
extern axi_dma_simple_info_t _p0_dm_1;
extern accel_info_t _sds__p0_sharpen_filter_0;

axi_lite_info_t _p0_swinst_sharpen_filter_0_cmd_sharpen_filter_info = {
  .accel_info = &_sds__p0_sharpen_filter_0,
  .reg_name = "0x28"
};

axi_dma_simple_channel_info_t _p0_swinst_sharpen_filter_0_input_r_info = {
  .dma_info = &_p0_dm_0,
  .in_use = 0,
  .needs_cache_flush_invalidate = 1
};

axi_dma_simple_channel_info_t _p0_swinst_sharpen_filter_0_output_r_info = {
  .dma_info = &_p0_dm_1,
  .in_use = 0,
  .needs_cache_flush_invalidate = 1
};

axi_lite_info_t _p0_swinst_sharpen_filter_0_ap_return_info = {
  .accel_info = &_sds__p0_sharpen_filter_0,
  .reg_name = "0xC0"
};

struct _p0_swblk_sharpen_filter _p0_swinst_sharpen_filter_0 = {
  .cmd_sharpen_filter = { .base = { 
		.channel_info = &_p0_swinst_sharpen_filter_0_cmd_sharpen_filter_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .input_r = { .base = { 
		.channel_info = &_p0_swinst_sharpen_filter_0_input_r_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.send_i = &axi_dma_simple_send_i },
  .output_r = { .base = { 
		.channel_info = &_p0_swinst_sharpen_filter_0_output_r_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.receive_ref_i = 0,
		.receive_i = &axi_dma_simple_recv_i },
  .ap_return = { .base = { 
		.channel_info = &_p0_swinst_sharpen_filter_0_ap_return_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.receive_i = &axi_lite_recv },
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
  accel_open(&_sds__p0_sharpen_filter_0);
  _p0_cf_open_port( &_p0_swinst_sharpen_filter_0.cmd_sharpen_filter.base );
  _p0_cf_open_port( &_p0_swinst_sharpen_filter_0.input_r.base );
  _p0_cf_open_port( &_p0_swinst_sharpen_filter_0.output_r.base );
  _p0_cf_open_port( &_p0_swinst_sharpen_filter_0.ap_return.base );
}

void _p0_cf_framework_close(int last)
{
  cf_close_i( &_p0_swinst_sharpen_filter_0.cmd_sharpen_filter, NULL);
  cf_close_i( &_p0_swinst_sharpen_filter_0.input_r, NULL);
  cf_close_i( &_p0_swinst_sharpen_filter_0.output_r, NULL);
  cf_close_i( &_p0_swinst_sharpen_filter_0.ap_return, NULL);
  accel_close(&_sds__p0_sharpen_filter_0);
  _p0_cf_unregister(last);
}

