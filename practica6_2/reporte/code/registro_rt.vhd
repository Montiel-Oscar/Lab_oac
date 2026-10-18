library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_rt is
    Port (
        reset            : in  std_logic;
        estado_presente  : in  std_logic_vector(3 downto 0);
        entrada_trans    : in  std_logic_vector(1 downto 0);
        rt               : out std_logic_vector(3 downto 0)
    );
end registro_rt;

architecture Behavioral of registro_rt is
begin
    process(reset, estado_presente, entrada_trans)
    begin
        if reset = '0' then
            rt <= "0000";
        else
            case estado_presente is
                when "0001" => -- Estado 1
                    case entrada_trans is
                        when "00"   => rt <= "0010"; -- Estado 2
                        when "01"   => rt <= "1000"; -- Estado 8
                        when "10"   => rt <= "1101"; -- Estado 13
                        when others => rt <= "0010";
                    end case;

                when "1011" => -- Estado 11
                    case entrada_trans is
                        when "00"   => rt <= "1100"; -- Estado 12
                        when "01"   => rt <= "0111"; -- Estado 7
                        when others => rt <= "1100";
                    end case;

                when others =>
                    rt <= "0000";
            end case;
        end if;
    end process;
end Behavioral;
