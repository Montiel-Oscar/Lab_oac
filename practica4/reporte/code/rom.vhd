library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rom is
    port(
        dir  : in  std_logic_vector(2 downto 0);
        data : out std_logic_vector(15 downto 0)
    );
end rom;

architecture Behavioral of rom is

    type mem is array (0 to 7) of std_logic_vector(15 downto 0);
    signal internal_mem : mem;

begin

    ------------------------------------------------------------
    -- FORMATO:
    --
    -- data(15 downto 14) = Prueba
    -- data(13 downto 11) = Liga Falsa
    -- data(10 downto 8)  = Liga Verdadera
    -- data(7 downto 4)   = Salida Falsa
    -- data(3 downto 0)   = Salida Verdadera
    --
    -- Prueba:
    -- 00 = entrada A / I0
    -- 01 = entrada B / I1
    -- 10 = entrada C / I2
    ------------------------------------------------------------


    -- Estado 0 = 000
    -- prueba = 00
    -- LF = 010
    -- LV = 001
    -- SF = 1100
    -- SV = 1100
    internal_mem(0) <=
        "00" & "010" & "001" & "1100" & "1100";


    -- Estado 1 = 001
    -- prueba = 01
    -- LF = 011
    -- LV = 100
    -- SF = 1010
    -- SV = 1000
    internal_mem(1) <=
        "01" & "011" & "100" & "1010" & "1000";


    -- Estado 2 = 010
    -- prueba = 10
    -- LF = 101
    -- LV = 000
    -- SF = 0101
    -- SV = 0101
    internal_mem(2) <=
        "10" & "101" & "000" & "0101" & "0101";


    -- Estado 3 = 011
    -- prueba = ** (no importa)
    -- LF = LV = 000
    -- SF = SV = 0111
    internal_mem(3) <=
        "00" & "000" & "000" & "0111" & "0111";


    -- Estado 4 = 100
    -- prueba = ** (no importa)
    -- LF = LV = 011
    -- SF = SV = 0011
    internal_mem(4) <=
        "00" & "011" & "011" & "0011" & "0011";


    -- Estado 5 = 101
    -- prueba = ** (no importa)
    -- LF = LV = 100
    -- SF = SV = 0010
    internal_mem(5) <=
        "00" & "100" & "100" & "0010" & "0010";


    -- Estado 6 = 110
    -- No aparece especificado en la tabla.
    -- Valor seguro: regresar al estado 000 con salida 0011.
    internal_mem(6) <=
        "00" & "000" & "000" & "0011" & "0011";


    -- Estado 7 = 111
    -- Sí aparece en la tabla
    -- prueba = **
    -- LF = LV = 000
    -- SF = SV = 0011
    internal_mem(7) <=
        "00" & "000" & "000" & "0011" & "0011";


    ------------------------------------------------------------
    -- Lectura de la ROM
    ------------------------------------------------------------
    process(dir)
    begin
        data <= internal_mem(to_integer(unsigned(dir)));
    end process;

end Behavioral;