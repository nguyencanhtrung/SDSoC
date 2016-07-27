library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library axi_stream_router_v1_00_a;
use axi_stream_router_v1_00_a.common_pkg.all;
-- use common_pkg.all;

entity axi_stream_router is
  generic (
    -- System generics:
    C_FAMILY                  : string  := "virtex6";     -- Xilinx FPGA family
    C_S_AXIS_TXD_TDATA_WIDTH  : integer := 32; 
    C_S_AXIS_TXC_TDATA_WIDTH  : integer := 32; 
    C_NUM_MASTER_SLOTS        : integer;
    C_M_AXIS_TDATA_WIDTH      : integer;
    C_M_AXIS_TUSER_WIDTH      : integer;
    C_M_AXIS_TID_WIDTH        : integer;
    C_M_AXIS_TDEST_WIDTH      : integer;
    
    C_M_AXIS_RXD_TDATA_WIDTH  : integer := 32; 
    C_M_AXIS_RXS_TDATA_WIDTH  : integer := 32; 
    C_NUM_SLAVE_SLOTS         : integer;
    C_S_AXIS_TDATA_WIDTH      : integer;
    C_S_AXIS_TUSER_WIDTH      : integer;
    C_S_AXIS_TID_WIDTH        : integer;
    C_S_AXIS_TDEST_WIDTH      : integer;

    C_USE_CHIPSCOPE           : integer range 0 to 1;
    C_NONE                    : integer := 2);
  port (     
    splitter_ctrl_ila_control : in  std_logic_vector(35 downto 0);
    splitter_txd_ila_control  : in  std_logic_vector(35 downto 0);
    splitter_txc_ila_control  : in  std_logic_vector(35 downto 0);

    combiner_ctrl_ila_control : in  std_logic_vector(35 downto 0);
    combiner_rxd_ila_control  : in  std_logic_vector(35 downto 0);
    combiner_rxs_ila_control  : in  std_logic_vector(35 downto 0);

    -- Input stream, data channel:
    s_axis_txd_aclk     : in  std_logic;
    s_axis_txd_aresetn  : in  std_logic;
    s_axis_txd_tdata    : in  std_logic_vector(C_S_AXIS_TXD_TDATA_WIDTH-1 downto 0);
    s_axis_txd_tkeep    : in  std_logic_vector(C_S_AXIS_TXD_TDATA_WIDTH/8-1 downto 0);
    ---
    s_axis_txd_tlast    : in  std_logic;
    s_axis_txd_tvalid   : in  std_logic;
    s_axis_txd_tready   : out std_logic;
    -- Input stream, control channel:
    s_axis_txc_aclk     : in  std_logic;
    s_axis_txc_aresetn  : in  std_logic;
    s_axis_txc_tdata    : in  std_logic_vector(C_S_AXIS_TXC_TDATA_WIDTH-1 downto 0);
    s_axis_txc_tkeep    : in  std_logic_vector(C_S_AXIS_TXC_TDATA_WIDTH/8-1 downto 0);
    ---
    s_axis_txc_tlast    : in  std_logic;
    s_axis_txc_tvalid   : in  std_logic;
    s_axis_txc_tready   : out std_logic;

    -- Output streams
    M_AXIS_0_ACLK       : in  std_logic;
    M_AXIS_0_ARESETN    : out std_logic;
    M_AXIS_0_TVALID     : out std_logic;
    M_AXIS_0_TREADY     : in  std_logic;
    M_AXIS_0_TDATA      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_0_TSTRB      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_0_TKEEP      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_0_TLAST      : out std_logic;
    M_AXIS_0_TID        : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    M_AXIS_0_TDEST      : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    M_AXIS_0_TUSER      : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

    M_AXIS_1_ACLK       : in  std_logic;
    M_AXIS_1_ARESETN    : out std_logic;
    M_AXIS_1_TVALID     : out std_logic;
    M_AXIS_1_TREADY     : in  std_logic;
    M_AXIS_1_TDATA      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_1_TSTRB      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_1_TKEEP      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_1_TLAST      : out std_logic;
    M_AXIS_1_TID        : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    M_AXIS_1_TDEST      : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    M_AXIS_1_TUSER      : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

    M_AXIS_2_ACLK       : in  std_logic;
    M_AXIS_2_ARESETN    : out std_logic;
    M_AXIS_2_TVALID     : out std_logic;
    M_AXIS_2_TREADY     : in  std_logic;
    M_AXIS_2_TDATA      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_2_TSTRB      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_2_TKEEP      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_2_TLAST      : out std_logic;
    M_AXIS_2_TID        : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    M_AXIS_2_TDEST      : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    M_AXIS_2_TUSER      : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

    M_AXIS_3_ACLK       : in  std_logic;
    M_AXIS_3_ARESETN    : out std_logic;
    M_AXIS_3_TVALID     : out std_logic;
    M_AXIS_3_TREADY     : in  std_logic;
    M_AXIS_3_TDATA      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_3_TSTRB      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_3_TKEEP      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_3_TLAST      : out std_logic;
    M_AXIS_3_TID        : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    M_AXIS_3_TDEST      : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    M_AXIS_3_TUSER      : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

    M_AXIS_4_ACLK       : in  std_logic;
    M_AXIS_4_ARESETN    : out std_logic;
    M_AXIS_4_TVALID     : out std_logic;
    M_AXIS_4_TREADY     : in  std_logic;
    M_AXIS_4_TDATA      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_4_TSTRB      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_4_TKEEP      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_4_TLAST      : out std_logic;
    M_AXIS_4_TID        : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    M_AXIS_4_TDEST      : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    M_AXIS_4_TUSER      : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

    M_AXIS_5_ACLK       : in  std_logic;
    M_AXIS_5_ARESETN    : out std_logic;
    M_AXIS_5_TVALID     : out std_logic;
    M_AXIS_5_TREADY     : in  std_logic;
    M_AXIS_5_TDATA      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_5_TSTRB      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_5_TKEEP      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_5_TLAST      : out std_logic;
    M_AXIS_5_TID        : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    M_AXIS_5_TDEST      : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    M_AXIS_5_TUSER      : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

    M_AXIS_6_ACLK       : in  std_logic;
    M_AXIS_6_ARESETN    : out std_logic;
    M_AXIS_6_TVALID     : out std_logic;
    M_AXIS_6_TREADY     : in  std_logic;
    M_AXIS_6_TDATA      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_6_TSTRB      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_6_TKEEP      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_6_TLAST      : out std_logic;
    M_AXIS_6_TID        : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    M_AXIS_6_TDEST      : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    M_AXIS_6_TUSER      : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

    M_AXIS_7_ACLK       : in  std_logic;
    M_AXIS_7_ARESETN    : out std_logic;
    M_AXIS_7_TVALID     : out std_logic;
    M_AXIS_7_TREADY     : in  std_logic;
    M_AXIS_7_TDATA      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    M_AXIS_7_TSTRB      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_7_TKEEP      : out std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
    M_AXIS_7_TLAST      : out std_logic;
    M_AXIS_7_TID        : out std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
    M_AXIS_7_TDEST      : out std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
    M_AXIS_7_TUSER      : out std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

    -- Output stream, data channel:
    m_axis_rxd_aclk     : in  std_logic;
    m_axis_rxd_aresetn  : in  std_logic;
    m_axis_rxd_tdata    : out std_logic_vector(C_M_AXIS_RXD_TDATA_WIDTH-1 downto 0);
    m_axis_rxd_tkeep    : out std_logic_vector(C_M_AXIS_RXD_TDATA_WIDTH/8-1 downto 0);
    ---
    m_axis_rxd_tlast    : out std_logic;
    m_axis_rxd_tvalid   : out std_logic;
    m_axis_rxd_tready   : in  std_logic;
    -- Output stream, control channel:
    m_axis_rxs_aclk     : in  std_logic;
    m_axis_rxs_aresetn  : in  std_logic;
    m_axis_rxs_tdata    : out std_logic_vector(C_M_AXIS_RXS_TDATA_WIDTH-1 downto 0);
    m_axis_rxs_tkeep    : out std_logic_vector(C_M_AXIS_RXS_TDATA_WIDTH/8-1 downto 0);
    ---
    m_axis_rxs_tlast    : out std_logic;
    m_axis_rxs_tvalid   : out std_logic;
    m_axis_rxs_tready   : in  std_logic;

    -- Input streams
    S_AXIS_0_ACLK       : in  std_logic;
    S_AXIS_0_ARESETN    : out std_logic;
    S_AXIS_0_TVALID     : in  std_logic;
    S_AXIS_0_TREADY     : out std_logic;
    S_AXIS_0_TDATA      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    S_AXIS_0_TSTRB      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_0_TKEEP      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_0_TLAST      : in  std_logic;
    S_AXIS_0_TID        : in  std_logic_vector(C_S_AXIS_TID_WIDTH-1 downto 0);
    S_AXIS_0_TDEST      : in  std_logic_vector(C_S_AXIS_TDEST_WIDTH-1 downto 0);
    S_AXIS_0_TUSER      : in  std_logic_vector(C_S_AXIS_TUSER_WIDTH-1 downto 0);

    S_AXIS_1_ACLK       : in  std_logic;
    S_AXIS_1_ARESETN    : out std_logic;
    S_AXIS_1_TVALID     : in  std_logic;
    S_AXIS_1_TREADY     : out std_logic;
    S_AXIS_1_TDATA      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    S_AXIS_1_TSTRB      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_1_TKEEP      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_1_TLAST      : in  std_logic;
    S_AXIS_1_TID        : in  std_logic_vector(C_S_AXIS_TID_WIDTH-1 downto 0);
    S_AXIS_1_TDEST      : in  std_logic_vector(C_S_AXIS_TDEST_WIDTH-1 downto 0);
    S_AXIS_1_TUSER      : in  std_logic_vector(C_S_AXIS_TUSER_WIDTH-1 downto 0);

    S_AXIS_2_ACLK       : in  std_logic;
    S_AXIS_2_ARESETN    : out std_logic;
    S_AXIS_2_TVALID     : in  std_logic;
    S_AXIS_2_TREADY     : out std_logic;
    S_AXIS_2_TDATA      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    S_AXIS_2_TSTRB      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_2_TKEEP      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_2_TLAST      : in  std_logic;
    S_AXIS_2_TID        : in  std_logic_vector(C_S_AXIS_TID_WIDTH-1 downto 0);
    S_AXIS_2_TDEST      : in  std_logic_vector(C_S_AXIS_TDEST_WIDTH-1 downto 0);
    S_AXIS_2_TUSER      : in  std_logic_vector(C_S_AXIS_TUSER_WIDTH-1 downto 0);

    S_AXIS_3_ACLK       : in  std_logic;
    S_AXIS_3_ARESETN    : out std_logic;
    S_AXIS_3_TVALID     : in  std_logic;
    S_AXIS_3_TREADY     : out std_logic;
    S_AXIS_3_TDATA      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    S_AXIS_3_TSTRB      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_3_TKEEP      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_3_TLAST      : in  std_logic;
    S_AXIS_3_TID        : in  std_logic_vector(C_S_AXIS_TID_WIDTH-1 downto 0);
    S_AXIS_3_TDEST      : in  std_logic_vector(C_S_AXIS_TDEST_WIDTH-1 downto 0);
    S_AXIS_3_TUSER      : in  std_logic_vector(C_S_AXIS_TUSER_WIDTH-1 downto 0);

    S_AXIS_4_ACLK       : in  std_logic;
    S_AXIS_4_ARESETN    : out std_logic;
    S_AXIS_4_TVALID     : in  std_logic;
    S_AXIS_4_TREADY     : out std_logic;
    S_AXIS_4_TDATA      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    S_AXIS_4_TSTRB      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_4_TKEEP      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_4_TLAST      : in  std_logic;
    S_AXIS_4_TID        : in  std_logic_vector(C_S_AXIS_TID_WIDTH-1 downto 0);
    S_AXIS_4_TDEST      : in  std_logic_vector(C_S_AXIS_TDEST_WIDTH-1 downto 0);
    S_AXIS_4_TUSER      : in  std_logic_vector(C_S_AXIS_TUSER_WIDTH-1 downto 0);

    S_AXIS_5_ACLK       : in  std_logic;
    S_AXIS_5_ARESETN    : out std_logic;
    S_AXIS_5_TVALID     : in  std_logic;
    S_AXIS_5_TREADY     : out std_logic;
    S_AXIS_5_TDATA      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    S_AXIS_5_TSTRB      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_5_TKEEP      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_5_TLAST      : in  std_logic;
    S_AXIS_5_TID        : in  std_logic_vector(C_S_AXIS_TID_WIDTH-1 downto 0);
    S_AXIS_5_TDEST      : in  std_logic_vector(C_S_AXIS_TDEST_WIDTH-1 downto 0);
    S_AXIS_5_TUSER      : in  std_logic_vector(C_S_AXIS_TUSER_WIDTH-1 downto 0);

    S_AXIS_6_ACLK       : in  std_logic;
    S_AXIS_6_ARESETN    : out std_logic;
    S_AXIS_6_TVALID     : in  std_logic;
    S_AXIS_6_TREADY     : out std_logic;
    S_AXIS_6_TDATA      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    S_AXIS_6_TSTRB      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_6_TKEEP      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_6_TLAST      : in  std_logic;
    S_AXIS_6_TID        : in  std_logic_vector(C_S_AXIS_TID_WIDTH-1 downto 0);
    S_AXIS_6_TDEST      : in  std_logic_vector(C_S_AXIS_TDEST_WIDTH-1 downto 0);
    S_AXIS_6_TUSER      : in  std_logic_vector(C_S_AXIS_TUSER_WIDTH-1 downto 0);

    S_AXIS_7_ACLK       : in  std_logic;
    S_AXIS_7_ARESETN    : out std_logic;
    S_AXIS_7_TVALID     : in  std_logic;
    S_AXIS_7_TREADY     : out std_logic;
    S_AXIS_7_TDATA      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    S_AXIS_7_TSTRB      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_7_TKEEP      : in  std_logic_vector(C_S_AXIS_TDATA_WIDTH/8-1 downto 0);
    S_AXIS_7_TLAST      : in  std_logic;
    S_AXIS_7_TID        : in  std_logic_vector(C_S_AXIS_TID_WIDTH-1 downto 0);
    S_AXIS_7_TDEST      : in  std_logic_vector(C_S_AXIS_TDEST_WIDTH-1 downto 0);
    S_AXIS_7_TUSER      : in  std_logic_vector(C_S_AXIS_TUSER_WIDTH-1 downto 0);

    none                : out std_logic);
end entity;

architecture rtl of axi_stream_router is

  signal axis_rst : std_logic;
  signal splitter_rst   : std_logic;

  signal m_axis_tvalid  : std_logic_vector(7 downto 0);
  signal m_axis_tready  : std_logic_vector(7 downto 0);
  signal m_axis_tdata   : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
  signal m_axis_tstrb   : std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
  signal m_axis_tkeep   : std_logic_vector(C_M_AXIS_TDATA_WIDTH/8-1 downto 0);
  signal m_axis_tlast   : std_logic;
  signal m_axis_tid     : std_logic_vector(C_M_AXIS_TID_WIDTH-1 downto 0);
  signal m_axis_tdest   : std_logic_vector(C_M_AXIS_TDEST_WIDTH-1 downto 0);
  signal m_axis_tuser   : std_logic_vector(C_M_AXIS_TUSER_WIDTH-1 downto 0);

  ----------------------------------------------
  constant C_S_AXIS_TSRTB_WIDTH : integer := C_S_AXIS_TDATA_WIDTH/8;
  constant C_S_AXIS_TKEEP_WIDTH : integer := C_S_AXIS_TDATA_WIDTH/8;
  
  signal combiner_rst   : std_logic;

  signal s_axis_tvalid  : std_logic_vector(7 downto 0);
  signal s_axis_tready  : std_logic_vector(7 downto 0);
  signal s_axis_tdata   : std_logic_vector(C_S_AXIS_TDATA_WIDTH*8-1 downto 0);
  signal s_axis_tstrb   : std_logic_vector(C_S_AXIS_TSRTB_WIDTH*8-1 downto 0);
  signal s_axis_tkeep   : std_logic_vector(C_S_AXIS_TKEEP_WIDTH*8-1 downto 0);
  signal s_axis_tlast   : std_logic_vector(7 downto 0);
  signal s_axis_tid     : std_logic_vector(C_S_AXIS_TID_WIDTH*8-1 downto 0);
  signal s_axis_tdest   : std_logic_vector(C_S_AXIS_TDEST_WIDTH*8-1 downto 0);
  signal s_axis_tuser   : std_logic_vector(C_S_AXIS_TUSER_WIDTH*8-1 downto 0);

--  signal splitter_ila_control : std_logic_vector(35 downto 0);
--  signal combiner_ila_control : std_logic_vector(35 downto 0);

begin

  
  splitter_rst <= not(s_axis_txd_aresetn);
  
  SPLITTER_CTRL_I : entity work.splitter_ctrl
    generic map (
      C_FAMILY                  => C_FAMILY,
      C_USE_CHIPSCOPE           => C_USE_CHIPSCOPE,
      TXD_TDATA_WIDTH           => C_S_AXIS_TXD_TDATA_WIDTH,
      TXC_TDATA_WIDTH           => C_S_AXIS_TXC_TDATA_WIDTH,
      C_NUM_MASTER_SLOTS        => C_NUM_MASTER_SLOTS,
      C_M_AXIS_TDATA_WIDTH      => C_M_AXIS_TDATA_WIDTH,
      C_M_AXIS_TUSER_WIDTH      => C_M_AXIS_TUSER_WIDTH,
      C_M_AXIS_TID_WIDTH        => C_M_AXIS_TID_WIDTH,
      C_M_AXIS_TDEST_WIDTH      => C_M_AXIS_TDEST_WIDTH)
    port map (
      splitter_ctrl_ila_control => splitter_ctrl_ila_control,
      splitter_txd_ila_control  => splitter_txd_ila_control,
      splitter_txc_ila_control  => splitter_txc_ila_control,
      ---     
      axi_clk         => s_axis_txd_aclk,
      axi_rst         => splitter_rst,
      -- Input stream, data channel
      txd_tdata       => s_axis_txd_tdata,
      txd_tkeep       => s_axis_txd_tkeep,
      txd_tlast       => s_axis_txd_tlast,
      txd_tvld        => s_axis_txd_tvalid,
      txd_trdy        => s_axis_txd_tready,
      -- Input stream, control channel
      txc_tdata       => s_axis_txc_tdata,
      txc_tkeep       => s_axis_txc_tkeep,
      txc_tlast       => s_axis_txc_tlast,
      txc_tvld        => s_axis_txc_tvalid,
      txc_trdy        => s_axis_txc_tready,
  
      -- Output stream
      m_axis_tvalid   => m_axis_tvalid,
      m_axis_tready   => m_axis_tready,
      m_axis_tdata    => m_axis_tdata,
      m_axis_tstrb    => m_axis_tstrb,
      m_axis_tkeep    => m_axis_tkeep,
      m_axis_tlast    => m_axis_tlast,
      m_axis_tid      => m_axis_tid,
      m_axis_tdest    => m_axis_tdest,
      m_axis_tuser    => m_axis_tuser,
  
      none            => open);
    
    M_AXIS_0_ARESETN <= s_axis_txd_aresetn;
    M_AXIS_1_ARESETN <= s_axis_txd_aresetn;
    M_AXIS_2_ARESETN <= s_axis_txd_aresetn;
    M_AXIS_3_ARESETN <= s_axis_txd_aresetn;
    M_AXIS_4_ARESETN <= s_axis_txd_aresetn;
    M_AXIS_5_ARESETN <= s_axis_txd_aresetn;
    M_AXIS_6_ARESETN <= s_axis_txd_aresetn;
    M_AXIS_7_ARESETN <= s_axis_txd_aresetn;

    M_AXIS_0_TVALID <= m_axis_tvalid(0);
    M_AXIS_1_TVALID <= m_axis_tvalid(1);
    M_AXIS_2_TVALID <= m_axis_tvalid(2);
    M_AXIS_3_TVALID <= m_axis_tvalid(3);
    M_AXIS_4_TVALID <= m_axis_tvalid(4);
    M_AXIS_5_TVALID <= m_axis_tvalid(5);
    M_AXIS_6_TVALID <= m_axis_tvalid(6);
    M_AXIS_7_TVALID <= m_axis_tvalid(7);

    m_axis_tready(0) <= M_AXIS_0_TREADY;
    m_axis_tready(1) <= M_AXIS_1_TREADY;
    m_axis_tready(2) <= M_AXIS_2_TREADY;
    m_axis_tready(3) <= M_AXIS_3_TREADY;
    m_axis_tready(4) <= M_AXIS_4_TREADY;
    m_axis_tready(5) <= M_AXIS_5_TREADY;
    m_axis_tready(6) <= M_AXIS_6_TREADY;
    m_axis_tready(7) <= M_AXIS_7_TREADY;

    M_AXIS_0_TDATA <= m_axis_tdata;
    M_AXIS_1_TDATA <= m_axis_tdata;
    M_AXIS_2_TDATA <= m_axis_tdata;
    M_AXIS_3_TDATA <= m_axis_tdata;
    M_AXIS_4_TDATA <= m_axis_tdata;
    M_AXIS_5_TDATA <= m_axis_tdata;
    M_AXIS_6_TDATA <= m_axis_tdata;
    M_AXIS_7_TDATA <= m_axis_tdata;

    M_AXIS_0_TSTRB <= m_axis_tstrb;
    M_AXIS_1_TSTRB <= m_axis_tstrb;
    M_AXIS_2_TSTRB <= m_axis_tstrb;
    M_AXIS_3_TSTRB <= m_axis_tstrb;
    M_AXIS_4_TSTRB <= m_axis_tstrb;
    M_AXIS_5_TSTRB <= m_axis_tstrb;
    M_AXIS_6_TSTRB <= m_axis_tstrb;
    M_AXIS_7_TSTRB <= m_axis_tstrb;

    M_AXIS_0_TKEEP <= m_axis_tkeep;
    M_AXIS_1_TKEEP <= m_axis_tkeep;
    M_AXIS_2_TKEEP <= m_axis_tkeep;
    M_AXIS_3_TKEEP <= m_axis_tkeep;
    M_AXIS_4_TKEEP <= m_axis_tkeep;
    M_AXIS_5_TKEEP <= m_axis_tkeep;
    M_AXIS_6_TKEEP <= m_axis_tkeep;
    M_AXIS_7_TKEEP <= m_axis_tkeep;

    M_AXIS_0_TLAST <= m_axis_tlast;
    M_AXIS_1_TLAST <= m_axis_tlast;
    M_AXIS_2_TLAST <= m_axis_tlast;
    M_AXIS_3_TLAST <= m_axis_tlast;
    M_AXIS_4_TLAST <= m_axis_tlast;
    M_AXIS_5_TLAST <= m_axis_tlast;
    M_AXIS_6_TLAST <= m_axis_tlast;
    M_AXIS_7_TLAST <= m_axis_tlast;

    M_AXIS_0_TID <= m_axis_tid;
    M_AXIS_1_TID <= m_axis_tid;
    M_AXIS_2_TID <= m_axis_tid;
    M_AXIS_3_TID <= m_axis_tid;
    M_AXIS_4_TID <= m_axis_tid;
    M_AXIS_5_TID <= m_axis_tid;
    M_AXIS_6_TID <= m_axis_tid;
    M_AXIS_7_TID <= m_axis_tid;

    M_AXIS_0_TDEST <= m_axis_tdest;
    M_AXIS_1_TDEST <= m_axis_tdest;
    M_AXIS_2_TDEST <= m_axis_tdest;
    M_AXIS_3_TDEST <= m_axis_tdest;
    M_AXIS_4_TDEST <= m_axis_tdest;
    M_AXIS_5_TDEST <= m_axis_tdest;
    M_AXIS_6_TDEST <= m_axis_tdest;
    M_AXIS_7_TDEST <= m_axis_tdest;

    M_AXIS_0_TUSER <= m_axis_tuser;
    M_AXIS_1_TUSER <= m_axis_tuser;
    M_AXIS_2_TUSER <= m_axis_tuser;
    M_AXIS_3_TUSER <= m_axis_tuser;
    M_AXIS_4_TUSER <= m_axis_tuser;
    M_AXIS_5_TUSER <= m_axis_tuser;
    M_AXIS_6_TUSER <= m_axis_tuser;
    M_AXIS_7_TUSER <= m_axis_tuser;


  ----------------------------------------------------
  combiner_rst <= not(m_axis_rxd_aresetn);

  COMBINER_CTRL_I : entity work.combiner_ctrl
    generic map (
      -- System generics:
      C_FAMILY                  => C_FAMILY,
      C_USE_CHIPSCOPE           => C_USE_CHIPSCOPE,
      RXD_TDATA_WIDTH           => C_M_AXIS_RXD_TDATA_WIDTH,
      RXS_TDATA_WIDTH           => C_M_AXIS_RXS_TDATA_WIDTH,
      C_NUM_SLAVE_SLOTS         => C_NUM_SLAVE_SLOTS,
      C_S_AXIS_TDATA_WIDTH      => C_S_AXIS_TDATA_WIDTH,
      C_S_AXIS_TSRTB_WIDTH      => C_S_AXIS_TSRTB_WIDTH,
      C_S_AXIS_TKEEP_WIDTH      => C_S_AXIS_TKEEP_WIDTH,
      C_S_AXIS_TUSER_WIDTH      => C_S_AXIS_TUSER_WIDTH,
      C_S_AXIS_TID_WIDTH        => C_S_AXIS_TID_WIDTH,
      C_S_AXIS_TDEST_WIDTH      => C_S_AXIS_TDEST_WIDTH)
    port map (     
      combiner_ctrl_ila_control => combiner_ctrl_ila_control,
      combiner_rxd_ila_control => combiner_rxd_ila_control,
      combiner_rxs_ila_control => combiner_rxs_ila_control,
      ---     
      axi_clk         => m_axis_rxd_aclk,
      axi_rst         => combiner_rst,
  
      -- input stream
      s_axis_tvalid   => s_axis_tvalid,
      s_axis_tready   => s_axis_tready,
      s_axis_tdata    => s_axis_tdata,
      s_axis_tstrb    => s_axis_tstrb,
      s_axis_tkeep    => s_axis_tkeep,
      s_axis_tlast    => s_axis_tlast,
      s_axis_tid      => s_axis_tid,
      s_axis_tdest    => s_axis_tdest,
      s_axis_tuser    => s_axis_tuser,

      -- Output stream, data channel
      rxd_tdata       => m_axis_rxd_tdata,
      rxd_tkeep       => m_axis_rxd_tkeep,
      rxd_tlast       => m_axis_rxd_tlast,
      rxd_tvld        => m_axis_rxd_tvalid,
      rxd_trdy        => m_axis_rxd_tready,
      -- Output stream, status channel
      rxs_tdata       => m_axis_rxs_tdata,
      rxs_tkeep       => m_axis_rxs_tkeep,
      rxs_tlast       => m_axis_rxs_tlast,
      rxs_tvld        => m_axis_rxs_tvalid,
      rxs_trdy        => m_axis_rxs_tready,
      none            => open);

    S_AXIS_0_ARESETN <= m_axis_rxd_aresetn;
    S_AXIS_1_ARESETN <= m_axis_rxd_aresetn;
    S_AXIS_2_ARESETN <= m_axis_rxd_aresetn;
    S_AXIS_3_ARESETN <= m_axis_rxd_aresetn;
    S_AXIS_4_ARESETN <= m_axis_rxd_aresetn;
    S_AXIS_5_ARESETN <= m_axis_rxd_aresetn;
    S_AXIS_6_ARESETN <= m_axis_rxd_aresetn;
    S_AXIS_7_ARESETN <= m_axis_rxd_aresetn;

    s_axis_tvalid(0) <= S_AXIS_0_TVALID;
    s_axis_tvalid(1) <= S_AXIS_1_TVALID;
    s_axis_tvalid(2) <= S_AXIS_2_TVALID;
    s_axis_tvalid(3) <= S_AXIS_3_TVALID;
    s_axis_tvalid(4) <= S_AXIS_4_TVALID;
    s_axis_tvalid(5) <= S_AXIS_5_TVALID;
    s_axis_tvalid(6) <= S_AXIS_6_TVALID;
    s_axis_tvalid(7) <= S_AXIS_7_TVALID;

    S_AXIS_0_TREADY <= s_axis_tready(0);
    S_AXIS_1_TREADY <= s_axis_tready(1);
    S_AXIS_2_TREADY <= s_axis_tready(2);
    S_AXIS_3_TREADY <= s_axis_tready(3);
    S_AXIS_4_TREADY <= s_axis_tready(4);
    S_AXIS_5_TREADY <= s_axis_tready(5);
    S_AXIS_6_TREADY <= s_axis_tready(6);
    S_AXIS_7_TREADY <= s_axis_tready(7);

    s_axis_tdata <=   S_AXIS_7_TDATA &
                      S_AXIS_6_TDATA &    
                      S_AXIS_5_TDATA &    
                      S_AXIS_4_TDATA &    
                      S_AXIS_3_TDATA &    
                      S_AXIS_2_TDATA &    
                      S_AXIS_1_TDATA &    
                      S_AXIS_0_TDATA;

    s_axis_tstrb <=   S_AXIS_7_TSTRB &
                      S_AXIS_6_TSTRB &    
                      S_AXIS_5_TSTRB &    
                      S_AXIS_4_TSTRB &    
                      S_AXIS_3_TSTRB &    
                      S_AXIS_2_TSTRB &    
                      S_AXIS_1_TSTRB &    
                      S_AXIS_0_TSTRB;

    s_axis_tkeep <=   S_AXIS_7_TKEEP &
                      S_AXIS_6_TKEEP &    
                      S_AXIS_5_TKEEP &    
                      S_AXIS_4_TKEEP &    
                      S_AXIS_3_TKEEP &    
                      S_AXIS_2_TKEEP &    
                      S_AXIS_1_TKEEP &    
                      S_AXIS_0_TKEEP;

    s_axis_tlast <=   S_AXIS_7_TLAST &
                      S_AXIS_6_TLAST &    
                      S_AXIS_5_TLAST &    
                      S_AXIS_4_TLAST &    
                      S_AXIS_3_TLAST &    
                      S_AXIS_2_TLAST &    
                      S_AXIS_1_TLAST &    
                      S_AXIS_0_TLAST;

    s_axis_tid <=     S_AXIS_7_TID &
                      S_AXIS_6_TID &    
                      S_AXIS_5_TID &    
                      S_AXIS_4_TID &    
                      S_AXIS_3_TID &    
                      S_AXIS_2_TID &    
                      S_AXIS_1_TID &    
                      S_AXIS_0_TID;

    s_axis_tdest <=   S_AXIS_7_TDEST &
                      S_AXIS_6_TDEST &    
                      S_AXIS_5_TDEST &    
                      S_AXIS_4_TDEST &    
                      S_AXIS_3_TDEST &    
                      S_AXIS_2_TDEST &    
                      S_AXIS_1_TDEST &    
                      S_AXIS_0_TDEST;

    s_axis_tuser <=   S_AXIS_7_TUSER &
                      S_AXIS_6_TUSER &    
                      S_AXIS_5_TUSER &    
                      S_AXIS_4_TUSER &    
                      S_AXIS_3_TUSER &    
                      S_AXIS_2_TUSER &    
                      S_AXIS_1_TUSER &    
                      S_AXIS_0_TUSER;




  --  CHIPSCOPE_GEN : if (C_USE_CHIPSCOPE /= 0) generate
  --    component axi_stream_router_icon
  --      port (
  --        CONTROL0 : inout std_logic_vector( 35 downto 0 );
  --        CONTROL1 : inout std_logic_vector( 35 downto 0 )); 
  --    end component;
  --
  --    attribute BOX_TYPE : STRING;
  --    attribute BOX_TYPE of axi_stream_router_icon : component is "black_box";
  --  begin
  --
  --    ROUTER_ICON_I : axi_stream_router_icon
  --      port map (
  --        CONTROL0 => splitter_ila_control,
  --        CONTROL1 => combiner_ila_control);
  --  
  --  end generate CHIPSCOPE_GEN;

    
end rtl;

-- The MASTERS parameter: The AXI Interconnect IP is a crossbar. This means 
-- that not all masters are connected to all the slaves. There needs to be 
-- a mechanism in which slaves that are connected to the AXI Interconnect 
-- can specify which masters can access them.
--
-- This is specified using the C_INTERCONNECT_<BusIf>_MASTERS parameter. In 
-- the previous example, the C_INTERCONNECT_S_AXI_MASTERS parameter on the
-- axi_gpio_0 IP indicates that the M_AXI_DP interface of mb_0 and mb_1 have
-- access. The value of this parameter is an '&' separated list of master 
-- interfaces.
--
--  BEGIN axi_gpio
--    PARAMETER INSTANCE = axi_gpio_0
--    PARAMETER HW_VER = 1.00.a
--    PARAMETER C_INTERCONNECT_S_AXI_MASTERS = mb_0.M_AXI_DP & mb_1.M_AXI_DP
--    PARAMETER C_BASEADDR = 0x81440000
--    PARAMETER C_HIGHADDR = 0x8144ffff
--    BUS_INTERFACE S_AXI = axi_0
--    PORT GPIO_IO_O = fpga_0_LEDs_Positions_GPIO_IO_pin
--    PORT S_AXI_ACLK = sys_clk_s
--  END
