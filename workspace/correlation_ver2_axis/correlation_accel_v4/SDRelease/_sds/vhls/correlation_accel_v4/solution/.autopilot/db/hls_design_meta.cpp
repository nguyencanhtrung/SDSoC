#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("number_of_days", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("number_of_indices", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("in_indices_TDATA", 32, hls_in, 2, "axis", "in_data", 1),
	Port_Property("in_indices_TKEEP", 4, hls_in, 3, "axis", "in_data", 1),
	Port_Property("in_indices_TSTRB", 4, hls_in, 4, "axis", "in_data", 1),
	Port_Property("in_indices_TUSER", 1, hls_in, 5, "axis", "in_data", 1),
	Port_Property("in_indices_TLAST", 1, hls_in, 6, "axis", "in_data", 1),
	Port_Property("in_indices_TID", 1, hls_in, 7, "axis", "in_data", 1),
	Port_Property("in_indices_TDEST", 1, hls_in, 8, "axis", "in_data", 1),
	Port_Property("out_correlation_TDATA", 32, hls_out, 9, "axis", "out_data", 1),
	Port_Property("out_correlation_TKEEP", 4, hls_out, 10, "axis", "out_data", 1),
	Port_Property("out_correlation_TSTRB", 4, hls_out, 11, "axis", "out_data", 1),
	Port_Property("out_correlation_TUSER", 1, hls_out, 12, "axis", "out_data", 1),
	Port_Property("out_correlation_TLAST", 1, hls_out, 13, "axis", "out_data", 1),
	Port_Property("out_correlation_TID", 1, hls_out, 14, "axis", "out_data", 1),
	Port_Property("out_correlation_TDEST", 1, hls_out, 15, "axis", "out_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("in_indices_TVALID", 1, hls_in, 8, "axis", "in_vld", 1),
	Port_Property("in_indices_TREADY", 1, hls_out, 8, "axis", "in_acc", 1),
	Port_Property("out_correlation_TVALID", 1, hls_out, 15, "axis", "out_vld", 1),
	Port_Property("out_correlation_TREADY", 1, hls_in, 15, "axis", "out_acc", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "correlation_accel_v4";
