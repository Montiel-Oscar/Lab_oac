library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Exclusivo para Waveform Editor. La revision de la tarjeta usa practica6.vhd.
entity practica6_sim is
    Port (
        clk            : in  std_logic;
        boton          : in  std_logic;
        rst            : in  std_logic;
        X              : in  std_logic;
        Y              : in  std_logic;
        entrada_int_RI : in  std_logic;
        entrada_trans  : in  std_logic_vector(1 downto 0);
        edo_pr         : out std_logic_vector(3 downto 0);
        salidas        : out std_logic_vector(3 downto 0)
    );
end practica6_sim;

architecture Behavioral of practica6_sim is
begin
    secuenciador : entity work.practica6
        generic map (CUENTA_REBOTE => 3)
        port map (
            clk => clk, boton => boton, rst => rst,
            X => X, Y => Y, entrada_int_RI => entrada_int_RI,
            entrada_trans => entrada_trans,
            edo_pr => edo_pr, salidas => salidas
        );
end Behavioral;
