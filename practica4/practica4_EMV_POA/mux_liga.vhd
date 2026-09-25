library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_liga is
    port (
        Qsel : in  std_logic;
        LF   : in  std_logic_vector(2 downto 0);
        LV   : in  std_logic_vector(2 downto 0);
        Liga : out std_logic_vector(2 downto 0)   -- ✅ downto
    );
end mux_liga;

architecture Behavioral of mux_liga is
begin
    process(Qsel, LF, LV)
    begin
        if Qsel = '0' then
            Liga <= LF;
        else                        -- Qsel = '1'
            Liga <= LV;
        end if;
    end process;
end Behavioral;