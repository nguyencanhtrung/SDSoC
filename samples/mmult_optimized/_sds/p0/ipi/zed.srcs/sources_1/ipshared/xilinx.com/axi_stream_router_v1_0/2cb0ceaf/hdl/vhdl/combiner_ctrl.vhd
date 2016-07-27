
-- Seleccionamos el puerto de salida con la word[2] de control (PORT_WORD)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library axi_stream_router_v1_00_a;
use axi_stream_router_v1_00_a.common_pkg.all;
-- use common_pkg.all;

-- pragma translate_off
-- library floatfixlib;
-- use floatfixlib.math_utility_pkg.all;
-- use floatfixlib.fixed_pkg.all;
-- use floatfixlib.float_pkg.all;
-- pragma translate_on

entity combiner_ctrl is
  generic (
    -- System generics:
    C_FAMILY                  : string  := "virtex6";     -- Xilinx FPGA family
    C_USE_CHIPSCOPE           : integer range 0 to 1;
    RXD_TDATA_WIDTH           : integer; 
    RXS_TDATA_WIDTH           : integer; 
    C_NUM_SLAVE_SLOTS         : integer range 0 to 7;
    C_S_AXIS_TDATA_WIDTH      : integer;
    C_S_AXIS_TSRTB_WIDTH      : integer;
    C_S_AXIS_TKEEP_WIDTH      : integer;
    C_S_AXIS_TUSER_WIDTH      : integer;
    C_S_AXIS_TID_WIDTH        : integer;
    C_S_AXIS_TDEST_WIDTH      : integer);
  port (     
    combiner_ctrl_ila_control : in  std_logic_vector(35 downto 0);
    combiner_rxd_ila_control  : in  std_logic_vector(35 downto 0);
    combiner_rxs_ila_control  : in  std_logic_vector(35 downto 0);
    ---
    axi_clk         : in  std_logic;
    axi_rst         : in  std_logic;
    -- input stream
    s_axis_tvalid   : in  std_logic_vector(7 downto 0);
    s_axis_tready   : out std_logic_vector(7 downto 0);
    s_axis_tdata    : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH*8-1 downto 0);
    s_axis_tstrb    : in  std_logic_vector(C_S_AXIS_TSRTB_WIDTH*8-1 downto 0);
    s_axis_tkeep    : in  std_logic_vector(C_S_AXIS_TKEEP_WIDTH*8-1 downto 0);
    s_axis_tlast    : in  std_logic_vector(7 downto 0);
    s_axis_tid      : in  std_logic_vector(C_S_AXIS_TID_WIDTH*8-1 downto 0);
    s_axis_tdest    : in  std_logic_vector(C_S_AXIS_TDEST_WIDTH*8-1 downto 0);
    s_axis_tuser    : in  std_logic_vector(C_S_AXIS_TUSER_WIDTH*8-1 downto 0);

    -- Output stream, data channel
    rxd_tdata       : out std_logic_vector(RXD_TDATA_WIDTH-1 downto 0);
    rxd_tkeep       : out std_logic_vector(RXD_TDATA_WIDTH/8-1 downto 0);
    rxd_tlast       : out std_logic;
    rxd_tvld        : out std_logic;
    rxd_trdy        : in  std_logic;
    -- Output stream, status channel
    rxs_tdata       : out std_logic_vector(RXS_TDATA_WIDTH-1 downto 0);
    rxs_tkeep       : out std_logic_vector(RXS_TDATA_WIDTH/8-1 downto 0);
    rxs_tlast       : out std_logic;
    rxs_tvld        : out std_logic;
    rxs_trdy        : in  std_logic;


    none            : out std_logic);
end entity;

architecture rtl of combiner_ctrl is
  constant N_CHANNELS   : integer := 8;
  constant INDEX_WIDTH  : integer := log2(N_CHANNELS);

  type state_type is (
  -- pragma translate_off
    stop,
  -- pragma translate_on
    idle,
    send_status,
    send_data);
  signal state : state_type;

  -- Arbitration signals
  signal any_rqt    : std_logic;
  signal arbitrate  : std_logic;
  signal grant      : std_logic_vector(N_CHANNELS-1 downto 0);
  signal arb_vld    : std_logic;
  signal src_port   : std_logic_vector(3 downto 0);

  constant AXIS_STATUS_LENGTH   : integer := 6;
  -- Constant for ctrl fields decoding:
  constant PORT_WORD          : integer := 2;
  constant PARAM_INDEX_WORD   : integer := 3;
  constant PARAM_LENGTH_WORD  : integer := 4;
  constant PARAM_SIZE_WORD    : integer := 5;


  constant WORD_CNT_WIDTH : integer := log2(AXIS_STATUS_LENGTH);
  signal status_word_cnt  : unsigned(WORD_CNT_WIDTH-1 downto 0);
  signal last_status_word : std_logic;


  constant RECV_STATUS_FRAME : std_logic_vector(31 downto 0) := x"5000_0000";

  signal status_we  : std_logic;
  signal status_ce  : std_logic;
  signal rxs_tvld_i : std_logic;
  signal rxs_tdata_i  : std_logic_vector(RXS_TDATA_WIDTH-1 downto 0);
  signal rxs_tkeep_i  : std_logic_vector(RXS_TDATA_WIDTH/8-1 downto 0);
  signal rxs_tlast_i  : std_logic;


  signal data_we      : std_logic;
  signal data_ce      : std_logic;
  signal rxd_tvld_i   : std_logic;
  signal rxd_tdata_i  : std_logic_vector(RXD_TDATA_WIDTH-1 downto 0);
  signal rxd_tkeep_i  : std_logic_vector(RXD_TDATA_WIDTH/8-1 downto 0);
  signal rxd_tlast_i  : std_logic;


  -- Selección del stream de entrada:
  signal src_vld  : std_logic;
  signal src_data : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
  signal src_strb : std_logic_vector(C_S_AXIS_TSRTB_WIDTH-1 downto 0);
  signal src_keep : std_logic_vector(C_S_AXIS_TKEEP_WIDTH-1 downto 0);
  signal src_last : std_logic;
  signal src_id   : std_logic_vector(C_S_AXIS_TID_WIDTH-1 downto 0);
  signal src_dest : std_logic_vector(C_S_AXIS_TDEST_WIDTH-1 downto 0);
  signal src_user : std_logic_vector(C_S_AXIS_TUSER_WIDTH-1 downto 0);


  function get_element(A : std_logic_vector; index : unsigned; width : natural) 
  return std_logic_vector is
    constant N : integer := A'length;
    alias A_dw : std_logic_vector(N-1 downto 0) is A; 
    variable int_idx : integer := to_integer(index);
  begin
    return A_dw(width*(int_idx+1)-1 downto width*int_idx);
  end function get_element;

  function get_element(A : std_logic_vector; index : std_logic_vector; width : natural) 
  return std_logic_vector is
  begin
    return get_element(A, unsigned(index), width);
  end function get_element;

  function get_element(A : std_logic_vector; index : unsigned) 
  return std_logic is
    constant N : integer := A'length;
    alias A_dw : std_logic_vector(N-1 downto 0) is A; 
    variable int_idx : integer := to_integer(index);
  begin
    return A_dw(int_idx);
  end function get_element;

  function get_element(A : std_logic_vector; index : std_logic_vector) 
  return std_logic is
  begin
    return get_element(A, unsigned(index));
  end function get_element;


  --constant SIN_MODE : boolean := get_sim_mode;
  constant SIN_MODE : boolean := false;

  -- pragma translate_off
  signal dbg_rxd_tdata_L  : real := 0.0;
  signal dbg_rxd_tdata_H  : real := 0.0;
  -- pragma translate_on

  signal s_axis_tready_i  : std_logic_vector(7 downto 0);

begin


  SEVERAL_CHANNELS : if (N_CHANNELS > 1) generate
    signal grant_idx  : std_logic_vector(INDEX_WIDTH-1 downto 0);
  begin
  
    ARBITER_I : entity work.lru_arbiter
      generic map (
        -- System generics:
        C_FAMILY    => C_FAMILY,
        N_CHANNELS  => N_CHANNELS,
        INDEX_WIDTH => INDEX_WIDTH)
      port map (     
        clk         => axi_clk,
        rst         => axi_rst,
        arbitrate   => arbitrate,
        request     => s_axis_tvalid,
        grant       => grant,
        grant_idx   => grant_idx);
  
    -- Esto son multiplexores de hasta 16 a 1:
    src_vld   <= get_element(s_axis_tvalid, grant_idx);
    src_data  <= get_element(s_axis_tdata, grant_idx, C_S_AXIS_TDATA_WIDTH);
    src_strb  <= get_element(s_axis_tstrb, grant_idx, C_S_AXIS_TSRTB_WIDTH);
    src_keep  <= get_element(s_axis_tkeep, grant_idx, C_S_AXIS_TKEEP_WIDTH);
    src_last  <= get_element(s_axis_tlast, grant_idx);
    src_id    <= get_element(s_axis_tid, grant_idx, C_S_AXIS_TID_WIDTH);
    src_dest  <= get_element(s_axis_tdest, grant_idx, C_S_AXIS_TDEST_WIDTH);
    src_user  <= get_element(s_axis_tuser, grant_idx, C_S_AXIS_TUSER_WIDTH);

    -- OJO!!! Esto sólo funciona si los streams de entrada y salida tienen 
    -- la misma anchura, algo que por otra parte es lo más normal
    process(axi_clk)
    begin
      if(axi_clk'event and axi_clk = '1') then
        if(data_ce = '1') then
          rxd_tdata_i <= get_element(s_axis_tdata, grant_idx, C_S_AXIS_TDATA_WIDTH);
          rxd_tkeep_i <= get_element(s_axis_tkeep, grant_idx, C_S_AXIS_TKEEP_WIDTH);
          rxd_tlast_i <= get_element(s_axis_tlast, grant_idx);
        end if;
      end if;
    end process;

    -- pragma translate_off
    -- process(axi_clk)
    --   variable data : std_logic_vector(RXD_TDATA_WIDTH-1 downto 0);
    -- begin
    --   if(axi_clk'event and axi_clk = '1') then
    --     if(data_ce = '1') then
    --       data := get_element(s_axis_tdata, grant_idx, C_S_AXIS_TDATA_WIDTH);
    --       dbg_rxd_tdata_L <= to_real(float32(data(31 downto  0)));
    --       dbg_rxd_tdata_H <= to_real(float32(data(63 downto 32)));
    --     end if;
    --   end if;
    -- end process;
    -- pragma translate_on

    
    process(grant_idx)
    begin
      src_port <= (others => '0');
      src_port(INDEX_WIDTH-1 downto 0) <= grant_idx;
    end process;
  
  end generate SEVERAL_CHANNELS;
  

  ONLY_ONE_CHANNEL : if (N_CHANNELS = 1) generate
  begin

    -- Conexión directa, no hay multiplexores:
    src_vld   <= s_axis_tvalid(0);
    src_data  <= s_axis_tdata(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    src_strb  <= s_axis_tstrb(C_S_AXIS_TSRTB_WIDTH-1 downto 0);
    src_keep  <= s_axis_tkeep(C_S_AXIS_TKEEP_WIDTH-1 downto 0);
    src_last  <= s_axis_tlast(0);
    src_id    <= s_axis_tid(C_S_AXIS_TID_WIDTH-1 downto 0);
    src_dest  <= s_axis_tdest(C_S_AXIS_TDEST_WIDTH-1 downto 0);
    src_user  <= s_axis_tuser(C_S_AXIS_TUSER_WIDTH-1 downto 0);

    -- OJO!!! Esto sólo funciona si los streams de entrada y salida tienen 
    -- la misma anchura, algo que por otra parte es lo más normal
    process(axi_clk)
    begin
      if(axi_clk'event and axi_clk = '1') then
        if(data_ce = '1') then
          rxd_tdata_i <= s_axis_tdata(C_S_AXIS_TDATA_WIDTH-1 downto 0);
          rxd_tkeep_i <= s_axis_tkeep(C_S_AXIS_TKEEP_WIDTH-1 downto 0);
          rxd_tlast_i <= s_axis_tlast(0);
        end if;
      end if;
    end process;


    -- pragma translate_off
    -- process(axi_clk)
    --   variable data : std_logic_vector(RXD_TDATA_WIDTH-1 downto 0);
    -- begin
    --   if(axi_clk'event and axi_clk = '1') then
    --     if(data_ce = '1') then
    --       data := s_axis_tdata(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    --       dbg_rxd_tdata_L <= to_real(float32(data(31 downto  0)));
    --       dbg_rxd_tdata_H <= to_real(float32(data(63 downto 32)));
    --     end if;
    --   end if;
    -- end process;
    -- pragma translate_on

    src_port <= (others => '0');
  end generate ONLY_ONE_CHANNEL;

  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      arb_vld <= '0';
    elsif(axi_clk'event and axi_clk = '1') then
      arb_vld <= arbitrate;
    end if;
  end process;

  any_rqt <= or_reduce(s_axis_tvalid);

  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      state <= idle;

    elsif(axi_clk'event and axi_clk = '1') then
      case state is
        when idle =>
          if (any_rqt = '1') then
            state <= send_status;
          end if;
        when send_status =>
          if(status_ce = '1' and last_status_word = '1') then
            state <= send_data;
          end if;
        when send_data =>
          -- Damos por concluido el envío de la trama de datos cuando
          -- escribimos en el registro de salida el último dato
          if(data_ce = '1' and src_vld = '1' and src_last = '1') then
            state <= idle;
            -- pragma translate_off
            --state <= stop;
            -- pragma translate_on
          end if;

        -- pragma translate_off
        when stop =>
        -- pragma translate_on


        when others =>
      end case; 
    end if;
  end process;

  process(state, any_rqt, data_ce, src_vld, grant)
  begin
    arbitrate <= '0';
    status_we <= '0';
    data_we <= '0';
  
    s_axis_tready_i <= (others => '0');
    case state is
      when idle =>
        arbitrate <= any_rqt;
      when send_status =>
        status_we <= '1';
      when send_data =>
        -- Consumimos el dato del stream de entrada cuando lo transferimos 
        -- al registro de salida:
        if(data_ce = '1') then
          s_axis_tready_i <= grant;
        end if;
        -- Escribimos un dato en el registro de salida cuando el stream de 
        -- entrada dispone de datos válidos.
        data_we <= src_vld;
      when others =>
    end case; 
  end process;

  s_axis_tready <= s_axis_tready_i;


  status_ce <= not(rxs_tvld_i) or (rxs_tvld_i and rxs_trdy);
  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      rxs_tvld_i <= '0';
    elsif(axi_clk'event and axi_clk = '1') then
      if(status_ce = '1') then
        rxs_tvld_i <= status_we;
      end if;
    end if;
  end process;
  rxs_tvld <= rxs_tvld_i;


  -- Registro de salida del canal de estado
  process(axi_clk)
    variable index : integer range 0 to AXIS_STATUS_LENGTH-1;
  begin
    if(axi_clk'event and axi_clk = '1') then
      if(status_ce = '1') then
        rxs_tdata_i <= (others => '0');
        index := to_integer(status_word_cnt);
        case index is
          when 0 =>      
            rxs_tdata_i(31 downto 28) <= x"5";

          when PORT_WORD =>
            rxs_tdata_i <= (others => '0');
            rxs_tdata_i(3 downto 0) <= src_port;

          when others => rxs_tdata_i <= (others => '0');
            --rxs_tdata_i <= std_logic_vector(to_unsigned(index, RXS_TDATA_WIDTH));
        end case;
        
        rxs_tlast_i <= last_status_word;
      end if;
    end if;
  end process;

  rxs_tlast <= rxs_tlast_i;

  
  rxs_tdata <= rxs_tdata_i;

  rxs_tkeep_i <= (others => '1');
  rxs_tkeep <= rxs_tkeep_i;

  -- Contador de palabras del stream de estado. 
  -- Incremento cuando escribo un dato en el registro de salida.
  
  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      status_word_cnt <= (others => '0');
      last_status_word <= '0';
    elsif(axi_clk'event and axi_clk = '1') then
      if(status_ce = '1' and status_we = '1') then
        if(status_word_cnt = AXIS_STATUS_LENGTH-2) then
          last_status_word <= '1';
        else
          last_status_word <= '0';
        end if;
        if(last_status_word = '1') then
          status_word_cnt <= (others => '0');
        else
          status_word_cnt <= status_word_cnt + 1;
        end if;
      end if;
    end if;
  end process;

  data_ce <= not(rxd_tvld_i) or (rxd_tvld_i and rxd_trdy);
  process(axi_clk, axi_rst)
  begin
    if(axi_rst = '1') then
      rxd_tvld_i <= '0';
    elsif(axi_clk'event and axi_clk = '1') then
      if(data_ce = '1') then
        rxd_tvld_i <= data_we;
      end if;
    end if;
  end process;
  rxd_tvld <= rxd_tvld_i;


  rxd_tdata <= rxd_tdata_i;
  rxd_tkeep <= rxd_tkeep_i;
  rxd_tlast <= rxd_tlast_i;


  -----------------------------------------

  CHIPSCOPE_GEN : if (C_USE_CHIPSCOPE /= 0) generate
    attribute BOX_TYPE : STRING;

    constant COMBINER_RXS_ILA_WIDTH : integer := 40;
  
    component combiner_rxs_ila
      port (
        CLK     : in    std_logic; 
        --CONTROL : inout std_logic_vector(35 downto 0); 
        CONTROL : in    std_logic_vector(35 downto 0); 
        TRIG0   : in    std_logic_vector(COMBINER_RXS_ILA_WIDTH-1 downto 0));
    end component;
  
    signal combiner_rxs_ila_trig : std_logic_vector(COMBINER_RXS_ILA_WIDTH-1 downto 0);
  
    attribute BOX_TYPE of combiner_rxs_ila : component is "black_box";

    -----------------------------------------------------------------

    constant COMBINER_RXD_ILA_WIDTH : integer := 76;
  
    component combiner_rxd_ila
      port (
        CLK     : in    std_logic; 
        --CONTROL : inout std_logic_vector(35 downto 0); 
        CONTROL : in    std_logic_vector(35 downto 0); 
        TRIG0   : in    std_logic_vector(COMBINER_RXD_ILA_WIDTH-1 downto 0));
    end component;
  
    signal combiner_rxd_ila_trig : std_logic_vector(COMBINER_RXD_ILA_WIDTH-1 downto 0);

    attribute BOX_TYPE of combiner_rxd_ila : component is "black_box";

    -------------------------------

    constant COMBINER_CTRL_ILA_WIDTH : integer := 32;

    component combiner_ctrl_ila
      port (
        CLK     : in    std_logic; 
        --CONTROL : inout std_logic_vector(35 downto 0); 
        CONTROL : in    std_logic_vector(35 downto 0); 
        TRIG0   : in    std_logic_vector(COMBINER_CTRL_ILA_WIDTH-1 downto 0));
    end component;
  
    signal combiner_ctrl_ila_trig : std_logic_vector(COMBINER_CTRL_ILA_WIDTH-1 downto 0);
  
    attribute BOX_TYPE of combiner_ctrl_ila : component is "black_box";

    signal dbg_state : std_logic_vector(1 downto 0);

  begin

    combiner_rxs_ila_trig(31 downto  0) <= rxs_tdata_i;
    combiner_rxs_ila_trig(35 downto 32) <= rxs_tkeep_i;
    combiner_rxs_ila_trig(36) <= rxs_tlast_i;
    combiner_rxs_ila_trig(37) <= rxs_tvld_i;
    combiner_rxs_ila_trig(38) <= rxs_trdy;
    combiner_rxs_ila_trig(39) <= rxs_tvld_i and rxs_trdy;

    COMBINER_RXS_ILA_I : combiner_rxs_ila
      port map (
        clk     => axi_clk,
        control => combiner_rxs_ila_control,
        trig0   => combiner_rxs_ila_trig);

    ---------------------------------------------------

    combiner_rxd_ila_trig(63 downto  0) <= rxd_tdata_i;
    combiner_rxd_ila_trig(71 downto 64) <= rxd_tkeep_i;
    combiner_rxd_ila_trig(72) <= rxd_tlast_i;
    combiner_rxd_ila_trig(73) <= rxd_tvld_i;
    combiner_rxd_ila_trig(74) <= rxd_trdy;
    combiner_rxd_ila_trig(75) <= rxd_tvld_i and rxd_trdy;

    COMBINER_ILA_I : combiner_rxd_ila
      port map (
        clk     => axi_clk,
        control => combiner_rxd_ila_control,
        trig0   => combiner_rxd_ila_trig);

    -----------------------------------------

    process(state)
    begin
      dbg_state <= "00";
      case state is
        when idle =>        dbg_state <= "00";
        when send_status => dbg_state <= "01";
        when send_data =>   dbg_state <= "10";
        when others =>
      end case; 
    end process;

    combiner_ctrl_ila_trig( 7 downto  0) <= s_axis_tvalid;
    combiner_ctrl_ila_trig(15 downto  8) <= s_axis_tready_i;
    combiner_ctrl_ila_trig(17 downto 16) <= dbg_state;
    combiner_ctrl_ila_trig(18) <= src_last;
    combiner_ctrl_ila_trig(19) <= axi_rst;
    combiner_ctrl_ila_trig(20) <= any_rqt;
    combiner_ctrl_ila_trig(31 downto 21) <= (others => '0');

    COMBINER_CTRL_ILA_I : combiner_ctrl_ila
      port map (
        clk     => axi_clk,
        control => combiner_ctrl_ila_control,
        trig0   => combiner_ctrl_ila_trig);

  end generate CHIPSCOPE_GEN;
  

end rtl;

