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


// IP VLNV: xilinx.com:hls:madd:1.0
// IP Revision: 1610241728

(* X_CORE_INFO = "madd,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "zed_madd_0_0,madd,{}" *)
(* CORE_GENERATION_INFO = "zed_madd_0_0,madd,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=madd,x_ipVersion=1.0,x_ipCoreRevision=1610241728,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zed_madd_0_0 (
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  A_Clk_A,
  A_Rst_A,
  A_EN_A,
  A_WEN_A,
  A_Addr_A,
  A_Din_A,
  A_Dout_A,
  B_Clk_A,
  B_Rst_A,
  B_EN_A,
  B_WEN_A,
  B_Addr_A,
  B_Din_A,
  B_Dout_A,
  C_Clk_A,
  C_Rst_A,
  C_EN_A,
  C_WEN_A,
  C_Addr_A,
  C_Din_A,
  C_Dout_A
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
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 A_PORTA CLK" *)
output wire A_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 A_PORTA RST" *)
output wire A_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 A_PORTA EN" *)
output wire A_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 A_PORTA WE" *)
output wire [3 : 0] A_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 A_PORTA ADDR" *)
output wire [31 : 0] A_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 A_PORTA DIN" *)
output wire [31 : 0] A_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 A_PORTA DOUT" *)
input wire [31 : 0] A_Dout_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 B_PORTA CLK" *)
output wire B_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 B_PORTA RST" *)
output wire B_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 B_PORTA EN" *)
output wire B_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 B_PORTA WE" *)
output wire [3 : 0] B_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 B_PORTA ADDR" *)
output wire [31 : 0] B_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 B_PORTA DIN" *)
output wire [31 : 0] B_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 B_PORTA DOUT" *)
input wire [31 : 0] B_Dout_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 C_PORTA CLK" *)
output wire C_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 C_PORTA RST" *)
output wire C_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 C_PORTA EN" *)
output wire C_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 C_PORTA WE" *)
output wire [3 : 0] C_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 C_PORTA ADDR" *)
output wire [31 : 0] C_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 C_PORTA DIN" *)
output wire [31 : 0] C_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 C_PORTA DOUT" *)
input wire [31 : 0] C_Dout_A;

  madd inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .A_Clk_A(A_Clk_A),
    .A_Rst_A(A_Rst_A),
    .A_EN_A(A_EN_A),
    .A_WEN_A(A_WEN_A),
    .A_Addr_A(A_Addr_A),
    .A_Din_A(A_Din_A),
    .A_Dout_A(A_Dout_A),
    .B_Clk_A(B_Clk_A),
    .B_Rst_A(B_Rst_A),
    .B_EN_A(B_EN_A),
    .B_WEN_A(B_WEN_A),
    .B_Addr_A(B_Addr_A),
    .B_Din_A(B_Din_A),
    .B_Dout_A(B_Dout_A),
    .C_Clk_A(C_Clk_A),
    .C_Rst_A(C_Rst_A),
    .C_EN_A(C_EN_A),
    .C_WEN_A(C_WEN_A),
    .C_Addr_A(C_Addr_A),
    .C_Din_A(C_Din_A),
    .C_Dout_A(C_Dout_A)
  );
endmodule
