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

-- DATE "09/11/2026 11:46:05"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica2_2 IS
    PORT (
	A : OUT std_logic;
	clk : IN std_logic;
	go : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	done : OUT std_logic;
	edo_presente : OUT std_logic_vector(1 DOWNTO 0);
	button : IN std_logic
	);
END practica2_2;

-- Design Ports Information
-- A	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edo_presente[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edo_presente[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica2_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_edo_presente : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_button : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \button~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \edo_presente[1]~output_o\ : std_logic;
SIGNAL \edo_presente[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst3|26~0_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \inst3|5~combout\ : std_logic;
SIGNAL \inst3|25~0_combout\ : std_logic;
SIGNAL \inst3|25~q\ : std_logic;
SIGNAL \inst3|51~combout\ : std_logic;
SIGNAL \inst3|24~0_combout\ : std_logic;
SIGNAL \inst3|24~q\ : std_logic;
SIGNAL \inst3|21~combout\ : std_logic;
SIGNAL \inst3|23~0_combout\ : std_logic;
SIGNAL \inst3|23~q\ : std_logic;
SIGNAL \inst2|state[0]~2_combout\ : std_logic;
SIGNAL \inst2|state[0]~3_combout\ : std_logic;
SIGNAL \inst2|state[1]~0_combout\ : std_logic;
SIGNAL \inst2|state[1]~1_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|reset~feeder_combout\ : std_logic;
SIGNAL \inst2|reset~q\ : std_logic;
SIGNAL \inst3|26~q\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|done~q\ : std_logic;
SIGNAL \inst2|edo_p[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|edo_p\ : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
ww_clk <= clk;
ww_go <= go;
B <= ww_B;
C <= ww_C;
D <= ww_D;
done <= ww_done;
edo_presente <= ww_edo_presente;
ww_button <= button;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|26~q\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|25~q\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|24~q\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|23~q\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\done~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|done~q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\edo_presente[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|edo_p\(1),
	devoe => ww_devoe,
	o => \edo_presente[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\edo_presente[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|edo_p\(0),
	devoe => ww_devoe,
	o => \edo_presente[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: LCCOMB_X50_Y16_N24
\inst3|26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|26~0_combout\ = !\inst3|26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|26~q\,
	combout => \inst3|26~0_combout\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\go~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go,
	o => \go~input_o\);

-- Location: LCCOMB_X49_Y16_N18
\inst3|5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|5~combout\ = LCELL((\clk~input_o\) # (!\inst3|26~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => \inst3|26~q\,
	combout => \inst3|5~combout\);

-- Location: LCCOMB_X49_Y16_N6
\inst3|25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|25~0_combout\ = !\inst3|25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|25~q\,
	combout => \inst3|25~0_combout\);

-- Location: FF_X49_Y16_N7
\inst3|25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|5~combout\,
	d => \inst3|25~0_combout\,
	clrn => \inst2|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|25~q\);

-- Location: LCCOMB_X49_Y16_N28
\inst3|51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|51~combout\ = LCELL((\clk~input_o\) # ((!\inst3|26~q\) # (!\inst3|25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datac => \inst3|25~q\,
	datad => \inst3|26~q\,
	combout => \inst3|51~combout\);

-- Location: LCCOMB_X49_Y16_N30
\inst3|24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|24~0_combout\ = !\inst3|24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|24~q\,
	combout => \inst3|24~0_combout\);

-- Location: FF_X49_Y16_N31
\inst3|24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|51~combout\,
	d => \inst3|24~0_combout\,
	clrn => \inst2|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|24~q\);

-- Location: LCCOMB_X50_Y16_N6
\inst3|21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|21~combout\ = LCELL((\clk~input_o\) # (((!\inst3|24~q\) # (!\inst3|25~q\)) # (!\inst3|26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \inst3|26~q\,
	datac => \inst3|25~q\,
	datad => \inst3|24~q\,
	combout => \inst3|21~combout\);

-- Location: LCCOMB_X51_Y16_N24
\inst3|23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|23~0_combout\ = !\inst3|23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|23~q\,
	combout => \inst3|23~0_combout\);

-- Location: FF_X51_Y16_N25
\inst3|23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|21~combout\,
	d => \inst3|23~0_combout\,
	clrn => \inst2|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|23~q\);

-- Location: LCCOMB_X50_Y16_N18
\inst2|state[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|state[0]~2_combout\ = (((!\inst3|23~q\) # (!\inst3|25~q\)) # (!\inst3|24~q\)) # (!\inst3|26~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|26~q\,
	datab => \inst3|24~q\,
	datac => \inst3|25~q\,
	datad => \inst3|23~q\,
	combout => \inst2|state[0]~2_combout\);

-- Location: LCCOMB_X50_Y16_N20
\inst2|state[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|state[0]~3_combout\ = (!\inst2|state\(1) & ((\inst2|state\(0) & ((\inst2|state[0]~2_combout\))) # (!\inst2|state\(0) & (\go~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state\(1),
	datab => \go~input_o\,
	datac => \inst2|state\(0),
	datad => \inst2|state[0]~2_combout\,
	combout => \inst2|state[0]~3_combout\);

-- Location: FF_X50_Y16_N21
\inst2|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|state[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state\(0));

-- Location: LCCOMB_X50_Y16_N12
\inst2|state[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|state[1]~0_combout\ = (\inst3|26~q\ & (!\inst2|state\(1) & \inst2|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|26~q\,
	datac => \inst2|state\(1),
	datad => \inst2|state\(0),
	combout => \inst2|state[1]~0_combout\);

-- Location: LCCOMB_X50_Y16_N26
\inst2|state[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|state[1]~1_combout\ = (\inst2|state[1]~0_combout\ & (\inst3|23~q\ & (\inst3|25~q\ & \inst3|24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state[1]~0_combout\,
	datab => \inst3|23~q\,
	datac => \inst3|25~q\,
	datad => \inst3|24~q\,
	combout => \inst2|state[1]~1_combout\);

-- Location: FF_X50_Y16_N27
\inst2|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|state[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state\(1));

-- Location: LCCOMB_X50_Y16_N4
\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (!\inst2|state\(1) & \inst2|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state\(1),
	datad => \inst2|state\(0),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y16_N16
\inst2|reset~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|reset~feeder_combout\ = \inst2|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux0~0_combout\,
	combout => \inst2|reset~feeder_combout\);

-- Location: FF_X50_Y16_N17
\inst2|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|reset~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|reset~q\);

-- Location: FF_X50_Y16_N25
\inst3|26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|26~0_combout\,
	clrn => \inst2|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|26~q\);

-- Location: LCCOMB_X50_Y16_N30
\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst2|state\(1) & !\inst2|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state\(1),
	datad => \inst2|state\(0),
	combout => \inst2|Mux1~0_combout\);

-- Location: FF_X50_Y16_N5
\inst2|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|done~q\);

-- Location: FF_X50_Y16_N31
\inst2|edo_p[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|edo_p\(1));

-- Location: LCCOMB_X50_Y16_N14
\inst2|edo_p[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|edo_p[0]~feeder_combout\ = \inst2|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux0~0_combout\,
	combout => \inst2|edo_p[0]~feeder_combout\);

-- Location: FF_X50_Y16_N15
\inst2|edo_p[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|edo_p[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|edo_p\(0));

-- Location: IOIBUF_X46_Y54_N29
\button~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_done <= \done~output_o\;

ww_edo_presente(1) <= \edo_presente[1]~output_o\;

ww_edo_presente(0) <= \edo_presente[0]~output_o\;
END structure;


