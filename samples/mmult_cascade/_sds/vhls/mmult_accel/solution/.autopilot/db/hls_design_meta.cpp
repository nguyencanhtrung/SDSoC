#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("in_A_dout", 32, hls_in, 0, "ap_fifo", "fifo_data", 256),
	Port_Property("in_A_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 256),
	Port_Property("in_A_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 256),
	Port_Property("in_B_dout", 32, hls_in, 1, "ap_fifo", "fifo_data", 256),
	Port_Property("in_B_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 256),
	Port_Property("in_B_read", 1, hls_out, 1, "ap_fifo", "fifo_update", 256),
	Port_Property("out_C_din", 32, hls_out, 2, "ap_fifo", "fifo_data", 256),
	Port_Property("out_C_full_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 256),
	Port_Property("out_C_write", 1, hls_out, 2, "ap_fifo", "fifo_update", 256),
};
const char* HLS_Design_Meta::dut_name = "mmult_accel";
