library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Conexion unica del secuenciador de la carta ASM.
entity practica6 is
    generic (CUENTA_REBOTE : natural := 999999);
    Port (
        clk            : in  std_logic; -- MAX10_CLK1_50
        boton          : in  std_logic; -- KEY0: avanzar, activo en 0
        rst            : in  std_logic; -- SW9: regresar a estado 0, activo en 0
        X              : in  std_logic; -- SW2
        Y              : in  std_logic; -- SW1
        entrada_int_RI : in  std_logic; -- SW3
        entrada_trans  : in  std_logic_vector(1 downto 0); -- SW5:SW4
        edo_pr         : out std_logic_vector(3 downto 0); -- LEDR9:6
        salidas        : out std_logic_vector(3 downto 0)  -- LEDR3:0
    );
end practica6;

architecture Estructural of practica6 is
    signal paso, vf, condicion, cc : std_logic;
    signal mpc, mpc_mas_uno, liga, rt, ri, siguiente : std_logic_vector(3 downto 0);
    signal dato_rom : std_logic_vector(12 downto 0);
    signal prueba, mi, sel_direccion : std_logic_vector(1 downto 0);
begin
    tecla : entity work.paso_boton
        generic map (CUENTA_REBOTE => CUENTA_REBOTE)
        port map (clk => clk, reset => rst, boton => boton, paso => paso);

    contador : entity work.registro_mpc
        port map (reloj => clk, reset => rst, habilitar => paso,
                  entrada_r => siguiente, mpc => mpc);

    incrementa : entity work.incrementador
        port map (edop => mpc, edouno => mpc_mas_uno);

    memoria : entity work.rom
        port map (direccion => mpc, data => dato_rom);

    campos : entity work.divisor_datos
        port map (data => dato_rom, prueba => prueba, VF => vf,
                  MI => mi, liga => liga, salidas => salidas);

    -- AUX es cero fijo en la carta; asi los saltos por Liga son incondicionales.
    entradas : entity work.muxEntradas
        port map (sel => prueba, E0 => X, E1 => Y,
                  E2 => entrada_int_RI, E3 => '0', O => condicion);
    cc <= condicion xor vf;

    control : entity work.logica
        port map (i_sel => mi, cc => cc, sel => sel_direccion);

    transformacion : entity work.registro_rt
        port map (reset => rst, estado_presente => mpc,
                  entrada_trans => entrada_trans, rt => rt);

    interrupcion : entity work.registro_ri
        port map (reset => rst, estado_presente => mpc,
                  entrada_int => entrada_int_RI, ri => ri);

    direccion : entity work.muxDireccion
        port map (sel => sel_direccion, E0 => mpc_mas_uno, E1 => liga,
                  E2 => rt, E3 => ri, sal => siguiente);

    edo_pr <= mpc;
end Estructural;
