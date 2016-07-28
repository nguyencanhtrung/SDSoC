-------------------------------------------------------------------------------
-- Title      : Accelerator Adapter
-- Project    : 
-------------------------------------------------------------------------------
-- File       : xd_m2s_adapter.vhd
-- Author     : rmg/jn
-- Company    : Xilinx, Inc.
-- Created    : 2012-09-05
-- Last update: 2013-10-25
-- Platform   : 
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- (c) Copyright 2012 Xilinx, Inc. All rights reserved.
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2012-09-05  1.0      rmg/jn	Created
-- 2013-10-25  2.0      pvk     Added support for UltraScale primitives. 
-------------------------------------------------------------------------------
-- ****************************************************************************
--
-- (c) Copyright 2013 Xilinx, Inc. All rights reserved.
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
-- ****************************************************************************
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library axis_accelerator_adapter_v2_1;
use axis_accelerator_adapter_v2_1.xd_adapter_pkg.all;
use axis_accelerator_adapter_v2_1.xd_m2s_converter;
use axis_accelerator_adapter_v2_1.xd_m2s_memory_dc;




entity xd_m2s_adapter is
  generic (
    C_FAMILY               : string;         -- Xilinx FPGA family
    C_BRAM_TYPE            : string := "7_SERIES";  -- 7_SERIES = RAMB36E1. ULTRASCALE = RAMB36E2
    C_M_AXIS_TDATA_WIDTH   : integer;
    C_M_AXIS_TUSER_WIDTH   : integer;
    C_M_AXIS_TID_WIDTH     : integer;
    C_M_AXIS_TDEST_WIDTH   : integer;
    C_AP_ARG_DATA_WIDTH    : integer;
    C_AP_ARG_ADDR_WIDTH    : integer;
    C_MULTIBUFFER_DEPTH    : integer;
    C_AP_ARG_WIDTH         : integer;
    C_AP_ARG_N_DIM         : integer;
    C_AP_ARG_DIMS          : int_vector;
    C_AP_ARG_DIM_1         : integer;
    C_AP_ARG_DIM_2         : integer;
    C_AP_ARG_FORMAT_TYPE   : integer;
    C_AP_ARG_FORMAT_FACTOR : integer;
    C_AP_ARG_FORMAT_DIM    : integer);
  port (
    -- Output streams
    M_AXIS_ACLK     : in  std_logic;
    M_AXIS_ARESETN  : in  std_logic;
    M_AXIS_TVALID   : out std_logic;
    M_AXIS_TREADY   : in  std_logic;
    M_AXIS_TDATA    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_TSTRB    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_TKEEP    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_TLAST    : out std_logic;
    M_AXIS_TID      : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    M_AXIS_TDEST    : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    M_AXIS_TUSER    : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);
    sw_length       : in  std_logic_vector(31 downto 0);
    sw_length_we    : in  std_logic;
    use_sw_length   : in  std_logic;
    host_oarg_tdest : in  std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    ap_clk          : in  std_logic;
    ap_rst          : in  std_logic;
    ap_arg_addr     : in  std_logic_vector(C_AP_ARG_ADDR_WIDTH-1 downto 0);
    ap_arg_ce       : in  std_logic;
    ap_arg_we       : in  std_logic;
    ap_arg_din      : in  std_logic_vector(C_AP_ARG_DATA_WIDTH-1 downto 0);
    ap_arg_dout     : out std_logic_vector(C_AP_ARG_DATA_WIDTH-1 downto 0);
    ap_arg_rqt      : out std_logic;
    ap_arg_ack      : in  std_logic;
    ap_arg_empty    : out std_logic;
    ap_arg_full     : out std_logic;
    ap_arg_used     : out std_logic_vector(3 downto 0));  -- Number of used buffers
end entity;

architecture rtl of xd_m2s_adapter is

  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of rtl : architecture is "yes";

  function calc_axi_addr_width return integer is
    variable addr_width : integer := 0;
  begin
    if (C_M_AXIS_TDATA_WIDTH > C_AP_ARG_DATA_WIDTH) then
      addr_width := C_AP_ARG_ADDR_WIDTH-log2(C_M_AXIS_TDATA_WIDTH/C_AP_ARG_DATA_WIDTH);
    else
      addr_width := C_AP_ARG_ADDR_WIDTH+log2(C_AP_ARG_DATA_WIDTH/C_M_AXIS_TDATA_WIDTH);
    end if;
    return addr_width;
  end function calc_axi_addr_width;

  constant AXI_DATA_WIDTH : integer := C_M_AXIS_TDATA_WIDTH;
  constant AXI_ADDR_WIDTH : integer := calc_axi_addr_width;
  constant SIZE_WIDTH     : integer := C_AP_ARG_ADDR_WIDTH+1+log2(C_AP_ARG_DATA_WIDTH/8);

  signal conv_addr    : std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
  signal conv_ce      : std_logic;
  signal conv_we      : std_logic;
  signal conv_last    : std_logic;
  signal conv_rdy     : std_logic;
  signal conv_data    : std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
  -- Number of bytes written by accelerator
  signal conv_size    : std_logic_vector(SIZE_WIDTH-1 downto 0);
  signal axis_rst     : std_logic;
  signal ap_arg_rqt_i : std_logic;

begin

  axis_rst <= not(M_AXIS_ARESETN) or ap_rst;

  CONVERTER_I : entity axis_accelerator_adapter_v2_1.xd_m2s_converter
    generic map (
      C_FAMILY       => C_FAMILY,
      SIZE_WIDTH     => SIZE_WIDTH,
      AXI_DATA_WIDTH => AXI_DATA_WIDTH,
      AXI_ADDR_WIDTH => AXI_ADDR_WIDTH,
      AXI_USER_WIDTH => C_M_AXIS_TUSER_WIDTH,
      AXI_ID_WIDTH   => C_M_AXIS_TID_WIDTH,
      AXI_DEST_WIDTH => C_M_AXIS_TDEST_WIDTH)
    port map (
      axi_clk         => M_AXIS_ACLK,
      axi_rst         => axis_rst,
      axis_vld        => M_AXIS_TVALID,
      axis_rdy        => M_AXIS_TREADY,
      axis_data       => M_AXIS_TDATA,
      axis_keep       => M_AXIS_TKEEP,
      axis_strb       => M_AXIS_TSTRB,
      axis_last       => M_AXIS_TLAST,
      axis_id         => M_AXIS_TID,
      axis_dest       => M_AXIS_TDEST,
      axis_user       => M_AXIS_TUSER,
      conv_size       => conv_size,
      conv_addr       => conv_addr,
      conv_ce         => conv_ce,
      conv_we         => conv_we,
      conv_last       => conv_last,
      conv_rdy        => conv_rdy,
      conv_data       => conv_data,
      host_oarg_tdest => host_oarg_tdest);

  MEM_CTRL_I : entity axis_accelerator_adapter_v2_1.xd_m2s_memory_dc
    generic map (
      -- System generics:
      C_FAMILY               => C_FAMILY,
      C_BRAM_TYPE            => C_BRAM_TYPE,
      SIZE_WIDTH             => SIZE_WIDTH,
      CONV_DATA_WIDTH        => AXI_DATA_WIDTH,
      CONV_ADDR_WIDTH        => AXI_ADDR_WIDTH,
      C_AP_ARG_DATA_WIDTH    => C_AP_ARG_DATA_WIDTH,
      C_AP_ARG_ADDR_WIDTH    => C_AP_ARG_ADDR_WIDTH,
      C_MULTIBUFFER_DEPTH    => C_MULTIBUFFER_DEPTH,
      C_AP_ARG_WIDTH         => C_AP_ARG_WIDTH,
      C_AP_ARG_N_DIM         => C_AP_ARG_N_DIM,
      C_AP_ARG_DIMS          => C_AP_ARG_DIMS,
      C_AP_ARG_DIM_1         => C_AP_ARG_DIM_1,
      C_AP_ARG_DIM_2         => C_AP_ARG_DIM_2,
      C_AP_ARG_FORMAT_TYPE   => C_AP_ARG_FORMAT_TYPE,
      C_AP_ARG_FORMAT_FACTOR => C_AP_ARG_FORMAT_FACTOR,
      C_AP_ARG_FORMAT_DIM    => C_AP_ARG_FORMAT_DIM,
      C_NONE                 => 2)
    port map (
      clk           => M_AXIS_ACLK,
      rst           => axis_rst,
      conv_size     => conv_size,
      conv_addr     => conv_addr,
      conv_ce       => conv_ce,
      conv_we       => conv_we,
      conv_last     => conv_last,
      conv_rdy      => conv_rdy,
      conv_data     => conv_data,
      sw_length     => sw_length,
      sw_length_we  => sw_length_we,
      use_sw_length => use_sw_length,
      ap_clk        => ap_clk,
      ap_rst        => ap_rst,
      ap_arg_addr   => ap_arg_addr,
      ap_arg_ce     => ap_arg_ce,
      ap_arg_we     => ap_arg_we,
      ap_arg_din    => ap_arg_din,
      ap_arg_dout   => ap_arg_dout,
      ap_arg_rqt    => ap_arg_rqt_i,
      ap_arg_ack    => ap_arg_ack,
      ap_arg_empty  => ap_arg_empty,
      ap_arg_full   => ap_arg_full,
      ap_arg_used   => ap_arg_used);

  ap_arg_rqt <= ap_arg_rqt_i;

end rtl;

