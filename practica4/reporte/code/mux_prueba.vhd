library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_prueba is
    port(
        prueba: in std_logic_vector(1 downto 0);
        I0: in std_logic;
        I1: in std_logic;
        I2: in std_logic;
        Qsel: out std_logic
    );
end mux_prueba;

architecture Behavioral of mux_prueba is
begin
    process(prueba, I0, I1, I2)
    begin
        if prueba = "00" then
            Qsel <= I0;
        elsif prueba = "01" then
            Qsel <= I1;
        elsif prueba = "10" then
            Qsel <= I2;
        else
            Qsel <= '0';
        end if;
    end process;
end Behavioral;