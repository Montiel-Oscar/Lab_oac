library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_prueba is
	Port ( prueba : in std_logic_vector (1 downto 0);
				i2: in std_logic;
				i1: in std_logic;
				i0: in std_logic;
				qaux: in std_logic;
				qsel: out std_logic
	);
end mux_prueba;

architecture Behavioral of mux_prueba is
begin

	process(prueba, i2, i1, i0, qaux)
	begin
	
	if prueba = "00" then 
		qsel <= i2; 
	elsif prueba = "01" then 
		qsel <= i1;
	elsif prueba = "10" then
		qsel <= i0;
	elsif prueba = "11" then
		qsel <= qaux; 
	end if; 	
	
	end process; 
	
end Behavioral;