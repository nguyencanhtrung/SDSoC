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
// IP Revision: 1610312109

(* X_CORE_INFO = "correlation_accel_v1,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "zed_correlation_accel_v1_0_0,correlation_accel_v1,{}" *)
(* CORE_GENERATION_INFO = "zed_correlation_accel_v1_0_0,correlation_accel_v1,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=correlation_accel_v1,x_ipVersion=1.0,x_ipCoreRevision=1610312109,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_M_AXI_GMEM32_ID_WIDTH=1,C_M_AXI_GMEM32_ADDR_WIDTH=32,C_M_AXI_GMEM32_DATA_WIDTH=32,C_M_AXI_GMEM32_AWUSER_WIDTH=1,C_M_AXI_GMEM32_ARUSER_WIDTH=1,C_M_AXI_GMEM32_WUSER_WIDTH=1,C_M_AXI_GMEM32_RUSER_WIDTH=1,C_M_AXI_GMEM32_BUSER_WIDTH=1,C_M_AXI_GMEM32_USER_VALUE=0x00000000,C_M_AXI_GMEM32_PROT_VALUE=000,C_M_AXI_GMEM32_CACHE_VALUE=0011}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zed_correlation_accel_v1_0_0 (
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  ap_return,
  m_axi_gmem32_AWID,
  m_axi_gmem32_AWADDR,
  m_axi_gmem32_AWLEN,
  m_axi_gmem32_AWSIZE,
  m_axi_gmem32_AWBURST,
  m_axi_gmem32_AWLOCK,
  m_axi_gmem32_AWREGION,
  m_axi_gmem32_AWCACHE,
  m_axi_gmem32_AWPROT,
  m_axi_gmem32_AWQOS,
  m_axi_gmem32_AWVALID,
  m_axi_gmem32_AWREADY,
  m_axi_gmem32_WID,
  m_axi_gmem32_WDATA,
  m_axi_gmem32_WSTRB,
  m_axi_gmem32_WLAST,
  m_axi_gmem32_WVALID,
  m_axi_gmem32_WREADY,
  m_axi_gmem32_BID,
  m_axi_gmem32_BRESP,
  m_axi_gmem32_BVALID,
  m_axi_gmem32_BREADY,
  m_axi_gmem32_ARID,
  m_axi_gmem32_ARADDR,
  m_axi_gmem32_ARLEN,
  m_axi_gmem32_ARSIZE,
  m_axi_gmem32_ARBURST,
  m_axi_gmem32_ARLOCK,
  m_axi_gmem32_ARREGION,
  m_axi_gmem32_ARCACHE,
  m_axi_gmem32_ARPROT,
  m_axi_gmem32_ARQOS,
  m_axi_gmem32_ARVALID,
  m_axi_gmem32_ARREADY,
  m_axi_gmem32_RID,
  m_axi_gmem32_RDATA,
  m_axi_gmem32_RRESP,
  m_axi_gmem32_RLAST,
  m_axi_gmem32_RVALID,
  m_axi_gmem32_RREADY,
  number_of_days,
  number_of_indices,
  in_indices,
  out_correlation
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
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ap_return DATA" *)
output wire [31 : 0] ap_return;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWID" *)
output wire [0 : 0] m_axi_gmem32_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWADDR" *)
output wire [31 : 0] m_axi_gmem32_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWLEN" *)
output wire [7 : 0] m_axi_gmem32_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWSIZE" *)
output wire [2 : 0] m_axi_gmem32_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWBURST" *)
output wire [1 : 0] m_axi_gmem32_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWLOCK" *)
output wire [1 : 0] m_axi_gmem32_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWREGION" *)
output wire [3 : 0] m_axi_gmem32_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWCACHE" *)
output wire [3 : 0] m_axi_gmem32_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWPROT" *)
output wire [2 : 0] m_axi_gmem32_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWQOS" *)
output wire [3 : 0] m_axi_gmem32_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWVALID" *)
output wire m_axi_gmem32_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWREADY" *)
input wire m_axi_gmem32_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WID" *)
output wire [0 : 0] m_axi_gmem32_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WDATA" *)
output wire [31 : 0] m_axi_gmem32_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WSTRB" *)
output wire [3 : 0] m_axi_gmem32_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WLAST" *)
output wire m_axi_gmem32_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WVALID" *)
output wire m_axi_gmem32_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WREADY" *)
input wire m_axi_gmem32_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 BID" *)
input wire [0 : 0] m_axi_gmem32_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 BRESP" *)
input wire [1 : 0] m_axi_gmem32_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 BVALID" *)
input wire m_axi_gmem32_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 BREADY" *)
output wire m_axi_gmem32_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARID" *)
output wire [0 : 0] m_axi_gmem32_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARADDR" *)
output wire [31 : 0] m_axi_gmem32_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARLEN" *)
output wire [7 : 0] m_axi_gmem32_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARSIZE" *)
output wire [2 : 0] m_axi_gmem32_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARBURST" *)
output wire [1 : 0] m_axi_gmem32_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARLOCK" *)
output wire [1 : 0] m_axi_gmem32_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARREGION" *)
output wire [3 : 0] m_axi_gmem32_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARCACHE" *)
output wire [3 : 0] m_axi_gmem32_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARPROT" *)
output wire [2 : 0] m_axi_gmem32_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARQOS" *)
output wire [3 : 0] m_axi_gmem32_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARVALID" *)
output wire m_axi_gmem32_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARREADY" *)
input wire m_axi_gmem32_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RID" *)
input wire [0 : 0] m_axi_gmem32_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RDATA" *)
input wire [31 : 0] m_axi_gmem32_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RRESP" *)
input wire [1 : 0] m_axi_gmem32_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RLAST" *)
input wire m_axi_gmem32_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RVALID" *)
input wire m_axi_gmem32_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RREADY" *)
output wire m_axi_gmem32_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 number_of_days DATA" *)
input wire [31 : 0] number_of_days;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 number_of_indices DATA" *)
input wire [31 : 0] number_of_indices;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 in_indices DATA" *)
input wire [31 : 0] in_indices;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 out_correlation DATA" *)
input wire [31 : 0] out_correlation;

  correlation_accel_v1 #(
    .C_M_AXI_GMEM32_ID_WIDTH(1),
    .C_M_AXI_GMEM32_ADDR_WIDTH(32),
    .C_M_AXI_GMEM32_DATA_WIDTH(32),
    .C_M_AXI_GMEM32_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM32_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM32_WUSER_WIDTH(1),
    .C_M_AXI_GMEM32_RUSER_WIDTH(1),
    .C_M_AXI_GMEM32_BUSER_WIDTH(1),
    .C_M_AXI_GMEM32_USER_VALUE('H00000000),
    .C_M_AXI_GMEM32_PROT_VALUE('B000),
    .C_M_AXI_GMEM32_CACHE_VALUE('B0011)
  ) inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .ap_return(ap_return),
    .m_axi_gmem32_AWID(m_axi_gmem32_AWID),
    .m_axi_gmem32_AWADDR(m_axi_gmem32_AWADDR),
    .m_axi_gmem32_AWLEN(m_axi_gmem32_AWLEN),
    .m_axi_gmem32_AWSIZE(m_axi_gmem32_AWSIZE),
    .m_axi_gmem32_AWBURST(m_axi_gmem32_AWBURST),
    .m_axi_gmem32_AWLOCK(m_axi_gmem32_AWLOCK),
    .m_axi_gmem32_AWREGION(m_axi_gmem32_AWREGION),
    .m_axi_gmem32_AWCACHE(m_axi_gmem32_AWCACHE),
    .m_axi_gmem32_AWPROT(m_axi_gmem32_AWPROT),
    .m_axi_gmem32_AWQOS(m_axi_gmem32_AWQOS),
    .m_axi_gmem32_AWUSER(),
    .m_axi_gmem32_AWVALID(m_axi_gmem32_AWVALID),
    .m_axi_gmem32_AWREADY(m_axi_gmem32_AWREADY),
    .m_axi_gmem32_WID(m_axi_gmem32_WID),
    .m_axi_gmem32_WDATA(m_axi_gmem32_WDATA),
    .m_axi_gmem32_WSTRB(m_axi_gmem32_WSTRB),
    .m_axi_gmem32_WLAST(m_axi_gmem32_WLAST),
    .m_axi_gmem32_WUSER(),
    .m_axi_gmem32_WVALID(m_axi_gmem32_WVALID),
    .m_axi_gmem32_WREADY(m_axi_gmem32_WREADY),
    .m_axi_gmem32_BID(m_axi_gmem32_BID),
    .m_axi_gmem32_BRESP(m_axi_gmem32_BRESP),
    .m_axi_gmem32_BUSER(1'B0),
    .m_axi_gmem32_BVALID(m_axi_gmem32_BVALID),
    .m_axi_gmem32_BREADY(m_axi_gmem32_BREADY),
    .m_axi_gmem32_ARID(m_axi_gmem32_ARID),
    .m_axi_gmem32_ARADDR(m_axi_gmem32_ARADDR),
    .m_axi_gmem32_ARLEN(m_axi_gmem32_ARLEN),
    .m_axi_gmem32_ARSIZE(m_axi_gmem32_ARSIZE),
    .m_axi_gmem32_ARBURST(m_axi_gmem32_ARBURST),
    .m_axi_gmem32_ARLOCK(m_axi_gmem32_ARLOCK),
    .m_axi_gmem32_ARREGION(m_axi_gmem32_ARREGION),
    .m_axi_gmem32_ARCACHE(m_axi_gmem32_ARCACHE),
    .m_axi_gmem32_ARPROT(m_axi_gmem32_ARPROT),
    .m_axi_gmem32_ARQOS(m_axi_gmem32_ARQOS),
    .m_axi_gmem32_ARUSER(),
    .m_axi_gmem32_ARVALID(m_axi_gmem32_ARVALID),
    .m_axi_gmem32_ARREADY(m_axi_gmem32_ARREADY),
    .m_axi_gmem32_RID(m_axi_gmem32_RID),
    .m_axi_gmem32_RDATA(m_axi_gmem32_RDATA),
    .m_axi_gmem32_RRESP(m_axi_gmem32_RRESP),
    .m_axi_gmem32_RLAST(m_axi_gmem32_RLAST),
    .m_axi_gmem32_RUSER(1'B0),
    .m_axi_gmem32_RVALID(m_axi_gmem32_RVALID),
    .m_axi_gmem32_RREADY(m_axi_gmem32_RREADY),
    .number_of_days(number_of_days),
    .number_of_indices(number_of_indices),
    .in_indices(in_indices),
    .out_correlation(out_correlation)
  );
endmodule
