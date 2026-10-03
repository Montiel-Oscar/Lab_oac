library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity div_datos is
	Port ( data : in std_logic_vector (13 downto 0);
				
				prueba : out std_logic_vector (1 downto 0);
				VF: out std_logic;
				liga: out std_logic_vector (2 downto 0);
				SF : out std_logic_vector (3 downto 0);
				SV : out std_logic_vector (3 downto 0)
	);
end div_datos;


architecture Behavioral of div_datos is
begin

	process(data)
	begin
	
			prueba <= data(13 downto 12);
			VF <= data(11);
			liga <= data(10 downto 8);
			SF <= data(7 downto 4);
			SV <= data(3 downto 0);
	
	end process; 
	
end Behavioral;