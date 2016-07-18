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

// IP VLNV: xilinx.com:ip:axis_accelerator_adapter:2.1
// IP Revision: 6

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
zed_sobel_filter_0_if_0 your_instance_name (
  .s_axi_aclk(s_axi_aclk),                          // input wire s_axi_aclk
  .s_axi_aresetn(s_axi_aresetn),                    // input wire s_axi_aresetn
  .s_axi_awaddr(s_axi_awaddr),                      // input wire [12 : 0] s_axi_awaddr
  .s_axi_awvalid(s_axi_awvalid),                    // input wire s_axi_awvalid
  .s_axi_awready(s_axi_awready),                    // output wire s_axi_awready
  .s_axi_wdata(s_axi_wdata),                        // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(s_axi_wstrb),                        // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid(s_axi_wvalid),                      // input wire s_axi_wvalid
  .s_axi_wready(s_axi_wready),                      // output wire s_axi_wready
  .s_axi_bresp(s_axi_bresp),                        // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(s_axi_bvalid),                      // output wire s_axi_bvalid
  .s_axi_bready(s_axi_bready),                      // input wire s_axi_bready
  .s_axi_araddr(s_axi_araddr),                      // input wire [12 : 0] s_axi_araddr
  .s_axi_arvalid(s_axi_arvalid),                    // input wire s_axi_arvalid
  .s_axi_arready(s_axi_arready),                    // output wire s_axi_arready
  .s_axi_rdata(s_axi_rdata),                        // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(s_axi_rresp),                        // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid(s_axi_rvalid),                      // output wire s_axi_rvalid
  .s_axi_rready(s_axi_rready),                      // input wire s_axi_rready
  .s_axis_aclk(s_axis_aclk),                        // input wire s_axis_aclk
  .s_axis_aresetn(s_axis_aresetn),                  // input wire s_axis_aresetn
  .s_axis_0_tvalid(s_axis_0_tvalid),                // input wire s_axis_0_tvalid
  .s_axis_0_tready(s_axis_0_tready),                // output wire s_axis_0_tready
  .s_axis_0_tdata(s_axis_0_tdata),                  // input wire [63 : 0] s_axis_0_tdata
  .s_axis_0_tkeep(s_axis_0_tkeep),                  // input wire [7 : 0] s_axis_0_tkeep
  .s_axis_0_tlast(s_axis_0_tlast),                  // input wire s_axis_0_tlast
  .ap_fifo_iarg_0_dout(ap_fifo_iarg_0_dout),        // output wire [7 : 0] ap_fifo_iarg_0_dout
  .ap_fifo_iarg_0_read(ap_fifo_iarg_0_read),        // input wire ap_fifo_iarg_0_read
  .ap_fifo_iarg_0_empty_n(ap_fifo_iarg_0_empty_n),  // output wire ap_fifo_iarg_0_empty_n
  .m_axis_aclk(m_axis_aclk),                        // input wire m_axis_aclk
  .m_axis_aresetn(m_axis_aresetn),                  // input wire m_axis_aresetn
  .m_axis_0_tvalid(m_axis_0_tvalid),                // output wire m_axis_0_tvalid
  .m_axis_0_tready(m_axis_0_tready),                // input wire m_axis_0_tready
  .m_axis_0_tdata(m_axis_0_tdata),                  // output wire [63 : 0] m_axis_0_tdata
  .m_axis_0_tstrb(m_axis_0_tstrb),                  // output wire [7 : 0] m_axis_0_tstrb
  .m_axis_0_tkeep(m_axis_0_tkeep),                  // output wire [7 : 0] m_axis_0_tkeep
  .m_axis_0_tlast(m_axis_0_tlast),                  // output wire m_axis_0_tlast
  .m_axis_0_tid(m_axis_0_tid),                      // output wire [3 : 0] m_axis_0_tid
  .m_axis_0_tdest(m_axis_0_tdest),                  // output wire [3 : 0] m_axis_0_tdest
  .m_axis_0_tuser(m_axis_0_tuser),                  // output wire [7 : 0] m_axis_0_tuser
  .ap_fifo_oarg_0_din(ap_fifo_oarg_0_din),          // input wire [7 : 0] ap_fifo_oarg_0_din
  .ap_fifo_oarg_0_write(ap_fifo_oarg_0_write),      // input wire ap_fifo_oarg_0_write
  .ap_fifo_oarg_0_full_n(ap_fifo_oarg_0_full_n),    // output wire ap_fifo_oarg_0_full_n
  .aclk(aclk),                                      // input wire aclk
  .aresetn(aresetn),                                // output wire aresetn
  .ap_start(ap_start),                              // output wire ap_start
  .ap_ready(ap_ready),                              // input wire ap_ready
  .ap_done(ap_done),                                // input wire ap_done
  .ap_continue(ap_continue),                        // output wire ap_continue
  .ap_idle(ap_idle),                                // input wire ap_idle
  .ap_oscalar_0_din(ap_oscalar_0_din),              // input wire [31 : 0] ap_oscalar_0_din
  .interrupt(interrupt)                            // output wire interrupt
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file zed_sobel_filter_0_if_0.v when simulating
// the core, zed_sobel_filter_0_if_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

