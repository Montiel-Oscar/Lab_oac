library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rom is
    Port (
        direccion : in  std_logic_vector(3 downto 0);
        data      : out std_logic_vector(12 downto 0)
    );
end rom;

architecture Behavioral of rom is

    type mem is array (0 to 15) of std_logic_vector(12 downto 0);

    -- Formato de la microinstruccion (13 bits):
    -- data(12 downto 11) = Prueba K1,K0
    -- data(10)           = VF
    -- data(9 downto 8)   = MI M1,M0
    -- data(7 downto 4)   = Liga L3,L2,L1,L0
    -- data(3 downto 0)   = Salidas S3,S2,S1,S0
    --
    -- MI: 00 = avance (MPC+1), 01 = salto condicional por Liga,
    --     10 = salto a RT,    11 = salto por interrupcion a RI.
    -- Los '*' de la tabla del reporte se sustituyen por ceros o por
    -- una prueba sin uso, ya que son campos indiferentes en esa fila.
    constant ROM : mem := (
        -- Dir  Prueba VF MI  Liga  Salidas
        0  => "11" & "0" & "00" & "0000" & "0101",
        1  => "11" & "0" & "10" & "0000" & "1011",
        2  => "00" & "0" & "01" & "0010" & "0001",
        3  => "10" & "1" & "11" & "0000" & "0000",
        4  => "11" & "0" & "00" & "0000" & "0000",
        5  => "11" & "0" & "01" & "0000" & "1011",
        6  => "11" & "0" & "00" & "0000" & "1110",
        7  => "11" & "0" & "01" & "0000" & "0001",
        8  => "11" & "0" & "00" & "0000" & "0010",
        9  => "01" & "1" & "01" & "1011" & "0011",
        10 => "11" & "0" & "01" & "0110" & "0000",
        11 => "11" & "0" & "10" & "0000" & "1001",
        12 => "11" & "0" & "01" & "1110" & "0011",
        13 => "10" & "1" & "11" & "0000" & "0111",
        14 => "11" & "0" & "01" & "1011" & "1011",
        15 => "11" & "0" & "01" & "0000" & "0011"
    );

begin

    process(direccion)
    begin
        data <= ROM(conv_integer(unsigned(direccion)));
    end process;

end Behavioral;
