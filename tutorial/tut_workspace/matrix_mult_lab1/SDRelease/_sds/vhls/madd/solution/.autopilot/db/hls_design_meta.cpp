#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("A_Addr_A", 32, hls_out, 0, "bram", "mem_address", 1),
	Port_Property("A_EN_A", 1, hls_out, 0, "bram", "mem_ce", 1),
	Port_Property("A_WEN_A", 4, hls_out, 0, "bram", "mem_we", 1),
	Port_Property("A_Din_A", 32, hls_out, 0, "bram", "mem_din", 1),
	Port_Property("A_Dout_A", 32, hls_in, 0, "bram", "mem_dout", 1),
	Port_Property("A_Clk_A", 1, hls_out, 0, "bram", "mem_clk", 1),
	Port_Property("A_Rst_A", 1, hls_out, 0, "bram", "mem_rst", 1),
	Port_Property("B_Addr_A", 32, hls_out, 1, "bram", "mem_address", 1),
	Port_Property("B_EN_A", 1, hls_out, 1, "bram", "mem_ce", 1),
	Port_Property("B_WEN_A", 4, hls_out, 1, "bram", "mem_we", 1),
	Port_Property("B_Din_A", 32, hls_out, 1, "bram", "mem_din", 1),
	Port_Property("B_Dout_A", 32, hls_in, 1, "bram", "mem_dout", 1),
	Port_Property("B_Clk_A", 1, hls_out, 1, "bram", "mem_clk", 1),
	Port_Property("B_Rst_A", 1, hls_out, 1, "bram", "mem_rst", 1),
	Port_Property("C_Addr_A", 32, hls_out, 2, "bram", "mem_address", 1),
	Port_Property("C_EN_A", 1, hls_out, 2, "bram", "mem_ce", 1),
	Port_Property("C_WEN_A", 4, hls_out, 2, "bram", "mem_we", 1),
	Port_Property("C_Din_A", 32, hls_out, 2, "bram", "mem_din", 1),
	Port_Property("C_Dout_A", 32, hls_in, 2, "bram", "mem_dout", 1),
	Port_Property("C_Clk_A", 1, hls_out, 2, "bram", "mem_clk", 1),
	Port_Property("C_Rst_A", 1, hls_out, 2, "bram", "mem_rst", 1),
};
const char* HLS_Design_Meta::dut_name = "madd";
