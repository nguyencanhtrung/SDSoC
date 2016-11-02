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

-- IP VLNV: xilinx.com:hls:correlation_accel_v2:1.0
-- IP Revision: 1611021600

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zed_correlation_accel_v2_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    number_of_days : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    number_of_indices : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_indices_TVALID : IN STD_LOGIC;
    in_indices_TREADY : OUT STD_LOGIC;
    in_indices_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_indices_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_indices_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_indices_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_indices_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_indices_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_indices_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_correlation_TVALID : OUT STD_LOGIC;
    out_correlation_TREADY : IN STD_LOGIC;
    out_correlation_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_correlation_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_correlation_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    out_correlation_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    out_correlation_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_correlation_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_correlation_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END zed_correlation_accel_v2_0_0;

ARCHITECTURE zed_correlation_accel_v2_0_0_arch OF zed_correlation_accel_v2_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zed_correlation_accel_v2_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT correlation_accel_v2 IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      number_of_days : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      number_of_indices : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_indices_TVALID : IN STD_LOGIC;
      in_indices_TREADY : OUT STD_LOGIC;
      in_indices_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_indices_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_indices_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      in_indices_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      in_indices_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_indices_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_indices_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_correlation_TVALID : OUT STD_LOGIC;
      out_correlation_TREADY : IN STD_LOGIC;
      out_correlation_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      out_correlation_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_correlation_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      out_correlation_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      out_correlation_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_correlation_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_correlation_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT correlation_accel_v2;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF number_of_days: SIGNAL IS "xilinx.com:signal:data:1.0 number_of_days DATA";
  ATTRIBUTE X_INTERFACE_INFO OF number_of_indices: SIGNAL IS "xilinx.com:signal:data:1.0 number_of_indices DATA";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 in_indices TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 in_indices TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 in_indices TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 in_indices TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 in_indices TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 in_indices TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 in_indices TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 in_indices TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF in_indices_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 in_indices TID";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 out_correlation TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 out_correlation TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 out_correlation TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 out_correlation TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 out_correlation TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 out_correlation TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 out_correlation TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 out_correlation TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF out_correlation_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 out_correlation TID";
BEGIN
  U0 : correlation_accel_v2
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      number_of_days => number_of_days,
      number_of_indices => number_of_indices,
      in_indices_TVALID => in_indices_TVALID,
      in_indices_TREADY => in_indices_TREADY,
      in_indices_TDATA => in_indices_TDATA,
      in_indices_TDEST => in_indices_TDEST,
      in_indices_TKEEP => in_indices_TKEEP,
      in_indices_TSTRB => in_indices_TSTRB,
      in_indices_TUSER => in_indices_TUSER,
      in_indices_TLAST => in_indices_TLAST,
      in_indices_TID => in_indices_TID,
      out_correlation_TVALID => out_correlation_TVALID,
      out_correlation_TREADY => out_correlation_TREADY,
      out_correlation_TDATA => out_correlation_TDATA,
      out_correlation_TDEST => out_correlation_TDEST,
      out_correlation_TKEEP => out_correlation_TKEEP,
      out_correlation_TSTRB => out_correlation_TSTRB,
      out_correlation_TUSER => out_correlation_TUSER,
      out_correlation_TLAST => out_correlation_TLAST,
      out_correlation_TID => out_correlation_TID
    );
END zed_correlation_accel_v2_0_0_arch;
