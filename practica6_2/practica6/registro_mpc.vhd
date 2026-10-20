library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_mpc is
    Port (
        reloj     : in  std_logic;
        reset     : in  std_logic; -- SW9, activo en 0
        habilitar : in  std_logic; -- Un pulso por pulsacion de KEY0
        entrada_r : in  std_logic_vector(3 downto 0);
        mpc       : out std_logic_vector(3 downto 0)
    );
end registro_mpc;

architecture Behavioral of registro_mpc is
    signal estado : std_logic_vector(3 downto 0) := "0000";
begin
    process(reloj, reset)
    begin
        if reset = '0' then
            estado <= "0000";
        elsif rising_edge(reloj) then
            if habilitar = '1' then
                estado <= entrada_r;
            end if;
        end if;
    end process;

    mpc <= estado;
end Behavioral;
