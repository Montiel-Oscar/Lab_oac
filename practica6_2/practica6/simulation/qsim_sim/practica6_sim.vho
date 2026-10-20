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

-- DATE "10/19/2026 10:26:05"

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

ENTITY 	practica6_sim IS
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
END practica6_sim;

ARCHITECTURE structure OF practica6_sim IS
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
SIGNAL \secuenciador|memoria|Mux3~0_combout\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \entrada_int_RI~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \secuenciador|control|Mux0~0_combout\ : std_logic;
SIGNAL \secuenciador|control|Mux0~1_combout\ : std_logic;
SIGNAL \secuenciador|control|Mux0~2_combout\ : std_logic;
SIGNAL \secuenciador|control|Mux0~3_combout\ : std_logic;
SIGNAL \secuenciador|control|Mux0~4_combout\ : std_logic;
SIGNAL \secuenciador|control|Mux0~5_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \secuenciador|interrupcion|Mux0~0_combout\ : std_logic;
SIGNAL \secuenciador|interrupcion|ri[1]~0_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux0~0_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux0~1_combout\ : std_logic;
SIGNAL \secuenciador|transformacion|Mux7~0_combout\ : std_logic;
SIGNAL \entrada_trans[1]~input_o\ : std_logic;
SIGNAL \entrada_trans[0]~input_o\ : std_logic;
SIGNAL \secuenciador|direccion|Mux0~2_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux0~3_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux0~4_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux0~5_combout\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \secuenciador|tecla|meta~0_combout\ : std_logic;
SIGNAL \secuenciador|tecla|meta~q\ : std_logic;
SIGNAL \secuenciador|tecla|sinc~q\ : std_logic;
SIGNAL \secuenciador|tecla|estable~0_combout\ : std_logic;
SIGNAL \secuenciador|tecla|estable~q\ : std_logic;
SIGNAL \secuenciador|tecla|cuenta~1_combout\ : std_logic;
SIGNAL \secuenciador|tecla|cuenta~0_combout\ : std_logic;
SIGNAL \secuenciador|tecla|pulso~0_combout\ : std_logic;
SIGNAL \secuenciador|tecla|pulso~q\ : std_logic;
SIGNAL \secuenciador|transformacion|Mux6~0_combout\ : std_logic;
SIGNAL \secuenciador|transformacion|Mux6~1_combout\ : std_logic;
SIGNAL \secuenciador|memoria|Mux6~0_combout\ : std_logic;
SIGNAL \secuenciador|incrementa|Add0~1_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux1~0_combout\ : std_logic;
SIGNAL \secuenciador|interrupcion|Mux1~0_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux1~1_combout\ : std_logic;
SIGNAL \secuenciador|memoria|Mux7~0_combout\ : std_logic;
SIGNAL \secuenciador|transformacion|Mux7~1_combout\ : std_logic;
SIGNAL \secuenciador|incrementa|Add0~0_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux2~0_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux2~1_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux3~0_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux3~1_combout\ : std_logic;
SIGNAL \secuenciador|memoria|Mux8~0_combout\ : std_logic;
SIGNAL \secuenciador|direccion|Mux3~2_combout\ : std_logic;
SIGNAL \secuenciador|memoria|Mux12~0_combout\ : std_logic;
SIGNAL \secuenciador|memoria|Mux11~0_combout\ : std_logic;
SIGNAL \secuenciador|memoria|Mux10~0_combout\ : std_logic;
SIGNAL \secuenciador|memoria|Mux9~0_combout\ : std_logic;
SIGNAL \secuenciador|tecla|cuenta\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \secuenciador|contador|estado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \secuenciador|memoria|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \secuenciador|memoria|ALT_INV_Mux10~0_combout\ : std_logic;

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
\secuenciador|memoria|ALT_INV_Mux9~0_combout\ <= NOT \secuenciador|memoria|Mux9~0_combout\;
\secuenciador|memoria|ALT_INV_Mux10~0_combout\ <= NOT \secuenciador|memoria|Mux10~0_combout\;

\edo_pr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|contador|estado\(0),
	devoe => ww_devoe,
	o => \edo_pr[0]~output_o\);

\edo_pr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|contador|estado\(1),
	devoe => ww_devoe,
	o => \edo_pr[1]~output_o\);

\edo_pr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|contador|estado\(2),
	devoe => ww_devoe,
	o => \edo_pr[2]~output_o\);

\edo_pr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|contador|estado\(3),
	devoe => ww_devoe,
	o => \edo_pr[3]~output_o\);

\salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|memoria|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

\salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|memoria|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

\salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|memoria|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

\salidas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \secuenciador|memoria|ALT_INV_Mux9~0_combout\,
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

\secuenciador|memoria|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|memoria|Mux3~0_combout\ = (\secuenciador|contador|estado\(0) & (\secuenciador|contador|estado\(2) $ (((\secuenciador|contador|estado\(1)) # (!\secuenciador|contador|estado\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|memoria|Mux3~0_combout\);

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

\secuenciador|control|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|control|Mux0~0_combout\ = (\secuenciador|contador|estado\(0) & (\entrada_int_RI~input_o\)) # (!\secuenciador|contador|estado\(0) & ((\X~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \entrada_int_RI~input_o\,
	datad => \X~input_o\,
	combout => \secuenciador|control|Mux0~0_combout\);

\secuenciador|control|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|control|Mux0~1_combout\ = (\secuenciador|contador|estado\(2) & (\secuenciador|contador|estado\(1) $ (((\secuenciador|contador|estado\(3)) # (\secuenciador|contador|estado\(0)))))) # (!\secuenciador|contador|estado\(2) & 
-- (\secuenciador|contador|estado\(1) & ((\secuenciador|contador|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(1),
	datab => \secuenciador|contador|estado\(2),
	datac => \secuenciador|contador|estado\(3),
	datad => \secuenciador|contador|estado\(0),
	combout => \secuenciador|control|Mux0~1_combout\);

\secuenciador|control|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|control|Mux0~2_combout\ = (\secuenciador|contador|estado\(1) & ((\secuenciador|contador|estado\(3) & ((\secuenciador|contador|estado\(2)) # (!\secuenciador|contador|estado\(0)))) # (!\secuenciador|contador|estado\(3) & 
-- ((\secuenciador|contador|estado\(0)))))) # (!\secuenciador|contador|estado\(1) & (((\secuenciador|contador|estado\(3) & \secuenciador|contador|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(1),
	datab => \secuenciador|contador|estado\(2),
	datac => \secuenciador|contador|estado\(3),
	datad => \secuenciador|contador|estado\(0),
	combout => \secuenciador|control|Mux0~2_combout\);

\secuenciador|control|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|control|Mux0~3_combout\ = (\secuenciador|control|Mux0~0_combout\ & ((\secuenciador|control|Mux0~2_combout\) # ((!\secuenciador|contador|estado\(1) & \secuenciador|control|Mux0~1_combout\)))) # (!\secuenciador|control|Mux0~0_combout\ & 
-- (\secuenciador|control|Mux0~1_combout\ $ (((\secuenciador|contador|estado\(1)) # (\secuenciador|control|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|control|Mux0~0_combout\,
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|control|Mux0~1_combout\,
	datad => \secuenciador|control|Mux0~2_combout\,
	combout => \secuenciador|control|Mux0~3_combout\);

\secuenciador|control|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|control|Mux0~4_combout\ = (\secuenciador|control|Mux0~0_combout\ & (!\secuenciador|control|Mux0~1_combout\ & (\secuenciador|contador|estado\(1) $ (\secuenciador|control|Mux0~2_combout\)))) # (!\secuenciador|control|Mux0~0_combout\ & 
-- (\secuenciador|control|Mux0~2_combout\ & ((\secuenciador|control|Mux0~1_combout\) # (!\secuenciador|contador|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|control|Mux0~0_combout\,
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|control|Mux0~1_combout\,
	datad => \secuenciador|control|Mux0~2_combout\,
	combout => \secuenciador|control|Mux0~4_combout\);

\secuenciador|control|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|control|Mux0~5_combout\ = (\secuenciador|control|Mux0~4_combout\ & ((\secuenciador|memoria|Mux3~0_combout\) # ((\Y~input_o\ & \secuenciador|control|Mux0~3_combout\)))) # (!\secuenciador|control|Mux0~4_combout\ & 
-- (((\secuenciador|control|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|memoria|Mux3~0_combout\,
	datab => \Y~input_o\,
	datac => \secuenciador|control|Mux0~3_combout\,
	datad => \secuenciador|control|Mux0~4_combout\,
	combout => \secuenciador|control|Mux0~5_combout\);

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

\secuenciador|interrupcion|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|interrupcion|Mux0~0_combout\ = (\secuenciador|contador|estado\(0) & ((\secuenciador|contador|estado\(2) & (\secuenciador|contador|estado\(3) & !\secuenciador|contador|estado\(1))) # (!\secuenciador|contador|estado\(2) & 
-- (!\secuenciador|contador|estado\(3) & \secuenciador|contador|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(2),
	datac => \secuenciador|contador|estado\(3),
	datad => \secuenciador|contador|estado\(1),
	combout => \secuenciador|interrupcion|Mux0~0_combout\);

\secuenciador|interrupcion|ri[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|interrupcion|ri[1]~0_combout\ = (\rst~input_o\ & (\secuenciador|interrupcion|Mux0~0_combout\ & (\secuenciador|contador|estado\(2) $ (\entrada_int_RI~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \secuenciador|interrupcion|Mux0~0_combout\,
	datac => \secuenciador|contador|estado\(2),
	datad => \entrada_int_RI~input_o\,
	combout => \secuenciador|interrupcion|ri[1]~0_combout\);

\secuenciador|direccion|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux0~0_combout\ = (\secuenciador|contador|estado\(3) & ((\secuenciador|contador|estado\(0) & (!\secuenciador|contador|estado\(1) & !\secuenciador|contador|estado\(2))) # (!\secuenciador|contador|estado\(0) & 
-- ((\secuenciador|contador|estado\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(1),
	datab => \secuenciador|contador|estado\(0),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|direccion|Mux0~0_combout\);

\secuenciador|direccion|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux0~1_combout\ = (\secuenciador|memoria|Mux3~0_combout\ & (\secuenciador|interrupcion|ri[1]~0_combout\)) # (!\secuenciador|memoria|Mux3~0_combout\ & ((\secuenciador|direccion|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|interrupcion|ri[1]~0_combout\,
	datab => \secuenciador|memoria|Mux3~0_combout\,
	datac => \secuenciador|direccion|Mux0~0_combout\,
	combout => \secuenciador|direccion|Mux0~1_combout\);

\secuenciador|transformacion|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|transformacion|Mux7~0_combout\ = (\secuenciador|contador|estado\(0) & (!\secuenciador|contador|estado\(2) & (\secuenciador|contador|estado\(1) $ (!\secuenciador|contador|estado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|contador|estado\(3),
	datad => \secuenciador|contador|estado\(2),
	combout => \secuenciador|transformacion|Mux7~0_combout\);

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

\secuenciador|direccion|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux0~2_combout\ = (\secuenciador|contador|estado\(1) & ((\entrada_trans[1]~input_o\) # (!\entrada_trans[0]~input_o\))) # (!\secuenciador|contador|estado\(1) & (\entrada_trans[1]~input_o\ $ (\entrada_trans[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(1),
	datab => \entrada_trans[1]~input_o\,
	datac => \entrada_trans[0]~input_o\,
	combout => \secuenciador|direccion|Mux0~2_combout\);

\secuenciador|direccion|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux0~3_combout\ = \secuenciador|contador|estado\(3) $ (((\secuenciador|contador|estado\(1) & (\secuenciador|contador|estado\(0) & \secuenciador|contador|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(1),
	datab => \secuenciador|contador|estado\(0),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|direccion|Mux0~3_combout\);

\secuenciador|direccion|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux0~4_combout\ = (\secuenciador|memoria|Mux3~0_combout\ & (\secuenciador|transformacion|Mux7~0_combout\ & (\secuenciador|direccion|Mux0~2_combout\))) # (!\secuenciador|memoria|Mux3~0_combout\ & 
-- (((\secuenciador|direccion|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|memoria|Mux3~0_combout\,
	datab => \secuenciador|transformacion|Mux7~0_combout\,
	datac => \secuenciador|direccion|Mux0~2_combout\,
	datad => \secuenciador|direccion|Mux0~3_combout\,
	combout => \secuenciador|direccion|Mux0~4_combout\);

\secuenciador|direccion|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux0~5_combout\ = (\secuenciador|control|Mux0~5_combout\ & (\secuenciador|direccion|Mux0~1_combout\)) # (!\secuenciador|control|Mux0~5_combout\ & ((\secuenciador|direccion|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|control|Mux0~5_combout\,
	datab => \secuenciador|direccion|Mux0~1_combout\,
	datac => \secuenciador|direccion|Mux0~4_combout\,
	combout => \secuenciador|direccion|Mux0~5_combout\);

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

\secuenciador|tecla|meta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|tecla|meta~0_combout\ = !\boton~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~input_o\,
	combout => \secuenciador|tecla|meta~0_combout\);

\secuenciador|tecla|meta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|tecla|meta~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|tecla|meta~q\);

\secuenciador|tecla|sinc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|tecla|meta~q\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|tecla|sinc~q\);

\secuenciador|tecla|estable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|tecla|estable~0_combout\ = (\secuenciador|tecla|cuenta\(1) & ((\secuenciador|tecla|cuenta\(0) & ((\secuenciador|tecla|sinc~q\))) # (!\secuenciador|tecla|cuenta\(0) & (\secuenciador|tecla|estable~q\)))) # (!\secuenciador|tecla|cuenta\(1) & 
-- (((\secuenciador|tecla|estable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|tecla|cuenta\(1),
	datab => \secuenciador|tecla|cuenta\(0),
	datac => \secuenciador|tecla|estable~q\,
	datad => \secuenciador|tecla|sinc~q\,
	combout => \secuenciador|tecla|estable~0_combout\);

\secuenciador|tecla|estable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|tecla|estable~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|tecla|estable~q\);

\secuenciador|tecla|cuenta~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|tecla|cuenta~1_combout\ = (!\secuenciador|tecla|cuenta\(0) & (\secuenciador|tecla|sinc~q\ $ (\secuenciador|tecla|estable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secuenciador|tecla|sinc~q\,
	datac => \secuenciador|tecla|estable~q\,
	datad => \secuenciador|tecla|cuenta\(0),
	combout => \secuenciador|tecla|cuenta~1_combout\);

\secuenciador|tecla|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|tecla|cuenta~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|tecla|cuenta\(0));

\secuenciador|tecla|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|tecla|cuenta~0_combout\ = (\secuenciador|tecla|cuenta\(1) & (!\secuenciador|tecla|cuenta\(0) & (\secuenciador|tecla|sinc~q\ $ (\secuenciador|tecla|estable~q\)))) # (!\secuenciador|tecla|cuenta\(1) & (\secuenciador|tecla|cuenta\(0) & 
-- (\secuenciador|tecla|sinc~q\ $ (\secuenciador|tecla|estable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|tecla|cuenta\(1),
	datab => \secuenciador|tecla|cuenta\(0),
	datac => \secuenciador|tecla|sinc~q\,
	datad => \secuenciador|tecla|estable~q\,
	combout => \secuenciador|tecla|cuenta~0_combout\);

\secuenciador|tecla|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|tecla|cuenta~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|tecla|cuenta\(1));

\secuenciador|tecla|pulso~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|tecla|pulso~0_combout\ = (\secuenciador|tecla|cuenta\(1) & (\secuenciador|tecla|cuenta\(0) & (\secuenciador|tecla|sinc~q\ & !\secuenciador|tecla|estable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|tecla|cuenta\(1),
	datab => \secuenciador|tecla|cuenta\(0),
	datac => \secuenciador|tecla|sinc~q\,
	datad => \secuenciador|tecla|estable~q\,
	combout => \secuenciador|tecla|pulso~0_combout\);

\secuenciador|tecla|pulso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|tecla|pulso~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|tecla|pulso~q\);

\secuenciador|contador|estado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|direccion|Mux0~5_combout\,
	clrn => \rst~input_o\,
	ena => \secuenciador|tecla|pulso~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|contador|estado\(3));

\secuenciador|transformacion|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|transformacion|Mux6~0_combout\ = (\secuenciador|contador|estado\(1) & (\secuenciador|contador|estado\(3))) # (!\secuenciador|contador|estado\(1) & (!\secuenciador|contador|estado\(3) & (\entrada_trans[1]~input_o\ & 
-- !\entrada_trans[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(1),
	datab => \secuenciador|contador|estado\(3),
	datac => \entrada_trans[1]~input_o\,
	datad => \entrada_trans[0]~input_o\,
	combout => \secuenciador|transformacion|Mux6~0_combout\);

\secuenciador|transformacion|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|transformacion|Mux6~1_combout\ = (\secuenciador|contador|estado\(0) & (\secuenciador|transformacion|Mux6~0_combout\ & !\secuenciador|contador|estado\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|transformacion|Mux6~0_combout\,
	datad => \secuenciador|contador|estado\(2),
	combout => \secuenciador|transformacion|Mux6~1_combout\);

\secuenciador|memoria|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|memoria|Mux6~0_combout\ = (!\secuenciador|contador|estado\(0) & (\secuenciador|contador|estado\(3) & (\secuenciador|contador|estado\(1) $ (\secuenciador|contador|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|memoria|Mux6~0_combout\);

\secuenciador|incrementa|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|incrementa|Add0~1_combout\ = \secuenciador|contador|estado\(2) $ (((\secuenciador|contador|estado\(0) & \secuenciador|contador|estado\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secuenciador|contador|estado\(2),
	datac => \secuenciador|contador|estado\(0),
	datad => \secuenciador|contador|estado\(1),
	combout => \secuenciador|incrementa|Add0~1_combout\);

\secuenciador|direccion|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux1~0_combout\ = (\secuenciador|memoria|Mux3~0_combout\ & (((\secuenciador|control|Mux0~5_combout\)))) # (!\secuenciador|memoria|Mux3~0_combout\ & ((\secuenciador|control|Mux0~5_combout\ & (\secuenciador|memoria|Mux6~0_combout\)) 
-- # (!\secuenciador|control|Mux0~5_combout\ & ((\secuenciador|incrementa|Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|memoria|Mux3~0_combout\,
	datab => \secuenciador|memoria|Mux6~0_combout\,
	datac => \secuenciador|control|Mux0~5_combout\,
	datad => \secuenciador|incrementa|Add0~1_combout\,
	combout => \secuenciador|direccion|Mux1~0_combout\);

\secuenciador|interrupcion|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|interrupcion|Mux1~0_combout\ = (\entrada_int_RI~input_o\) # (!\secuenciador|interrupcion|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_int_RI~input_o\,
	datad => \secuenciador|interrupcion|Mux0~0_combout\,
	combout => \secuenciador|interrupcion|Mux1~0_combout\);

\secuenciador|direccion|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux1~1_combout\ = (\secuenciador|memoria|Mux3~0_combout\ & ((\secuenciador|direccion|Mux1~0_combout\ & ((!\secuenciador|interrupcion|Mux1~0_combout\))) # (!\secuenciador|direccion|Mux1~0_combout\ & 
-- (\secuenciador|transformacion|Mux6~1_combout\)))) # (!\secuenciador|memoria|Mux3~0_combout\ & (((\secuenciador|direccion|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|transformacion|Mux6~1_combout\,
	datab => \secuenciador|memoria|Mux3~0_combout\,
	datac => \secuenciador|direccion|Mux1~0_combout\,
	datad => \secuenciador|interrupcion|Mux1~0_combout\,
	combout => \secuenciador|direccion|Mux1~1_combout\);

\secuenciador|contador|estado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|direccion|Mux1~1_combout\,
	clrn => \rst~input_o\,
	ena => \secuenciador|tecla|pulso~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|contador|estado\(2));

\secuenciador|memoria|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|memoria|Mux7~0_combout\ = (\secuenciador|contador|estado\(0) & (!\secuenciador|contador|estado\(1) & (!\secuenciador|contador|estado\(2) & \secuenciador|contador|estado\(3)))) # (!\secuenciador|contador|estado\(0) & 
-- ((\secuenciador|contador|estado\(2) & ((\secuenciador|contador|estado\(3)))) # (!\secuenciador|contador|estado\(2) & (\secuenciador|contador|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|memoria|Mux7~0_combout\);

\secuenciador|transformacion|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|transformacion|Mux7~1_combout\ = (\secuenciador|transformacion|Mux7~0_combout\ & ((\entrada_trans[0]~input_o\ & (\secuenciador|contador|estado\(1) $ (\entrada_trans[1]~input_o\))) # (!\entrada_trans[0]~input_o\ & 
-- (!\secuenciador|contador|estado\(1) & !\entrada_trans[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|transformacion|Mux7~0_combout\,
	datab => \entrada_trans[0]~input_o\,
	datac => \secuenciador|contador|estado\(1),
	datad => \entrada_trans[1]~input_o\,
	combout => \secuenciador|transformacion|Mux7~1_combout\);

\secuenciador|incrementa|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|incrementa|Add0~0_combout\ = \secuenciador|contador|estado\(0) $ (\secuenciador|contador|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \secuenciador|contador|estado\(0),
	datad => \secuenciador|contador|estado\(1),
	combout => \secuenciador|incrementa|Add0~0_combout\);

\secuenciador|direccion|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux2~0_combout\ = (\secuenciador|control|Mux0~5_combout\ & (((\secuenciador|memoria|Mux3~0_combout\)))) # (!\secuenciador|control|Mux0~5_combout\ & ((\secuenciador|memoria|Mux3~0_combout\ & 
-- (\secuenciador|transformacion|Mux7~1_combout\)) # (!\secuenciador|memoria|Mux3~0_combout\ & ((\secuenciador|incrementa|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|control|Mux0~5_combout\,
	datab => \secuenciador|transformacion|Mux7~1_combout\,
	datac => \secuenciador|memoria|Mux3~0_combout\,
	datad => \secuenciador|incrementa|Add0~0_combout\,
	combout => \secuenciador|direccion|Mux2~0_combout\);

\secuenciador|direccion|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux2~1_combout\ = (\secuenciador|control|Mux0~5_combout\ & ((\secuenciador|direccion|Mux2~0_combout\ & ((\secuenciador|interrupcion|ri[1]~0_combout\))) # (!\secuenciador|direccion|Mux2~0_combout\ & 
-- (\secuenciador|memoria|Mux7~0_combout\)))) # (!\secuenciador|control|Mux0~5_combout\ & (((\secuenciador|direccion|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|memoria|Mux7~0_combout\,
	datab => \secuenciador|control|Mux0~5_combout\,
	datac => \secuenciador|direccion|Mux2~0_combout\,
	datad => \secuenciador|interrupcion|ri[1]~0_combout\,
	combout => \secuenciador|direccion|Mux2~1_combout\);

\secuenciador|contador|estado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|direccion|Mux2~1_combout\,
	clrn => \rst~input_o\,
	ena => \secuenciador|tecla|pulso~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|contador|estado\(1));

\secuenciador|direccion|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux3~0_combout\ = (\secuenciador|contador|estado\(1) & (\entrada_trans[0]~input_o\ & !\entrada_trans[1]~input_o\)) # (!\secuenciador|contador|estado\(1) & (!\entrada_trans[0]~input_o\ & \entrada_trans[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \secuenciador|contador|estado\(1),
	datac => \entrada_trans[0]~input_o\,
	datad => \entrada_trans[1]~input_o\,
	combout => \secuenciador|direccion|Mux3~0_combout\);

\secuenciador|direccion|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux3~1_combout\ = (\secuenciador|memoria|Mux3~0_combout\ & (\secuenciador|direccion|Mux3~0_combout\ & (\secuenciador|transformacion|Mux7~0_combout\))) # (!\secuenciador|memoria|Mux3~0_combout\ & 
-- (((!\secuenciador|contador|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|direccion|Mux3~0_combout\,
	datab => \secuenciador|transformacion|Mux7~0_combout\,
	datac => \secuenciador|memoria|Mux3~0_combout\,
	datad => \secuenciador|contador|estado\(0),
	combout => \secuenciador|direccion|Mux3~1_combout\);

\secuenciador|memoria|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|memoria|Mux8~0_combout\ = (\secuenciador|contador|estado\(3) & ((\secuenciador|contador|estado\(0) & (!\secuenciador|contador|estado\(1) & !\secuenciador|contador|estado\(2))) # (!\secuenciador|contador|estado\(0) & 
-- (\secuenciador|contador|estado\(1) & \secuenciador|contador|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|memoria|Mux8~0_combout\);

\secuenciador|direccion|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|direccion|Mux3~2_combout\ = (\secuenciador|control|Mux0~5_combout\ & (((\secuenciador|memoria|Mux8~0_combout\ & !\secuenciador|memoria|Mux3~0_combout\)))) # (!\secuenciador|control|Mux0~5_combout\ & (\secuenciador|direccion|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|direccion|Mux3~1_combout\,
	datab => \secuenciador|memoria|Mux8~0_combout\,
	datac => \secuenciador|control|Mux0~5_combout\,
	datad => \secuenciador|memoria|Mux3~0_combout\,
	combout => \secuenciador|direccion|Mux3~2_combout\);

\secuenciador|contador|estado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \secuenciador|direccion|Mux3~2_combout\,
	clrn => \rst~input_o\,
	ena => \secuenciador|tecla|pulso~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \secuenciador|contador|estado\(0));

\secuenciador|memoria|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|memoria|Mux12~0_combout\ = (\secuenciador|contador|estado\(2) & ((\secuenciador|contador|estado\(0)) # ((\secuenciador|contador|estado\(3))))) # (!\secuenciador|contador|estado\(2) & (\secuenciador|contador|estado\(0) $ 
-- (((\secuenciador|contador|estado\(1) & !\secuenciador|contador|estado\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|memoria|Mux12~0_combout\);

\secuenciador|memoria|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|memoria|Mux11~0_combout\ = (\secuenciador|contador|estado\(1) & (\secuenciador|contador|estado\(2) & ((\secuenciador|contador|estado\(3)) # (!\secuenciador|contador|estado\(0))))) # (!\secuenciador|contador|estado\(1) & 
-- ((\secuenciador|contador|estado\(0)) # ((\secuenciador|contador|estado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|memoria|Mux11~0_combout\);

\secuenciador|memoria|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|memoria|Mux10~0_combout\ = (\secuenciador|contador|estado\(0) & ((\secuenciador|contador|estado\(1)) # ((!\secuenciador|contador|estado\(3)) # (!\secuenciador|contador|estado\(2))))) # (!\secuenciador|contador|estado\(0) & 
-- ((\secuenciador|contador|estado\(3)) # (\secuenciador|contador|estado\(1) $ (\secuenciador|contador|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|memoria|Mux10~0_combout\);

\secuenciador|memoria|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \secuenciador|memoria|Mux9~0_combout\ = (\secuenciador|contador|estado\(3) & ((\secuenciador|contador|estado\(0) $ (!\secuenciador|contador|estado\(2))) # (!\secuenciador|contador|estado\(1)))) # (!\secuenciador|contador|estado\(3) & 
-- (\secuenciador|contador|estado\(1) $ (((!\secuenciador|contador|estado\(0) & \secuenciador|contador|estado\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secuenciador|contador|estado\(0),
	datab => \secuenciador|contador|estado\(1),
	datac => \secuenciador|contador|estado\(2),
	datad => \secuenciador|contador|estado\(3),
	combout => \secuenciador|memoria|Mux9~0_combout\);

ww_edo_pr(0) <= \edo_pr[0]~output_o\;

ww_edo_pr(1) <= \edo_pr[1]~output_o\;

ww_edo_pr(2) <= \edo_pr[2]~output_o\;

ww_edo_pr(3) <= \edo_pr[3]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(3) <= \salidas[3]~output_o\;
END structure;


