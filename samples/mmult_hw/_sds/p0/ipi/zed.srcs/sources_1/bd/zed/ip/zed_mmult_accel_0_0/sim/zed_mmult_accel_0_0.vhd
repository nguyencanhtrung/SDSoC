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

-- IP VLNV: xilinx.com:hls:mmult_accel:1.0
-- IP Revision: 1607272024

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zed_mmult_accel_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_A_Clk_A : OUT STD_LOGIC;
    in_A_Rst_A : OUT STD_LOGIC;
    in_A_EN_A : OUT STD_LOGIC;
    in_A_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_A_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_A_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_A_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_B_Clk_A : OUT STD_LOGIC;
    in_B_Rst_A : OUT STD_LOGIC;
    in_B_EN_A : OUT STD_LOGIC;
    in_B_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_B_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_B_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_B_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_C_Clk_A : OUT STD_LOGIC;
    out_C_Rst_A : OUT STD_LOGIC;
    out_C_EN_A : OUT STD_LOGIC;
    out_C_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    out_C_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_C_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_C_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END zed_mmult_accel_0_0;

ARCHITECTURE zed_mmult_accel_0_0_arch OF zed_mmult_accel_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF zed_mmult_accel_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT mmult_accel IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      in_A_Clk_A : OUT STD_LOGIC;
      in_A_Rst_A : OUT STD_LOGIC;
      in_A_EN_A : OUT STD_LOGIC;
      in_A_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      in_A_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_A_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_A_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_B_Clk_A : OUT STD_LOGIC;
      in_B_Rst_A : OUT STD_LOGIC;
      in_B_EN_A : OUT STD_LOGIC;
      in_B_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      in_B_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_B_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_B_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      out_C_Clk_A : OUT STD_LOGIC;
      out_C_Rst_A : OUT STD_LOGIC;
      out_C_EN_A : OUT STD_LOGIC;
      out_C_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      out_C_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      out_C_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      out_C_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT mmult_accel;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF in_A_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_A_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF in_A_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_A_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF in_A_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_A_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF in_A_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_A_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF in_A_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_A_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF in_A_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_A_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF in_A_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_A_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF in_B_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_B_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF in_B_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_B_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF in_B_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_B_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF in_B_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_B_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF in_B_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_B_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF in_B_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_B_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF in_B_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 in_B_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF out_C_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 out_C_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF out_C_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 out_C_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF out_C_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 out_C_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF out_C_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 out_C_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF out_C_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 out_C_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF out_C_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 out_C_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF out_C_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 out_C_PORTA DOUT";
BEGIN
  U0 : mmult_accel
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      in_A_Clk_A => in_A_Clk_A,
      in_A_Rst_A => in_A_Rst_A,
      in_A_EN_A => in_A_EN_A,
      in_A_WEN_A => in_A_WEN_A,
      in_A_Addr_A => in_A_Addr_A,
      in_A_Din_A => in_A_Din_A,
      in_A_Dout_A => in_A_Dout_A,
      in_B_Clk_A => in_B_Clk_A,
      in_B_Rst_A => in_B_Rst_A,
      in_B_EN_A => in_B_EN_A,
      in_B_WEN_A => in_B_WEN_A,
      in_B_Addr_A => in_B_Addr_A,
      in_B_Din_A => in_B_Din_A,
      in_B_Dout_A => in_B_Dout_A,
      out_C_Clk_A => out_C_Clk_A,
      out_C_Rst_A => out_C_Rst_A,
      out_C_EN_A => out_C_EN_A,
      out_C_WEN_A => out_C_WEN_A,
      out_C_Addr_A => out_C_Addr_A,
      out_C_Din_A => out_C_Din_A,
      out_C_Dout_A => out_C_Dout_A
    );
END zed_mmult_accel_0_0_arch;
