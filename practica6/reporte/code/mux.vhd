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
            edop <= mpc;
        elsif sel = "01" then
            edop <= rt;
        elsif sel = "10" then
            edop <= ri;
        elsif sel = "11" then
            edop <= liga;
        end if;
    end process;

end Behavioral;