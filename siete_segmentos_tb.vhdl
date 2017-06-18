--pablo384
--La Vega, RD
library ieee;
use ieee.std_logic_1164.all;

entity tb_siete_segmentos is
end tb_siete_segmentos;

architecture tb of tb_siete_segmentos is

    component siete_segmentos
        port (entrada : in std_logic_vector (3 downto 0);
              salida  : out std_logic_vector (6 downto 0));
    end component;

    signal entrada : std_logic_vector (3 downto 0);
    signal salida  : std_logic_vector (6 downto 0);

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : siete_segmentos
    port map (entrada => entrada,
              salida  => salida);

    -- Clock generation
    --TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    --  EDIT: Replace YOURCLOCKSIGNAL below by the name of your clock as I haven't guessed it
    --  YOURCLOCKSIGNAL <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        entrada <= (others => '0');

        -- Reset generation
        --  EDIT: Replace YOURRESETSIGNAL below by the name of your reset as I haven't guessed it
        --entrada <= '000011';
        --wait for 100 ns;
        --entrada <= '011011';
        

        -- EDIT Add stimuli here
        --wait for 100 * TbPeriod;
        entrada <= "0000";
        wait for 1 ns;
        entrada <= "0001";
        wait for 1 ns;
        entrada <= "0010";
        wait for 1 ns;
        entrada <= "0011";
        wait for 1 ns;
        entrada <= "0100";
        wait for 1 ns;
        entrada <= "0101";
        wait for 1 ns;
        entrada <= "0110";
        wait for 1 ns;
        entrada <= "0111";
        wait for 1 ns;
        entrada <= "1000";
        wait for 1 ns;
        entrada <= "1001";
        wait for 1 ns;
        entrada <= "1100"; --convinacion indefinida
        wait for 1 ns;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_siete_segmentos of tb_siete_segmentos is
    for tb
    end for;
end cfg_tb_siete_segmentos;