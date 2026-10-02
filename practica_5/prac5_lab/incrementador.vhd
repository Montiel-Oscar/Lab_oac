library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity incrementador is
    port (
        edop  : in  std_logic_vector(2 downto 0);
        epuno : out std_logic_vector(2 downto 0)
    );
end incrementador;

architecture Behavioral of incrementador is
begin
    process(edop)
    begin
        epuno <= std_logic_vector(unsigned(edop) + 1);
    end process;
end Behavioral;