library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity logica is
    Port ( I0: in std_logic;
           I1: in std_logic;
           cc: in std_logic;          -- Condición de control/prueba
           sel: out std_logic_vector (1 downto 0) -- Salida del selector de modo
         );
end logica;

architecture Behavioral of logica is
signal I_sel : std_logic_vector(1 downto 0);
begin
    I_sel <= I1 & I0;
    process(I_sel, cc)
    begin
        sel <= "00";
        case I_sel is
        
            when "00" =>
                sel <= "00";
            when "01" =>
                if cc = '0' then
                    sel <= "11"; -- Salto Condicional (selector=11 si cc=0)
                else -- cc = '1'
                    sel <= "00"; -- Paso Continuo (selector=00 si cc=1)
                end if;
            when "10" =>
                sel <= "01";
            when "11" =>
                if cc = '0' then
                    sel <= "10"; -- Salto por Interrupción (selector=10 si cc=0)
                else -- cc = '1'
                    sel <= "00"; -- Paso Continuo (selector=00 si cc=1)
                end if;

            when others =>
                sel <= "00";
        end case;
    end process;

end Behavioral;