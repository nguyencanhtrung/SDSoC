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

// IP VLNV: xilinx.com:hls:correlation_accel_v2:1.0
// IP Revision: 1611021650

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
zed_correlation_accel_v2_1_0 your_instance_name (
  .ap_clk(ap_clk),                                  // input wire ap_clk
  .ap_rst_n(ap_rst_n),                              // input wire ap_rst_n
  .ap_start(ap_start),                              // input wire ap_start
  .ap_done(ap_done),                                // output wire ap_done
  .ap_idle(ap_idle),                                // output wire ap_idle
  .ap_ready(ap_ready),                              // output wire ap_ready
  .number_of_days(number_of_days),                  // input wire [31 : 0] number_of_days
  .number_of_indices(number_of_indices),            // input wire [31 : 0] number_of_indices
  .in_indices_TVALID(in_indices_TVALID),            // input wire in_indices_TVALID
  .in_indices_TREADY(in_indices_TREADY),            // output wire in_indices_TREADY
  .in_indices_TDATA(in_indices_TDATA),              // input wire [31 : 0] in_indices_TDATA
  .in_indices_TDEST(in_indices_TDEST),              // input wire [0 : 0] in_indices_TDEST
  .in_indices_TKEEP(in_indices_TKEEP),              // input wire [3 : 0] in_indices_TKEEP
  .in_indices_TSTRB(in_indices_TSTRB),              // input wire [3 : 0] in_indices_TSTRB
  .in_indices_TUSER(in_indices_TUSER),              // input wire [0 : 0] in_indices_TUSER
  .in_indices_TLAST(in_indices_TLAST),              // input wire [0 : 0] in_indices_TLAST
  .in_indices_TID(in_indices_TID),                  // input wire [0 : 0] in_indices_TID
  .out_correlation_TVALID(out_correlation_TVALID),  // output wire out_correlation_TVALID
  .out_correlation_TREADY(out_correlation_TREADY),  // input wire out_correlation_TREADY
  .out_correlation_TDATA(out_correlation_TDATA),    // output wire [31 : 0] out_correlation_TDATA
  .out_correlation_TDEST(out_correlation_TDEST),    // output wire [0 : 0] out_correlation_TDEST
  .out_correlation_TKEEP(out_correlation_TKEEP),    // output wire [3 : 0] out_correlation_TKEEP
  .out_correlation_TSTRB(out_correlation_TSTRB),    // output wire [3 : 0] out_correlation_TSTRB
  .out_correlation_TUSER(out_correlation_TUSER),    // output wire [0 : 0] out_correlation_TUSER
  .out_correlation_TLAST(out_correlation_TLAST),    // output wire [0 : 0] out_correlation_TLAST
  .out_correlation_TID(out_correlation_TID)        // output wire [0 : 0] out_correlation_TID
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file zed_correlation_accel_v2_1_0.v when simulating
// the core, zed_correlation_accel_v2_1_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

