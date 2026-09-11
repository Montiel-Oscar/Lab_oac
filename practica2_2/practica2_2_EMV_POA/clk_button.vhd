library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clk_buttom is
    port(
        clk : in std_logic;
        buttom : in std_logic;
        div_clk : out std_logic
    );
end clk_buttom;

architecture Behavioral of clk_buttom is

CONSTANT STATE_START: std_logic_vector(1 downto 0) := "00";
CONSTANT STATE_COUNT: std_logic_vector(1 downto 0) := "01";
CONSTANT STATE_DONE: std_logic_vector(1 downto 0) := "10";

CONSTANT MAX_CLK_COUNT: std_logic_vector(27 downto 0) := X"17D7840"; -- 25 millones de pulsos

signal state: std_logic_vector(1 downto 0) := "00";
signal cuenta: std_logic_vector(27 downto 0) := X"0000000";

begin
    process(clk, buttom)
    begin
        if rising_edge(clk) then
            case state is
                WHEN STATE_START =>
                    if buttom = '1' then
                        state <= STATE_COUNT;
                    end if;
                WHEN STATE_COUNT =>
                    if cuenta >= MAX_CLK_COUNT then
                        state <= STATE_DONE;
                    end if;
                WHEN STATE_DONE =>
                    state <= STATE_START;
                WHEN others =>
                    state <= STATE_START;
            end case;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if state = STATE_COUNT then
                cuenta <= cuenta + 1;
            else
                cuenta <= X"0000000";
            end if;
        end if;
    end process;

    process(state)
    begin
        if state = STATE_COUNT then
            div_clk <= '1';
        else
            div_clk <= '0';
        end if;
    end process;
	 
end Behavioral;