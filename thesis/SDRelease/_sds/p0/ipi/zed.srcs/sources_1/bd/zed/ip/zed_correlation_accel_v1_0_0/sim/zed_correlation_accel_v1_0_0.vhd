-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:correlation_accel_v1:1.0
-- IP Revision: 1610271903

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zed_correlation_accel_v1_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem32_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem32_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem32_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem32_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem32_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem32_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem32_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem32_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem32_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem32_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem32_AWVALID : OUT STD_LOGIC;
    m_axi_gmem32_AWREADY : IN STD_LOGIC;
    m_axi_gmem32_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem32_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem32_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem32_WLAST : OUT STD_LOGIC;
    m_axi_gmem32_WVALID : OUT STD_LOGIC;
    m_axi_gmem32_WREADY : IN STD_LOGIC;
    m_axi_gmem32_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem32_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem32_BVALID : IN STD_LOGIC;
    m_axi_gmem32_BREADY : OUT STD_LOGIC;
    m_axi_gmem32_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem32_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem32_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem32_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem32_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem32_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem32_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem32_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem32_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem32_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem32_ARVALID : OUT STD_LOGIC;
    m_axi_gmem32_ARREADY : IN STD_LOGIC;
    m_axi_gmem32_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_gmem32_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem32_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem32_RLAST : IN STD_LOGIC;
    m_axi_gmem32_RVALID : IN STD_LOGIC;
    m_axi_gmem32_RREADY : OUT STD_LOGIC;
    number_of_days : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    number_of_indices : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_indices : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_correlation : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END zed_correlation_accel_v1_0_0;

ARCHITECTURE zed_correlation_accel_v1_0_0_arch OF zed_correlation_accel_v1_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zed_correlation_accel_v1_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT correlation_accel_v1 IS
    GENERIC (
      C_M_AXI_GMEM32_ID_WIDTH : INTEGER;
      C_M_AXI_GMEM32_ADDR_WIDTH : INTEGER;
      C_M_AXI_GMEM32_DATA_WIDTH : INTEGER;
      C_M_AXI_GMEM32_AWUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM32_ARUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM32_WUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM32_RUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM32_BUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM32_USER_VALUE : STD_LOGIC_VECTOR;
      C_M_AXI_GMEM32_PROT_VALUE : STD_LOGIC_VECTOR;
      C_M_AXI_GMEM32_CACHE_VALUE : STD_LOGIC_VECTOR
    );
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_gmem32_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_gmem32_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_gmem32_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem32_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem32_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem32_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem32_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem32_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem32_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem32_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_AWVALID : OUT STD_LOGIC;
      m_axi_gmem32_AWREADY : IN STD_LOGIC;
      m_axi_gmem32_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_gmem32_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem32_WLAST : OUT STD_LOGIC;
      m_axi_gmem32_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_WVALID : OUT STD_LOGIC;
      m_axi_gmem32_WREADY : IN STD_LOGIC;
      m_axi_gmem32_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem32_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_BVALID : IN STD_LOGIC;
      m_axi_gmem32_BREADY : OUT STD_LOGIC;
      m_axi_gmem32_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_gmem32_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_gmem32_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem32_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem32_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem32_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem32_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem32_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem32_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem32_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_ARVALID : OUT STD_LOGIC;
      m_axi_gmem32_ARREADY : IN STD_LOGIC;
      m_axi_gmem32_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_gmem32_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem32_RLAST : IN STD_LOGIC;
      m_axi_gmem32_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem32_RVALID : IN STD_LOGIC;
      m_axi_gmem32_RREADY : OUT STD_LOGIC;
      number_of_days : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      number_of_indices : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_indices : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      out_correlation : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT correlation_accel_v1;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_return: SIGNAL IS "xilinx.com:signal:data:1.0 ap_return DATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_WID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_BID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 BID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_RID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem32_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem32 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF number_of_days: SIGNAL IS "xilinx.com:signal:data:1.0 number_of_days DATA";
  ATTRIBUTE X_INTERFACE_INFO OF number_of_indices: SIGNAL IS "xilinx.com:signal:data:1.0 number_of_indices DATA";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices: SIGNAL IS "xilinx.com:signal:data:1.0 in_indices DATA";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation: SIGNAL IS "xilinx.com:signal:data:1.0 out_correlation DATA";
BEGIN
  U0 : correlation_accel_v1
    GENERIC MAP (
      C_M_AXI_GMEM32_ID_WIDTH => 1,
      C_M_AXI_GMEM32_ADDR_WIDTH => 32,
      C_M_AXI_GMEM32_DATA_WIDTH => 32,
      C_M_AXI_GMEM32_AWUSER_WIDTH => 1,
      C_M_AXI_GMEM32_ARUSER_WIDTH => 1,
      C_M_AXI_GMEM32_WUSER_WIDTH => 1,
      C_M_AXI_GMEM32_RUSER_WIDTH => 1,
      C_M_AXI_GMEM32_BUSER_WIDTH => 1,
      C_M_AXI_GMEM32_USER_VALUE => X"00000000",
      C_M_AXI_GMEM32_PROT_VALUE => B"000",
      C_M_AXI_GMEM32_CACHE_VALUE => B"0011"
    )
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_return => ap_return,
      m_axi_gmem32_AWID => m_axi_gmem32_AWID,
      m_axi_gmem32_AWADDR => m_axi_gmem32_AWADDR,
      m_axi_gmem32_AWLEN => m_axi_gmem32_AWLEN,
      m_axi_gmem32_AWSIZE => m_axi_gmem32_AWSIZE,
      m_axi_gmem32_AWBURST => m_axi_gmem32_AWBURST,
      m_axi_gmem32_AWLOCK => m_axi_gmem32_AWLOCK,
      m_axi_gmem32_AWREGION => m_axi_gmem32_AWREGION,
      m_axi_gmem32_AWCACHE => m_axi_gmem32_AWCACHE,
      m_axi_gmem32_AWPROT => m_axi_gmem32_AWPROT,
      m_axi_gmem32_AWQOS => m_axi_gmem32_AWQOS,
      m_axi_gmem32_AWVALID => m_axi_gmem32_AWVALID,
      m_axi_gmem32_AWREADY => m_axi_gmem32_AWREADY,
      m_axi_gmem32_WID => m_axi_gmem32_WID,
      m_axi_gmem32_WDATA => m_axi_gmem32_WDATA,
      m_axi_gmem32_WSTRB => m_axi_gmem32_WSTRB,
      m_axi_gmem32_WLAST => m_axi_gmem32_WLAST,
      m_axi_gmem32_WVALID => m_axi_gmem32_WVALID,
      m_axi_gmem32_WREADY => m_axi_gmem32_WREADY,
      m_axi_gmem32_BID => m_axi_gmem32_BID,
      m_axi_gmem32_BRESP => m_axi_gmem32_BRESP,
      m_axi_gmem32_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem32_BVALID => m_axi_gmem32_BVALID,
      m_axi_gmem32_BREADY => m_axi_gmem32_BREADY,
      m_axi_gmem32_ARID => m_axi_gmem32_ARID,
      m_axi_gmem32_ARADDR => m_axi_gmem32_ARADDR,
      m_axi_gmem32_ARLEN => m_axi_gmem32_ARLEN,
      m_axi_gmem32_ARSIZE => m_axi_gmem32_ARSIZE,
      m_axi_gmem32_ARBURST => m_axi_gmem32_ARBURST,
      m_axi_gmem32_ARLOCK => m_axi_gmem32_ARLOCK,
      m_axi_gmem32_ARREGION => m_axi_gmem32_ARREGION,
      m_axi_gmem32_ARCACHE => m_axi_gmem32_ARCACHE,
      m_axi_gmem32_ARPROT => m_axi_gmem32_ARPROT,
      m_axi_gmem32_ARQOS => m_axi_gmem32_ARQOS,
      m_axi_gmem32_ARVALID => m_axi_gmem32_ARVALID,
      m_axi_gmem32_ARREADY => m_axi_gmem32_ARREADY,
      m_axi_gmem32_RID => m_axi_gmem32_RID,
      m_axi_gmem32_RDATA => m_axi_gmem32_RDATA,
      m_axi_gmem32_RRESP => m_axi_gmem32_RRESP,
      m_axi_gmem32_RLAST => m_axi_gmem32_RLAST,
      m_axi_gmem32_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem32_RVALID => m_axi_gmem32_RVALID,
      m_axi_gmem32_RREADY => m_axi_gmem32_RREADY,
      number_of_days => number_of_days,
      number_of_indices => number_of_indices,
      in_indices => in_indices,
      out_correlation => out_correlation
    );
END zed_correlation_accel_v1_0_0_arch;