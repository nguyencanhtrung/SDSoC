// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
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

// IP VLNV: xilinx.com:ip:axi_stream_router:1.0
// IP Revision: 6

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
zed_axis_rtr_datamover_0_0 your_instance_name (
  .s_axis_txd_aclk(s_axis_txd_aclk),        // input wire s_axis_txd_aclk
  .s_axis_txd_aresetn(s_axis_txd_aresetn),  // input wire s_axis_txd_aresetn
  .s_axis_txd_tdata(s_axis_txd_tdata),      // input wire [63 : 0] s_axis_txd_tdata
  .s_axis_txd_tkeep(s_axis_txd_tkeep),      // input wire [7 : 0] s_axis_txd_tkeep
  .s_axis_txd_tlast(s_axis_txd_tlast),      // input wire s_axis_txd_tlast
  .s_axis_txd_tvalid(s_axis_txd_tvalid),    // input wire s_axis_txd_tvalid
  .s_axis_txd_tready(s_axis_txd_tready),    // output wire s_axis_txd_tready
  .s_axis_txc_aclk(s_axis_txc_aclk),        // input wire s_axis_txc_aclk
  .s_axis_txc_aresetn(s_axis_txc_aresetn),  // input wire s_axis_txc_aresetn
  .s_axis_txc_tdata(s_axis_txc_tdata),      // input wire [31 : 0] s_axis_txc_tdata
  .s_axis_txc_tkeep(s_axis_txc_tkeep),      // input wire [3 : 0] s_axis_txc_tkeep
  .s_axis_txc_tlast(s_axis_txc_tlast),      // input wire s_axis_txc_tlast
  .s_axis_txc_tvalid(s_axis_txc_tvalid),    // input wire s_axis_txc_tvalid
  .s_axis_txc_tready(s_axis_txc_tready),    // output wire s_axis_txc_tready
  .M_AXIS_0_ACLK(M_AXIS_0_ACLK),            // input wire M_AXIS_0_ACLK
  .M_AXIS_0_ARESETN(M_AXIS_0_ARESETN),      // output wire M_AXIS_0_ARESETN
  .M_AXIS_0_TVALID(M_AXIS_0_TVALID),        // output wire M_AXIS_0_TVALID
  .M_AXIS_0_TREADY(M_AXIS_0_TREADY),        // input wire M_AXIS_0_TREADY
  .M_AXIS_0_TDATA(M_AXIS_0_TDATA),          // output wire [63 : 0] M_AXIS_0_TDATA
  .M_AXIS_0_TSTRB(M_AXIS_0_TSTRB),          // output wire [7 : 0] M_AXIS_0_TSTRB
  .M_AXIS_0_TKEEP(M_AXIS_0_TKEEP),          // output wire [7 : 0] M_AXIS_0_TKEEP
  .M_AXIS_0_TLAST(M_AXIS_0_TLAST),          // output wire M_AXIS_0_TLAST
  .M_AXIS_0_TID(M_AXIS_0_TID),              // output wire [0 : 0] M_AXIS_0_TID
  .M_AXIS_0_TDEST(M_AXIS_0_TDEST),          // output wire [0 : 0] M_AXIS_0_TDEST
  .M_AXIS_0_TUSER(M_AXIS_0_TUSER),          // output wire [0 : 0] M_AXIS_0_TUSER
  .m_axis_rxd_aclk(m_axis_rxd_aclk),        // input wire m_axis_rxd_aclk
  .m_axis_rxd_aresetn(m_axis_rxd_aresetn),  // input wire m_axis_rxd_aresetn
  .m_axis_rxd_tdata(m_axis_rxd_tdata),      // output wire [63 : 0] m_axis_rxd_tdata
  .m_axis_rxd_tkeep(m_axis_rxd_tkeep),      // output wire [7 : 0] m_axis_rxd_tkeep
  .m_axis_rxd_tlast(m_axis_rxd_tlast),      // output wire m_axis_rxd_tlast
  .m_axis_rxd_tvalid(m_axis_rxd_tvalid),    // output wire m_axis_rxd_tvalid
  .m_axis_rxd_tready(m_axis_rxd_tready),    // input wire m_axis_rxd_tready
  .m_axis_rxs_aclk(m_axis_rxs_aclk),        // input wire m_axis_rxs_aclk
  .m_axis_rxs_aresetn(m_axis_rxs_aresetn),  // input wire m_axis_rxs_aresetn
  .m_axis_rxs_tdata(m_axis_rxs_tdata),      // output wire [31 : 0] m_axis_rxs_tdata
  .m_axis_rxs_tkeep(m_axis_rxs_tkeep),      // output wire [3 : 0] m_axis_rxs_tkeep
  .m_axis_rxs_tlast(m_axis_rxs_tlast),      // output wire m_axis_rxs_tlast
  .m_axis_rxs_tvalid(m_axis_rxs_tvalid),    // output wire m_axis_rxs_tvalid
  .m_axis_rxs_tready(m_axis_rxs_tready)    // input wire m_axis_rxs_tready
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file zed_axis_rtr_datamover_0_0.v when simulating
// the core, zed_axis_rtr_datamover_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

