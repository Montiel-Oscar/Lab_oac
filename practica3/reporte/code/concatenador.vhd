library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity concatenador is
    port(
        entradas: in std_logic_vector(2 downto 0);
        edopresente: in std_logic_vector(2 downto 0);
        dir: out std_logic_vector(5 downto 0)
    );
end concatenador;

architecture Behavioral of concatenador is
begin
    process(entradas, edopresente)
        begin
            dir <= edopresente & entradas; -- EdoPresente Bits mas significativos
    end process;
end Behavioral;