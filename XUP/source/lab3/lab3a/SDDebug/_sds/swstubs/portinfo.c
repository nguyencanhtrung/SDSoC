/* File: C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/p0/.cf_work/portinfo.c */
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
extern axi_dma_simple_info_t _p0_dm_2;
extern axi_dma_simple_info_t _p0_dm_3;
extern accel_info_t _sds__p0_sharpen_filter_0;
extern accel_info_t _sds__p0_sobel_filter_0;

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
  .dma_info = &_p0_dm_2,
  .in_use = 0,
  .needs_cache_flush_invalidate = 1
};

axi_lite_info_t _p0_swinst_sharpen_filter_0_ap_return_info = {
  .accel_info = &_sds__p0_sharpen_filter_0,
  .reg_name = "0xC0"
};

axi_lite_info_t _p0_swinst_sobel_filter_0_cmd_sobel_filter_info = {
  .accel_info = &_sds__p0_sobel_filter_0,
  .reg_name = "0x28"
};

axi_dma_simple_channel_info_t _p0_swinst_sobel_filter_0_input_r_info = {
  .dma_info = &_p0_dm_1,
  .in_use = 0,
  .needs_cache_flush_invalidate = 1
};

axi_dma_simple_channel_info_t _p0_swinst_sobel_filter_0_output_r_info = {
  .dma_info = &_p0_dm_3,
  .in_use = 0,
  .needs_cache_flush_invalidate = 1
};

axi_lite_info_t _p0_swinst_sobel_filter_0_ap_return_info = {
  .accel_info = &_sds__p0_sobel_filter_0,
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

struct _p0_swblk_sobel_filter _p0_swinst_sobel_filter_0 = {
  .cmd_sobel_filter = { .base = { 
		.channel_info = &_p0_swinst_sobel_filter_0_cmd_sobel_filter_info, 
		.open_i = &axi_lite_open, 
		.close_i = &axi_lite_close },
		.send_i = &axi_lite_send },
  .input_r = { .base = { 
		.channel_info = &_p0_swinst_sobel_filter_0_input_r_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.send_i = &axi_dma_simple_send_i },
  .output_r = { .base = { 
		.channel_info = &_p0_swinst_sobel_filter_0_output_r_info, 
		.open_i = &axi_dma_simple_open, 
		.close_i = &axi_dma_simple_close },
		.receive_ref_i = 0,
		.receive_i = &axi_dma_simple_recv_i },
  .ap_return = { .base = { 
		.channel_info = &_p0_swinst_sobel_filter_0_ap_return_info, 
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
  accel_open(&_sds__p0_sobel_filter_0);
  _p0_cf_open_port( &_p0_swinst_sharpen_filter_0.cmd_sharpen_filter.base );
  _p0_cf_open_port( &_p0_swinst_sharpen_filter_0.input_r.base );
  _p0_cf_open_port( &_p0_swinst_sharpen_filter_0.output_r.base );
  _p0_cf_open_port( &_p0_swinst_sharpen_filter_0.ap_return.base );
  _p0_cf_open_port( &_p0_swinst_sobel_filter_0.cmd_sobel_filter.base );
  _p0_cf_open_port( &_p0_swinst_sobel_filter_0.input_r.base );
  _p0_cf_open_port( &_p0_swinst_sobel_filter_0.output_r.base );
  _p0_cf_open_port( &_p0_swinst_sobel_filter_0.ap_return.base );
}

void _p0_cf_framework_close(int last)
{
  cf_close_i( &_p0_swinst_sharpen_filter_0.cmd_sharpen_filter, NULL);
  cf_close_i( &_p0_swinst_sharpen_filter_0.input_r, NULL);
  cf_close_i( &_p0_swinst_sharpen_filter_0.output_r, NULL);
  cf_close_i( &_p0_swinst_sharpen_filter_0.ap_return, NULL);
  cf_close_i( &_p0_swinst_sobel_filter_0.cmd_sobel_filter, NULL);
  cf_close_i( &_p0_swinst_sobel_filter_0.input_r, NULL);
  cf_close_i( &_p0_swinst_sobel_filter_0.output_r, NULL);
  cf_close_i( &_p0_swinst_sobel_filter_0.ap_return, NULL);
  accel_close(&_sds__p0_sharpen_filter_0);
  accel_close(&_sds__p0_sobel_filter_0);
  _p0_cf_unregister(last);
}

#define TOTAL_PARTITIONS 1
int current_partition_num = 0;
struct {
  void (*open)(int);
  void (*close)(int);
}

_ptable[TOTAL_PARTITIONS]  = {
    {.open = &_p0_cf_framework_open, .close= &_p0_cf_framework_close}, 
};

void switch_to_next_partition(int partition_num)
{
#ifdef __linux__
  if (current_partition_num != partition_num) {
    _ptable[current_partition_num].close(0);
    char buf[128];
    sprintf(buf, "cat /mnt/_sds/_p%d_.bin > /dev/xdevcfg", partition_num);
    system(buf);
    _ptable[partition_num].open(0);
    current_partition_num = partition_num;
  }
#endif
}

void init_first_partition() __attribute__ ((constructor));
void close_last_partition() __attribute__ ((destructor));
void init_first_partition()
{
    current_partition_num = 0;
    _ptable[current_partition_num].open(1);

    sds_trace_setup();
}


void close_last_partition()
{
#ifdef PERF_EST
    apf_perf_estimation_exit();
#endif
    sds_trace_cleanup();
    _ptable[current_partition_num].close(1);
    current_partition_num = 0;
}

