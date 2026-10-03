library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro is
	Port ( reloj : in std_logic;
				reset : in std_logic;
				edos : in std_logic_vector (2 downto 0);
				edop : out std_logic_vector (2 downto 0)
	);
end registro;


architecture Behavioral of registro is
 
signal internal_value: std_logic_vector (2 downto 0) := B"000";
begin
	process(reloj, reset, edos)
	begin 
	
		if reset = '0' then 
			internal_value <= B"000";
		elsif rising_edge(reloj) then 
			internal_value <= edos;
		end if;
	end process;
	
	process(internal_value)
	begin 
		edop <= internal_value;
	end process;
	

end Behavioral;
