-- NOTAS:
-- Tal y como se indica en "Virtex-5 Libraries Guide for HDL Designs ISE 9.1i":
--    If CYINIT is used, CI must be grounded, and vice-versa
-- En "Targeting and Retargeting Guide for Spartan-6 FPGAs" se indica que 
-- "These primitives are automatically retargeted" refiriendose a MUXCY, XORCY, 
-- MULTAND, MUXF5, and MUXF6 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library axi_stream_router_v1_00_a;
use axi_stream_router_v1_00_a.common_pkg.all;
-- use common_pkg.all;

entity priority_one_hot is
  generic (
    -- System generics:
    C_FAMILY    : string  := "virtex6";     -- Xilinx FPGA family
    WIDTH       : integer);
  port (     
    request_n   : in  std_logic_vector(WIDTH-1 downto 0);
    grant       : out std_logic_vector(WIDTH-1 downto 0);
    grant_ce    : out std_logic_vector(WIDTH-1 downto 0));
end entity;

architecture rtl of priority_one_hot is
  signal carry_out  : std_logic_vector(WIDTH-1 downto 0);  -- carry out
  constant CIN_0    : std_logic := '1';
begin

  CARRY_GEN : for i in 0 to WIDTH-1 generate
  begin
    FIRST_CELL_GEN : if (i = 0) generate
    begin
      MUX_I : MUXCY
        port map (
          CI => CIN_0,
          DI => '0',
          S  => request_n(i),
          O  => carry_out(i));
    end generate FIRST_CELL_GEN;
    
    OTHER_CELLS_GEN : if (i > 0) generate
    begin
      MUX_I : MUXCY
        port map (
          CI => carry_out(i-1),
          DI => '0',
          S  => request_n(i),
          O  => carry_out(i));
    end generate OTHER_CELLS_GEN;
  end generate;

  grant_ce <= not(carry_out(WIDTH-1 downto 0));
  grant <= not(request_n) and (carry_out(WIDTH-2 downto 0) & CIN_0);

end rtl;


--CYINIT is the CIN of the first bit in a carry chain. The
--CYINIT value can be 0 (for add), 1 (for subtract), or AX input (for the dynamic first carry
--bit). The CIN input is used to cascade slices to form a longer carry chain. The O outputs
--contain the sum of the addition/subtraction. The CO outputs compute the carry out for
--each bit. CO3 is connected to COUT output of a slice to form a longer carry chain by
--cascading multiple slices. The propagation delay for an adder increases linearly with the
--number of bits in the operand, as more carry chains are cascaded. The carry chain can be
--implemented with a storage element or a flip-flop in the same slice.
--

--CYINIT <Optional>- The carry initialization pin is used to initialize the carry chain
--with a static one or zero, or can be connected to a dynamic source logic signal. If
--CYINIT is used, CI must be grounded, and vice-versa.
--CI - <Optional> The carry-in data input should only be connected to the CO[3] port of
--a previously instantiated CARRY4 in order to form a longer carry chain. If CYINIT is
--used, CI must be grounded, and vice-versa.
--

--  grant_cin(0) <= '1';
--  GRANT_CARRY_GEN : for i in 0 to N_CHANNELS-1 generate
--  begin
--    MUXCY_I : MUXCY
--      port map (
--        DI  => '0',
--        CI  => grant_cin(i),
--        S   => level_rqt_n(i),
--        O   => grant_cin(i+1));
--        
--    next_grant(i) <= not(level_rqt_n(i)) and grant_cin(i);
--  end generate GRANT_CARRY_GEN;
--
