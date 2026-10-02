library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_salida is
	Port ( 	SF : in std_logic_vector (3 downto 0);
				SV : in std_logic_vector (3 downto 0);
				qsel: in std_logic;
				salida : out std_logic_vector (3 downto 0)
	);
end mux_salida;

architecture Behavioral of mux_salida is
begin

	process(qsel, SF, SV)
	begin
 		
	if qsel = '0' then 
			salida <= SF; 
	elsif qsel = '1' then  
			salida <= SV;
	end if; 
	
	end process; 
	
end Behavioral;