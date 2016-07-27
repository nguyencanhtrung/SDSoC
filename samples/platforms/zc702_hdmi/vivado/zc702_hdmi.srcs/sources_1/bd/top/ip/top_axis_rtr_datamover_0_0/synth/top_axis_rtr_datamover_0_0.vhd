-- (c) Copyright 1995-2013 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:ip:axi_stream_router:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_stream_router_v1_00_a;
USE axi_stream_router_v1_00_a.axi_stream_router;

ENTITY top_axis_rtr_datamover_0_0 IS
  PORT (
    s_axis_txd_aclk : IN STD_LOGIC;
    s_axis_txd_aresetn : IN STD_LOGIC;
    s_axis_txd_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axis_txd_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_txd_tlast : IN STD_LOGIC;
    s_axis_txd_tvalid : IN STD_LOGIC;
    s_axis_txd_tready : OUT STD_LOGIC;
    s_axis_txc_aclk : IN STD_LOGIC;
    s_axis_txc_aresetn : IN STD_LOGIC;
    s_axis_txc_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_txc_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_txc_tlast : IN STD_LOGIC;
    s_axis_txc_tvalid : IN STD_LOGIC;
    s_axis_txc_tready : OUT STD_LOGIC;
    M_AXIS_0_ACLK : IN STD_LOGIC;
    M_AXIS_0_ARESETN : OUT STD_LOGIC;
    M_AXIS_0_TVALID : OUT STD_LOGIC;
    M_AXIS_0_TREADY : IN STD_LOGIC;
    M_AXIS_0_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    M_AXIS_0_TSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXIS_0_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXIS_0_TLAST : OUT STD_LOGIC;
    M_AXIS_0_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M_AXIS_0_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M_AXIS_0_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_rxd_aclk : IN STD_LOGIC;
    m_axis_rxd_aresetn : IN STD_LOGIC;
    m_axis_rxd_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_rxd_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_rxd_tlast : OUT STD_LOGIC;
    m_axis_rxd_tvalid : OUT STD_LOGIC;
    m_axis_rxd_tready : IN STD_LOGIC;
    m_axis_rxs_aclk : IN STD_LOGIC;
    m_axis_rxs_aresetn : IN STD_LOGIC;
    m_axis_rxs_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_rxs_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_rxs_tlast : OUT STD_LOGIC;
    m_axis_rxs_tvalid : OUT STD_LOGIC;
    m_axis_rxs_tready : IN STD_LOGIC;
    S_AXIS_0_ACLK : IN STD_LOGIC;
    S_AXIS_0_ARESETN : OUT STD_LOGIC;
    S_AXIS_0_TVALID : IN STD_LOGIC;
    S_AXIS_0_TREADY : OUT STD_LOGIC;
    S_AXIS_0_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    S_AXIS_0_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXIS_0_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXIS_0_TLAST : IN STD_LOGIC;
    S_AXIS_0_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S_AXIS_0_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S_AXIS_0_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END top_axis_rtr_datamover_0_0;

ARCHITECTURE top_axis_rtr_datamover_0_0_arch OF top_axis_rtr_datamover_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_axis_rtr_datamover_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT axi_stream_router IS
    GENERIC (
      C_FAMILY : STRING;
      C_S_AXIS_TXD_TDATA_WIDTH : INTEGER;
      C_S_AXIS_TXC_TDATA_WIDTH : INTEGER;
      C_NUM_MASTER_SLOTS : INTEGER;
      C_M_AXIS_TDATA_WIDTH : INTEGER;
      C_M_AXIS_TUSER_WIDTH : INTEGER;
      C_M_AXIS_TID_WIDTH : INTEGER;
      C_M_AXIS_TDEST_WIDTH : INTEGER;
      C_M_AXIS_RXD_TDATA_WIDTH : INTEGER;
      C_M_AXIS_RXS_TDATA_WIDTH : INTEGER;
      C_NUM_SLAVE_SLOTS : INTEGER;
      C_S_AXIS_TDATA_WIDTH : INTEGER;
      C_S_AXIS_TUSER_WIDTH : INTEGER;
      C_S_AXIS_TID_WIDTH : INTEGER;
      C_S_AXIS_TDEST_WIDTH : INTEGER;
      C_USE_CHIPSCOPE : INTEGER;
      C_NONE : INTEGER
    );
    PORT (
      splitter_ctrl_ila_control : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
      splitter_txd_ila_control : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
      splitter_txc_ila_control : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
      combiner_ctrl_ila_control : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
      combiner_rxd_ila_control : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
      combiner_rxs_ila_control : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
      s_axis_txd_aclk : IN STD_LOGIC;
      s_axis_txd_aresetn : IN STD_LOGIC;
      s_axis_txd_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axis_txd_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_txd_tlast : IN STD_LOGIC;
      s_axis_txd_tvalid : IN STD_LOGIC;
      s_axis_txd_tready : OUT STD_LOGIC;
      s_axis_txc_aclk : IN STD_LOGIC;
      s_axis_txc_aresetn : IN STD_LOGIC;
      s_axis_txc_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_txc_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axis_txc_tlast : IN STD_LOGIC;
      s_axis_txc_tvalid : IN STD_LOGIC;
      s_axis_txc_tready : OUT STD_LOGIC;
      M_AXIS_0_ACLK : IN STD_LOGIC;
      M_AXIS_0_ARESETN : OUT STD_LOGIC;
      M_AXIS_0_TVALID : OUT STD_LOGIC;
      M_AXIS_0_TREADY : IN STD_LOGIC;
      M_AXIS_0_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXIS_0_TSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_0_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_0_TLAST : OUT STD_LOGIC;
      M_AXIS_0_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_0_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_0_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_1_ACLK : IN STD_LOGIC;
      M_AXIS_1_ARESETN : OUT STD_LOGIC;
      M_AXIS_1_TVALID : OUT STD_LOGIC;
      M_AXIS_1_TREADY : IN STD_LOGIC;
      M_AXIS_1_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXIS_1_TSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_1_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_1_TLAST : OUT STD_LOGIC;
      M_AXIS_1_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_1_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_1_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_2_ACLK : IN STD_LOGIC;
      M_AXIS_2_ARESETN : OUT STD_LOGIC;
      M_AXIS_2_TVALID : OUT STD_LOGIC;
      M_AXIS_2_TREADY : IN STD_LOGIC;
      M_AXIS_2_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXIS_2_TSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_2_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_2_TLAST : OUT STD_LOGIC;
      M_AXIS_2_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_2_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_2_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_3_ACLK : IN STD_LOGIC;
      M_AXIS_3_ARESETN : OUT STD_LOGIC;
      M_AXIS_3_TVALID : OUT STD_LOGIC;
      M_AXIS_3_TREADY : IN STD_LOGIC;
      M_AXIS_3_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXIS_3_TSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_3_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_3_TLAST : OUT STD_LOGIC;
      M_AXIS_3_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_3_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_3_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_4_ACLK : IN STD_LOGIC;
      M_AXIS_4_ARESETN : OUT STD_LOGIC;
      M_AXIS_4_TVALID : OUT STD_LOGIC;
      M_AXIS_4_TREADY : IN STD_LOGIC;
      M_AXIS_4_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXIS_4_TSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_4_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_4_TLAST : OUT STD_LOGIC;
      M_AXIS_4_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_4_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_4_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_5_ACLK : IN STD_LOGIC;
      M_AXIS_5_ARESETN : OUT STD_LOGIC;
      M_AXIS_5_TVALID : OUT STD_LOGIC;
      M_AXIS_5_TREADY : IN STD_LOGIC;
      M_AXIS_5_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXIS_5_TSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_5_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_5_TLAST : OUT STD_LOGIC;
      M_AXIS_5_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_5_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_5_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_6_ACLK : IN STD_LOGIC;
      M_AXIS_6_ARESETN : OUT STD_LOGIC;
      M_AXIS_6_TVALID : OUT STD_LOGIC;
      M_AXIS_6_TREADY : IN STD_LOGIC;
      M_AXIS_6_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXIS_6_TSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_6_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_6_TLAST : OUT STD_LOGIC;
      M_AXIS_6_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_6_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_6_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_7_ACLK : IN STD_LOGIC;
      M_AXIS_7_ARESETN : OUT STD_LOGIC;
      M_AXIS_7_TVALID : OUT STD_LOGIC;
      M_AXIS_7_TREADY : IN STD_LOGIC;
      M_AXIS_7_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXIS_7_TSTRB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_7_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_7_TLAST : OUT STD_LOGIC;
      M_AXIS_7_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_7_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_7_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_rxd_aclk : IN STD_LOGIC;
      m_axis_rxd_aresetn : IN STD_LOGIC;
      m_axis_rxd_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axis_rxd_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axis_rxd_tlast : OUT STD_LOGIC;
      m_axis_rxd_tvalid : OUT STD_LOGIC;
      m_axis_rxd_tready : IN STD_LOGIC;
      m_axis_rxs_aclk : IN STD_LOGIC;
      m_axis_rxs_aresetn : IN STD_LOGIC;
      m_axis_rxs_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_rxs_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_rxs_tlast : OUT STD_LOGIC;
      m_axis_rxs_tvalid : OUT STD_LOGIC;
      m_axis_rxs_tready : IN STD_LOGIC;
      S_AXIS_0_ACLK : IN STD_LOGIC;
      S_AXIS_0_ARESETN : OUT STD_LOGIC;
      S_AXIS_0_TVALID : IN STD_LOGIC;
      S_AXIS_0_TREADY : OUT STD_LOGIC;
      S_AXIS_0_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S_AXIS_0_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_0_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_0_TLAST : IN STD_LOGIC;
      S_AXIS_0_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_0_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_0_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_1_ACLK : IN STD_LOGIC;
      S_AXIS_1_ARESETN : OUT STD_LOGIC;
      S_AXIS_1_TVALID : IN STD_LOGIC;
      S_AXIS_1_TREADY : OUT STD_LOGIC;
      S_AXIS_1_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S_AXIS_1_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_1_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_1_TLAST : IN STD_LOGIC;
      S_AXIS_1_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_1_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_1_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_2_ACLK : IN STD_LOGIC;
      S_AXIS_2_ARESETN : OUT STD_LOGIC;
      S_AXIS_2_TVALID : IN STD_LOGIC;
      S_AXIS_2_TREADY : OUT STD_LOGIC;
      S_AXIS_2_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S_AXIS_2_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_2_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_2_TLAST : IN STD_LOGIC;
      S_AXIS_2_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_2_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_2_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_3_ACLK : IN STD_LOGIC;
      S_AXIS_3_ARESETN : OUT STD_LOGIC;
      S_AXIS_3_TVALID : IN STD_LOGIC;
      S_AXIS_3_TREADY : OUT STD_LOGIC;
      S_AXIS_3_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S_AXIS_3_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_3_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_3_TLAST : IN STD_LOGIC;
      S_AXIS_3_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_3_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_3_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_4_ACLK : IN STD_LOGIC;
      S_AXIS_4_ARESETN : OUT STD_LOGIC;
      S_AXIS_4_TVALID : IN STD_LOGIC;
      S_AXIS_4_TREADY : OUT STD_LOGIC;
      S_AXIS_4_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S_AXIS_4_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_4_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_4_TLAST : IN STD_LOGIC;
      S_AXIS_4_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_4_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_4_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_5_ACLK : IN STD_LOGIC;
      S_AXIS_5_ARESETN : OUT STD_LOGIC;
      S_AXIS_5_TVALID : IN STD_LOGIC;
      S_AXIS_5_TREADY : OUT STD_LOGIC;
      S_AXIS_5_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S_AXIS_5_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_5_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_5_TLAST : IN STD_LOGIC;
      S_AXIS_5_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_5_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_5_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_6_ACLK : IN STD_LOGIC;
      S_AXIS_6_ARESETN : OUT STD_LOGIC;
      S_AXIS_6_TVALID : IN STD_LOGIC;
      S_AXIS_6_TREADY : OUT STD_LOGIC;
      S_AXIS_6_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S_AXIS_6_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_6_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_6_TLAST : IN STD_LOGIC;
      S_AXIS_6_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_6_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_6_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_7_ACLK : IN STD_LOGIC;
      S_AXIS_7_ARESETN : OUT STD_LOGIC;
      S_AXIS_7_TVALID : IN STD_LOGIC;
      S_AXIS_7_TREADY : OUT STD_LOGIC;
      S_AXIS_7_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S_AXIS_7_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_7_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_7_TLAST : IN STD_LOGIC;
      S_AXIS_7_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_7_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_7_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      none : OUT STD_LOGIC
    );
  END COMPONENT axi_stream_router;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF top_axis_rtr_datamover_0_0_arch: ARCHITECTURE IS "axi_stream_router,Vivado 2013.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF top_axis_rtr_datamover_0_0_arch : ARCHITECTURE IS "top_axis_rtr_datamover_0_0,axi_stream_router,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF top_axis_rtr_datamover_0_0_arch: ARCHITECTURE IS "top_axis_rtr_datamover_0_0,axi_stream_router,{x_ipProduct=Vivado 2013.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_stream_router,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=zynq,C_S_AXIS_TXD_TDATA_WIDTH=64,C_S_AXIS_TXC_TDATA_WIDTH=32,C_NUM_MASTER_SLOTS=1,C_M_AXIS_TDATA_WIDTH=64,C_M_AXIS_TUSER_WIDTH=0,C_M_AXIS_TID_WIDTH=0,C_M_AXIS_TDEST_WIDTH=0,C_M_AXIS_RXD_TDATA_WIDTH=64,C_M_AXIS_RXS_TDATA_WIDTH=32,C_NUM_SLAVE_SLOTS=1,C_S_AXIS_TDATA_WIDTH=64,C_S_AXIS_TUSER_WIDTH=0,C_S_AXIS_TID_WIDTH=0,C_S_AXIS_TDEST_WIDTH=0,C_USE_CHIPSCOPE=0,C_NONE=2}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axis_txd_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axis_txd_signal_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axis_txc_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axis_txc_signal_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 M_AXIS_0_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 M_AXIS_0_signal_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_0 TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_0 TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_0 TID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_0 TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_0_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_0 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 m_axis_rxd_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 m_axis_rxd_signal_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 m_axis_rxs_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 m_axis_rxs_signal_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXIS_0_signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 S_AXIS_0_signal_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_0 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_0 TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_0 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_0 TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_0 TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_0 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_0 TID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_0 TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_0_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_0 TUSER";
BEGIN
  U0 : axi_stream_router
    GENERIC MAP (
      C_FAMILY => "zynq",
      C_S_AXIS_TXD_TDATA_WIDTH => 64,
      C_S_AXIS_TXC_TDATA_WIDTH => 32,
      C_NUM_MASTER_SLOTS => 1,
      C_M_AXIS_TDATA_WIDTH => 64,
      C_M_AXIS_TUSER_WIDTH => 0,
      C_M_AXIS_TID_WIDTH => 0,
      C_M_AXIS_TDEST_WIDTH => 0,
      C_M_AXIS_RXD_TDATA_WIDTH => 64,
      C_M_AXIS_RXS_TDATA_WIDTH => 32,
      C_NUM_SLAVE_SLOTS => 1,
      C_S_AXIS_TDATA_WIDTH => 64,
      C_S_AXIS_TUSER_WIDTH => 0,
      C_S_AXIS_TID_WIDTH => 0,
      C_S_AXIS_TDEST_WIDTH => 0,
      C_USE_CHIPSCOPE => 0,
      C_NONE => 2
    )
    PORT MAP (
      splitter_ctrl_ila_control => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 36)),
      splitter_txd_ila_control => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 36)),
      splitter_txc_ila_control => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 36)),
      combiner_ctrl_ila_control => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 36)),
      combiner_rxd_ila_control => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 36)),
      combiner_rxs_ila_control => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 36)),
      s_axis_txd_aclk => s_axis_txd_aclk,
      s_axis_txd_aresetn => s_axis_txd_aresetn,
      s_axis_txd_tdata => s_axis_txd_tdata,
      s_axis_txd_tkeep => s_axis_txd_tkeep,
      s_axis_txd_tlast => s_axis_txd_tlast,
      s_axis_txd_tvalid => s_axis_txd_tvalid,
      s_axis_txd_tready => s_axis_txd_tready,
      s_axis_txc_aclk => s_axis_txc_aclk,
      s_axis_txc_aresetn => s_axis_txc_aresetn,
      s_axis_txc_tdata => s_axis_txc_tdata,
      s_axis_txc_tkeep => s_axis_txc_tkeep,
      s_axis_txc_tlast => s_axis_txc_tlast,
      s_axis_txc_tvalid => s_axis_txc_tvalid,
      s_axis_txc_tready => s_axis_txc_tready,
      M_AXIS_0_ACLK => M_AXIS_0_ACLK,
      M_AXIS_0_ARESETN => M_AXIS_0_ARESETN,
      M_AXIS_0_TVALID => M_AXIS_0_TVALID,
      M_AXIS_0_TREADY => M_AXIS_0_TREADY,
      M_AXIS_0_TDATA => M_AXIS_0_TDATA,
      M_AXIS_0_TSTRB => M_AXIS_0_TSTRB,
      M_AXIS_0_TKEEP => M_AXIS_0_TKEEP,
      M_AXIS_0_TLAST => M_AXIS_0_TLAST,
      M_AXIS_0_TID => M_AXIS_0_TID,
      M_AXIS_0_TDEST => M_AXIS_0_TDEST,
      M_AXIS_0_TUSER => M_AXIS_0_TUSER,
      M_AXIS_1_ACLK => '0',
      M_AXIS_1_TREADY => '0',
      M_AXIS_2_ACLK => '0',
      M_AXIS_2_TREADY => '0',
      M_AXIS_3_ACLK => '0',
      M_AXIS_3_TREADY => '0',
      M_AXIS_4_ACLK => '0',
      M_AXIS_4_TREADY => '0',
      M_AXIS_5_ACLK => '0',
      M_AXIS_5_TREADY => '0',
      M_AXIS_6_ACLK => '0',
      M_AXIS_6_TREADY => '0',
      M_AXIS_7_ACLK => '0',
      M_AXIS_7_TREADY => '0',
      m_axis_rxd_aclk => m_axis_rxd_aclk,
      m_axis_rxd_aresetn => m_axis_rxd_aresetn,
      m_axis_rxd_tdata => m_axis_rxd_tdata,
      m_axis_rxd_tkeep => m_axis_rxd_tkeep,
      m_axis_rxd_tlast => m_axis_rxd_tlast,
      m_axis_rxd_tvalid => m_axis_rxd_tvalid,
      m_axis_rxd_tready => m_axis_rxd_tready,
      m_axis_rxs_aclk => m_axis_rxs_aclk,
      m_axis_rxs_aresetn => m_axis_rxs_aresetn,
      m_axis_rxs_tdata => m_axis_rxs_tdata,
      m_axis_rxs_tkeep => m_axis_rxs_tkeep,
      m_axis_rxs_tlast => m_axis_rxs_tlast,
      m_axis_rxs_tvalid => m_axis_rxs_tvalid,
      m_axis_rxs_tready => m_axis_rxs_tready,
      S_AXIS_0_ACLK => S_AXIS_0_ACLK,
      S_AXIS_0_ARESETN => S_AXIS_0_ARESETN,
      S_AXIS_0_TVALID => S_AXIS_0_TVALID,
      S_AXIS_0_TREADY => S_AXIS_0_TREADY,
      S_AXIS_0_TDATA => S_AXIS_0_TDATA,
      S_AXIS_0_TSTRB => S_AXIS_0_TSTRB,
      S_AXIS_0_TKEEP => S_AXIS_0_TKEEP,
      S_AXIS_0_TLAST => S_AXIS_0_TLAST,
      S_AXIS_0_TID => S_AXIS_0_TID,
      S_AXIS_0_TDEST => S_AXIS_0_TDEST,
      S_AXIS_0_TUSER => S_AXIS_0_TUSER,
      S_AXIS_1_ACLK => '0',
      S_AXIS_1_TVALID => '0',
      S_AXIS_1_TDATA => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      S_AXIS_1_TSTRB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_1_TKEEP => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_1_TLAST => '0',
      S_AXIS_1_TID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_1_TDEST => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_1_TUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_2_ACLK => '0',
      S_AXIS_2_TVALID => '0',
      S_AXIS_2_TDATA => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      S_AXIS_2_TSTRB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_2_TKEEP => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_2_TLAST => '0',
      S_AXIS_2_TID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_2_TDEST => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_2_TUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_3_ACLK => '0',
      S_AXIS_3_TVALID => '0',
      S_AXIS_3_TDATA => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      S_AXIS_3_TSTRB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_3_TKEEP => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_3_TLAST => '0',
      S_AXIS_3_TID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_3_TDEST => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_3_TUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_4_ACLK => '0',
      S_AXIS_4_TVALID => '0',
      S_AXIS_4_TDATA => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      S_AXIS_4_TSTRB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_4_TKEEP => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_4_TLAST => '0',
      S_AXIS_4_TID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_4_TDEST => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_4_TUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_5_ACLK => '0',
      S_AXIS_5_TVALID => '0',
      S_AXIS_5_TDATA => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      S_AXIS_5_TSTRB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_5_TKEEP => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_5_TLAST => '0',
      S_AXIS_5_TID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_5_TDEST => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_5_TUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_6_ACLK => '0',
      S_AXIS_6_TVALID => '0',
      S_AXIS_6_TDATA => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      S_AXIS_6_TSTRB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_6_TKEEP => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_6_TLAST => '0',
      S_AXIS_6_TID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_6_TDEST => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_6_TUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_7_ACLK => '0',
      S_AXIS_7_TVALID => '0',
      S_AXIS_7_TDATA => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      S_AXIS_7_TSTRB => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_7_TKEEP => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      S_AXIS_7_TLAST => '0',
      S_AXIS_7_TID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_7_TDEST => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      S_AXIS_7_TUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1))
    );
END top_axis_rtr_datamover_0_0_arch;
