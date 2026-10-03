library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity incrementador is
	Port ( 	edop: in std_logic_vector (2 downto 0);
				edouno : out std_logic_vector (2 downto 0)
	);
end incrementador;

architecture Behavioral of incrementador is
begin

	process(edop)
	begin
 		
		edouno <= edop + 1;
		
	end process; 
	
end Behavioral;