library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_salidas is
    port (
        Qsel : in  std_logic;
        SF   : in  std_logic_vector(3 downto 0);
        SV   : in  std_logic_vector(3 downto 0);
        Salida : out std_logic_vector(3 downto 0)
    );
end mux_salidas;

architecture Behavioral of mux_salidas is
begin

    process(Qsel, SF, SV)
    begin
        if Qsel = '0' then
            Salida <= SF;
        else
            Salida <= SV;
        end if;
    end process;

end Behavioral;