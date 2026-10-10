library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro_mpc is
    Port ( reloj : in std_logic;
           reset : in std_logic;
			  entrada_r: in std_logic_vector(3 downto 0);
           mpc : out std_logic_vector (3 downto 0)
         );
end registro_mpc;

architecture Behavioral of registro_mpc is

signal internal_value: std_logic_vector (3 downto 0) := B"0000";
begin
    process(reloj, reset)
    begin
        if reset = '0' then
            internal_value <= B"0000";
        elsif rising_edge(reloj) then
            internal_value <= entrada_r;
        end if;
    end process;

    process(internal_value)
    begin
        mpc <= internal_value;
    end process;

end Behavioral;