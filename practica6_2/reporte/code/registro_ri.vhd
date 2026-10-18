library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_ri is
    Port (
        reset            : in  std_logic;
        estado_presente  : in  std_logic_vector(3 downto 0);
        entrada_int      : in  std_logic;
        ri               : out std_logic_vector(3 downto 0)
    );
end registro_ri;

architecture Behavioral of registro_ri is
begin
    process(reset, estado_presente, entrada_int)
    begin
        if reset = '0' then
            ri <= "0000";
        else
            case estado_presente is
                when "0011" => -- Estado 3: INT=0 -> 4; INT=1 -> 10
                    if entrada_int = '0' then
                        ri <= "0100";
                    else
                        ri <= "1010";
                    end if;

                when "1101" => -- Estado 13: INT=0 -> 14; INT=1 -> 0
                    if entrada_int = '0' then
                        ri <= "1110";
                    else
                        ri <= "0000";
                    end if;

                when others =>
                    ri <= "0000";
            end case;
        end if;
    end process;
end Behavioral;
