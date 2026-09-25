library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity div_datos is
    port(
        data      : in  std_logic_vector(15 downto 0);

        prueba    : out std_logic_vector(1 downto 0);

        liga_f    : out std_logic_vector(2 downto 0);
        liga_v    : out std_logic_vector(2 downto 0);

        salidas_f : out std_logic_vector(3 downto 0);
        salidas_v : out std_logic_vector(3 downto 0)
    );
end div_datos;

architecture Behavioral of div_datos is
begin

    prueba    <= data(15 downto 14);

    liga_f    <= data(13 downto 11);
    liga_v    <= data(10 downto 8);

    salidas_f <= data(7 downto 4);
    salidas_v <= data(3 downto 0);

end Behavioral;