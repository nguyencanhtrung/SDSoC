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


// IP VLNV: xilinx.com:hls:mmult:1.0
// IP Revision: 1601020635

(* X_CORE_INFO = "mmult,Vivado 2015.4" *)
(* CHECK_LICENSE_TYPE = "zed_mmult_0_0,mmult,{}" *)
(* CORE_GENERATION_INFO = "zed_mmult_0_0,mmult,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=mmult,x_ipVersion=1.0,x_ipCoreRevision=1601020635,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zed_mmult_0_0 (
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  in_A_dout,
  in_A_empty_n,
  in_A_read,
  in_B_dout,
  in_B_empty_n,
  in_B_read,
  out_C_din,
  out_C_full_n,
  out_C_write
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
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 in_A RD_DATA" *)
input wire [31 : 0] in_A_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 in_A EMPTY_N" *)
input wire in_A_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 in_A RD_EN" *)
output wire in_A_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 in_B RD_DATA" *)
input wire [31 : 0] in_B_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 in_B EMPTY_N" *)
input wire in_B_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 in_B RD_EN" *)
output wire in_B_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 out_C WR_DATA" *)
output wire [31 : 0] out_C_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 out_C FULL_N" *)
input wire out_C_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 out_C WR_EN" *)
output wire out_C_write;

  mmult inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .in_A_dout(in_A_dout),
    .in_A_empty_n(in_A_empty_n),
    .in_A_read(in_A_read),
    .in_B_dout(in_B_dout),
    .in_B_empty_n(in_B_empty_n),
    .in_B_read(in_B_read),
    .out_C_din(out_C_din),
    .out_C_full_n(out_C_full_n),
    .out_C_write(out_C_write)
  );
endmodule
