library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro is
    port(
        clk : in std_logic;
        reset : in std_logic;
        edosiguiente : in std_logic_vector(2 downto 0);
        edopresente : out std_logic_vector(2 downto 0)
    );
end registro;

architecture Behavioral of registro is

    signal internal_value: std_logic_vector(2 downto 0) := B"000";

    begin
        process(clk, reset, edosiguiente)
            begin
                if reset = '0' then
                    internal_value <= B"000";
                elsif rising_edge(clk) then
                    internal_value <= edosiguiente;
                end if;
            end process;

        process(internal_value)
            begin
                edopresente <= internal_value;
            end process;

    end Behavioral;