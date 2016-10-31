-------------------------------------------------------------------------------
-- Title      : Accelerator Adapter
-- Project    : 
-------------------------------------------------------------------------------
-- File       : xd_output_scalars_fifo.vhd
-- Author     : rmg/jn
-- Company    : Xilinx, Inc.
-- Created    : 2012-09-05
-- Last update: 2012-11-04
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
-------------------------------------------------------------------------------
-- ****************************************************************************
--
-- (c) Copyright 2010, 2011 Xilinx, Inc. All rights reserved.
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

entity xd_output_scalars_fifo is
  generic (
    C_FAMILY : string  := "virtex6";              -- Xilinx FPGA family
    WIDTH    : integer := 16);
  port (
    din      : in  std_logic_vector(WIDTH-1 downto 0);
    din_vld  : in  std_logic;
    din_rdy  : out std_logic;
    wr_clk   : in  std_logic;
    dout     : out std_logic_vector(WIDTH-1 downto 0);
    dout_vld : out std_logic;
    dout_rdy : in  std_logic;
    rd_used  : out std_logic_vector(3 downto 0);  -- Additional bit needed
    rd_empty : out std_logic;
    rd_full  : out std_logic;
    rd_clk   : in  std_logic;
    rst      : in  std_logic);
end xd_output_scalars_fifo;

architecture rtl of xd_output_scalars_fifo is

  -- FIFO constants
  constant DEPTH              : integer := 15;
  constant FIFO_DEPTH         : integer := calc_fifo_depth(DEPTH);
  constant ADDR_BITS          : integer := log2(FIFO_DEPTH);
  constant INIT_NEXT_RD_GRAY  : integer := 2**ADDR_BITS-1;
  constant INIT_RD_GRAY       : integer := 2**ADDR_BITS-2;
  constant INIT_PREV_RD_GRAY  : integer := 2**ADDR_BITS-3;
  constant INIT_NEXT_WR_GRAY  : integer := INIT_NEXT_RD_GRAY;
  constant INIT_WR_GRAY       : integer := INIT_RD_GRAY;
  constant INIT_WR_GRAY_AHEAD : integer := 2**ADDR_BITS-0;

  signal rd_addr       : unsigned(ADDR_BITS-1 downto 0);
  signal wr_addr       : unsigned(ADDR_BITS-1 downto 0);
  -- Next signals are gray values:
  signal wr_gray       : std_logic_vector(ADDR_BITS-1 downto 0);
  signal next_wr_gray  : std_logic_vector(ADDR_BITS-1 downto 0);
  signal wr_gray_ahead : std_logic_vector(ADDR_BITS-1 downto 0);
  signal rd_gray       : std_logic_vector(ADDR_BITS-1 downto 0);
  signal next_rd_gray  : std_logic_vector(ADDR_BITS-1 downto 0);
  signal prev_rd_gray  : std_logic_vector(ADDR_BITS-1 downto 0);
  -- 
  signal fifo_we       : std_logic;
  signal fifo_re       : std_logic;
  -- 
  signal din_rdy_i     : std_logic;
  signal empty_i       : std_logic;
  signal rd_en         : std_logic;
  signal dout_vld_i    : std_logic;
  signal dout_trf_ok   : std_logic;

  type   mem_type is array (2**ADDR_BITS-1 downto 0) of std_logic_vector (WIDTH-1 downto 0);
  signal mem : mem_type;

  attribute ram_style        : string;
  attribute ram_style of mem : signal is "distributed";

  signal mem_dout     : std_logic_vector(WIDTH-1 downto 0);
  -- 
  signal wr_gray_sync : std_logic_vector(ADDR_BITS-1 downto 0);
  signal rd_bin       : unsigned(ADDR_BITS-1 downto 0);
  signal wr_bin       : unsigned(ADDR_BITS-1 downto 0);
  signal ptr_dist     : unsigned(ADDR_BITS-1 downto 0);
  signal rd_full_i    : std_logic;

begin

  fifo_we <= din_vld and din_rdy_i;

  process(wr_clk, rst)
  begin
    if(rst = '1') then
      wr_addr <= (others => '0');
    elsif(wr_clk'event and wr_clk = '1') then
      if(fifo_we = '1') then
        wr_addr <= wr_addr + 1;
      end if;
    end if;
  end process;

  fifo_re <= rd_en and not(empty_i);

  process(rd_clk, rst)
  begin
    if(rst = '1') then
      rd_addr <= (others => '0');
    elsif(rd_clk'event and rd_clk = '1') then
      if(fifo_re = '1') then
        rd_addr <= rd_addr + 1;
      end if;
    end if;
  end process;

  ---------------------------------------------------------
  process(rd_clk, rst)
  begin
    if(rst = '1') then
      next_rd_gray <= bin2gray(INIT_NEXT_RD_GRAY, ADDR_BITS);
      rd_gray      <= bin2gray(INIT_RD_GRAY, ADDR_BITS);
      prev_rd_gray <= bin2gray(INIT_PREV_RD_GRAY, ADDR_BITS);
    elsif(rd_clk'event and rd_clk = '1') then
      if(fifo_re = '1') then
        prev_rd_gray <= rd_gray;
        rd_gray      <= next_rd_gray;
        next_rd_gray <= bin2gray(std_logic_vector(rd_addr));
      end if;
    end if;
  end process;

  process(wr_clk, rst)
  begin
    if(rst = '1') then
      next_wr_gray <= bin2gray(INIT_NEXT_WR_GRAY, ADDR_BITS);
      wr_gray      <= bin2gray(INIT_WR_GRAY, ADDR_BITS);
    elsif(wr_clk'event and wr_clk = '1') then
      if(fifo_we = '1') then
        wr_gray      <= next_wr_gray;
        next_wr_gray <= bin2gray(std_logic_vector(wr_addr));
      end if;
    end if;
  end process;

  process(wr_clk, rst)
  begin
    if(rst = '1') then
      wr_gray_ahead <= bin2gray(INIT_WR_GRAY_AHEAD, ADDR_BITS);
    elsif(wr_clk'event and wr_clk = '1') then
      if(fifo_we = '1') then
        wr_gray_ahead <= gray_inc(wr_gray_ahead);
      end if;
    end if;
  end process;

  -----------------------------------------------------------------
--  process(wr_clk, rst)
--  begin
--    if(rst = '1') then
--      din_rdy_i <= '0';
--    elsif(wr_clk'event and wr_clk = '1') then
--      if(din_rdy_i = '1') then
--        if (wr_gray_ahead = prev_rd_gray) then
--          din_rdy_i <= not(fifo_we);
--        else
--          din_rdy_i <= '1';
--        end if;
--      else
--        if (wr_gray_ahead = rd_gray) then
--          din_rdy_i <= '0';
--        else
--          din_rdy_i <= '1';
--        end if;
--      end if;
--    end if;
--  end process;
--   CR 741423 fix
-- If the oscalar_fifo_depth needs to be 16, din_rdy_i signal has to be validated on
-- next_wr_gray instead of wr_gray_ahead. wr_gray_ahead should be used
-- to keep the oscalar_fifo_depth equal to 15.
  process(wr_clk, rst)
  begin
    if(rst = '1') then
      din_rdy_i <= '0';
    elsif(wr_clk'event and wr_clk = '1') then
      if(din_rdy_i = '1') then
        if (next_wr_gray = prev_rd_gray) then
          din_rdy_i <= not(fifo_we);
        else
          din_rdy_i <= '1';
        end if;
      else
        if (next_wr_gray = rd_gray) then
          din_rdy_i <= '0';
        else
          din_rdy_i <= '1';
        end if;
      end if;
    end if;
  end process;


  din_rdy <= din_rdy_i;

  process(rd_clk, rst)
  begin
    if(rst = '1') then
      empty_i <= '1';
    elsif(rd_clk'event and rd_clk = '1') then
      if(empty_i = '0') then
        if(next_rd_gray = wr_gray) then
          empty_i <= fifo_re;
        else
          empty_i <= '0';
        end if;
      else
        if(rd_gray = wr_gray) then
          empty_i <= '1';
        else
          empty_i <= '0';
        end if;
      end if;
    end if;
  end process;

  rd_en <= not(dout_vld_i) or (dout_vld_i and dout_rdy);
  process(rd_clk, rst)
  begin
    if(rst = '1') then
      dout_vld_i <= '0';
    elsif(rd_clk'event and rd_clk = '1') then
      if(rd_en = '1') then
        dout_vld_i <= not(empty_i);
      end if;
    end if;
  end process;

  dout_vld <= dout_vld_i;

  dout_trf_ok <= dout_vld_i and dout_rdy;

  -----------------------------------------------------------------------
  -- Memory bank modeling. Let's allow XST do it for us:
  process(wr_clk)
  begin
    if(wr_clk'event and wr_clk = '1') then
      if(fifo_we = '1') then
        mem(to_integer(wr_addr)) <= din;
      end if;
    end if;
  end process;

  mem_dout <= mem(to_integer(rd_addr));

  process(rd_clk, rst)
  begin
    if(rst = '1') then
      dout <= (others => '0');
    elsif(rd_clk'event and rd_clk = '1') then
      if(fifo_re = '1') then
        dout <= mem_dout;
      end if;
    end if;
  end process;

  -----------------------------------------------------------------------
  -- wr_gray is synchronized with rd_clk to reduce metastability.
  -- This inserts an extra rd_clk cycle latency
  process(rd_clk, rst)
  begin
    if(rst = '1') then
      wr_gray_sync <= bin2gray(INIT_WR_GRAY, ADDR_BITS);
    elsif(rd_clk'event and rd_clk = '1') then
      wr_gray_sync <= wr_gray;
    end if;
  end process;

  wr_bin <= unsigned(gray2bin(wr_gray_sync));

  process(rd_clk, rst)
  begin
    if(rst = '1') then
      rd_bin <= to_unsigned(INIT_RD_GRAY, ADDR_BITS);
    elsif(rd_clk'event and rd_clk = '1') then
      if (dout_trf_ok = '1') then
        rd_bin <= rd_bin + 1;
      end if;
    end if;
  end process;

  process(rd_clk, rst)
  begin
    if(rst = '1') then
      ptr_dist <= (others => '0');
    elsif(rd_clk'event and rd_clk = '1') then
      if (dout_trf_ok = '1') then
        ptr_dist <= ptr_dist - 1;
      else
        -- this is also valid at the end of count sequence:
        -- wr_bin < rd_bin
        ptr_dist <= wr_bin - rd_bin;
      end if;
    end if;
  end process;

  rd_used <= std_logic_vector(ptr_dist);

  ----
  process(rd_clk, rst)
  begin
    if(rst = '1') then
      rd_full_i <= '1';
    elsif(rd_clk'event and rd_clk = '1') then
      -- If there is a read, we exit inmediately the full state
      if(dout_trf_ok = '1') then
        rd_full_i <= '0';
      else
        -- Stay in full if next_wr_gray = rd_gray
        if(next_wr_gray = rd_gray) then
          rd_full_i <= '1';
        else
          rd_full_i <= '0';
        end if;
      end if;
    end if;
  end process;

  rd_full <= rd_full_i;

  rd_empty <= not(dout_vld_i);

end rtl;


