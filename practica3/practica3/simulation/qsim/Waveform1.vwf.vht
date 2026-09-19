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
-- Generated on "09/18/2026 19:55:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica3_vhd_vec_tst IS
END practica3_vhd_vec_tst;
ARCHITECTURE practica3_arch OF practica3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL edo_p : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL entradas : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL VBPM : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT practica3
	PORT (
	clk : IN STD_LOGIC;
	edo_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	entradas : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	VBPM : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : practica3
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	edo_p => edo_p,
	entradas => entradas,
	reset => reset,
	VBPM => VBPM
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
-- entradas[2]
t_prcs_entradas_2: PROCESS
BEGIN
	entradas(2) <= '0';
	WAIT FOR 20000 ps;
	entradas(2) <= '1';
	WAIT FOR 30000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 20000 ps;
	entradas(2) <= '0';
	WAIT FOR 50000 ps;
	entradas(2) <= '1';
	WAIT FOR 10000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 30000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 20000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 10000 ps;
	entradas(2) <= '0';
	WAIT FOR 30000 ps;
	entradas(2) <= '1';
	WAIT FOR 10000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 10000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 30000 ps;
	entradas(2) <= '0';
	WAIT FOR 20000 ps;
	entradas(2) <= '1';
	WAIT FOR 70000 ps;
	entradas(2) <= '0';
	WAIT FOR 30000 ps;
	entradas(2) <= '1';
	WAIT FOR 10000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 10000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 20000 ps;
	entradas(2) <= '0';
	WAIT FOR 50000 ps;
	entradas(2) <= '1';
	WAIT FOR 20000 ps;
	entradas(2) <= '0';
	WAIT FOR 20000 ps;
	entradas(2) <= '1';
	WAIT FOR 20000 ps;
	entradas(2) <= '0';
	WAIT FOR 20000 ps;
	entradas(2) <= '1';
	WAIT FOR 10000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 20000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 10000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
	WAIT FOR 30000 ps;
	entradas(2) <= '0';
	WAIT FOR 10000 ps;
	entradas(2) <= '1';
WAIT;
END PROCESS t_prcs_entradas_2;
-- entradas[1]
t_prcs_entradas_1: PROCESS
BEGIN
	entradas(1) <= '1';
	WAIT FOR 50000 ps;
	entradas(1) <= '0';
	WAIT FOR 30000 ps;
	entradas(1) <= '1';
	WAIT FOR 10000 ps;
	entradas(1) <= '0';
	WAIT FOR 20000 ps;
	entradas(1) <= '1';
	WAIT FOR 10000 ps;
	entradas(1) <= '0';
	WAIT FOR 50000 ps;
	entradas(1) <= '1';
	WAIT FOR 20000 ps;
	entradas(1) <= '0';
	WAIT FOR 40000 ps;
	entradas(1) <= '1';
	WAIT FOR 10000 ps;
	entradas(1) <= '0';
	WAIT FOR 10000 ps;
	entradas(1) <= '1';
	WAIT FOR 10000 ps;
	entradas(1) <= '0';
	WAIT FOR 30000 ps;
	entradas(1) <= '1';
	WAIT FOR 30000 ps;
	entradas(1) <= '0';
	WAIT FOR 20000 ps;
	entradas(1) <= '1';
	WAIT FOR 20000 ps;
	entradas(1) <= '0';
	WAIT FOR 60000 ps;
	entradas(1) <= '1';
	WAIT FOR 20000 ps;
	entradas(1) <= '0';
	WAIT FOR 40000 ps;
	entradas(1) <= '1';
	WAIT FOR 30000 ps;
	entradas(1) <= '0';
	WAIT FOR 10000 ps;
	entradas(1) <= '1';
	WAIT FOR 10000 ps;
	entradas(1) <= '0';
	WAIT FOR 10000 ps;
	entradas(1) <= '1';
	WAIT FOR 40000 ps;
	entradas(1) <= '0';
	WAIT FOR 20000 ps;
	entradas(1) <= '1';
	WAIT FOR 10000 ps;
	entradas(1) <= '0';
	WAIT FOR 10000 ps;
	entradas(1) <= '1';
	WAIT FOR 10000 ps;
	entradas(1) <= '0';
	WAIT FOR 30000 ps;
	entradas(1) <= '1';
	WAIT FOR 20000 ps;
	entradas(1) <= '0';
	WAIT FOR 20000 ps;
	entradas(1) <= '1';
WAIT;
END PROCESS t_prcs_entradas_1;
-- entradas[0]
t_prcs_entradas_0: PROCESS
BEGIN
	entradas(0) <= '0';
	WAIT FOR 20000 ps;
	entradas(0) <= '1';
	WAIT FOR 10000 ps;
	entradas(0) <= '0';
	WAIT FOR 10000 ps;
	entradas(0) <= '1';
	WAIT FOR 10000 ps;
	entradas(0) <= '0';
	WAIT FOR 10000 ps;
	entradas(0) <= '1';
	WAIT FOR 60000 ps;
	entradas(0) <= '0';
	WAIT FOR 30000 ps;
	entradas(0) <= '1';
	WAIT FOR 10000 ps;
	entradas(0) <= '0';
	WAIT FOR 20000 ps;
	entradas(0) <= '1';
	WAIT FOR 20000 ps;
	entradas(0) <= '0';
	WAIT FOR 20000 ps;
	entradas(0) <= '1';
	WAIT FOR 50000 ps;
	entradas(0) <= '0';
	WAIT FOR 10000 ps;
	entradas(0) <= '1';
	WAIT FOR 20000 ps;
	entradas(0) <= '0';
	WAIT FOR 10000 ps;
	entradas(0) <= '1';
	WAIT FOR 20000 ps;
	entradas(0) <= '0';
	WAIT FOR 20000 ps;
	entradas(0) <= '1';
	WAIT FOR 20000 ps;
	entradas(0) <= '0';
	WAIT FOR 30000 ps;
	entradas(0) <= '1';
	WAIT FOR 60000 ps;
	entradas(0) <= '0';
	WAIT FOR 20000 ps;
	entradas(0) <= '1';
	WAIT FOR 10000 ps;
	entradas(0) <= '0';
	WAIT FOR 10000 ps;
	entradas(0) <= '1';
	WAIT FOR 10000 ps;
	entradas(0) <= '0';
	WAIT FOR 10000 ps;
	entradas(0) <= '1';
	WAIT FOR 10000 ps;
	entradas(0) <= '0';
	WAIT FOR 20000 ps;
	entradas(0) <= '1';
	WAIT FOR 10000 ps;
	entradas(0) <= '0';
	WAIT FOR 10000 ps;
	entradas(0) <= '1';
	WAIT FOR 10000 ps;
	entradas(0) <= '0';
	WAIT FOR 20000 ps;
	entradas(0) <= '1';
	WAIT FOR 20000 ps;
	entradas(0) <= '0';
	WAIT FOR 30000 ps;
	entradas(0) <= '1';
	WAIT FOR 20000 ps;
	entradas(0) <= '0';
	WAIT FOR 20000 ps;
	entradas(0) <= '1';
WAIT;
END PROCESS t_prcs_entradas_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 66
	LOOP
		clk <= '0';
		WAIT FOR 7500 ps;
		clk <= '1';
		WAIT FOR 7500 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 7500 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;
END practica3_arch;
