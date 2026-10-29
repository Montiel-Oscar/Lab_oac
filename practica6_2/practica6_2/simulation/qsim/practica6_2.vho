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

-- DATE "10/23/2026 11:57:41"

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

ENTITY 	practica6_2 IS
    PORT (
	edo_pr : OUT std_logic_vector(3 DOWNTO 0);
	reset : IN std_logic;
	clk : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic;
	INT_COND : IN std_logic;
	AUX : IN std_logic;
	entrada_trans : IN std_logic_vector(1 DOWNTO 0);
	salidas : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica6_2;

-- Design Ports Information
-- edo_pr[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edo_pr[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edo_pr[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edo_pr[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_trans[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_trans[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT_COND	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica6_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_edo_pr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_INT_COND : std_logic;
SIGNAL ww_AUX : std_logic;
SIGNAL ww_entrada_trans : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \edo_pr[3]~output_o\ : std_logic;
SIGNAL \edo_pr[2]~output_o\ : std_logic;
SIGNAL \edo_pr[1]~output_o\ : std_logic;
SIGNAL \edo_pr[0]~output_o\ : std_logic;
SIGNAL \salidas[3]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \INT_COND~input_o\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst|inst|edop[2]~8_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst|inst|edop[3]~1_combout\ : std_logic;
SIGNAL \inst|inst|edop[2]~9_combout\ : std_logic;
SIGNAL \entrada_trans[0]~input_o\ : std_logic;
SIGNAL \entrada_trans[1]~input_o\ : std_logic;
SIGNAL \inst|inst|edop[2]~7_combout\ : std_logic;
SIGNAL \inst|inst|edop[2]~10_combout\ : std_logic;
SIGNAL \inst|inst4|estado[2]~1_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \AUX~input_o\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~1_combout\ : std_logic;
SIGNAL \inst|inst|edop[3]~6_combout\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst|inst|edop[3]~0_combout\ : std_logic;
SIGNAL \inst|inst|edop[1]~11_combout\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst|inst|edop[3]~3_combout\ : std_logic;
SIGNAL \inst|inst|edop[3]~2_combout\ : std_logic;
SIGNAL \inst|inst|edop[1]~12_combout\ : std_logic;
SIGNAL \inst|inst4|estado[1]~2_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst|edop[0]~15_combout\ : std_logic;
SIGNAL \inst|inst|edop[0]~13_combout\ : std_logic;
SIGNAL \inst|inst|edop[0]~14_combout\ : std_logic;
SIGNAL \inst|inst|edop[0]~16_combout\ : std_logic;
SIGNAL \inst3|Mux8~0_combout\ : std_logic;
SIGNAL \inst|inst4|estado[0]~3_combout\ : std_logic;
SIGNAL \inst|inst4|estado[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst|inst|edop[3]~5_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst|inst|edop[3]~4_combout\ : std_logic;
SIGNAL \inst|inst4|estado[3]~0_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Mux9~0_combout\ : std_logic;
SIGNAL \inst3|Mux10~0_combout\ : std_logic;
SIGNAL \inst3|Mux11~0_combout\ : std_logic;
SIGNAL \inst3|Mux12~0_combout\ : std_logic;
SIGNAL \inst|inst4|estado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux9~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

edo_pr <= ww_edo_pr;
ww_reset <= reset;
ww_clk <= clk;
ww_X <= X;
ww_Y <= Y;
ww_INT_COND <= INT_COND;
ww_AUX <= AUX;
ww_entrada_trans <= entrada_trans;
salidas <= ww_salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst3|ALT_INV_Mux10~0_combout\ <= NOT \inst3|Mux10~0_combout\;
\inst3|ALT_INV_Mux9~0_combout\ <= NOT \inst3|Mux9~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y46_N16
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

-- Location: IOOBUF_X46_Y54_N9
\edo_pr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|estado\(3),
	devoe => ww_devoe,
	o => \edo_pr[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\edo_pr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|estado\(2),
	devoe => ww_devoe,
	o => \edo_pr[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\edo_pr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|estado\(1),
	devoe => ww_devoe,
	o => \edo_pr[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\edo_pr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|estado\(0),
	devoe => ww_devoe,
	o => \edo_pr[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\salidas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => \salidas[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\salidas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\salidas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\salidas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

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

-- Location: IOIBUF_X51_Y54_N22
\INT_COND~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INT_COND,
	o => \INT_COND~input_o\);

-- Location: LCCOMB_X52_Y53_N18
\inst3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (!\inst|inst4|estado\(0) & (\inst|inst4|estado\(3) & (\inst|inst4|estado\(2) $ (\inst|inst4|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(0),
	datab => \inst|inst4|estado\(2),
	datac => \inst|inst4|estado\(3),
	datad => \inst|inst4|estado\(1),
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X50_Y53_N6
\inst|inst|edop[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[2]~8_combout\ = (!\inst|inst4|estado\(2) & (\inst|inst4|estado\(0) & (\inst|inst4|estado\(1) $ (!\inst|inst4|estado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(2),
	datab => \inst|inst4|estado\(1),
	datac => \inst|inst4|estado\(0),
	datad => \inst|inst4|estado\(3),
	combout => \inst|inst|edop[2]~8_combout\);

-- Location: LCCOMB_X51_Y53_N16
\inst3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst|inst4|estado\(0) & (\inst|inst4|estado\(2) $ (((\inst|inst4|estado\(1)) # (!\inst|inst4|estado\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(2),
	datab => \inst|inst4|estado\(3),
	datac => \inst|inst4|estado\(1),
	datad => \inst|inst4|estado\(0),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y53_N28
\inst|inst|edop[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[3]~1_combout\ = (!\inst3|Mux4~0_combout\ & \inst3|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux4~0_combout\,
	datad => \inst3|Mux3~0_combout\,
	combout => \inst|inst|edop[3]~1_combout\);

-- Location: LCCOMB_X50_Y53_N28
\inst|inst|edop[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[2]~9_combout\ = (\inst|inst4|estado\(0) & ((\inst|inst4|estado\(2) & (!\inst|inst4|estado\(1) & \inst|inst4|estado\(3))) # (!\inst|inst4|estado\(2) & (\inst|inst4|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(2),
	datab => \inst|inst4|estado\(1),
	datac => \inst|inst4|estado\(0),
	datad => \inst|inst4|estado\(3),
	combout => \inst|inst|edop[2]~9_combout\);

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: LCCOMB_X50_Y53_N20
\inst|inst|edop[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[2]~7_combout\ = (\inst|inst|edop[3]~1_combout\ & (!\entrada_trans[0]~input_o\ & ((\entrada_trans[1]~input_o\)))) # (!\inst|inst|edop[3]~1_combout\ & (((\INT_COND~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_trans[0]~input_o\,
	datab => \INT_COND~input_o\,
	datac => \entrada_trans[1]~input_o\,
	datad => \inst|inst|edop[3]~1_combout\,
	combout => \inst|inst|edop[2]~7_combout\);

-- Location: LCCOMB_X50_Y53_N2
\inst|inst|edop[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[2]~10_combout\ = (\inst|inst|edop[2]~7_combout\ & (\inst|inst|edop[2]~8_combout\ & (\inst|inst|edop[3]~1_combout\))) # (!\inst|inst|edop[2]~7_combout\ & (\inst|inst|edop[2]~9_combout\ & (\inst|inst|edop[2]~8_combout\ $ 
-- (!\inst|inst|edop[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|edop[2]~8_combout\,
	datab => \inst|inst|edop[3]~1_combout\,
	datac => \inst|inst|edop[2]~9_combout\,
	datad => \inst|inst|edop[2]~7_combout\,
	combout => \inst|inst|edop[2]~10_combout\);

-- Location: LCCOMB_X51_Y53_N18
\inst|inst4|estado[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|estado[2]~1_combout\ = (\inst|inst|edop[3]~5_combout\ & (\inst3|Mux6~0_combout\)) # (!\inst|inst|edop[3]~5_combout\ & ((\inst|inst|edop[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|edop[3]~5_combout\,
	datab => \inst3|Mux6~0_combout\,
	datad => \inst|inst|edop[2]~10_combout\,
	combout => \inst|inst4|estado[2]~1_combout\);

-- Location: LCCOMB_X52_Y53_N8
\inst|inst2|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~1_combout\ = \inst|inst4|estado\(2) $ (((\inst|inst4|estado\(0) & \inst|inst4|estado\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|estado\(2),
	datac => \inst|inst4|estado\(0),
	datad => \inst|inst4|estado\(1),
	combout => \inst|inst2|Add0~1_combout\);

-- Location: IOIBUF_X69_Y54_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X51_Y53_N26
\inst3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst|inst4|estado\(0) & ((\inst|inst4|estado\(1) & (!\inst|inst4|estado\(2) & !\inst|inst4|estado\(3))) # (!\inst|inst4|estado\(1) & ((\inst|inst4|estado\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(2),
	datab => \inst|inst4|estado\(0),
	datac => \inst|inst4|estado\(1),
	datad => \inst|inst4|estado\(3),
	combout => \inst3|Mux2~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: LCCOMB_X51_Y53_N20
\inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (!\inst|inst4|estado\(2) & ((\inst|inst4|estado\(1) & (!\inst|inst4|estado\(3) & !\inst|inst4|estado\(0))) # (!\inst|inst4|estado\(1) & (\inst|inst4|estado\(3) & \inst|inst4|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(1),
	datab => \inst|inst4|estado\(2),
	datac => \inst|inst4|estado\(3),
	datad => \inst|inst4|estado\(0),
	combout => \inst3|Mux0~0_combout\);

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: IOIBUF_X51_Y54_N29
\AUX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUX,
	o => \AUX~input_o\);

-- Location: LCCOMB_X51_Y53_N14
\inst3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst|inst4|estado\(3) & (\inst|inst4|estado\(0) & (!\inst|inst4|estado\(1) & \inst|inst4|estado\(2)))) # (!\inst|inst4|estado\(3) & (((\inst|inst4|estado\(1) & !\inst|inst4|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(0),
	datab => \inst|inst4|estado\(3),
	datac => \inst|inst4|estado\(1),
	datad => \inst|inst4|estado\(2),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y53_N24
\inst6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst3|Mux1~0_combout\ & ((\INT_COND~input_o\) # ((\inst3|Mux0~0_combout\)))) # (!\inst3|Mux1~0_combout\ & (((\AUX~input_o\ & !\inst3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INT_COND~input_o\,
	datab => \AUX~input_o\,
	datac => \inst3|Mux1~0_combout\,
	datad => \inst3|Mux0~0_combout\,
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y53_N2
\inst6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux0~1_combout\ = (\inst3|Mux0~0_combout\ & ((\inst6|Mux0~0_combout\ & (\X~input_o\)) # (!\inst6|Mux0~0_combout\ & ((\Y~input_o\))))) # (!\inst3|Mux0~0_combout\ & (((\inst6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \inst3|Mux0~0_combout\,
	datac => \Y~input_o\,
	datad => \inst6|Mux0~0_combout\,
	combout => \inst6|Mux0~1_combout\);

-- Location: LCCOMB_X51_Y53_N22
\inst|inst|edop[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[3]~6_combout\ = (!\inst3|Mux3~0_combout\ & ((\inst3|Mux2~0_combout\ $ (\inst6|Mux0~1_combout\)) # (!\inst3|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux4~0_combout\,
	datab => \inst3|Mux2~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	datad => \inst6|Mux0~1_combout\,
	combout => \inst|inst|edop[3]~6_combout\);

-- Location: FF_X51_Y53_N19
\inst|inst4|estado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst4|estado[2]~1_combout\,
	asdata => \inst|inst2|Add0~1_combout\,
	clrn => \reset~input_o\,
	sload => \inst|inst|edop[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|estado\(2));

-- Location: LCCOMB_X50_Y53_N24
\inst3|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = (\inst|inst4|estado\(2) & (\inst|inst4|estado\(3) & (!\inst|inst4|estado\(0)))) # (!\inst|inst4|estado\(2) & ((\inst|inst4|estado\(0) & (\inst|inst4|estado\(3) & !\inst|inst4|estado\(1))) # (!\inst|inst4|estado\(0) & 
-- ((\inst|inst4|estado\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(2),
	datab => \inst|inst4|estado\(3),
	datac => \inst|inst4|estado\(0),
	datad => \inst|inst4|estado\(1),
	combout => \inst3|Mux7~0_combout\);

-- Location: LCCOMB_X50_Y53_N22
\inst|inst|edop[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[3]~0_combout\ = (\inst|inst4|estado\(0) & ((\inst|inst4|estado\(2) & (!\inst|inst4|estado\(1) & \inst|inst4|estado\(3))) # (!\inst|inst4|estado\(2) & (\inst|inst4|estado\(1) & !\inst|inst4|estado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(2),
	datab => \inst|inst4|estado\(1),
	datac => \inst|inst4|estado\(0),
	datad => \inst|inst4|estado\(3),
	combout => \inst|inst|edop[3]~0_combout\);

-- Location: LCCOMB_X50_Y53_N12
\inst|inst|edop[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[1]~11_combout\ = (\entrada_trans[0]~input_o\ & (\entrada_trans[1]~input_o\ $ (\inst|inst4|estado\(3)))) # (!\entrada_trans[0]~input_o\ & (!\entrada_trans[1]~input_o\ & !\inst|inst4|estado\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_trans[0]~input_o\,
	datab => \entrada_trans[1]~input_o\,
	datad => \inst|inst4|estado\(3),
	combout => \inst|inst|edop[1]~11_combout\);

-- Location: LCCOMB_X50_Y53_N30
\inst2|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = \inst|inst4|estado\(1) $ (\inst|inst4|estado\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|estado\(1),
	datad => \inst|inst4|estado\(3),
	combout => \inst2|Mux5~1_combout\);

-- Location: LCCOMB_X50_Y53_N8
\inst|inst|edop[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[3]~3_combout\ = (\inst|inst4|estado\(0) & (!\inst|inst4|estado\(2) & (!\inst2|Mux5~1_combout\ & \inst|inst|edop[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(0),
	datab => \inst|inst4|estado\(2),
	datac => \inst2|Mux5~1_combout\,
	datad => \inst|inst|edop[3]~1_combout\,
	combout => \inst|inst|edop[3]~3_combout\);

-- Location: LCCOMB_X50_Y53_N0
\inst|inst|edop[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[3]~2_combout\ = (\reset~input_o\ & (!\inst|inst|edop[3]~1_combout\ & (\INT_COND~input_o\ $ (\inst|inst4|estado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INT_COND~input_o\,
	datab => \inst|inst4|estado\(3),
	datac => \reset~input_o\,
	datad => \inst|inst|edop[3]~1_combout\,
	combout => \inst|inst|edop[3]~2_combout\);

-- Location: LCCOMB_X50_Y53_N18
\inst|inst|edop[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[1]~12_combout\ = (\inst|inst|edop[3]~0_combout\ & ((\inst|inst|edop[3]~2_combout\) # ((\inst|inst|edop[1]~11_combout\ & \inst|inst|edop[3]~3_combout\)))) # (!\inst|inst|edop[3]~0_combout\ & (\inst|inst|edop[1]~11_combout\ & 
-- (\inst|inst|edop[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|edop[3]~0_combout\,
	datab => \inst|inst|edop[1]~11_combout\,
	datac => \inst|inst|edop[3]~3_combout\,
	datad => \inst|inst|edop[3]~2_combout\,
	combout => \inst|inst|edop[1]~12_combout\);

-- Location: LCCOMB_X51_Y53_N8
\inst|inst4|estado[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|estado[1]~2_combout\ = (\inst|inst|edop[3]~5_combout\ & (\inst3|Mux7~0_combout\)) # (!\inst|inst|edop[3]~5_combout\ & ((\inst|inst|edop[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|edop[3]~5_combout\,
	datab => \inst3|Mux7~0_combout\,
	datad => \inst|inst|edop[1]~12_combout\,
	combout => \inst|inst4|estado[1]~2_combout\);

-- Location: LCCOMB_X50_Y53_N26
\inst|inst2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~2_combout\ = \inst|inst4|estado\(1) $ (\inst|inst4|estado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|estado\(1),
	datad => \inst|inst4|estado\(0),
	combout => \inst|inst2|Add0~2_combout\);

-- Location: FF_X51_Y53_N9
\inst|inst4|estado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst4|estado[1]~2_combout\,
	asdata => \inst|inst2|Add0~2_combout\,
	clrn => \reset~input_o\,
	sload => \inst|inst|edop[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|estado\(1));

-- Location: LCCOMB_X50_Y53_N10
\inst|inst|edop[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[0]~15_combout\ = (\inst|inst4|estado\(3) & (\INT_COND~input_o\ & (!\inst|inst4|estado\(1) & \inst|inst4|estado\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(3),
	datab => \INT_COND~input_o\,
	datac => \inst|inst4|estado\(1),
	datad => \inst|inst4|estado\(2),
	combout => \inst|inst|edop[0]~15_combout\);

-- Location: LCCOMB_X50_Y53_N16
\inst|inst|edop[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[0]~13_combout\ = (\entrada_trans[0]~input_o\ & (!\entrada_trans[1]~input_o\ & \inst|inst4|estado\(3))) # (!\entrada_trans[0]~input_o\ & (\entrada_trans[1]~input_o\ & !\inst|inst4|estado\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_trans[0]~input_o\,
	datab => \entrada_trans[1]~input_o\,
	datad => \inst|inst4|estado\(3),
	combout => \inst|inst|edop[0]~13_combout\);

-- Location: LCCOMB_X51_Y53_N0
\inst|inst|edop[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[0]~14_combout\ = (!\inst|inst4|estado\(2) & (!\inst2|Mux5~1_combout\ & (\inst|inst|edop[0]~13_combout\ & \inst|inst|edop[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(2),
	datab => \inst2|Mux5~1_combout\,
	datac => \inst|inst|edop[0]~13_combout\,
	datad => \inst|inst|edop[3]~1_combout\,
	combout => \inst|inst|edop[0]~14_combout\);

-- Location: LCCOMB_X51_Y53_N30
\inst|inst|edop[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[0]~16_combout\ = (\inst|inst4|estado\(0) & ((\inst|inst|edop[0]~14_combout\) # ((\inst|inst|edop[0]~15_combout\ & !\inst|inst|edop[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|edop[0]~15_combout\,
	datab => \inst|inst4|estado\(0),
	datac => \inst|inst|edop[3]~1_combout\,
	datad => \inst|inst|edop[0]~14_combout\,
	combout => \inst|inst|edop[0]~16_combout\);

-- Location: LCCOMB_X52_Y53_N22
\inst3|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux8~0_combout\ = (\inst|inst4|estado\(3) & ((\inst|inst4|estado\(0) & (!\inst|inst4|estado\(2) & !\inst|inst4|estado\(1))) # (!\inst|inst4|estado\(0) & (\inst|inst4|estado\(2) & \inst|inst4|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(0),
	datab => \inst|inst4|estado\(2),
	datac => \inst|inst4|estado\(3),
	datad => \inst|inst4|estado\(1),
	combout => \inst3|Mux8~0_combout\);

-- Location: LCCOMB_X51_Y53_N6
\inst|inst4|estado[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|estado[0]~3_combout\ = (\inst|inst|edop[3]~5_combout\ & ((\inst3|Mux8~0_combout\))) # (!\inst|inst|edop[3]~5_combout\ & (\inst|inst|edop[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|edop[0]~16_combout\,
	datab => \inst3|Mux8~0_combout\,
	datad => \inst|inst|edop[3]~5_combout\,
	combout => \inst|inst4|estado[0]~3_combout\);

-- Location: LCCOMB_X52_Y53_N12
\inst|inst4|estado[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|estado[0]~_wirecell_combout\ = !\inst|inst4|estado\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|estado\(0),
	combout => \inst|inst4|estado[0]~_wirecell_combout\);

-- Location: FF_X51_Y53_N7
\inst|inst4|estado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst4|estado[0]~3_combout\,
	asdata => \inst|inst4|estado[0]~_wirecell_combout\,
	clrn => \reset~input_o\,
	sload => \inst|inst|edop[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|estado\(0));

-- Location: LCCOMB_X51_Y53_N10
\inst3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst|inst4|estado\(2) & ((\inst|inst4|estado\(0)) # ((\inst|inst4|estado\(3))))) # (!\inst|inst4|estado\(2) & (\inst|inst4|estado\(1) $ (((\inst|inst4|estado\(0) & \inst|inst4|estado\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(0),
	datab => \inst|inst4|estado\(1),
	datac => \inst|inst4|estado\(3),
	datad => \inst|inst4|estado\(2),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y53_N12
\inst|inst|edop[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[3]~5_combout\ = (\inst3|Mux4~0_combout\ & (!\inst3|Mux3~0_combout\ & (\inst3|Mux2~0_combout\ $ (!\inst6|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux4~0_combout\,
	datab => \inst3|Mux2~0_combout\,
	datac => \inst3|Mux3~0_combout\,
	datad => \inst6|Mux0~1_combout\,
	combout => \inst|inst|edop[3]~5_combout\);

-- Location: LCCOMB_X52_Y53_N10
\inst3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst|inst4|estado\(3) & ((\inst|inst4|estado\(0) & (!\inst|inst4|estado\(2) & !\inst|inst4|estado\(1))) # (!\inst|inst4|estado\(0) & (\inst|inst4|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(0),
	datab => \inst|inst4|estado\(2),
	datac => \inst|inst4|estado\(3),
	datad => \inst|inst4|estado\(1),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y53_N4
\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\entrada_trans[0]~input_o\ & (\entrada_trans[1]~input_o\ $ (!\inst|inst4|estado\(1)))) # (!\entrada_trans[0]~input_o\ & ((\entrada_trans[1]~input_o\) # (\inst|inst4|estado\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_trans[0]~input_o\,
	datab => \entrada_trans[1]~input_o\,
	datac => \inst|inst4|estado\(1),
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y53_N14
\inst|inst|edop[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|edop[3]~4_combout\ = (\inst|inst|edop[3]~0_combout\ & ((\inst|inst|edop[3]~2_combout\) # ((\inst2|Mux5~0_combout\ & \inst|inst|edop[3]~3_combout\)))) # (!\inst|inst|edop[3]~0_combout\ & (\inst2|Mux5~0_combout\ & 
-- (\inst|inst|edop[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|edop[3]~0_combout\,
	datab => \inst2|Mux5~0_combout\,
	datac => \inst|inst|edop[3]~3_combout\,
	datad => \inst|inst|edop[3]~2_combout\,
	combout => \inst|inst|edop[3]~4_combout\);

-- Location: LCCOMB_X51_Y53_N4
\inst|inst4|estado[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst4|estado[3]~0_combout\ = (\inst|inst|edop[3]~5_combout\ & (\inst3|Mux5~0_combout\)) # (!\inst|inst|edop[3]~5_combout\ & ((\inst|inst|edop[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|edop[3]~5_combout\,
	datab => \inst3|Mux5~0_combout\,
	datad => \inst|inst|edop[3]~4_combout\,
	combout => \inst|inst4|estado[3]~0_combout\);

-- Location: LCCOMB_X52_Y53_N0
\inst|inst2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~0_combout\ = \inst|inst4|estado\(3) $ (((\inst|inst4|estado\(0) & (\inst|inst4|estado\(2) & \inst|inst4|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(0),
	datab => \inst|inst4|estado\(2),
	datac => \inst|inst4|estado\(3),
	datad => \inst|inst4|estado\(1),
	combout => \inst|inst2|Add0~0_combout\);

-- Location: FF_X51_Y53_N5
\inst|inst4|estado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst4|estado[3]~0_combout\,
	asdata => \inst|inst2|Add0~0_combout\,
	clrn => \reset~input_o\,
	sload => \inst|inst|edop[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|estado\(3));

-- Location: LCCOMB_X49_Y53_N4
\inst3|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux9~0_combout\ = (\inst|inst4|estado\(3) & ((\inst|inst4|estado\(0) $ (!\inst|inst4|estado\(2))) # (!\inst|inst4|estado\(1)))) # (!\inst|inst4|estado\(3) & (\inst|inst4|estado\(1) $ (((!\inst|inst4|estado\(0) & \inst|inst4|estado\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(3),
	datab => \inst|inst4|estado\(0),
	datac => \inst|inst4|estado\(2),
	datad => \inst|inst4|estado\(1),
	combout => \inst3|Mux9~0_combout\);

-- Location: LCCOMB_X52_Y53_N24
\inst3|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux10~0_combout\ = (\inst|inst4|estado\(3) & ((\inst|inst4|estado\(1)) # ((!\inst|inst4|estado\(0)) # (!\inst|inst4|estado\(2))))) # (!\inst|inst4|estado\(3) & ((\inst|inst4|estado\(0)) # (\inst|inst4|estado\(1) $ (\inst|inst4|estado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(3),
	datab => \inst|inst4|estado\(1),
	datac => \inst|inst4|estado\(2),
	datad => \inst|inst4|estado\(0),
	combout => \inst3|Mux10~0_combout\);

-- Location: LCCOMB_X52_Y53_N30
\inst3|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux11~0_combout\ = (\inst|inst4|estado\(1) & (\inst|inst4|estado\(2) & ((\inst|inst4|estado\(3)) # (!\inst|inst4|estado\(0))))) # (!\inst|inst4|estado\(1) & ((\inst|inst4|estado\(3)) # ((\inst|inst4|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(3),
	datab => \inst|inst4|estado\(1),
	datac => \inst|inst4|estado\(2),
	datad => \inst|inst4|estado\(0),
	combout => \inst3|Mux11~0_combout\);

-- Location: LCCOMB_X52_Y53_N20
\inst3|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux12~0_combout\ = (\inst|inst4|estado\(3) & (((\inst|inst4|estado\(2)) # (\inst|inst4|estado\(0))))) # (!\inst|inst4|estado\(3) & (\inst|inst4|estado\(0) $ (((\inst|inst4|estado\(1) & !\inst|inst4|estado\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|estado\(3),
	datab => \inst|inst4|estado\(1),
	datac => \inst|inst4|estado\(2),
	datad => \inst|inst4|estado\(0),
	combout => \inst3|Mux12~0_combout\);

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

ww_edo_pr(3) <= \edo_pr[3]~output_o\;

ww_edo_pr(2) <= \edo_pr[2]~output_o\;

ww_edo_pr(1) <= \edo_pr[1]~output_o\;

ww_edo_pr(0) <= \edo_pr[0]~output_o\;

ww_salidas(3) <= \salidas[3]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;
END structure;


