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
-- Generated on "10/23/2026 11:57:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica6_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica6_2_vhd_vec_tst IS
END practica6_2_vhd_vec_tst;
ARCHITECTURE practica6_2_arch OF practica6_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AUX : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL edo_pr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL entrada_trans : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL INT_COND : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL salidas : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT practica6_2
	PORT (
	AUX : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	edo_pr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	entrada_trans : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	INT_COND : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	salidas : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica6_2
	PORT MAP (
-- list connections between master ports and signals
	AUX => AUX,
	clk => clk,
	edo_pr => edo_pr,
	entrada_trans => entrada_trans,
	INT_COND => INT_COND,
	reset => reset,
	salidas => salidas,
	X => X,
	Y => Y
	);
-- entrada_trans[1]
t_prcs_entrada_trans_1: PROCESS
BEGIN
	entrada_trans(1) <= '0';
	WAIT FOR 30000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 40000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 30000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 30000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 40000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 50000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 30000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 70000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 40000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 30000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 30000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 30000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 20000 ps;
	entrada_trans(1) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(1) <= '0';
	WAIT FOR 30000 ps;
	entrada_trans(1) <= '1';
WAIT;
END PROCESS t_prcs_entrada_trans_1;
-- entrada_trans[0]
t_prcs_entrada_trans_0: PROCESS
BEGIN
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 30000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 40000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 40000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 40000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 80000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 30000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 30000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 30000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 40000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 30000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 40000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 20000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 20000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 60000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 20000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 50000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 20000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 20000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 40000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 10000 ps;
	entrada_trans(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_trans_0;

-- INT_COND
t_prcs_INT_COND: PROCESS
BEGIN
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 20000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 20000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 20000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 20000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 30000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 20000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 20000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 40000 ps;
	INT_COND <= '0';
	WAIT FOR 20000 ps;
	INT_COND <= '1';
	WAIT FOR 40000 ps;
	INT_COND <= '0';
	WAIT FOR 70000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 20000 ps;
	INT_COND <= '1';
	WAIT FOR 20000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 20000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 30000 ps;
	INT_COND <= '0';
	WAIT FOR 20000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 60000 ps;
	INT_COND <= '0';
	WAIT FOR 60000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 10000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 20000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 40000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 20000 ps;
	INT_COND <= '0';
	WAIT FOR 10000 ps;
	INT_COND <= '1';
	WAIT FOR 30000 ps;
	INT_COND <= '0';
	WAIT FOR 20000 ps;
	INT_COND <= '1';
	WAIT FOR 30000 ps;
	INT_COND <= '0';
WAIT;
END PROCESS t_prcs_INT_COND;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
	WAIT FOR 100000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 50000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 30000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 30000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 10000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 60000 ps;
	X <= '0';
	WAIT FOR 40000 ps;
	X <= '1';
	WAIT FOR 30000 ps;
	X <= '0';
	WAIT FOR 30000 ps;
	X <= '1';
	WAIT FOR 50000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 40000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 20000 ps;
	X <= '1';
	WAIT FOR 20000 ps;
	X <= '0';
	WAIT FOR 10000 ps;
	X <= '1';
	WAIT FOR 30000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
	Y <= '1';
	WAIT FOR 10000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 10000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 60000 ps;
	Y <= '0';
	WAIT FOR 30000 ps;
	Y <= '1';
	WAIT FOR 30000 ps;
	Y <= '0';
	WAIT FOR 10000 ps;
	Y <= '1';
	WAIT FOR 10000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 30000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 10000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 10000 ps;
	Y <= '0';
	WAIT FOR 70000 ps;
	Y <= '1';
	WAIT FOR 30000 ps;
	Y <= '0';
	WAIT FOR 30000 ps;
	Y <= '1';
	WAIT FOR 20000 ps;
	Y <= '0';
	WAIT FOR 10000 ps;
	Y <= '1';
	WAIT FOR 10000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 10000 ps;
	Y <= '0';
	WAIT FOR 10000 ps;
	Y <= '1';
	WAIT FOR 30000 ps;
	Y <= '0';
	WAIT FOR 10000 ps;
	Y <= '1';
	WAIT FOR 20000 ps;
	Y <= '0';
	WAIT FOR 10000 ps;
	Y <= '1';
	WAIT FOR 30000 ps;
	Y <= '0';
	WAIT FOR 40000 ps;
	Y <= '1';
	WAIT FOR 40000 ps;
	Y <= '0';
	WAIT FOR 10000 ps;
	Y <= '1';
	WAIT FOR 60000 ps;
	Y <= '0';
	WAIT FOR 10000 ps;
	Y <= '1';
	WAIT FOR 20000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 20000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 10000 ps;
	Y <= '0';
	WAIT FOR 10000 ps;
	Y <= '1';
	WAIT FOR 40000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 20000 ps;
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 10000 ps;
	Y <= '0';
WAIT;
END PROCESS t_prcs_Y;

-- AUX
t_prcs_AUX: PROCESS
BEGIN
	AUX <= '0';
WAIT;
END PROCESS t_prcs_AUX;

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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END practica6_2_arch;
