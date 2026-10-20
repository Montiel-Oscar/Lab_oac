-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "10/19/2026 10:44:57"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica6 IS
    PORT (
	clk : IN std_logic;
	boton : IN std_logic;
	rst : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic;
	entrada_int_RI : IN std_logic;
	entrada_trans : IN std_logic_vector(1 DOWNTO 0);
	edo_pr : OUT std_logic_vector(3 DOWNTO 0);
	salidas : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica6;

ARCHITECTURE structure OF practica6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_boton : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_entrada_int_RI : std_logic;
SIGNAL ww_entrada_trans : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_edo_pr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(3 DOWNTO 0);
SIGNAL \edo_pr[0]~output_o\ : std_logic;
SIGNAL \edo_pr[1]~output_o\ : std_logic;
SIGNAL \edo_pr[2]~output_o\ : std_logic;
SIGNAL \edo_pr[3]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \memoria|Mux5~0_combout\ : std_logic;
SIGNAL \memoria|Mux3~0_combout\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \entrada_int_RI~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \control|Mux0~0_combout\ : std_logic;
SIGNAL \control|Mux0~1_combout\ : std_logic;
SIGNAL \control|Mux0~2_combout\ : std_logic;
SIGNAL \control|Mux0~3_combout\ : std_logic;
SIGNAL \control|Mux0~4_combout\ : std_logic;
SIGNAL \control|Mux0~5_combout\ : std_logic;
SIGNAL \transformacion|Mux7~0_combout\ : std_logic;
SIGNAL \entrada_trans[1]~input_o\ : std_logic;
SIGNAL \entrada_trans[0]~input_o\ : std_logic;
SIGNAL \transformacion|Mux5~0_combout\ : std_logic;
SIGNAL \incrementa|Add0~2_combout\ : std_logic;
SIGNAL \direccion|Mux0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \interrupcion|Mux0~0_combout\ : std_logic;
SIGNAL \interrupcion|ri[1]~0_combout\ : std_logic;
SIGNAL \direccion|Mux0~1_combout\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \tecla|meta~0_combout\ : std_logic;
SIGNAL \tecla|meta~q\ : std_logic;
SIGNAL \tecla|sinc~q\ : std_logic;
SIGNAL \tecla|cuenta[0]~20_combout\ : std_logic;
SIGNAL \tecla|estable~0_combout\ : std_logic;
SIGNAL \tecla|estable~q\ : std_logic;
SIGNAL \tecla|cuenta[14]~54_combout\ : std_logic;
SIGNAL \tecla|cuenta[0]~21\ : std_logic;
SIGNAL \tecla|cuenta[1]~22_combout\ : std_logic;
SIGNAL \tecla|cuenta[1]~23\ : std_logic;
SIGNAL \tecla|cuenta[2]~24_combout\ : std_logic;
SIGNAL \tecla|cuenta[2]~25\ : std_logic;
SIGNAL \tecla|cuenta[3]~26_combout\ : std_logic;
SIGNAL \tecla|cuenta[3]~27\ : std_logic;
SIGNAL \tecla|cuenta[4]~28_combout\ : std_logic;
SIGNAL \tecla|cuenta[4]~29\ : std_logic;
SIGNAL \tecla|cuenta[5]~30_combout\ : std_logic;
SIGNAL \tecla|cuenta[5]~31\ : std_logic;
SIGNAL \tecla|cuenta[6]~32_combout\ : std_logic;
SIGNAL \tecla|cuenta[6]~33\ : std_logic;
SIGNAL \tecla|cuenta[7]~34_combout\ : std_logic;
SIGNAL \tecla|cuenta[7]~35\ : std_logic;
SIGNAL \tecla|cuenta[8]~36_combout\ : std_logic;
SIGNAL \tecla|cuenta[8]~37\ : std_logic;
SIGNAL \tecla|cuenta[9]~38_combout\ : std_logic;
SIGNAL \tecla|cuenta[9]~39\ : std_logic;
SIGNAL \tecla|cuenta[10]~40_combout\ : std_logic;
SIGNAL \tecla|cuenta[10]~41\ : std_logic;
SIGNAL \tecla|cuenta[11]~42_combout\ : std_logic;
SIGNAL \tecla|cuenta[11]~43\ : std_logic;
SIGNAL \tecla|cuenta[12]~44_combout\ : std_logic;
SIGNAL \tecla|cuenta[12]~45\ : std_logic;
SIGNAL \tecla|cuenta[13]~46_combout\ : std_logic;
SIGNAL \tecla|cuenta[13]~47\ : std_logic;
SIGNAL \tecla|cuenta[14]~48_combout\ : std_logic;
SIGNAL \tecla|cuenta[14]~49\ : std_logic;
SIGNAL \tecla|cuenta[15]~50_combout\ : std_logic;
SIGNAL \tecla|cuenta[15]~51\ : std_logic;
SIGNAL \tecla|cuenta[16]~52_combout\ : std_logic;
SIGNAL \tecla|cuenta[16]~53\ : std_logic;
SIGNAL \tecla|cuenta[17]~55_combout\ : std_logic;
SIGNAL \tecla|cuenta[17]~56\ : std_logic;
SIGNAL \tecla|cuenta[18]~57_combout\ : std_logic;
SIGNAL \tecla|cuenta[18]~58\ : std_logic;
SIGNAL \tecla|cuenta[19]~59_combout\ : std_logic;
SIGNAL \tecla|Equal0~0_combout\ : std_logic;
SIGNAL \tecla|Equal0~1_combout\ : std_logic;
SIGNAL \tecla|Equal0~2_combout\ : std_logic;
SIGNAL \tecla|Equal0~3_combout\ : std_logic;
SIGNAL \tecla|Equal0~4_combout\ : std_logic;
SIGNAL \tecla|Equal0~5_combout\ : std_logic;
SIGNAL \tecla|Equal0~6_combout\ : std_logic;
SIGNAL \tecla|pulso~0_combout\ : std_logic;
SIGNAL \tecla|pulso~q\ : std_logic;
SIGNAL \transformacion|Mux6~0_combout\ : std_logic;
SIGNAL \transformacion|Mux6~1_combout\ : std_logic;
SIGNAL \memoria|Mux6~0_combout\ : std_logic;
SIGNAL \incrementa|Add0~1_combout\ : std_logic;
SIGNAL \direccion|Mux1~0_combout\ : std_logic;
SIGNAL \interrupcion|Mux1~0_combout\ : std_logic;
SIGNAL \direccion|Mux1~1_combout\ : std_logic;
SIGNAL \memoria|Mux7~0_combout\ : std_logic;
SIGNAL \transformacion|Mux7~1_combout\ : std_logic;
SIGNAL \incrementa|Add0~0_combout\ : std_logic;
SIGNAL \direccion|Mux2~0_combout\ : std_logic;
SIGNAL \direccion|Mux2~1_combout\ : std_logic;
SIGNAL \direccion|Mux3~0_combout\ : std_logic;
SIGNAL \direccion|Mux3~1_combout\ : std_logic;
SIGNAL \memoria|Mux8~0_combout\ : std_logic;
SIGNAL \direccion|Mux3~2_combout\ : std_logic;
SIGNAL \memoria|Mux12~0_combout\ : std_logic;
SIGNAL \memoria|Mux11~0_combout\ : std_logic;
SIGNAL \memoria|Mux10~0_combout\ : std_logic;
SIGNAL \memoria|Mux9~0_combout\ : std_logic;
SIGNAL \contador|estado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tecla|cuenta\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \memoria|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \memoria|ALT_INV_Mux9~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_boton <= boton;
ww_rst <= rst;
ww_X <= X;
ww_Y <= Y;
ww_entrada_int_RI <= entrada_int_RI;
ww_entrada_trans <= entrada_trans;
edo_pr <= ww_edo_pr;
salidas <= ww_salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\memoria|ALT_INV_Mux10~0_combout\ <= NOT \memoria|Mux10~0_combout\;
\memoria|ALT_INV_Mux9~0_combout\ <= NOT \memoria|Mux9~0_combout\;

\edo_pr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador|estado\(0),
	devoe => ww_devoe,
	o => \edo_pr[0]~output_o\);

\edo_pr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador|estado\(1),
	devoe => ww_devoe,
	o => \edo_pr[1]~output_o\);

\edo_pr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador|estado\(2),
	devoe => ww_devoe,
	o => \edo_pr[2]~output_o\);

\edo_pr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador|estado\(3),
	devoe => ww_devoe,
	o => \edo_pr[3]~output_o\);

\salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

\salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

\salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

\salidas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoria|ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => \salidas[3]~output_o\);

\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\memoria|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|Mux5~0_combout\ = (\contador|estado\(3) & ((\contador|estado\(0) & (!\contador|estado\(1) & !\contador|estado\(2))) # (!\contador|estado\(0) & ((\contador|estado\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(2),
	datad => \contador|estado\(3),
	combout => \memoria|Mux5~0_combout\);

\memoria|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|Mux3~0_combout\ = (\contador|estado\(0) & (\contador|estado\(2) $ (((\contador|estado\(1)) # (!\contador|estado\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(2),
	datad => \contador|estado\(3),
	combout => \memoria|Mux3~0_combout\);

\Y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

\entrada_int_RI~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_int_RI,
	o => \entrada_int_RI~input_o\);

\X~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

\control|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control|Mux0~0_combout\ = (\contador|estado\(0) & (\entrada_int_RI~input_o\)) # (!\contador|estado\(0) & ((\X~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \entrada_int_RI~input_o\,
	datad => \X~input_o\,
	combout => \control|Mux0~0_combout\);

\control|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control|Mux0~1_combout\ = (\contador|estado\(2) & (\contador|estado\(1) $ (((\contador|estado\(3)) # (\contador|estado\(0)))))) # (!\contador|estado\(2) & (\contador|estado\(1) & ((\contador|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(1),
	datab => \contador|estado\(2),
	datac => \contador|estado\(3),
	datad => \contador|estado\(0),
	combout => \control|Mux0~1_combout\);

\control|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control|Mux0~2_combout\ = (\contador|estado\(1) & ((\contador|estado\(3) & ((\contador|estado\(2)) # (!\contador|estado\(0)))) # (!\contador|estado\(3) & ((\contador|estado\(0)))))) # (!\contador|estado\(1) & (((\contador|estado\(3) & 
-- \contador|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(1),
	datab => \contador|estado\(2),
	datac => \contador|estado\(3),
	datad => \contador|estado\(0),
	combout => \control|Mux0~2_combout\);

\control|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control|Mux0~3_combout\ = (\control|Mux0~0_combout\ & ((\control|Mux0~2_combout\) # ((!\contador|estado\(1) & \control|Mux0~1_combout\)))) # (!\control|Mux0~0_combout\ & (\control|Mux0~1_combout\ $ (((\contador|estado\(1)) # 
-- (\control|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Mux0~0_combout\,
	datab => \contador|estado\(1),
	datac => \control|Mux0~1_combout\,
	datad => \control|Mux0~2_combout\,
	combout => \control|Mux0~3_combout\);

\control|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control|Mux0~4_combout\ = (\control|Mux0~0_combout\ & (!\control|Mux0~1_combout\ & (\contador|estado\(1) $ (\control|Mux0~2_combout\)))) # (!\control|Mux0~0_combout\ & (\control|Mux0~2_combout\ & ((\control|Mux0~1_combout\) # (!\contador|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Mux0~0_combout\,
	datab => \contador|estado\(1),
	datac => \control|Mux0~1_combout\,
	datad => \control|Mux0~2_combout\,
	combout => \control|Mux0~4_combout\);

\control|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control|Mux0~5_combout\ = (\control|Mux0~4_combout\ & ((\memoria|Mux3~0_combout\) # ((\Y~input_o\ & \control|Mux0~3_combout\)))) # (!\control|Mux0~4_combout\ & (((\control|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|Mux3~0_combout\,
	datab => \Y~input_o\,
	datac => \control|Mux0~3_combout\,
	datad => \control|Mux0~4_combout\,
	combout => \control|Mux0~5_combout\);

\transformacion|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transformacion|Mux7~0_combout\ = (\contador|estado\(0) & (!\contador|estado\(2) & (\contador|estado\(1) $ (!\contador|estado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(3),
	datad => \contador|estado\(2),
	combout => \transformacion|Mux7~0_combout\);

\entrada_trans[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_trans(1),
	o => \entrada_trans[1]~input_o\);

\entrada_trans[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_trans(0),
	o => \entrada_trans[0]~input_o\);

\transformacion|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transformacion|Mux5~0_combout\ = (\transformacion|Mux7~0_combout\ & ((\contador|estado\(1) & ((\entrada_trans[1]~input_o\) # (!\entrada_trans[0]~input_o\))) # (!\contador|estado\(1) & (\entrada_trans[1]~input_o\ $ (\entrada_trans[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transformacion|Mux7~0_combout\,
	datab => \contador|estado\(1),
	datac => \entrada_trans[1]~input_o\,
	datad => \entrada_trans[0]~input_o\,
	combout => \transformacion|Mux5~0_combout\);

\incrementa|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incrementa|Add0~2_combout\ = \contador|estado\(3) $ (((\contador|estado\(0) & (\contador|estado\(1) & \contador|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(3),
	datab => \contador|estado\(0),
	datac => \contador|estado\(1),
	datad => \contador|estado\(2),
	combout => \incrementa|Add0~2_combout\);

\direccion|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direccion|Mux0~0_combout\ = (\control|Mux0~5_combout\ & (((\memoria|Mux3~0_combout\)))) # (!\control|Mux0~5_combout\ & ((\memoria|Mux3~0_combout\ & (\transformacion|Mux5~0_combout\)) # (!\memoria|Mux3~0_combout\ & ((\incrementa|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Mux0~5_combout\,
	datab => \transformacion|Mux5~0_combout\,
	datac => \memoria|Mux3~0_combout\,
	datad => \incrementa|Add0~2_combout\,
	combout => \direccion|Mux0~0_combout\);

\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\interrupcion|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \interrupcion|Mux0~0_combout\ = (\contador|estado\(0) & ((\contador|estado\(2) & (\contador|estado\(3) & !\contador|estado\(1))) # (!\contador|estado\(2) & (!\contador|estado\(3) & \contador|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(2),
	datac => \contador|estado\(3),
	datad => \contador|estado\(1),
	combout => \interrupcion|Mux0~0_combout\);

\interrupcion|ri[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \interrupcion|ri[1]~0_combout\ = (\rst~input_o\ & (\interrupcion|Mux0~0_combout\ & (\contador|estado\(2) $ (\entrada_int_RI~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \interrupcion|Mux0~0_combout\,
	datac => \contador|estado\(2),
	datad => \entrada_int_RI~input_o\,
	combout => \interrupcion|ri[1]~0_combout\);

\direccion|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direccion|Mux0~1_combout\ = (\control|Mux0~5_combout\ & ((\direccion|Mux0~0_combout\ & ((\interrupcion|ri[1]~0_combout\))) # (!\direccion|Mux0~0_combout\ & (\memoria|Mux5~0_combout\)))) # (!\control|Mux0~5_combout\ & (((\direccion|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|Mux5~0_combout\,
	datab => \control|Mux0~5_combout\,
	datac => \direccion|Mux0~0_combout\,
	datad => \interrupcion|ri[1]~0_combout\,
	combout => \direccion|Mux0~1_combout\);

\boton~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton,
	o => \boton~input_o\);

\tecla|meta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|meta~0_combout\ = !\boton~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~input_o\,
	combout => \tecla|meta~0_combout\);

\tecla|meta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|meta~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|meta~q\);

\tecla|sinc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|meta~q\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|sinc~q\);

\tecla|cuenta[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[0]~20_combout\ = \tecla|cuenta\(0) $ (VCC)
-- \tecla|cuenta[0]~21\ = CARRY(\tecla|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(0),
	datad => VCC,
	combout => \tecla|cuenta[0]~20_combout\,
	cout => \tecla|cuenta[0]~21\);

\tecla|estable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|estable~0_combout\ = (\tecla|Equal0~6_combout\ & ((\tecla|estable~q\))) # (!\tecla|Equal0~6_combout\ & (\tecla|sinc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tecla|Equal0~6_combout\,
	datac => \tecla|sinc~q\,
	datad => \tecla|estable~q\,
	combout => \tecla|estable~0_combout\);

\tecla|estable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|estable~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|estable~q\);

\tecla|cuenta[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[14]~54_combout\ = (\tecla|sinc~q\ $ (!\tecla|estable~q\)) # (!\tecla|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|Equal0~6_combout\,
	datac => \tecla|sinc~q\,
	datad => \tecla|estable~q\,
	combout => \tecla|cuenta[14]~54_combout\);

\tecla|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[0]~20_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(0));

\tecla|cuenta[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[1]~22_combout\ = (\tecla|cuenta\(1) & (!\tecla|cuenta[0]~21\)) # (!\tecla|cuenta\(1) & ((\tecla|cuenta[0]~21\) # (GND)))
-- \tecla|cuenta[1]~23\ = CARRY((!\tecla|cuenta[0]~21\) # (!\tecla|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(1),
	datad => VCC,
	cin => \tecla|cuenta[0]~21\,
	combout => \tecla|cuenta[1]~22_combout\,
	cout => \tecla|cuenta[1]~23\);

\tecla|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[1]~22_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(1));

\tecla|cuenta[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[2]~24_combout\ = (\tecla|cuenta\(2) & (\tecla|cuenta[1]~23\ $ (GND))) # (!\tecla|cuenta\(2) & (!\tecla|cuenta[1]~23\ & VCC))
-- \tecla|cuenta[2]~25\ = CARRY((\tecla|cuenta\(2) & !\tecla|cuenta[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(2),
	datad => VCC,
	cin => \tecla|cuenta[1]~23\,
	combout => \tecla|cuenta[2]~24_combout\,
	cout => \tecla|cuenta[2]~25\);

\tecla|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[2]~24_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(2));

\tecla|cuenta[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[3]~26_combout\ = (\tecla|cuenta\(3) & (!\tecla|cuenta[2]~25\)) # (!\tecla|cuenta\(3) & ((\tecla|cuenta[2]~25\) # (GND)))
-- \tecla|cuenta[3]~27\ = CARRY((!\tecla|cuenta[2]~25\) # (!\tecla|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(3),
	datad => VCC,
	cin => \tecla|cuenta[2]~25\,
	combout => \tecla|cuenta[3]~26_combout\,
	cout => \tecla|cuenta[3]~27\);

\tecla|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[3]~26_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(3));

\tecla|cuenta[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[4]~28_combout\ = (\tecla|cuenta\(4) & (\tecla|cuenta[3]~27\ $ (GND))) # (!\tecla|cuenta\(4) & (!\tecla|cuenta[3]~27\ & VCC))
-- \tecla|cuenta[4]~29\ = CARRY((\tecla|cuenta\(4) & !\tecla|cuenta[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(4),
	datad => VCC,
	cin => \tecla|cuenta[3]~27\,
	combout => \tecla|cuenta[4]~28_combout\,
	cout => \tecla|cuenta[4]~29\);

\tecla|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[4]~28_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(4));

\tecla|cuenta[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[5]~30_combout\ = (\tecla|cuenta\(5) & (!\tecla|cuenta[4]~29\)) # (!\tecla|cuenta\(5) & ((\tecla|cuenta[4]~29\) # (GND)))
-- \tecla|cuenta[5]~31\ = CARRY((!\tecla|cuenta[4]~29\) # (!\tecla|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(5),
	datad => VCC,
	cin => \tecla|cuenta[4]~29\,
	combout => \tecla|cuenta[5]~30_combout\,
	cout => \tecla|cuenta[5]~31\);

\tecla|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[5]~30_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(5));

\tecla|cuenta[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[6]~32_combout\ = (\tecla|cuenta\(6) & (\tecla|cuenta[5]~31\ $ (GND))) # (!\tecla|cuenta\(6) & (!\tecla|cuenta[5]~31\ & VCC))
-- \tecla|cuenta[6]~33\ = CARRY((\tecla|cuenta\(6) & !\tecla|cuenta[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(6),
	datad => VCC,
	cin => \tecla|cuenta[5]~31\,
	combout => \tecla|cuenta[6]~32_combout\,
	cout => \tecla|cuenta[6]~33\);

\tecla|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[6]~32_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(6));

\tecla|cuenta[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[7]~34_combout\ = (\tecla|cuenta\(7) & (!\tecla|cuenta[6]~33\)) # (!\tecla|cuenta\(7) & ((\tecla|cuenta[6]~33\) # (GND)))
-- \tecla|cuenta[7]~35\ = CARRY((!\tecla|cuenta[6]~33\) # (!\tecla|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(7),
	datad => VCC,
	cin => \tecla|cuenta[6]~33\,
	combout => \tecla|cuenta[7]~34_combout\,
	cout => \tecla|cuenta[7]~35\);

\tecla|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[7]~34_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(7));

\tecla|cuenta[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[8]~36_combout\ = (\tecla|cuenta\(8) & (\tecla|cuenta[7]~35\ $ (GND))) # (!\tecla|cuenta\(8) & (!\tecla|cuenta[7]~35\ & VCC))
-- \tecla|cuenta[8]~37\ = CARRY((\tecla|cuenta\(8) & !\tecla|cuenta[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(8),
	datad => VCC,
	cin => \tecla|cuenta[7]~35\,
	combout => \tecla|cuenta[8]~36_combout\,
	cout => \tecla|cuenta[8]~37\);

\tecla|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[8]~36_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(8));

\tecla|cuenta[9]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[9]~38_combout\ = (\tecla|cuenta\(9) & (!\tecla|cuenta[8]~37\)) # (!\tecla|cuenta\(9) & ((\tecla|cuenta[8]~37\) # (GND)))
-- \tecla|cuenta[9]~39\ = CARRY((!\tecla|cuenta[8]~37\) # (!\tecla|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(9),
	datad => VCC,
	cin => \tecla|cuenta[8]~37\,
	combout => \tecla|cuenta[9]~38_combout\,
	cout => \tecla|cuenta[9]~39\);

\tecla|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[9]~38_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(9));

\tecla|cuenta[10]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[10]~40_combout\ = (\tecla|cuenta\(10) & (\tecla|cuenta[9]~39\ $ (GND))) # (!\tecla|cuenta\(10) & (!\tecla|cuenta[9]~39\ & VCC))
-- \tecla|cuenta[10]~41\ = CARRY((\tecla|cuenta\(10) & !\tecla|cuenta[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(10),
	datad => VCC,
	cin => \tecla|cuenta[9]~39\,
	combout => \tecla|cuenta[10]~40_combout\,
	cout => \tecla|cuenta[10]~41\);

\tecla|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[10]~40_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(10));

\tecla|cuenta[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[11]~42_combout\ = (\tecla|cuenta\(11) & (!\tecla|cuenta[10]~41\)) # (!\tecla|cuenta\(11) & ((\tecla|cuenta[10]~41\) # (GND)))
-- \tecla|cuenta[11]~43\ = CARRY((!\tecla|cuenta[10]~41\) # (!\tecla|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(11),
	datad => VCC,
	cin => \tecla|cuenta[10]~41\,
	combout => \tecla|cuenta[11]~42_combout\,
	cout => \tecla|cuenta[11]~43\);

\tecla|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[11]~42_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(11));

\tecla|cuenta[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[12]~44_combout\ = (\tecla|cuenta\(12) & (\tecla|cuenta[11]~43\ $ (GND))) # (!\tecla|cuenta\(12) & (!\tecla|cuenta[11]~43\ & VCC))
-- \tecla|cuenta[12]~45\ = CARRY((\tecla|cuenta\(12) & !\tecla|cuenta[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(12),
	datad => VCC,
	cin => \tecla|cuenta[11]~43\,
	combout => \tecla|cuenta[12]~44_combout\,
	cout => \tecla|cuenta[12]~45\);

\tecla|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[12]~44_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(12));

\tecla|cuenta[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[13]~46_combout\ = (\tecla|cuenta\(13) & (!\tecla|cuenta[12]~45\)) # (!\tecla|cuenta\(13) & ((\tecla|cuenta[12]~45\) # (GND)))
-- \tecla|cuenta[13]~47\ = CARRY((!\tecla|cuenta[12]~45\) # (!\tecla|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(13),
	datad => VCC,
	cin => \tecla|cuenta[12]~45\,
	combout => \tecla|cuenta[13]~46_combout\,
	cout => \tecla|cuenta[13]~47\);

\tecla|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[13]~46_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(13));

\tecla|cuenta[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[14]~48_combout\ = (\tecla|cuenta\(14) & (\tecla|cuenta[13]~47\ $ (GND))) # (!\tecla|cuenta\(14) & (!\tecla|cuenta[13]~47\ & VCC))
-- \tecla|cuenta[14]~49\ = CARRY((\tecla|cuenta\(14) & !\tecla|cuenta[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(14),
	datad => VCC,
	cin => \tecla|cuenta[13]~47\,
	combout => \tecla|cuenta[14]~48_combout\,
	cout => \tecla|cuenta[14]~49\);

\tecla|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[14]~48_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(14));

\tecla|cuenta[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[15]~50_combout\ = (\tecla|cuenta\(15) & (!\tecla|cuenta[14]~49\)) # (!\tecla|cuenta\(15) & ((\tecla|cuenta[14]~49\) # (GND)))
-- \tecla|cuenta[15]~51\ = CARRY((!\tecla|cuenta[14]~49\) # (!\tecla|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(15),
	datad => VCC,
	cin => \tecla|cuenta[14]~49\,
	combout => \tecla|cuenta[15]~50_combout\,
	cout => \tecla|cuenta[15]~51\);

\tecla|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[15]~50_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(15));

\tecla|cuenta[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[16]~52_combout\ = (\tecla|cuenta\(16) & (\tecla|cuenta[15]~51\ $ (GND))) # (!\tecla|cuenta\(16) & (!\tecla|cuenta[15]~51\ & VCC))
-- \tecla|cuenta[16]~53\ = CARRY((\tecla|cuenta\(16) & !\tecla|cuenta[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(16),
	datad => VCC,
	cin => \tecla|cuenta[15]~51\,
	combout => \tecla|cuenta[16]~52_combout\,
	cout => \tecla|cuenta[16]~53\);

\tecla|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[16]~52_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(16));

\tecla|cuenta[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[17]~55_combout\ = (\tecla|cuenta\(17) & (!\tecla|cuenta[16]~53\)) # (!\tecla|cuenta\(17) & ((\tecla|cuenta[16]~53\) # (GND)))
-- \tecla|cuenta[17]~56\ = CARRY((!\tecla|cuenta[16]~53\) # (!\tecla|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(17),
	datad => VCC,
	cin => \tecla|cuenta[16]~53\,
	combout => \tecla|cuenta[17]~55_combout\,
	cout => \tecla|cuenta[17]~56\);

\tecla|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[17]~55_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(17));

\tecla|cuenta[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[18]~57_combout\ = (\tecla|cuenta\(18) & (\tecla|cuenta[17]~56\ $ (GND))) # (!\tecla|cuenta\(18) & (!\tecla|cuenta[17]~56\ & VCC))
-- \tecla|cuenta[18]~58\ = CARRY((\tecla|cuenta\(18) & !\tecla|cuenta[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(18),
	datad => VCC,
	cin => \tecla|cuenta[17]~56\,
	combout => \tecla|cuenta[18]~57_combout\,
	cout => \tecla|cuenta[18]~58\);

\tecla|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[18]~57_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(18));

\tecla|cuenta[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|cuenta[19]~59_combout\ = \tecla|cuenta\(19) $ (\tecla|cuenta[18]~58\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(19),
	cin => \tecla|cuenta[18]~58\,
	combout => \tecla|cuenta[19]~59_combout\);

\tecla|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|cuenta[19]~59_combout\,
	clrn => \rst~input_o\,
	sclr => \tecla|cuenta[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|cuenta\(19));

\tecla|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|Equal0~0_combout\ = (((!\tecla|cuenta\(19)) # (!\tecla|cuenta\(18))) # (!\tecla|cuenta\(17))) # (!\tecla|cuenta\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(16),
	datab => \tecla|cuenta\(17),
	datac => \tecla|cuenta\(18),
	datad => \tecla|cuenta\(19),
	combout => \tecla|Equal0~0_combout\);

\tecla|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|Equal0~1_combout\ = (((!\tecla|cuenta\(3)) # (!\tecla|cuenta\(2))) # (!\tecla|cuenta\(1))) # (!\tecla|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(0),
	datab => \tecla|cuenta\(1),
	datac => \tecla|cuenta\(2),
	datad => \tecla|cuenta\(3),
	combout => \tecla|Equal0~1_combout\);

\tecla|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|Equal0~2_combout\ = (\tecla|cuenta\(6)) # ((\tecla|cuenta\(7)) # ((!\tecla|cuenta\(5)) # (!\tecla|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(6),
	datab => \tecla|cuenta\(7),
	datac => \tecla|cuenta\(4),
	datad => \tecla|cuenta\(5),
	combout => \tecla|Equal0~2_combout\);

\tecla|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|Equal0~3_combout\ = (\tecla|cuenta\(8)) # ((\tecla|cuenta\(10)) # ((\tecla|cuenta\(11)) # (!\tecla|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(8),
	datab => \tecla|cuenta\(10),
	datac => \tecla|cuenta\(11),
	datad => \tecla|cuenta\(9),
	combout => \tecla|Equal0~3_combout\);

\tecla|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|Equal0~4_combout\ = (\tecla|cuenta\(12)) # ((\tecla|cuenta\(13)) # ((\tecla|cuenta\(15)) # (!\tecla|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|cuenta\(12),
	datab => \tecla|cuenta\(13),
	datac => \tecla|cuenta\(15),
	datad => \tecla|cuenta\(14),
	combout => \tecla|Equal0~4_combout\);

\tecla|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|Equal0~5_combout\ = (\tecla|Equal0~3_combout\) # (\tecla|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|Equal0~3_combout\,
	datab => \tecla|Equal0~4_combout\,
	combout => \tecla|Equal0~5_combout\);

\tecla|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|Equal0~6_combout\ = (\tecla|Equal0~0_combout\) # ((\tecla|Equal0~1_combout\) # ((\tecla|Equal0~2_combout\) # (\tecla|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|Equal0~0_combout\,
	datab => \tecla|Equal0~1_combout\,
	datac => \tecla|Equal0~2_combout\,
	datad => \tecla|Equal0~5_combout\,
	combout => \tecla|Equal0~6_combout\);

\tecla|pulso~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tecla|pulso~0_combout\ = (\tecla|sinc~q\ & (!\tecla|Equal0~6_combout\ & !\tecla|estable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla|sinc~q\,
	datac => \tecla|Equal0~6_combout\,
	datad => \tecla|estable~q\,
	combout => \tecla|pulso~0_combout\);

\tecla|pulso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tecla|pulso~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tecla|pulso~q\);

\contador|estado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \direccion|Mux0~1_combout\,
	clrn => \rst~input_o\,
	ena => \tecla|pulso~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|estado\(3));

\transformacion|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transformacion|Mux6~0_combout\ = (\contador|estado\(1) & (\contador|estado\(3))) # (!\contador|estado\(1) & (!\contador|estado\(3) & (\entrada_trans[1]~input_o\ & !\entrada_trans[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(1),
	datab => \contador|estado\(3),
	datac => \entrada_trans[1]~input_o\,
	datad => \entrada_trans[0]~input_o\,
	combout => \transformacion|Mux6~0_combout\);

\transformacion|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transformacion|Mux6~1_combout\ = (\contador|estado\(0) & (\transformacion|Mux6~0_combout\ & !\contador|estado\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \transformacion|Mux6~0_combout\,
	datad => \contador|estado\(2),
	combout => \transformacion|Mux6~1_combout\);

\memoria|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|Mux6~0_combout\ = (!\contador|estado\(0) & (\contador|estado\(3) & (\contador|estado\(1) $ (\contador|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(2),
	datad => \contador|estado\(3),
	combout => \memoria|Mux6~0_combout\);

\incrementa|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incrementa|Add0~1_combout\ = \contador|estado\(2) $ (((\contador|estado\(0) & \contador|estado\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|estado\(2),
	datac => \contador|estado\(0),
	datad => \contador|estado\(1),
	combout => \incrementa|Add0~1_combout\);

\direccion|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direccion|Mux1~0_combout\ = (\memoria|Mux3~0_combout\ & (((\control|Mux0~5_combout\)))) # (!\memoria|Mux3~0_combout\ & ((\control|Mux0~5_combout\ & (\memoria|Mux6~0_combout\)) # (!\control|Mux0~5_combout\ & ((\incrementa|Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|Mux3~0_combout\,
	datab => \memoria|Mux6~0_combout\,
	datac => \control|Mux0~5_combout\,
	datad => \incrementa|Add0~1_combout\,
	combout => \direccion|Mux1~0_combout\);

\interrupcion|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \interrupcion|Mux1~0_combout\ = (\entrada_int_RI~input_o\) # (!\interrupcion|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_int_RI~input_o\,
	datad => \interrupcion|Mux0~0_combout\,
	combout => \interrupcion|Mux1~0_combout\);

\direccion|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direccion|Mux1~1_combout\ = (\memoria|Mux3~0_combout\ & ((\direccion|Mux1~0_combout\ & ((!\interrupcion|Mux1~0_combout\))) # (!\direccion|Mux1~0_combout\ & (\transformacion|Mux6~1_combout\)))) # (!\memoria|Mux3~0_combout\ & 
-- (((\direccion|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transformacion|Mux6~1_combout\,
	datab => \memoria|Mux3~0_combout\,
	datac => \direccion|Mux1~0_combout\,
	datad => \interrupcion|Mux1~0_combout\,
	combout => \direccion|Mux1~1_combout\);

\contador|estado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \direccion|Mux1~1_combout\,
	clrn => \rst~input_o\,
	ena => \tecla|pulso~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|estado\(2));

\memoria|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|Mux7~0_combout\ = (\contador|estado\(0) & (!\contador|estado\(1) & (!\contador|estado\(2) & \contador|estado\(3)))) # (!\contador|estado\(0) & ((\contador|estado\(2) & ((\contador|estado\(3)))) # (!\contador|estado\(2) & (\contador|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(2),
	datad => \contador|estado\(3),
	combout => \memoria|Mux7~0_combout\);

\transformacion|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transformacion|Mux7~1_combout\ = (\transformacion|Mux7~0_combout\ & ((\entrada_trans[0]~input_o\ & (\contador|estado\(1) $ (\entrada_trans[1]~input_o\))) # (!\entrada_trans[0]~input_o\ & (!\contador|estado\(1) & !\entrada_trans[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transformacion|Mux7~0_combout\,
	datab => \entrada_trans[0]~input_o\,
	datac => \contador|estado\(1),
	datad => \entrada_trans[1]~input_o\,
	combout => \transformacion|Mux7~1_combout\);

\incrementa|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \incrementa|Add0~0_combout\ = \contador|estado\(0) $ (\contador|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador|estado\(0),
	datad => \contador|estado\(1),
	combout => \incrementa|Add0~0_combout\);

\direccion|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direccion|Mux2~0_combout\ = (\control|Mux0~5_combout\ & (((\memoria|Mux3~0_combout\)))) # (!\control|Mux0~5_combout\ & ((\memoria|Mux3~0_combout\ & (\transformacion|Mux7~1_combout\)) # (!\memoria|Mux3~0_combout\ & ((\incrementa|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Mux0~5_combout\,
	datab => \transformacion|Mux7~1_combout\,
	datac => \memoria|Mux3~0_combout\,
	datad => \incrementa|Add0~0_combout\,
	combout => \direccion|Mux2~0_combout\);

\direccion|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direccion|Mux2~1_combout\ = (\control|Mux0~5_combout\ & ((\direccion|Mux2~0_combout\ & ((\interrupcion|ri[1]~0_combout\))) # (!\direccion|Mux2~0_combout\ & (\memoria|Mux7~0_combout\)))) # (!\control|Mux0~5_combout\ & (((\direccion|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|Mux7~0_combout\,
	datab => \control|Mux0~5_combout\,
	datac => \direccion|Mux2~0_combout\,
	datad => \interrupcion|ri[1]~0_combout\,
	combout => \direccion|Mux2~1_combout\);

\contador|estado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \direccion|Mux2~1_combout\,
	clrn => \rst~input_o\,
	ena => \tecla|pulso~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|estado\(1));

\direccion|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direccion|Mux3~0_combout\ = (\contador|estado\(1) & (\entrada_trans[0]~input_o\ & !\entrada_trans[1]~input_o\)) # (!\contador|estado\(1) & (!\entrada_trans[0]~input_o\ & \entrada_trans[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|estado\(1),
	datac => \entrada_trans[0]~input_o\,
	datad => \entrada_trans[1]~input_o\,
	combout => \direccion|Mux3~0_combout\);

\direccion|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direccion|Mux3~1_combout\ = (\memoria|Mux3~0_combout\ & (\direccion|Mux3~0_combout\ & (\transformacion|Mux7~0_combout\))) # (!\memoria|Mux3~0_combout\ & (((!\contador|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direccion|Mux3~0_combout\,
	datab => \transformacion|Mux7~0_combout\,
	datac => \memoria|Mux3~0_combout\,
	datad => \contador|estado\(0),
	combout => \direccion|Mux3~1_combout\);

\memoria|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|Mux8~0_combout\ = (\contador|estado\(3) & ((\contador|estado\(0) & (!\contador|estado\(1) & !\contador|estado\(2))) # (!\contador|estado\(0) & (\contador|estado\(1) & \contador|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(2),
	datad => \contador|estado\(3),
	combout => \memoria|Mux8~0_combout\);

\direccion|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direccion|Mux3~2_combout\ = (\control|Mux0~5_combout\ & (((\memoria|Mux8~0_combout\ & !\memoria|Mux3~0_combout\)))) # (!\control|Mux0~5_combout\ & (\direccion|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direccion|Mux3~1_combout\,
	datab => \memoria|Mux8~0_combout\,
	datac => \control|Mux0~5_combout\,
	datad => \memoria|Mux3~0_combout\,
	combout => \direccion|Mux3~2_combout\);

\contador|estado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \direccion|Mux3~2_combout\,
	clrn => \rst~input_o\,
	ena => \tecla|pulso~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|estado\(0));

\memoria|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|Mux12~0_combout\ = (\contador|estado\(2) & ((\contador|estado\(0)) # ((\contador|estado\(3))))) # (!\contador|estado\(2) & (\contador|estado\(0) $ (((\contador|estado\(1) & !\contador|estado\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(2),
	datad => \contador|estado\(3),
	combout => \memoria|Mux12~0_combout\);

\memoria|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|Mux11~0_combout\ = (\contador|estado\(1) & (\contador|estado\(2) & ((\contador|estado\(3)) # (!\contador|estado\(0))))) # (!\contador|estado\(1) & ((\contador|estado\(0)) # ((\contador|estado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(2),
	datad => \contador|estado\(3),
	combout => \memoria|Mux11~0_combout\);

\memoria|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|Mux10~0_combout\ = (\contador|estado\(0) & ((\contador|estado\(1)) # ((!\contador|estado\(3)) # (!\contador|estado\(2))))) # (!\contador|estado\(0) & ((\contador|estado\(3)) # (\contador|estado\(1) $ (\contador|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(2),
	datad => \contador|estado\(3),
	combout => \memoria|Mux10~0_combout\);

\memoria|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|Mux9~0_combout\ = (\contador|estado\(3) & ((\contador|estado\(0) $ (!\contador|estado\(2))) # (!\contador|estado\(1)))) # (!\contador|estado\(3) & (\contador|estado\(1) $ (((!\contador|estado\(0) & \contador|estado\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|estado\(0),
	datab => \contador|estado\(1),
	datac => \contador|estado\(2),
	datad => \contador|estado\(3),
	combout => \memoria|Mux9~0_combout\);

ww_edo_pr(0) <= \edo_pr[0]~output_o\;

ww_edo_pr(1) <= \edo_pr[1]~output_o\;

ww_edo_pr(2) <= \edo_pr[2]~output_o\;

ww_edo_pr(3) <= \edo_pr[3]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(3) <= \salidas[3]~output_o\;
END structure;


