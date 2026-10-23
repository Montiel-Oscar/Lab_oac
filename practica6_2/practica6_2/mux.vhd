library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux is
    Port ( mpc : in std_logic_vector (3 downto 0);
           liga : in std_logic_vector (3 downto 0);
           rt : in std_logic_vector (3 downto 0);
           ri : in std_logic_vector (3 downto 0);
           sel: in std_logic_vector (1 downto 0);
           edop: out std_logic_vector (3 downto 0)
         );
end mux;

architecture Behavioral of mux is
begin
process(mpc, liga, rt, ri, sel)
    begin
        if sel = "00" then
            edop <= mpc;  -- Paso continuo (mpc + 1)
        elsif sel = "01" then
            edop <= liga; -- Salto condicional a Liga de la ROM
        elsif sel = "10" then
            edop <= rt;   -- Salto a transformación (RT)
        elsif sel = "11" then
            edop <= ri;   -- Salto a interrupción (RI)
        end if;
    end process;
end Behavioral;