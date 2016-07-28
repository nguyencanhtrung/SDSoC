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
extern axi_dma_simple_info_t _p0_datamover_2;
extern axi_dma_simple_info_t _p0_datamover_3;
extern accel_info_t _sds__p0_madd_0;
extern accel_info_t _sds__p0_mmult_0;

axi_lite_info_t _p0_swinst_madd_0_cmd_madd_info = {
  .accel_info = &_sds__p0_madd_0,
  .reg_name = "0x28"
};

axi_dma_simple_channel_info_t _p0_swinst_madd_0_B_PORTA_info = {
  .dma_info = &_p0_datamover_2,
  .in_use = 0,
  .needs_cache_flush_invalidate = 0
};

axi_dma_simple_channel_info_t _p0_swinst_madd_0_C_PORTA_info = {
  .dma_info = &_p0_datamover_3,
  .in_use = 0,
  .needs_cache_flush_invalidate = 0
};

axi_lite_info_t _p0_swinst_mmult_0_cmd_mmult_info = {
  .accel_info = &_sds__p0_mmult_0,
  .reg_name = "0x28"
};

axi_dma_simple_channel_info_t _p0_swinst_mmult_0_in_A_info = {
  .dma_info = &_p0_datamover_1,
  .in_use = 0,
  .needs_cache_flush_invalidate = 0
};

axi_dma_simple_channel_info_t _p0_swinst_mmult_0_in_B_info = {
  .dma_info = &_p0_datamover_0,
  .in_use = 0,
  .needs_cache_flush_invalidate = 0
};

struct _p0_swblk_madd _p0_swinst_madd_0 = {
  .cmd_madd = { .base = { 
		.channel_info = &_p0_swinst_madd_0_cmd_madd_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .B_PORTA = { .base = { 
		.channel_info = &_p0_swinst_madd_0_B_PORTA_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.send_i = &axi_dma_simple_send_i },
  .C_PORTA = { .base = { 
		.channel_info = &_p0_swinst_madd_0_C_PORTA_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.receive_ref_i = 0,
		.receive_i = &axi_dma_simple_recv_i },
};

struct _p0_swblk_mmult _p0_swinst_mmult_0 = {
  .cmd_mmult = { .base = { 
		.channel_info = &_p0_swinst_mmult_0_cmd_mmult_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .in_A = { .base = { 
		.channel_info = &_p0_swinst_mmult_0_in_A_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.send_i = &axi_dma_simple_send_i },
  .in_B = { .base = { 
		.channel_info = &_p0_swinst_mmult_0_in_B_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.send_i = &axi_dma_simple_send_i },
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
  accel_open(&_sds__p0_madd_0);
  accel_open(&_sds__p0_mmult_0);
  _p0_cf_open_port( &_p0_swinst_madd_0.cmd_madd.base );
  _p0_cf_open_port( &_p0_swinst_madd_0.B_PORTA.base );
  _p0_cf_open_port( &_p0_swinst_madd_0.C_PORTA.base );
  _p0_cf_open_port( &_p0_swinst_mmult_0.cmd_mmult.base );
  _p0_cf_open_port( &_p0_swinst_mmult_0.in_A.base );
  _p0_cf_open_port( &_p0_swinst_mmult_0.in_B.base );
}

void _p0_cf_framework_close(int last)
{
  cf_close_i( &_p0_swinst_madd_0.cmd_madd, NULL);
  cf_close_i( &_p0_swinst_madd_0.B_PORTA, NULL);
  cf_close_i( &_p0_swinst_madd_0.C_PORTA, NULL);
  cf_close_i( &_p0_swinst_mmult_0.cmd_mmult, NULL);
  cf_close_i( &_p0_swinst_mmult_0.in_A, NULL);
  cf_close_i( &_p0_swinst_mmult_0.in_B, NULL);
  accel_close(&_sds__p0_madd_0);
  accel_close(&_sds__p0_mmult_0);
  _p0_cf_unregister(last);
}

