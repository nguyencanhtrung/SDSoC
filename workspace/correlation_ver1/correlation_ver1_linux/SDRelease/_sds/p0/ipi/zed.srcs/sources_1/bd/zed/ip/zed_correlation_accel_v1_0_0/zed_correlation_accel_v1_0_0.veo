// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
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

// IP VLNV: xilinx.com:hls:correlation_accel_v1:1.0
// IP Revision: 1610312038

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
zed_correlation_accel_v1_0_0 your_instance_name (
  .ap_clk(ap_clk),                                // input wire ap_clk
  .ap_rst_n(ap_rst_n),                            // input wire ap_rst_n
  .ap_start(ap_start),                            // input wire ap_start
  .ap_done(ap_done),                              // output wire ap_done
  .ap_idle(ap_idle),                              // output wire ap_idle
  .ap_ready(ap_ready),                            // output wire ap_ready
  .ap_return(ap_return),                          // output wire [31 : 0] ap_return
  .m_axi_gmem32_AWID(m_axi_gmem32_AWID),          // output wire [0 : 0] m_axi_gmem32_AWID
  .m_axi_gmem32_AWADDR(m_axi_gmem32_AWADDR),      // output wire [31 : 0] m_axi_gmem32_AWADDR
  .m_axi_gmem32_AWLEN(m_axi_gmem32_AWLEN),        // output wire [7 : 0] m_axi_gmem32_AWLEN
  .m_axi_gmem32_AWSIZE(m_axi_gmem32_AWSIZE),      // output wire [2 : 0] m_axi_gmem32_AWSIZE
  .m_axi_gmem32_AWBURST(m_axi_gmem32_AWBURST),    // output wire [1 : 0] m_axi_gmem32_AWBURST
  .m_axi_gmem32_AWLOCK(m_axi_gmem32_AWLOCK),      // output wire [1 : 0] m_axi_gmem32_AWLOCK
  .m_axi_gmem32_AWREGION(m_axi_gmem32_AWREGION),  // output wire [3 : 0] m_axi_gmem32_AWREGION
  .m_axi_gmem32_AWCACHE(m_axi_gmem32_AWCACHE),    // output wire [3 : 0] m_axi_gmem32_AWCACHE
  .m_axi_gmem32_AWPROT(m_axi_gmem32_AWPROT),      // output wire [2 : 0] m_axi_gmem32_AWPROT
  .m_axi_gmem32_AWQOS(m_axi_gmem32_AWQOS),        // output wire [3 : 0] m_axi_gmem32_AWQOS
  .m_axi_gmem32_AWVALID(m_axi_gmem32_AWVALID),    // output wire m_axi_gmem32_AWVALID
  .m_axi_gmem32_AWREADY(m_axi_gmem32_AWREADY),    // input wire m_axi_gmem32_AWREADY
  .m_axi_gmem32_WID(m_axi_gmem32_WID),            // output wire [0 : 0] m_axi_gmem32_WID
  .m_axi_gmem32_WDATA(m_axi_gmem32_WDATA),        // output wire [31 : 0] m_axi_gmem32_WDATA
  .m_axi_gmem32_WSTRB(m_axi_gmem32_WSTRB),        // output wire [3 : 0] m_axi_gmem32_WSTRB
  .m_axi_gmem32_WLAST(m_axi_gmem32_WLAST),        // output wire m_axi_gmem32_WLAST
  .m_axi_gmem32_WVALID(m_axi_gmem32_WVALID),      // output wire m_axi_gmem32_WVALID
  .m_axi_gmem32_WREADY(m_axi_gmem32_WREADY),      // input wire m_axi_gmem32_WREADY
  .m_axi_gmem32_BID(m_axi_gmem32_BID),            // input wire [0 : 0] m_axi_gmem32_BID
  .m_axi_gmem32_BRESP(m_axi_gmem32_BRESP),        // input wire [1 : 0] m_axi_gmem32_BRESP
  .m_axi_gmem32_BVALID(m_axi_gmem32_BVALID),      // input wire m_axi_gmem32_BVALID
  .m_axi_gmem32_BREADY(m_axi_gmem32_BREADY),      // output wire m_axi_gmem32_BREADY
  .m_axi_gmem32_ARID(m_axi_gmem32_ARID),          // output wire [0 : 0] m_axi_gmem32_ARID
  .m_axi_gmem32_ARADDR(m_axi_gmem32_ARADDR),      // output wire [31 : 0] m_axi_gmem32_ARADDR
  .m_axi_gmem32_ARLEN(m_axi_gmem32_ARLEN),        // output wire [7 : 0] m_axi_gmem32_ARLEN
  .m_axi_gmem32_ARSIZE(m_axi_gmem32_ARSIZE),      // output wire [2 : 0] m_axi_gmem32_ARSIZE
  .m_axi_gmem32_ARBURST(m_axi_gmem32_ARBURST),    // output wire [1 : 0] m_axi_gmem32_ARBURST
  .m_axi_gmem32_ARLOCK(m_axi_gmem32_ARLOCK),      // output wire [1 : 0] m_axi_gmem32_ARLOCK
  .m_axi_gmem32_ARREGION(m_axi_gmem32_ARREGION),  // output wire [3 : 0] m_axi_gmem32_ARREGION
  .m_axi_gmem32_ARCACHE(m_axi_gmem32_ARCACHE),    // output wire [3 : 0] m_axi_gmem32_ARCACHE
  .m_axi_gmem32_ARPROT(m_axi_gmem32_ARPROT),      // output wire [2 : 0] m_axi_gmem32_ARPROT
  .m_axi_gmem32_ARQOS(m_axi_gmem32_ARQOS),        // output wire [3 : 0] m_axi_gmem32_ARQOS
  .m_axi_gmem32_ARVALID(m_axi_gmem32_ARVALID),    // output wire m_axi_gmem32_ARVALID
  .m_axi_gmem32_ARREADY(m_axi_gmem32_ARREADY),    // input wire m_axi_gmem32_ARREADY
  .m_axi_gmem32_RID(m_axi_gmem32_RID),            // input wire [0 : 0] m_axi_gmem32_RID
  .m_axi_gmem32_RDATA(m_axi_gmem32_RDATA),        // input wire [31 : 0] m_axi_gmem32_RDATA
  .m_axi_gmem32_RRESP(m_axi_gmem32_RRESP),        // input wire [1 : 0] m_axi_gmem32_RRESP
  .m_axi_gmem32_RLAST(m_axi_gmem32_RLAST),        // input wire m_axi_gmem32_RLAST
  .m_axi_gmem32_RVALID(m_axi_gmem32_RVALID),      // input wire m_axi_gmem32_RVALID
  .m_axi_gmem32_RREADY(m_axi_gmem32_RREADY),      // output wire m_axi_gmem32_RREADY
  .number_of_days(number_of_days),                // input wire [31 : 0] number_of_days
  .number_of_indices(number_of_indices),          // input wire [31 : 0] number_of_indices
  .in_indices(in_indices),                        // input wire [31 : 0] in_indices
  .out_correlation(out_correlation)              // input wire [31 : 0] out_correlation
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file zed_correlation_accel_v1_0_0.v when simulating
// the core, zed_correlation_accel_v1_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

