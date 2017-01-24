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


// IP VLNV: xilinx.com:hls:correlation_accel_v2:1.0
// IP Revision: 1701242227

(* X_CORE_INFO = "correlation_accel_v2,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "zed_correlation_accel_v2_0_0,correlation_accel_v2,{}" *)
(* CORE_GENERATION_INFO = "zed_correlation_accel_v2_0_0,correlation_accel_v2,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=correlation_accel_v2,x_ipVersion=1.0,x_ipCoreRevision=1701242227,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zed_correlation_accel_v2_0_0 (
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  number_of_days,
  number_of_indices,
  in_indices_TVALID,
  in_indices_TREADY,
  in_indices_TDATA,
  in_indices_TDEST,
  in_indices_TKEEP,
  in_indices_TSTRB,
  in_indices_TUSER,
  in_indices_TLAST,
  in_indices_TID,
  out_correlation_TVALID,
  out_correlation_TREADY,
  out_correlation_TDATA,
  out_correlation_TDEST,
  out_correlation_TKEEP,
  out_correlation_TSTRB,
  out_correlation_TUSER,
  out_correlation_TLAST,
  out_correlation_TID
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 number_of_days DATA" *)
input wire [31 : 0] number_of_days;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 number_of_indices DATA" *)
input wire [31 : 0] number_of_indices;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_indices TVALID" *)
input wire in_indices_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_indices TREADY" *)
output wire in_indices_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_indices TDATA" *)
input wire [31 : 0] in_indices_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_indices TDEST" *)
input wire [0 : 0] in_indices_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_indices TKEEP" *)
input wire [3 : 0] in_indices_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_indices TSTRB" *)
input wire [3 : 0] in_indices_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_indices TUSER" *)
input wire [0 : 0] in_indices_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_indices TLAST" *)
input wire [0 : 0] in_indices_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_indices TID" *)
input wire [0 : 0] in_indices_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_correlation TVALID" *)
output wire out_correlation_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_correlation TREADY" *)
input wire out_correlation_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_correlation TDATA" *)
output wire [31 : 0] out_correlation_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_correlation TDEST" *)
output wire [0 : 0] out_correlation_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_correlation TKEEP" *)
output wire [3 : 0] out_correlation_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_correlation TSTRB" *)
output wire [3 : 0] out_correlation_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_correlation TUSER" *)
output wire [0 : 0] out_correlation_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_correlation TLAST" *)
output wire [0 : 0] out_correlation_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_correlation TID" *)
output wire [0 : 0] out_correlation_TID;

  correlation_accel_v2 inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .number_of_days(number_of_days),
    .number_of_indices(number_of_indices),
    .in_indices_TVALID(in_indices_TVALID),
    .in_indices_TREADY(in_indices_TREADY),
    .in_indices_TDATA(in_indices_TDATA),
    .in_indices_TDEST(in_indices_TDEST),
    .in_indices_TKEEP(in_indices_TKEEP),
    .in_indices_TSTRB(in_indices_TSTRB),
    .in_indices_TUSER(in_indices_TUSER),
    .in_indices_TLAST(in_indices_TLAST),
    .in_indices_TID(in_indices_TID),
    .out_correlation_TVALID(out_correlation_TVALID),
    .out_correlation_TREADY(out_correlation_TREADY),
    .out_correlation_TDATA(out_correlation_TDATA),
    .out_correlation_TDEST(out_correlation_TDEST),
    .out_correlation_TKEEP(out_correlation_TKEEP),
    .out_correlation_TSTRB(out_correlation_TSTRB),
    .out_correlation_TUSER(out_correlation_TUSER),
    .out_correlation_TLAST(out_correlation_TLAST),
    .out_correlation_TID(out_correlation_TID)
  );
endmodule
