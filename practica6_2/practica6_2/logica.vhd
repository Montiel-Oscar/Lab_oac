library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logica is
    Port (
        i_sel : in  std_logic_vector(1 downto 0); -- i_sel(1)=i_1, i_sel(0)=i_0
        cc    : in  std_logic;                    -- Condición de control/prueba
        sel   : out std_logic_vector(1 downto 0)  -- Selector de modo
    );
end logica;

architecture Behavioral of logica is
begin
    process(i_sel, cc)
    begin
        sel <= "00";
        case i_sel is
            when "00" =>
                sel <= "00";
            when "01" =>
                if cc = '0' then
                    sel <= "01"; -- Salto condicional a Liga de la ROM
                else
                    sel <= "00"; -- Paso continuo
                end if;
            when "10" =>
                sel <= "10"; -- Salto a transformacion
            when "11" =>
                sel <= "11"; -- RI decide la direccion con estado e INT
            when others =>
                sel <= "00";
        end case;
    end process;
end Behavioral;
