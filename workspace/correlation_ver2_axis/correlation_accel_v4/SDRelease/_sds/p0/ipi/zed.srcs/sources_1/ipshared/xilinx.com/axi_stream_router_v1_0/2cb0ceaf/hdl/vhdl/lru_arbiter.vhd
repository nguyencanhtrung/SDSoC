-- NOTA: La generación de grand_idx y la correspondiente actualización
-- de los registros de nivel presenta un camino crítico un poco largo
-- Si ocasiona problemas podemos registrar las entradas que utilizan
-- y demorar estas operacione un ciclo. Al fin y al cabo, el modulo
-- que lo utiliza (combiner_ctrl) no hace uso de esta información 
-- hasta despues de mandar el stream de status, esto es, 6 ciclos
-- después.


-- NOTA: LL = logic level

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library axi_stream_router_v1_00_a;
use axi_stream_router_v1_00_a.common_pkg.all;
-- use common_pkg.all;

entity lru_arbiter is
  generic (
    -- System generics:
    C_FAMILY        : string  := "virtex6";     -- Xilinx FPGA family
    N_CHANNELS      : integer;
    INDEX_WIDTH     : integer);
  port (     
    clk         : in  std_logic;
    rst         : in  std_logic;
    arbitrate   : in  std_logic;
    request     : in  std_logic_vector(N_CHANNELS-1 downto 0);
    grant       : out std_logic_vector(N_CHANNELS-1 downto 0);
    grant_idx   : out std_logic_vector(INDEX_WIDTH-1 downto 0));
end entity;

architecture rtl of lru_arbiter is
  subtype level_reg_type is unsigned(INDEX_WIDTH-1 downto 0);
  type level_reg_array is array (natural range <>) of level_reg_type;
  signal level_regs     : level_reg_array(N_CHANNELS-1 downto 0);
  signal level_rqt_n    : std_logic_vector(N_CHANNELS-1 downto 0);
  signal next_grant_lvl : std_logic_vector(N_CHANNELS-1 downto 0);

  signal winner_channel : unsigned(INDEX_WIDTH-1 downto 0);




  signal level_ce   : std_logic_vector(N_CHANNELS-1 downto 0);
  -- pragma translate_off
  signal level_rqt : std_logic_vector(N_CHANNELS-1 downto 0);

  type int_array is array (natural range <>) of integer;
  signal dbg_level_reg : int_array(N_CHANNELS-1 downto 0) := (others => 0);
  signal test_level_reg : int_array(N_CHANNELS-1 downto 0) := (others => 0);
  signal test_win_channel  : integer := 0;
  signal test_win_level  : integer := 0;
  -- pragma translate_on

  --------------------------------------------
begin

  -- Partimos de un algoritmo de prioridad fija en el que la prioridad máxima
  -- corresponde el elemento de indice 0 (esto es menor indice mayor prioridad).
  -- En un algoritmos round-robin cuando se le otorga el contro a un agente
  -- este pasa a tener la mínima prioridad. Para ello se debe utilizar un 
  -- esquema de prioridad variable.
  -- En este caso tambien se sigue utilizando un codificador con prioridad, de 
  -- forma que cada una de sus entradas representa un nivel de prioridad. Sin 
  -- ambargo ahora cada una de las entradas del codificador se conecta a un 
  -- multiplexor que permite seleccionar cuál de los agentes se asignará a dicha
  -- entrada o nivel de prioridad. Según esto, para asignar al agente 'k' la 
  -- prioridad 'p' será necesario seleccionar el canal 'k' en el multiplexor del
  -- nivel 'p'. Obviamente cada uno de los multiplexores debe seleccionar un
  -- agente distinto.
  -- Por tanto cada nivel de prioridad tiene asociado un registro que selecciona
  -- la entrada del multiplexor (agente) que se asigna a dicho nivel. En nuestro  
  -- diseño este registro es un array representado por la señal 'level_regs'
  --
  -- Después de otorgar el control a un agente este debe recibir la mínima prioridad
  -- y todos los demás que tubiesen menor prioridad deben incrementar en uno su 
  -- nivel de prioridad. Para ello los registros de prioridad se encadenan como
  -- un registro de desplazamiento.





  -- Estos son N_CHANNELS multiplexores (1 LL)
  process(request, level_regs)
  begin
    for i in 0 to N_CHANNELS-1 loop
      level_rqt_n(i) <= not(request(to_integer(level_regs(i)))); 
    end loop;
  end process;

  -- pragma translate_off
  level_rqt <= not(level_rqt_n);
  -- pragma translate_on

  -- Si trabajamos con lógica negativa:
  --  cin(k) = 1  => Todos los canales anteriores están desactivados.
  --  cin(k) = 0  => Alguno de los canales anteriores está desactivado.
  -- En estas condiciones activo la salida grant(k) si rqt_n(k) está
  -- activa y todos los canales anteriores están desactivados (cin(k) = 1)
  -- Para level_ce, activo level_reg_ce(k) si 

  -- 'Codificador' con prioridad (2 LL)
  PRIORITY_I : entity work.priority_one_hot
    generic map (
      C_FAMILY  => C_FAMILY,
      WIDTH     => N_CHANNELS)
    port map (     
      request_n   => level_rqt_n, 
      grant       => next_grant_lvl,
      grant_ce    => level_ce);

  process(clk, rst)
  begin
    if(rst = '1') then
      for i in 0 to N_CHANNELS-1 loop
        level_regs(i) <= to_unsigned(i, INDEX_WIDTH);
      end loop;
    elsif(clk'event and clk = '1') then
      if(arbitrate = '1') then
        -- Realizo una 'rotación' a derechas de los registros de nivel desde 
        -- el nivel ganador hasta el último. Los registros afectados tienen 
        -- activa la señal level_ce.
        -- Para ello desplazo a derechas todos menos el último
        for i in 0 to N_CHANNELS-2 loop
          if(level_ce(i) = '1') then
            level_regs(i) <= level_regs(i+1);
          end if;
        end loop;
        -- Y el último toma el contenido del nivel ganador:
        level_regs(N_CHANNELS-1) <= winner_channel;
      end if;
    end if;
  end process;

  -- Esta es la versión algoritmica:
--  process(next_grant_lvl, arbitrate, level_regs)
--  begin
--    winner_channel <= (others => '0');
--    if(arbitrate = '1') then
--      for i in 0 to N_CHANNELS-1 loop
--        if(next_grant_lvl(i) = '1') then
--          winner_channel <= level_regs(i);
--        end if;
--      end loop;    
--    end if;
--  end process;
  
  WIN_MUX : if (true) generate
    signal mux_din  : std_logic_vector(N_CHANNELS*INDEX_WIDTH-1 downto 0);
    signal mux_dout : std_logic_vector(INDEX_WIDTH-1 downto 0);
  begin
  
    process(level_regs)
    begin
      for i in 0 to N_CHANNELS-1 loop
        mux_din(INDEX_WIDTH*(i+1)-1 downto INDEX_WIDTH*i) <= std_logic_vector(level_regs(i));
      end loop;
    end process;
  
    --MUX_I : mux_onehot
    MUX_I : entity work.mux_onehot_v6_s6
      generic map (
        C_N_CHANNELS    => N_CHANNELS,
        C_CHANNEL_WIDTH => INDEX_WIDTH)
      port map (
        data_in   => mux_din,
        sel       => next_grant_lvl,
        data_out  => mux_dout);

      
      winner_channel <= unsigned(mux_dout);
  end generate;

  -- Registro de salida:
  process(clk, rst)
  begin
    if(rst = '1') then
      grant_idx <= (others => '0');
      grant <= (others => '0');
    elsif(clk'event and clk = '1') then
      if(arbitrate = '1') then
        grant_idx <= std_logic_vector(winner_channel);
        -- esto es un decodificador:
        -- El camino crítico es muy largo, si hay problemas puedo utilizar
        -- registros también para la versión decodificada de level_regs
        for i in 0 to N_CHANNELS-1 loop
          if(i = winner_channel) then
            grant(i) <= '1';
          else
            grant(i) <= '0';
          end if;
        end loop;      
      end if;
    end if;
  end process;

end rtl;
