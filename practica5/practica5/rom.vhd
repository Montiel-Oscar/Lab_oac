library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rom is
    Port (
        direccion : in  std_logic_vector(2 downto 0);
        data      : out std_logic_vector(13 downto 0)
    );
end rom;

architecture Behavioral of rom is

    type mem is array (0 to 7) of std_logic_vector(13 downto 0);
    signal internal_mem : mem;

begin

    ------------------------------------------------------------
    -- FORMATO DE LA PALABRA
    --
    -- data(13 downto 12) = Prueba
    -- data(11)           = VF
    -- data(10 downto 8)  = Liga
    -- data(7 downto 4)   = Salida Falsa
    -- data(3 downto 0)   = Salida Verdadera
    --
    -- Prueba:
    -- 00 = A
    -- 01 = B
    -- 10 = C
    -- 11 = QAUX / sin prueba
    ------------------------------------------------------------


    -- ESTADO 0 = 000
    -- Prueba A
    -- A=0 -> Liga = 100 (Estado 4)
    -- A=1 -> dirección implícita N+1 = 001 (Estado 1)
    internal_mem(0) <=
        "00" & "0" & "100" & "1100" & "1100";


    -- ESTADO 1 = 001
    -- Prueba B
    -- B=0 -> Liga = 011 (Estado 3)
    -- B=1 -> dirección implícita N+1 = 010 (Estado 2)
    internal_mem(1) <=
        "01" & "0" & "011" & "1010" & "1000";


    -- ESTADO 2 = 010
    -- Estado sin prueba
    -- Continúa implícitamente a N+1 = 011 (Estado 3)
    --
    -- La liga es indiferente (***) en la tabla.
    -- Guardamos 000 físicamente en la ROM.
    internal_mem(2) <=
        "11" & "1" & "000" & "0011" & "0011";


    -- ESTADO 3 = 011
    -- Sin prueba
    -- Regresa explícitamente al Estado 0
    internal_mem(3) <=
        "11" & "0" & "000" & "0111" & "0111";


    -- ESTADO 4 = 100
    -- Prueba C
    -- C=0 -> dirección implícita N+1 = 101 (Estado 5)
    -- C=1 -> Liga = 000 (Estado 0)
    internal_mem(4) <=
        "10" & "1" & "000" & "0101" & "0101";


    -- ESTADO 5 = 101
    -- Sin prueba
    -- Salta explícitamente al Estado 2 = 010
    internal_mem(5) <=
        "11" & "0" & "010" & "0010" & "0010";


    ------------------------------------------------------------
    -- ESTADO 6 = 110
    -- No utilizado en nuestra carta ASM.
    -- Ponemos un valor seguro que regrese a Estado 0.
    ------------------------------------------------------------
    internal_mem(6) <=
        "11" & "0" & "000" & "0011" & "0011";


    ------------------------------------------------------------
    -- ESTADO 7 = 111
    -- Según la tabla:
    -- prueba=11, VF=0, Liga=000
    ------------------------------------------------------------
    internal_mem(7) <=
        "11" & "0" & "000" & "0011" & "0011";


    ------------------------------------------------------------
    -- LECTURA DE LA ROM
    ------------------------------------------------------------
    process(direccion)
    begin
        data <= internal_mem(conv_integer(unsigned(direccion)));
    end process;

end Behavioral;