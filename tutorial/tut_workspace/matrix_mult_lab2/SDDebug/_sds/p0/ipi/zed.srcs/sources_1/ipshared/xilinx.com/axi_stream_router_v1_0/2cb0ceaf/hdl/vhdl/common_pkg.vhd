library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package common_pkg is
  function get_sim_mode return boolean;

  function and_reduce(A : std_logic_vector) return std_logic;
  function or_reduce(A  : std_logic_vector) return std_logic;

  function log2(x : natural) return integer;

  function div_round_up(t : integer; Tclk : integer) return integer;
  function max(A : integer; B : integer) return integer;
  function min(A : integer; B : integer) return integer;
  function calc_width(n   : natural) return integer;

  function ext(value : std_logic_vector; width : natural := 32) return std_logic_vector; 

  -- Declaración de componentes:

  component srl_fifo_16
    generic (
      C_FAMILY  : string  := "virtex4";
      WIDTH     : integer := 16);
    port (
      rst   : in  std_logic;
      clk   : in  std_logic;
      wr_en : in  std_logic;
      din   : in  std_logic_vector(WIDTH-1 downto 0);
      rd_en : in  std_logic;
      dout  : out std_logic_vector(WIDTH-1 downto 0);
      empty : out std_logic;
      full  : out std_logic);
  end component;

  component srl_fifo_16_wt
    generic (
      C_FAMILY  : string  := "virtex4";
      WIDTH     : integer := 16);
    port (
      rst      : in  std_logic;
      clk      : in  std_logic;
      din      : in  std_logic_vector(WIDTH-1 downto 0);
      din_vld  : in  std_logic;
      din_rdy  : out std_logic;
      dout     : out std_logic_vector(WIDTH-1 downto 0);
      dout_vld : out std_logic;
      dout_rdy : in  std_logic);
  end component;

  component srl_fifo
    generic (
      C_FAMILY  : string  := "virtex4";
      DEPTH     : integer := 16;
      WIDTH     : integer := 16);
    port (
      rst   : in  std_logic;
      clk   : in  std_logic;
      wr_en : in  std_logic;
      din   : in  std_logic_vector(WIDTH-1 downto 0);
      rd_en : in  std_logic;
      dout  : out std_logic_vector(WIDTH-1 downto 0);
      empty : out std_logic;
      full  : out std_logic);
  end component;

  component sync_fifo
    generic (
      C_FAMILY  : string  := "virtex4";
      USE_BRAM  : integer := 0;
      DEPTH     : integer := 1024;
      WIDTH     : integer := 16);
    port (
      rst   : in  std_logic;
      clk   : in  std_logic;
      wr_en : in  std_logic;
      din   : in  std_logic_vector(WIDTH-1 downto 0);
      rd_en : in  std_logic;
      dout  : out std_logic_vector(WIDTH-1 downto 0);
      empty : out std_logic;
      full  : out std_logic);
  end component;

  component async_fifo
    generic (
      C_FAMILY  : string  := "virtex4";
      USE_BRAM  : integer := 0;
      DEPTH     : integer := 31;
      WIDTH     : integer := 16);
    port (
      din    : in  std_logic_vector(WIDTH-1 downto 0);
      wr_en  : in  std_logic;
      wr_clk : in  std_logic;
      dout   : out std_logic_vector(WIDTH-1 downto 0);
      rd_en  : in  std_logic;
      rd_clk : in  std_logic;

      rst   : in  std_logic;
      empty : out std_logic;
      full  : out std_logic);
  end component;


  component async_fifo_dist
    generic (
      C_FAMILY  : string  := "virtex4";
      DEPTH     : integer := 15;
      WIDTH     : integer := 16);
    port (
      din    : in  std_logic_vector(WIDTH-1 downto 0);
      wr_en  : in  std_logic;
      wr_clk : in  std_logic;
      dout   : out std_logic_vector(WIDTH-1 downto 0);
      rd_en  : in  std_logic;
      rd_clk : in  std_logic;
      full   : out std_logic;
      empty  : out std_logic;
      rst    : in  std_logic);
  end component;

  component sync_fifo_bram
    generic (
      C_FAMILY  : string  := "virtex4";
      DEPTH     : integer := 1024;
      WIDTH     : integer := 16);
    port (
      rst   : in  std_logic;
      clk   : in  std_logic;
      wr_en : in  std_logic;
      din   : in  std_logic_vector(WIDTH-1 downto 0);
      rd_en : in  std_logic;
      dout  : out std_logic_vector(WIDTH-1 downto 0);
      empty : out std_logic;
      full  : out std_logic);
  end component;

  component sync_fifo_bram_wt
    generic (
      C_FAMILY  : string  := "virtex4";
      DEPTH     : integer := 1024;
      WIDTH     : integer := 16);
  	port (
      rst       : in  std_logic;
      clk       : in  std_logic;
      din       : in  std_logic_vector(WIDTH-1 downto 0);
      din_vld   : in  std_logic;
      din_rdy   : out std_logic;
      dout      : out std_logic_vector(WIDTH-1 downto 0);
      dout_vld  : out std_logic;
      dout_rdy  : in  std_logic);
  end component;

  component mux_onehot
    generic (
      C_N_CHANNELS    : integer := 4;
      C_CHANNEL_WIDTH : integer := 32
      );
    port (
      data_in  : in  std_logic_vector(C_N_CHANNELS*C_CHANNEL_WIDTH-1 downto 0);
      sel      : in  std_logic_vector(C_N_CHANNELS-1 downto 0);
      data_out : out std_logic_vector(C_CHANNEL_WIDTH-1 downto 0));
  end component;

  component bus_decoder
    generic (
      C_ADDR_WIDTH : integer;
      C_BASE_ADDR  : std_logic_vector;
      C_HIGH_ADDR  : std_logic_vector);
    port (
      bus_addr : in  std_logic_vector(0 to C_ADDR_WIDTH-1);
      bus_sel  : in  std_logic;
      dev_sel  : out std_logic);
  end component;

--  component async_fifo_dist
--  end component;   
--  component async_fifo_dist
--  end component;   

end common_pkg;


package body common_pkg is
  function get_sim_mode return boolean is
    variable ret : boolean := false;
  begin
-- pragma translate_off
    ret := true;
-- pragma translate_on
    return ret;
  end function get_sim_mode;

  function and_reduce (A : std_logic_vector) return std_logic is
    variable aux : std_logic := '1';
  begin
    for i in A'range loop
      aux := aux and A(i);
    end loop;
    return aux;
  end function and_reduce;

  function or_reduce (A : std_logic_vector) return std_logic is
    variable aux : std_logic := '0';
  begin
    for i in A'range loop
      aux := aux or A(i);
    end loop;
    return aux;
  end function or_reduce;



  function log2(x : natural) return integer is
    variable i : integer := 0;
  begin
    if (x = 0) then
      return 0;
    else
      while (x > (2**i)) loop
        i := i+1;
      end loop;
      return i;
    end if;
  end function log2;

  function div_round_up(t : integer; Tclk : integer) return integer is
  begin
    -- La división de enteros proporciona la parte entera del resultado, sin
    -- producir redondeos. Para obtener el redondeo en exceso sumo al dividendo 
    -- el divisor menos 1.
    return (t + Tclk-1) / Tclk;

    --return (t + Tclk) / Tclk;
  end function div_round_up;

  function max(A : integer; B : integer) return integer is
  begin
    if(A > B) then
      return A;
    else
      return B;
    end if;
  end function max;

  function min(A : integer; B : integer) return integer is
  begin
    if(A < B) then
      return A;
    else
      return B;
    end if;
  end function min;

  function calc_width(n : natural) return integer is
  begin
    if (n = 1) then
      return 1;
    else
      return log2(n);
    end if;
  end function calc_width;


  function ext(
    value : std_logic_vector;
    width : natural := 32) 
  return std_logic_vector is
    constant N : integer := value'length;
    variable ret : std_logic_vector(width-1 downto 0);
  begin
    ret := (others => '0');
    ret(N-1 downto 0) := value;
    return ret;
  end function ext;


end common_pkg;
