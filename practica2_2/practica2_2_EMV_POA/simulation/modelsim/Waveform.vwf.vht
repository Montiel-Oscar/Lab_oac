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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/11/2026 11:44:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica2_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica2_2_vhd_vec_tst IS
END practica2_2_vhd_vec_tst;
ARCHITECTURE practica2_2_arch OF practica2_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL button : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL edo_presente : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL go : STD_LOGIC;
COMPONENT practica2_2
	PORT (
	A : OUT STD_LOGIC;
	B : OUT STD_LOGIC;
	button : IN STD_LOGIC;
	C : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	D : OUT STD_LOGIC;
	done : OUT STD_LOGIC;
	edo_presente : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	go : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica2_2
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	button => button,
	C => C,
	clk => clk,
	D => D,
	done => done,
	edo_presente => edo_presente,
	go => go
	);

-- go
t_prcs_go: PROCESS
BEGIN
	go <= '1';
WAIT;
END PROCESS t_prcs_go;

-- button
t_prcs_button: PROCESS
BEGIN
	button <= '1';
WAIT;
END PROCESS t_prcs_button;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END practica2_2_arch;
