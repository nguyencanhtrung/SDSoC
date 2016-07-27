-- NOTA
-- En estas arquitecturas hay hasta tres tipos de slices. En las FPGAs V6 hay
-- dos tipos de slices: SLICEM y SLICEL. El sufijo M viene de Memory y el L
-- de Logic. Las SLICEM pueden utilizar sus LUTs como memoria distribuida o
-- SRL32 mientras que las SLICEL sólo pueden implementar lógica.
-- Además en las S6 existe un tercer tipo denominado SLICEX que no dispone
-- de los recursos de acarreo anticipado.
--
-- Si nos ceñimos a los SLICEM/SLICEL, en las S6/V6 cada SLICE dispone de 
-- 4 LUTS de 6 entradas. Cada una de estas LUTs ataca a uno de los 4 
-- generadores de acarreo. Por tanto con cada LUT podemos dar servicio
-- a 3 canales de un multiplexor one-hot y con un SLICE a 12 canale. Esto 
-- es menos eficiente que el uso de multiplexores binarios que permiten 
-- implementar hasta 16 canales cun un SLICE y además no tiene las 
-- restricciones de las SLICEX de la S6.
--
-- Por tanto, ahora la estrategia cambia, Tenemos que tratar de formar 
-- grupos de 3 bits.



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity mux_onehot_v6_s6 is
  generic (
    C_N_CHANNELS    : integer := 4;
    C_CHANNEL_WIDTH : integer := 32
  );
  port (
    data_in   : in  std_logic_vector(C_N_CHANNELS*C_CHANNEL_WIDTH-1 downto 0);
    sel       : in  std_logic_vector(C_N_CHANNELS-1 downto 0);
    data_out  : out std_logic_vector(C_CHANNEL_WIDTH-1 downto 0));
end mux_onehot_v6_s6;

architecture rtl of mux_onehot_v6_s6 is
  constant CHANNELS_PER_LUT : integer := 3;

  constant X_N_BLOCKS   : integer := (C_N_CHANNELS + CHANNELS_PER_LUT-1) /CHANNELS_PER_LUT;
  constant X_N_CHANNELS : integer := X_N_BLOCKS*CHANNELS_PER_LUT;

  -- Expandimos el bus de datos de entrada añadiendo C_N_CHANNELS rem 3
  -- canales nulos al final
  signal xdata_in : std_logic_vector(X_N_CHANNELS*C_CHANNEL_WIDTH-1 downto 0);
  signal xsel     : std_logic_vector(X_N_CHANNELS-1 downto 0);

  signal dbg_X_N_CHANNELS : integer := X_N_CHANNELS;
  signal dbg_X_N_BLOCKS   : integer := X_N_BLOCKS;

begin
  
  -- Expandimos el bus de datos de entrada añadiendo C_N_CHANNELS rem 3
  -- canales nulos al final
  process(data_in)
  begin
    xdata_in <= (others => '0');
    xdata_in(data_in'range) <= data_in;
  end process;

  -- Ajustamos de igual manera las entradas de seleccion:
  process(sel)
  begin
    xsel <= (others => '0');
    xsel(sel'range) <= sel;
  end process;

  GLB_MUX_GEN : for k in 0 to C_CHANNEL_WIDTH-1 generate
    signal bit_in : std_logic_vector(X_N_CHANNELS-1 downto 0);
    signal lut_x  : std_logic_vector(X_N_BLOCKS-1 downto 0);
    signal carry  : std_logic_vector(X_N_BLOCKS   downto 0);
  begin
    -- Construyo un vector con los bits k-esimos de cada canal
    INPUT_GEN : for i in 0 to X_N_CHANNELS-1 generate
    begin
      bit_in(i) <= xdata_in(C_CHANNEL_WIDTH*i+k);
    end generate INPUT_GEN;    

    carry(0) <= '0';
    BIT_MUX_GEN : for i in 0 to X_N_BLOCKS-1 generate
    begin
      lut_x(i) <= not bit_in(3*i+0) when (xsel(3*i+0) = '1') else
                  not bit_in(3*i+1) when (xsel(3*i+1) = '1') else
                  not bit_in(3*i+2) when (xsel(3*i+2) = '1') else  '1'; 

      MUX_I : MUXCY
        port map (
          CI => carry(i),
          DI => '1',
          S  => lut_x(i),
          O  => carry(i+1));
    end generate;    
    
    data_out(k) <= carry(X_N_BLOCKS);
  end generate GLB_MUX_GEN;


--  data_out <= (others => '0');

end rtl;

