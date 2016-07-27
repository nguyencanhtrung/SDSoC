// (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xylon:logicbricks:logicvc:3.01.a
// IP Revision: -1

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
top_logicvc_1_0 your_instance_name (
  .rst(rst),                      // input wire rst
  .vclk(vclk),                    // input wire vclk
  .M_AXI_ACLK(M_AXI_ACLK),        // input wire M_AXI_ACLK
  .M_AXI_ARESETN(M_AXI_ARESETN),  // input wire M_AXI_ARESETN
  .M_AXI_AWID(M_AXI_AWID),        // output wire [0 : 0] M_AXI_AWID
  .M_AXI_AWADDR(M_AXI_AWADDR),    // output wire [31 : 0] M_AXI_AWADDR
  .M_AXI_AWLEN(M_AXI_AWLEN),      // output wire [7 : 0] M_AXI_AWLEN
  .M_AXI_AWSIZE(M_AXI_AWSIZE),    // output wire [2 : 0] M_AXI_AWSIZE
  .M_AXI_AWBURST(M_AXI_AWBURST),  // output wire [1 : 0] M_AXI_AWBURST
  .M_AXI_AWLOCK(M_AXI_AWLOCK),    // output wire [1 : 0] M_AXI_AWLOCK
  .M_AXI_AWCACHE(M_AXI_AWCACHE),  // output wire [3 : 0] M_AXI_AWCACHE
  .M_AXI_AWPROT(M_AXI_AWPROT),    // output wire [2 : 0] M_AXI_AWPROT
  .M_AXI_AWQOS(M_AXI_AWQOS),      // output wire [3 : 0] M_AXI_AWQOS
  .M_AXI_AWVALID(M_AXI_AWVALID),  // output wire M_AXI_AWVALID
  .M_AXI_AWREADY(M_AXI_AWREADY),  // input wire M_AXI_AWREADY
  .M_AXI_WDATA(M_AXI_WDATA),      // output wire [63 : 0] M_AXI_WDATA
  .M_AXI_WSTRB(M_AXI_WSTRB),      // output wire [7 : 0] M_AXI_WSTRB
  .M_AXI_WLAST(M_AXI_WLAST),      // output wire M_AXI_WLAST
  .M_AXI_WVALID(M_AXI_WVALID),    // output wire M_AXI_WVALID
  .M_AXI_WREADY(M_AXI_WREADY),    // input wire M_AXI_WREADY
  .M_AXI_BID(M_AXI_BID),          // input wire [0 : 0] M_AXI_BID
  .M_AXI_BRESP(M_AXI_BRESP),      // input wire [1 : 0] M_AXI_BRESP
  .M_AXI_BVALID(M_AXI_BVALID),    // input wire M_AXI_BVALID
  .M_AXI_BREADY(M_AXI_BREADY),    // output wire M_AXI_BREADY
  .M_AXI_ARID(M_AXI_ARID),        // output wire [0 : 0] M_AXI_ARID
  .M_AXI_ARADDR(M_AXI_ARADDR),    // output wire [31 : 0] M_AXI_ARADDR
  .M_AXI_ARLEN(M_AXI_ARLEN),      // output wire [7 : 0] M_AXI_ARLEN
  .M_AXI_ARSIZE(M_AXI_ARSIZE),    // output wire [2 : 0] M_AXI_ARSIZE
  .M_AXI_ARBURST(M_AXI_ARBURST),  // output wire [1 : 0] M_AXI_ARBURST
  .M_AXI_ARLOCK(M_AXI_ARLOCK),    // output wire [1 : 0] M_AXI_ARLOCK
  .M_AXI_ARCACHE(M_AXI_ARCACHE),  // output wire [3 : 0] M_AXI_ARCACHE
  .M_AXI_ARPROT(M_AXI_ARPROT),    // output wire [2 : 0] M_AXI_ARPROT
  .M_AXI_ARQOS(M_AXI_ARQOS),      // output wire [3 : 0] M_AXI_ARQOS
  .M_AXI_ARVALID(M_AXI_ARVALID),  // output wire M_AXI_ARVALID
  .M_AXI_ARREADY(M_AXI_ARREADY),  // input wire M_AXI_ARREADY
  .M_AXI_RID(M_AXI_RID),          // input wire [0 : 0] M_AXI_RID
  .M_AXI_RDATA(M_AXI_RDATA),      // input wire [63 : 0] M_AXI_RDATA
  .M_AXI_RRESP(M_AXI_RRESP),      // input wire [1 : 0] M_AXI_RRESP
  .M_AXI_RLAST(M_AXI_RLAST),      // input wire M_AXI_RLAST
  .M_AXI_RVALID(M_AXI_RVALID),    // input wire M_AXI_RVALID
  .M_AXI_RREADY(M_AXI_RREADY),    // output wire M_AXI_RREADY
  .S_AXI_ACLK(S_AXI_ACLK),        // input wire S_AXI_ACLK
  .S_AXI_ARESETN(S_AXI_ARESETN),  // input wire S_AXI_ARESETN
  .S_AXI_AWADDR(S_AXI_AWADDR),    // input wire [31 : 0] S_AXI_AWADDR
  .S_AXI_AWVALID(S_AXI_AWVALID),  // input wire S_AXI_AWVALID
  .S_AXI_AWREADY(S_AXI_AWREADY),  // output wire S_AXI_AWREADY
  .S_AXI_WDATA(S_AXI_WDATA),      // input wire [31 : 0] S_AXI_WDATA
  .S_AXI_WSTRB(S_AXI_WSTRB),      // input wire [3 : 0] S_AXI_WSTRB
  .S_AXI_WVALID(S_AXI_WVALID),    // input wire S_AXI_WVALID
  .S_AXI_WREADY(S_AXI_WREADY),    // output wire S_AXI_WREADY
  .S_AXI_BRESP(S_AXI_BRESP),      // output wire [1 : 0] S_AXI_BRESP
  .S_AXI_BVALID(S_AXI_BVALID),    // output wire S_AXI_BVALID
  .S_AXI_BREADY(S_AXI_BREADY),    // input wire S_AXI_BREADY
  .S_AXI_ARADDR(S_AXI_ARADDR),    // input wire [31 : 0] S_AXI_ARADDR
  .S_AXI_ARVALID(S_AXI_ARVALID),  // input wire S_AXI_ARVALID
  .S_AXI_ARREADY(S_AXI_ARREADY),  // output wire S_AXI_ARREADY
  .S_AXI_RDATA(S_AXI_RDATA),      // output wire [31 : 0] S_AXI_RDATA
  .S_AXI_RRESP(S_AXI_RRESP),      // output wire [1 : 0] S_AXI_RRESP
  .S_AXI_RVALID(S_AXI_RVALID),    // output wire S_AXI_RVALID
  .S_AXI_RREADY(S_AXI_RREADY),    // input wire S_AXI_RREADY
  .pix_clk_i(pix_clk_i),          // input wire pix_clk_i
  .pix_clk_o(pix_clk_o),          // output wire pix_clk_o
  .pix_clk_t(pix_clk_t),          // output wire pix_clk_t
  .pix_clk_n_i(pix_clk_n_i),      // input wire pix_clk_n_i
  .pix_clk_n_o(pix_clk_n_o),      // output wire pix_clk_n_o
  .pix_clk_n_t(pix_clk_n_t),      // output wire pix_clk_n_t
  .d_pix_i(d_pix_i),              // input wire [15 : 0] d_pix_i
  .d_pix_o(d_pix_o),              // output wire [15 : 0] d_pix_o
  .d_pix_t(d_pix_t),              // output wire d_pix_t
  .hsync_i(hsync_i),              // input wire hsync_i
  .hsync_o(hsync_o),              // output wire hsync_o
  .hsync_t(hsync_t),              // output wire hsync_t
  .vsync_i(vsync_i),              // input wire vsync_i
  .vsync_o(vsync_o),              // output wire vsync_o
  .vsync_t(vsync_t),              // output wire vsync_t
  .blank_i(blank_i),              // input wire blank_i
  .blank_o(blank_o),              // output wire blank_o
  .blank_t(blank_t),              // output wire blank_t
  .e_curr_vbuff(e_curr_vbuff),    // input wire [5 : 0] e_curr_vbuff
  .e_next_vbuff(e_next_vbuff),    // output wire [5 : 0] e_next_vbuff
  .e_sw_vbuff(e_sw_vbuff),        // input wire [2 : 0] e_sw_vbuff
  .e_sw_grant(e_sw_grant),        // output wire [2 : 0] e_sw_grant
  .gpi(gpi),                      // input wire [4 : 0] gpi
  .gpo(gpo),                      // output wire [4 : 0] gpo
  .en_vdd(en_vdd),                // output wire en_vdd
  .en_blight(en_blight),          // output wire en_blight
  .v_en(v_en),                    // output wire v_en
  .en_vee(en_vee),                // output wire en_vee
  .interrupt(interrupt)          // output wire interrupt
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

