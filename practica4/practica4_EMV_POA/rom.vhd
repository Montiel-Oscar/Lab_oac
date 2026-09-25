library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rom is
    port(
        dir  : in  std_logic_vector(2 downto 0);  -- Estado presente
        data : out std_logic_vector(15 downto 0)  -- Prueba + LF + LV + SalidaF + SalidaV
    );
end rom;

architecture Behavioral of rom is

    -- 8 localidades porque tenemos 3 bits de dirección
    -- 2^3 = 8 estados posibles
    type mem is array (0 to 7) of std_logic_vector(15 downto 0);
    signal internal_mem : mem;

begin

    ------------------------------------------------------------
    -- Formato de cada palabra:
    --
    -- [15:14] = Prueba
    -- [13:11] = Liga Falsa (LF)
    -- [10:8]  = Liga Verdadera (LV)
    -- [7:4]   = Salida Falsa
    -- [3:0]   = Salida Verdadera
    --
    -- Pruebas:
    -- A = 00
    -- B = 01
    -- C = 10
    ------------------------------------------------------------


    -- ESTADO 0 = 000
    -- Prueba = A = 00
    -- LF = 010
    -- LV = 001
    -- Salida F = 1100
    -- Salida V = 1100
    internal_mem(0) <= "00" & "010" & "001" & "1100" & "1100";


    -- ESTADO 1 = 001
    -- Prueba = B = 01
    -- LF = 011
    -- LV = 100
    -- Salida F = 1010
    -- Salida V = 1000
    internal_mem(1) <= "01" & "011" & "100" & "1010" & "1000";


    -- ESTADO 2 = 010
    -- Prueba = C = 10
    -- LF = 101
    -- LV = 000
    -- Salida F = 0101
    -- Salida V = 0101
    internal_mem(2) <= "10" & "101" & "000" & "0101" & "0101";


    -- ESTADO 3 = 011
    -- No hay prueba (* *)
    -- LF = LV = 000
    -- Salida F = Salida V = 0111
    --
    -- Como la prueba es indiferente usamos "00".
    internal_mem(3) <= "00" & "000" & "000" & "0111" & "0111";


    -- ESTADO 4 = 100
    -- No hay prueba (* *)
    -- LF = LV = 011
    -- Salida F = Salida V = 0011
    internal_mem(4) <= "00" & "011" & "011" & "0011" & "0011";


    -- ESTADO 5 = 101
    -- No hay prueba (* *)
    -- LF = LV = 100
    -- Salida F = Salida V = 0010
    internal_mem(5) <= "00" & "100" & "100" & "0010" & "0010";


    ------------------------------------------------------------
    -- Estados 6 y 7 no utilizados.
    -- Los mandamos de forma segura al estado 0.
    ------------------------------------------------------------

    internal_mem(6) <= "00" & "000" & "000" & "0011" & "0011";
    internal_mem(7) <= "00" & "000" & "000" & "0011" & "0011";


    ------------------------------------------------------------
    -- Lectura de memoria
    ------------------------------------------------------------
    process(dir)
    begin
        data <= internal_mem(conv_integer(unsigned(dir)));
    end process;

end Behavioral;