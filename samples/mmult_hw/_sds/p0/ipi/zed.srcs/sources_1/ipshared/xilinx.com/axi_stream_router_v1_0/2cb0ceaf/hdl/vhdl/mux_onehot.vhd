-------------------------------------------------------------------------------
-- Copyright (C) 2008 Raul Mateos.
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License version 2 as
-- published by the Free Software Foundation.
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Title      : mp_dsp
-- Project    : Multiprocessor arbitration system. 
-------------------------------------------------------------------------------
-- File       : mux_onehot.vhd
-- Author     : Raúl Mateos.
-- Company    : Universidad de Alcalá
-- Last update: 2008/02/10
-- Platform   : Xilinx Spartan 3 (XC3S1000FG320-4)
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity mux_onehot is
  generic (
    C_N_CHANNELS    : integer := 4;
    C_CHANNEL_WIDTH : integer := 32
  );
  port (
    data_in   : in  std_logic_vector(C_N_CHANNELS*C_CHANNEL_WIDTH-1 downto 0);
    sel       : in  std_logic_vector(C_N_CHANNELS-1 downto 0);
    data_out  : out std_logic_vector(C_CHANNEL_WIDTH-1 downto 0));
end mux_onehot;

architecture rtl of mux_onehot is
begin

  EVEN_GEN: if (C_N_CHANNELS rem 2 = 0) generate
    constant N_BLOCKS : integer := C_N_CHANNELS/2;
  begin 
    GLB_MUX_GEN : for k in 0 to C_CHANNEL_WIDTH-1 generate
      signal bit_in : std_logic_vector(C_N_CHANNELS-1 downto 0);
      signal lut_x  : std_logic_vector(N_BLOCKS-1 downto 0);
      signal carry  : std_logic_vector(N_BLOCKS   downto 0);
    begin
      -- Construyo un vector con los bits k-esimos de cada canal
      INPUT_GEN : for i in 0 to C_N_CHANNELS-1 generate
      begin
        bit_in(i) <= data_in(C_CHANNEL_WIDTH*i+k);
      end generate;    
  
      carry(0) <= '0';
      BIT_MUX_GEN : for i in 0 to N_BLOCKS-1 generate
      begin
        lut_x(i) <= not bit_in(2*i)   when (sel(2*i)    = '1') else
                    not bit_in(2*i+1) when (sel(2*i+1)  = '1') else  '1'; 
        MUX_I : MUXCY
          port map (
            CI => carry(i),
            DI => '1',
            S  => lut_x(i),
            O  => carry(i+1));
      end generate;    
      data_out(k) <= carry(N_BLOCKS);
    end generate;
  end generate;

  ODD_GEN: if (C_N_CHANNELS rem 2 /= 0) generate
    constant N_BLOCKS : integer := C_N_CHANNELS/2;
  begin 
    GLB_MUX_GEN : for k in 0 to C_CHANNEL_WIDTH-1 generate
      signal bit_in : std_logic_vector(C_N_CHANNELS-1 downto 0);
      signal lut_x  : std_logic_vector(N_BLOCKS-1 downto 0);
      signal carry  : std_logic_vector(N_BLOCKS   downto 0);

      signal last_lut : std_logic;

    begin
      -- Construyo un vector con los bits k-esimos de cada canal
      INPUT_GEN : for i in 0 to C_N_CHANNELS-1 generate
      begin
        bit_in(i) <= data_in(C_CHANNEL_WIDTH*i+k);
      end generate;    
  
      carry(0) <= '0';
      BIT_MUX_GEN : for i in 0 to N_BLOCKS-1 generate
      begin
        lut_x(i) <= not bit_in(2*i)   when (sel(2*i)    = '1') else
                    not bit_in(2*i+1) when (sel(2*i+1)  = '1') else  '1'; 
        MUX_I : MUXCY
          port map (
            CI => carry(i),
            DI => '1',
            S  => lut_x(i),
            O  => carry(i+1));
      end generate;
      
      last_lut <= not bit_in(C_N_CHANNELS-1) when (sel(C_N_CHANNELS-1) = '1') else '1';
      
      LAST_MUX : MUXCY
        port map (
          CI => carry(N_BLOCKS),
          DI => '1',
          S  => last_lut,
          O  => data_out(k));

    --data_out(k) <= bit_in(C_N_CHANNELS-1) when (sel(C_N_CHANNELS-1) = '1') else carry(N_BLOCKS);
    end generate;
  end generate;



end rtl;

