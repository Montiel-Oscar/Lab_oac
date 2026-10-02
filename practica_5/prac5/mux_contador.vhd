library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_contador is
    port(
        carga : in std_logic;
        incremento : in std_logic_vector(2 downto 0);
        salto : in std_logic_vector(2 downto 0);
        salida: out std_logic_vector(2 downto 0)
    );
end mux_contador;

architecture Behavioral of mux_contador is
begin
    process(carga, incremento, salto)
    begin
        if carga = '0' then
            salida <= incremento;
        elsif carga = '1' then
            salida <= incremento;
        end if;
    end process;
end Behavioral;