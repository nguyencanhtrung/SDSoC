#include "cf_lib.h"
#include "cf_request.h"
#include "devreg.h"

#include "portinfo.h"

#include "stdio.h"  // for printf

#include "xlnk_core_cf.h"
#include "accel_info.h"
#include "axi_dma_sg_dm.h"
#include "axi_lite_dm.h"

extern accel_info_t _sds__p0_mmult_accel_0;

axi_dma_sg_channel_info_t _p0_datamover_0_channel_send = {
  .name = "xilinx-axidma.0chan0",
  .state = 0
};

axi_dma_sg_channel_info_t _p0_datamover_0_channel_receive = {
  .name = "xilinx-axidma.0chan1",
  .state = 0
};

axi_lite_info_t _p0_swinst_mmult_accel_0_cmd_mmult_accel_info = {
  .accel_info = &_sds__p0_mmult_accel_0,
  .reg_name = "0x28"
};

axi_dma_sg_transaction_info_t _p0_swinst_mmult_accel_0_in_A_PORTA_info = {
  .dma_channel_info = &_p0_datamover_0_channel_send,
  .port_id = 0,
  .flag = (0)
};

axi_dma_sg_transaction_info_t _p0_swinst_mmult_accel_0_in_B_PORTA_info = {
  .dma_channel_info = &_p0_datamover_0_channel_send,
  .port_id = 1,
  .flag = (0)
};

axi_dma_sg_transaction_info_t _p0_swinst_mmult_accel_0_out_C_PORTA_info = {
  .dma_channel_info = &_p0_datamover_0_channel_receive,
  .port_id = 0,
  .flag = (0)
};

struct _p0_swblk_mmult_accel _p0_swinst_mmult_accel_0 = {
  .cmd_mmult_accel = { .base = { 
		.channel_info = &_p0_swinst_mmult_accel_0_cmd_mmult_accel_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .in_A_PORTA = { .base = { 
		.channel_info = &_p0_swinst_mmult_accel_0_in_A_PORTA_info, 
		.open_i = &axi_dma_sg_open, 
		.close_i = &axi_dma_sg_close },
		.send_i = &axi_dma_sg_send_i },
  .in_B_PORTA = { .base = { 
		.channel_info = &_p0_swinst_mmult_accel_0_in_B_PORTA_info, 
		.open_i = &axi_dma_sg_open, 
		.close_i = &axi_dma_sg_close },
		.send_i = &axi_dma_sg_send_i },
  .out_C_PORTA = { .base = { 
		.channel_info = &_p0_swinst_mmult_accel_0_out_C_PORTA_info, 
		.open_i = &axi_dma_sg_open, 
		.close_i = &axi_dma_sg_close },
		.receive_ref_i = 0,
		.receive_i = &axi_dma_sg_recv_i },
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
  accel_open(&_sds__p0_mmult_accel_0);
  _p0_cf_open_port( &_p0_swinst_mmult_accel_0.cmd_mmult_accel.base );
  _p0_cf_open_port( &_p0_swinst_mmult_accel_0.in_A_PORTA.base );
  _p0_cf_open_port( &_p0_swinst_mmult_accel_0.in_B_PORTA.base );
  _p0_cf_open_port( &_p0_swinst_mmult_accel_0.out_C_PORTA.base );
}

void _p0_cf_framework_close(int last)
{
  cf_close_i( &_p0_swinst_mmult_accel_0.cmd_mmult_accel, NULL);
  cf_close_i( &_p0_swinst_mmult_accel_0.in_A_PORTA, NULL);
  cf_close_i( &_p0_swinst_mmult_accel_0.in_B_PORTA, NULL);
  cf_close_i( &_p0_swinst_mmult_accel_0.out_C_PORTA, NULL);
  accel_close(&_sds__p0_mmult_accel_0);
  _p0_cf_unregister(last);
}

