library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_control is
	Port ( 	carga: in std_logic;
				edouno : in std_logic_vector (2 downto 0);
				edok : in std_logic_vector (2 downto 0);
				edos : out std_logic_vector (2 downto 0)
	);
end mux_control;

architecture Behavioral of mux_control is
begin

	process(carga, edouno, edok)
	begin
 		
	if carga = '0' then 
			edos <= edouno; 
	elsif carga = '1' then  
			edos <= edok;
	end if; 
	
	end process; 
	
end Behavioral;