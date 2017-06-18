library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
  
entity siete_segmentos is
    PORT (
        entrada: IN  STD_LOGIC_VECTOR(3 downto 0);
        salida : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end siete_segmentos;
  
architecture Behavioral of siete_segmentos is
begin
    visualizador: process (entrada) begin
        case entrada is
            when "0000" =>  salida <= "1111110"; -- 0
            when "0001" =>  salida <= "0110000"; -- 1
            when "0010" =>  salida <= "1101101"; -- 2
            when "0011" =>  salida <= "1111001"; -- 3
            when "0100" =>  salida <= "0110011"; -- 4
            when "0101" =>  salida <= "1011011"; -- 5
            when "0110" =>  salida <= "1011111"; -- 6
            when "0111" =>  salida <= "1110000"; -- 7
            when "1000" =>  salida <= "1111111"; -- 8
            when "1001" =>  salida <= "1111011"; -- 9            
            when others   =>  salida <= "0000000"; -- Nada
        end case;
    end process;
end Behavioral;