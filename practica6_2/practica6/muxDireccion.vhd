library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxDireccion is
    Port (
        sel : in  std_logic_vector(1 downto 0);
        E0  : in  std_logic_vector(3 downto 0); -- 00: MPC + 1
        E1  : in  std_logic_vector(3 downto 0); -- 01: Liga de la ROM
        E2  : in  std_logic_vector(3 downto 0); -- 10: Transformacion
        E3  : in  std_logic_vector(3 downto 0); -- 11: Interrupcion
        sal : out std_logic_vector(3 downto 0)  -- siguiente direccion del MPC
    );
end muxDireccion;

architecture Behavioral of muxDireccion is
begin
    process(sel, E0, E1, E2, E3)
    begin
        sal <= E0;
        case sel is
            when "00"   => sal <= E0;
            when "01"   => sal <= E1;
            when "10"   => sal <= E2;
            when "11"   => sal <= E3;
            when others => sal <= E0;
        end case;
    end process;
end Behavioral;
