library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity state_machine is
    port(
        clk : in std_logic;
        go : in std_logic;
		fc: in std_logic;
        reset : out std_logic;
        done : out std_logic;
        edo_p: out std_logic_vector(1 downto 0)
    );
end state_machine;

architecture Behavioral of state_machine is

CONSTANT ED0: std_logic_vector(1 downto 0) := "00";
CONSTANT ED1: std_logic_vector(1 downto 0) := "01";
CONSTANT ED2: std_logic_vector(1 downto 0) := "10";

signal state: std_logic_vector(1 downto 0) := "00";

begin
    process(clk, go,fc)
    begin
        if rising_edge(clk) then
            case state is
                WHEN ED0 =>
                    edo_p <= ED0;
                    reset <= '0';
                    done <= '0';
                    if go = '1' then
                        state <= ED1;
                    end if;
                WHEN ED1 =>
                    edo_p <= ED1;
                    reset <= '1';
                    done <= '0';
                    if fc = '1' then
                        state <= ED2;
                    end if;
                WHEN ED2 =>
                    edo_p <= ED2;
                    reset <= '0';
                    done <= '1';
                    state <= ED0;
                WHEN others =>
                    edo_p <= ED0;
                    reset <= '0';
                    done <= '0';
                    state <= ED0;
            end case;
        end if;
    end process;
end Behavioral;