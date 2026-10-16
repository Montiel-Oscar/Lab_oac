library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- KEY0 es activo en bajo. Un avance por pulsacion, con 20 ms de antirrebote.
entity paso_boton is
    generic (CUENTA_REBOTE : natural := 999999); -- 20 ms a 50 MHz
    Port (
        clk   : in  std_logic; -- 50 MHz
        reset : in  std_logic; -- KEY1, activo en bajo
        boton : in  std_logic; -- KEY0, activo en bajo
        paso  : out std_logic
    );
end paso_boton;

architecture Behavioral of paso_boton is
    signal meta, sinc, estable : std_logic := '1';
    signal cuenta : natural range 0 to CUENTA_REBOTE := 0;
    signal pulso : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '0' then
            meta <= '1';
            sinc <= '1';
            estable <= '1';
            cuenta <= 0;
            pulso <= '0';
        elsif rising_edge(clk) then
            meta <= boton;
            sinc <= meta;
            pulso <= '0';
            if sinc = estable then
                cuenta <= 0;
            elsif cuenta = CUENTA_REBOTE then
                estable <= sinc;
                cuenta <= 0;
                if sinc = '0' then
                    pulso <= '1';
                end if;
            else
                cuenta <= cuenta + 1;
            end if;
        end if;
    end process;

    paso <= pulso;
end Behavioral;
