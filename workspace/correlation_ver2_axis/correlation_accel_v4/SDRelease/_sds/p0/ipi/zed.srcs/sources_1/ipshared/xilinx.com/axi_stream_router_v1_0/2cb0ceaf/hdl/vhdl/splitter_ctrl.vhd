-- Seleccionamos el puerto de salida con la word[2] de control (PORT_WORD)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library axi_stream_router_v1_00_a;
use axi_stream_router_v1_00_a.common_pkg.all;
-- use common_pkg.all;

entity splitter_ctrl is
  generic (
    -- System generics:
    C_FAMILY                  : string  := "virtex6";     -- Xilinx FPGA family
    C_USE_CHIPSCOPE           : integer range 0 to 1;
    TXD_TDATA_WIDTH           : integer; 
    TXC_TDATA_WIDTH           : integer; 
    C_NUM_MASTER_SLOTS        : integer range 0 to 7;
    C_M_AXIS_TDATA_WIDTH      : integer;
    C_M_AXIS_TUSER_WIDTH      : integer;
    C_M_AXIS_TID_WIDTH        : integer;
    C_M_AXIS_TDEST_WIDTH      : integer);
  port (     
    splitter_ctrl_ila_control : in  std_logic_vector(35 downto 0);
    splitter_txd_ila_control  : in  std_logic_vector(35 downto 0);
    splitter_txc_ila_control  : in  std_logic_vector(35 downto 0);
    ---
    axi_clk         : in  std_logic;
    axi_rst         : in  std_logic;

    -- Input stream, data channel
    txd_tdata       : in  std_logic_vector(TXD_TDATA_WIDTH-1 downto 0);
    txd_tkeep       : in  std_logic_vector(TXD_TDATA_WIDTH/8-1 downto 0);
    txd_tlast       : in  std_logic;
    txd_tvld        : in  std_logic;
    txd_trdy        : out std_logic;
    -- Input stream, control channel
    txc_tdata       : in  std_logic_vector(TXC_TDATA_WIDTH-1 downto 0);
    txc_tkeep       : in  std_logic_vector(TXC_TDATA_WIDTH/8-1 downto 0);
    txc_tlast       : in  std_logic;
    txc_tvld        : in  std_logic;
    txc_trdy        : out std_logic;

    -- Output stream
    m_axis_tvalid   : out std_logic_vector(7 downto 0);
    m_axis_tready   : in  std_logic_vector(7 downto 0);
    m_axis_tdata    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    m_axis_tstrb    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    m_axis_tkeep    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    m_axis_tlast    : out std_logic;
    m_axis_tid      : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    m_axis_tdest    : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    m_axis_tuser    : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

    none            : out std_logic);
end entity;

architecture rtl of splitter_ctrl is
--  -- Las longitudes de los parámetros se codifican con 16 bits:
--  constant C_PARAM_LENGTH_WIDTH : integer := 16;
--  constant C_PARAM_INDEX_WIDTH  : integer := 4;
--
--  --------

  constant AXIS_CTRL_LENGTH   : integer := 6;
  -- Constant for ctrl fields decoding:
  constant PORT_WORD          : integer := 2;
  constant PARAM_INDEX_WORD   : integer := 3;
  constant PARAM_LENGTH_WORD  : integer := 4;
  constant PARAM_SIZE_WORD    : integer := 5;

  signal ctrl_word_sel    : std_logic_vector(AXIS_CTRL_LENGTH-1 downto 0);


  type state_type is (
  -- pragma translate_off
    stop,
  -- pragma translate_on
    idle,
    recv_ctrl,
    recv_data);
  signal state  : state_type;

  signal txd_trdy_i : std_logic;
  signal txc_trdy_i : std_logic;

  signal txd_trf_ok : std_logic;
  signal txc_trf_ok : std_logic;


--  signal axi_rst : std_logic;
--  alias axi_clk  : std_logic is s_axis_txd_aclk;
--
--  signal axis_txc_vld : std_logic;
--  signal axis_txc_rdy : std_logic;
--  signal axis_txc_ok  : std_logic;

--  constant MST_SLOT_WIDTH : integer := log2(C_NUM_MASTER_SLOTS);
  constant MST_SLOT_WIDTH : integer := 3;
  signal mst_slot_reg : std_logic_vector(MST_SLOT_WIDTH-1 downto 0);
  signal mst_slot_sel : std_logic_vector(7 downto 0);

  signal m_axis_tdata_i : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);

  signal output_we    : std_logic;
  signal output_ce    : std_logic;
  signal output_vld   : std_logic;
  signal output_rdy   : std_logic;
--  signal output_data  : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
--  signal output_keep  : std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
--  signal output_last  : std_logic;


  signal m_axis_tvalid_i : std_logic_vector(7 downto 0);
  signal m_axis_tlast_i  : std_logic;

begin

  txd_trdy <= txd_trdy_i;
  txc_trdy <= txc_trdy_i;

  txc_trf_ok <= txc_tvld and txc_trdy_i; 
  txd_trf_ok <= txd_tvld and txd_trdy_i; 

  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      ctrl_word_sel <= (others => '0');
      ctrl_word_sel(0) <= '1';
    elsif(axi_clk'event and axi_clk = '1') then
      if((txc_tvld and txc_trdy_i) = '1') then
        ctrl_word_sel <= ctrl_word_sel(AXIS_CTRL_LENGTH-2 downto 0) & ctrl_word_sel(AXIS_CTRL_LENGTH-1);
      end if;
    end if;
  end process;



  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      state <= idle;
      txc_trdy_i <= '0';
    elsif(axi_clk'event and axi_clk = '1') then
      case state is
        when idle =>
          -- Sólo avanzo si no hay datos pendientes a la salida:
          if(output_ce = '1') then
            txc_trdy_i <= '1';
            state <= recv_ctrl;
          end if;
        when recv_ctrl =>
          -- RMG: Fallo aquí
          --if(txc_tlast = '1' and txd_tvld = '1') then
          if(txc_tlast = '1' and txc_tvld = '1') then
            state <= recv_data;
            txc_trdy_i <= '0';
          end if;
        when recv_data =>
          if((txd_tvld and output_ce)= '1' and txd_tlast = '1') then
            state <= idle;
          end if;
        when others =>
      end case; 
    end if;
  end process;
  
  process(state, txd_tvld, output_ce)
  begin
    output_we <= '0';
    txd_trdy_i <= '0';
    case state is
      when idle =>
      when recv_ctrl =>
      when recv_data =>
        output_we <= txd_tvld;
        -- Solo doy rdy a la entrada si la salida no es válida o
        -- siendo valida se esta consumiendo.
        txd_trdy_i <= output_ce;
        
      when others =>
    end case; 
  end process;

  process(axi_clk)
  begin
    if(axi_clk'event and axi_clk = '1') then
      if((txc_tvld and txc_trdy_i) = '1' and ctrl_word_sel(PORT_WORD) = '1') then
        mst_slot_reg <= txc_tdata(MST_SLOT_WIDTH-1 downto 0);
      end if;
    end if;
  end process;

  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      mst_slot_sel <= (others => '0');
    elsif(axi_clk'event and axi_clk = '1') then
      if((txc_tvld and txc_trdy_i) = '1' and ctrl_word_sel(PORT_WORD) = '1') then
        mst_slot_sel <= (others => '0');
        for i in 0 to C_NUM_MASTER_SLOTS-1 loop
          if (unsigned(txc_tdata(MST_SLOT_WIDTH-1 downto 0)) = i) then
            mst_slot_sel(i) <= '1';
          end if;
        end loop;
      end if;
    end if;
  end process;

  --------------------------------------------------------

  output_rdy <= or_reduce(m_axis_tready and mst_slot_sel);

  output_ce <= not(output_vld) or (output_vld and output_rdy); 

  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      output_vld <= '0';
    elsif(axi_clk'event and axi_clk = '1') then
      if(output_ce = '1') then
        output_vld <= output_we;
      end if;
    end if;
  end process;

  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      m_axis_tvalid_i <= (others => '0');
    elsif(axi_clk'event and axi_clk = '1') then
      if(output_ce = '1') then
        if(output_we = '1') then
          m_axis_tvalid_i <= mst_slot_sel;
        else
          m_axis_tvalid_i <= (others => '0');
        end if;
      end if;
    end if;
  end process;

  m_axis_tvalid <= m_axis_tvalid_i;  
  
  process(axi_clk)
  begin
    if(axi_clk'event and axi_clk = '1') then
      if(output_ce = '1') then
        m_axis_tdata <= txd_tdata;
        m_axis_tkeep <= txd_tkeep;
        m_axis_tlast_i <= txd_tlast;
      end if;
    end if;
  end process;

  m_axis_tlast <= m_axis_tlast_i;

  m_axis_tid   <= (others => '0');
  m_axis_tdest <= (others => '0');
  m_axis_tuser <= (others => '0');



  CHIPSCOPE_GEN : if (C_USE_CHIPSCOPE /= 0) generate
    attribute BOX_TYPE : STRING;

    constant SPLITTER_TXC_ILA_WIDTH : integer := 40;
  
    component splitter_txc_ila
      port (
        CLK     : in    std_logic; 
        --CONTROL : inout std_logic_vector(35 downto 0); 
        CONTROL : in    std_logic_vector(35 downto 0); 
        TRIG0   : in    std_logic_vector(SPLITTER_TXC_ILA_WIDTH-1 downto 0));
    end component;
  
    signal splitter_txc_ila_trig : std_logic_vector(SPLITTER_TXC_ILA_WIDTH-1 downto 0);
  
    attribute BOX_TYPE of splitter_txc_ila : component is "black_box";

    -----------------------------------------------------------------

    constant SPLITTER_TXD_ILA_WIDTH : integer := 76;
  
    component splitter_txd_ila
      port (
        CLK     : in    std_logic; 
        --CONTROL : inout std_logic_vector(35 downto 0); 
        CONTROL : in    std_logic_vector(35 downto 0); 
        TRIG0   : in    std_logic_vector(SPLITTER_TXD_ILA_WIDTH-1 downto 0));
    end component;
  
    signal splitter_txd_ila_trig : std_logic_vector(SPLITTER_TXD_ILA_WIDTH-1 downto 0);
  
    attribute BOX_TYPE of splitter_txd_ila : component is "black_box";

    -------------------------------

    constant SPLITTER_CTRL_ILA_WIDTH : integer := 32;

    component splitter_ctrl_ila
      port (
        CLK     : in    std_logic; 
        --CONTROL : inout std_logic_vector(35 downto 0); 
        CONTROL : in    std_logic_vector(35 downto 0); 
        TRIG0   : in    std_logic_vector(SPLITTER_CTRL_ILA_WIDTH-1 downto 0));
    end component;
  
    signal splitter_ctrl_ila_trig : std_logic_vector(SPLITTER_CTRL_ILA_WIDTH-1 downto 0);
  
    attribute BOX_TYPE of splitter_ctrl_ila : component is "black_box";

    signal dbg_state : std_logic_vector(1 downto 0);

    signal start : std_logic;

  begin

    splitter_txc_ila_trig(31 downto  0) <= txc_tdata;
    splitter_txc_ila_trig(35 downto 32) <= txc_tkeep;
    splitter_txc_ila_trig(36) <= txc_tlast;
    splitter_txc_ila_trig(37) <= txc_tvld;
    splitter_txc_ila_trig(38) <= txc_trdy_i;
    splitter_txc_ila_trig(39) <= txc_trf_ok;

    SPLITTER_TXC_ILA_I : splitter_txc_ila
      port map (
        clk     => axi_clk,
        control => splitter_txc_ila_control,
        trig0   => splitter_txc_ila_trig);

    ---------------------------------------------------
  
    splitter_txd_ila_trig(63 downto  0) <= txd_tdata;
    splitter_txd_ila_trig(71 downto 64) <= txd_tkeep;
    splitter_txd_ila_trig(72) <= txd_tlast;
    splitter_txd_ila_trig(73) <= txd_tvld;
    splitter_txd_ila_trig(74) <= txd_trdy_i;
    splitter_txd_ila_trig(75) <= txd_trf_ok;

    SPLITTER_TXD_ILA_I : splitter_txd_ila
      port map (
        clk     => axi_clk,
        control => splitter_txd_ila_control,
        trig0   => splitter_txd_ila_trig);

    
    -----------------------------------------

    process(state)
    begin
      dbg_state <= "00";
      case state is
        when idle =>        dbg_state <= "00";
        when recv_ctrl =>   dbg_state <= "01";
        when recv_data =>   dbg_state <= "10";
        when others =>
      end case; 
    end process;
    
    splitter_ctrl_ila_trig( 7 downto  0) <= m_axis_tvalid_i;
    splitter_ctrl_ila_trig(15 downto  8) <= m_axis_tready;
    splitter_ctrl_ila_trig(17 downto 16) <= dbg_state;
    splitter_ctrl_ila_trig(18) <= m_axis_tlast_i;
    splitter_ctrl_ila_trig(19) <= axi_rst;
    splitter_ctrl_ila_trig(20) <= start;
    splitter_ctrl_ila_trig(31 downto 21) <= (others => '0');

    SPLITTER_CTRL_ILA_I : splitter_ctrl_ila
      port map (
        clk     => axi_clk,
        control => splitter_ctrl_ila_control,
        trig0   => splitter_ctrl_ila_trig);



    start <= txc_tlast and txc_trf_ok;

  end generate CHIPSCOPE_GEN;

end rtl;


