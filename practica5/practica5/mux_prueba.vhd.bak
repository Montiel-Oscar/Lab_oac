library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_prueba is
	Port ( prueba : in std_logic_vector (1 downto 0);
				x: in std_logic;
				y: in std_logic;
				z: in std_logic;
				qaux: in std_logic;
				qsel: out std_logic
	);
end mux_prueba;

architecture Behavioral of mux_prueba is
begin

	process(prueba, x, y, z, qaux)
	begin
	
	if prueba = "00" then 
		qsel <= x; 
	elsif prueba = "01" then 
		qsel <= y;
	elsif prueba = "10" then
		qsel <= z;
	elsif prueba = "11" then
		qsel <= qaux; 
	end if; 	
	
	end process; 
	
end Behavioral;