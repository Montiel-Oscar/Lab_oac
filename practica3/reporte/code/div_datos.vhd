library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity div_datos is
    port(
        data: in std_logic_vector(6 downto 0);
        liga: out std_logic_vector(2 downto 0);
        salidas: out std_logic_vector(3 downto 0)
    );
end div_datos;

architecture Behavioral of div_datos is
begin
    process(data)
        begin
            liga <= data(6 downto 4);
            salidas <= data(3 downto 0);
    end process;
end Behavioral;