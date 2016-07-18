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

-- IP VLNV: xilinx.com:ip:axis_accelerator_adapter:2.1
-- IP Revision: 6

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT zed_sobel_filter_0_if_0
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    s_axis_aclk : IN STD_LOGIC;
    s_axis_aresetn : IN STD_LOGIC;
    s_axis_0_tvalid : IN STD_LOGIC;
    s_axis_0_tready : OUT STD_LOGIC;
    s_axis_0_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axis_0_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_0_tlast : IN STD_LOGIC;
    ap_fifo_iarg_0_dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ap_fifo_iarg_0_read : IN STD_LOGIC;
    ap_fifo_iarg_0_empty_n : OUT STD_LOGIC;
    m_axis_aclk : IN STD_LOGIC;
    m_axis_aresetn : IN STD_LOGIC;
    m_axis_0_tvalid : OUT STD_LOGIC;
    m_axis_0_tready : IN STD_LOGIC;
    m_axis_0_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_0_tstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_0_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_0_tlast : OUT STD_LOGIC;
    m_axis_0_tid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_0_tdest : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_0_tuser : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ap_fifo_oarg_0_din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ap_fifo_oarg_0_write : IN STD_LOGIC;
    ap_fifo_oarg_0_full_n : OUT STD_LOGIC;
    aclk : IN STD_LOGIC;
    aresetn : OUT STD_LOGIC;
    ap_start : OUT STD_LOGIC;
    ap_ready : IN STD_LOGIC;
    ap_done : IN STD_LOGIC;
    ap_continue : OUT STD_LOGIC;
    ap_idle : IN STD_LOGIC;
    ap_oscalar_0_din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    interrupt : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : zed_sobel_filter_0_if_0
  PORT MAP (
    s_axi_aclk => s_axi_aclk,
    s_axi_aresetn => s_axi_aresetn,
    s_axi_awaddr => s_axi_awaddr,
    s_axi_awvalid => s_axi_awvalid,
    s_axi_awready => s_axi_awready,
    s_axi_wdata => s_axi_wdata,
    s_axi_wstrb => s_axi_wstrb,
    s_axi_wvalid => s_axi_wvalid,
    s_axi_wready => s_axi_wready,
    s_axi_bresp => s_axi_bresp,
    s_axi_bvalid => s_axi_bvalid,
    s_axi_bready => s_axi_bready,
    s_axi_araddr => s_axi_araddr,
    s_axi_arvalid => s_axi_arvalid,
    s_axi_arready => s_axi_arready,
    s_axi_rdata => s_axi_rdata,
    s_axi_rresp => s_axi_rresp,
    s_axi_rvalid => s_axi_rvalid,
    s_axi_rready => s_axi_rready,
    s_axis_aclk => s_axis_aclk,
    s_axis_aresetn => s_axis_aresetn,
    s_axis_0_tvalid => s_axis_0_tvalid,
    s_axis_0_tready => s_axis_0_tready,
    s_axis_0_tdata => s_axis_0_tdata,
    s_axis_0_tkeep => s_axis_0_tkeep,
    s_axis_0_tlast => s_axis_0_tlast,
    ap_fifo_iarg_0_dout => ap_fifo_iarg_0_dout,
    ap_fifo_iarg_0_read => ap_fifo_iarg_0_read,
    ap_fifo_iarg_0_empty_n => ap_fifo_iarg_0_empty_n,
    m_axis_aclk => m_axis_aclk,
    m_axis_aresetn => m_axis_aresetn,
    m_axis_0_tvalid => m_axis_0_tvalid,
    m_axis_0_tready => m_axis_0_tready,
    m_axis_0_tdata => m_axis_0_tdata,
    m_axis_0_tstrb => m_axis_0_tstrb,
    m_axis_0_tkeep => m_axis_0_tkeep,
    m_axis_0_tlast => m_axis_0_tlast,
    m_axis_0_tid => m_axis_0_tid,
    m_axis_0_tdest => m_axis_0_tdest,
    m_axis_0_tuser => m_axis_0_tuser,
    ap_fifo_oarg_0_din => ap_fifo_oarg_0_din,
    ap_fifo_oarg_0_write => ap_fifo_oarg_0_write,
    ap_fifo_oarg_0_full_n => ap_fifo_oarg_0_full_n,
    aclk => aclk,
    aresetn => aresetn,
    ap_start => ap_start,
    ap_ready => ap_ready,
    ap_done => ap_done,
    ap_continue => ap_continue,
    ap_idle => ap_idle,
    ap_oscalar_0_din => ap_oscalar_0_din,
    interrupt => interrupt
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file zed_sobel_filter_0_if_0.vhd when simulating
-- the core, zed_sobel_filter_0_if_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

