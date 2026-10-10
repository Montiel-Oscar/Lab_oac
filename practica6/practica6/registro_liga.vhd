library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro_liga is
    Port ( reset : in std_logic;
           liga : out std_logic_vector (3 downto 0)
         );
end registro_liga;

architecture Behavioral of registro_liga is

signal internal_value: std_logic_vector (3 downto 0) := B"0000";
begin
    process(reset)
    begin
        if reset = '0' then
            internal_value <= B"0000";
        else
            internal_value <= B"1000";
        end if;
    end process;

    process(internal_value)
    begin
        liga <= internal_value;
    end process;

end Behavioral;