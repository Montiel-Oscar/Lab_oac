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
-- Generated on "10/11/2026 11:22:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica6_vhd_vec_tst IS
END practica6_vhd_vec_tst;
ARCHITECTURE practica6_arch OF practica6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CC : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL edo_pr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL i_0 : STD_LOGIC;
SIGNAL i_1 : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT practica6
	PORT (
	CC : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	edo_pr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	i_0 : IN STD_LOGIC;
	i_1 : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica6
	PORT MAP (
-- list connections between master ports and signals
	CC => CC,
	clk => clk,
	edo_pr => edo_pr,
	i_0 => i_0,
	i_1 => i_1,
	rst => rst
	);

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;

-- i_0
t_prcs_i_0: PROCESS
BEGIN
	i_0 <= '1';
	WAIT FOR 40000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 20000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 10000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 10000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 60000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 10000 ps;
	i_0 <= '0';
	WAIT FOR 30000 ps;
	i_0 <= '1';
	WAIT FOR 10000 ps;
	i_0 <= '0';
	WAIT FOR 20000 ps;
	i_0 <= '1';
	WAIT FOR 40000 ps;
	i_0 <= '0';
	WAIT FOR 20000 ps;
	i_0 <= '1';
	WAIT FOR 10000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 10000 ps;
	i_0 <= '0';
	WAIT FOR 40000 ps;
	i_0 <= '1';
	WAIT FOR 20000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 50000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 20000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 10000 ps;
	i_0 <= '0';
	WAIT FOR 20000 ps;
	i_0 <= '1';
	WAIT FOR 40000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 40000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 10000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 20000 ps;
	i_0 <= '0';
	WAIT FOR 60000 ps;
	i_0 <= '1';
	WAIT FOR 30000 ps;
	i_0 <= '0';
	WAIT FOR 20000 ps;
	i_0 <= '1';
	WAIT FOR 10000 ps;
	i_0 <= '0';
	WAIT FOR 20000 ps;
	i_0 <= '1';
	WAIT FOR 30000 ps;
	i_0 <= '0';
	WAIT FOR 20000 ps;
	i_0 <= '1';
	WAIT FOR 20000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
	WAIT FOR 20000 ps;
	i_0 <= '0';
	WAIT FOR 40000 ps;
	i_0 <= '1';
	WAIT FOR 20000 ps;
	i_0 <= '0';
	WAIT FOR 10000 ps;
	i_0 <= '1';
WAIT;
END PROCESS t_prcs_i_0;

-- i_1
t_prcs_i_1: PROCESS
BEGIN
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 30000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 30000 ps;
	i_1 <= '1';
	WAIT FOR 20000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 30000 ps;
	i_1 <= '0';
	WAIT FOR 30000 ps;
	i_1 <= '1';
	WAIT FOR 50000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 30000 ps;
	i_1 <= '0';
	WAIT FOR 20000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 40000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 20000 ps;
	i_1 <= '0';
	WAIT FOR 30000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 20000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 60000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 80000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 30000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 20000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 40000 ps;
	i_1 <= '1';
	WAIT FOR 20000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 20000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
	WAIT FOR 10000 ps;
	i_1 <= '1';
	WAIT FOR 10000 ps;
	i_1 <= '0';
WAIT;
END PROCESS t_prcs_i_1;

-- CC
t_prcs_CC: PROCESS
BEGIN
	CC <= '0';
	WAIT FOR 30000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 30000 ps;
	CC <= '0';
	WAIT FOR 20000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 20000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 30000 ps;
	CC <= '1';
	WAIT FOR 20000 ps;
	CC <= '0';
	WAIT FOR 30000 ps;
	CC <= '1';
	WAIT FOR 50000 ps;
	CC <= '0';
	WAIT FOR 20000 ps;
	CC <= '1';
	WAIT FOR 30000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 60000 ps;
	CC <= '1';
	WAIT FOR 20000 ps;
	CC <= '0';
	WAIT FOR 30000 ps;
	CC <= '1';
	WAIT FOR 20000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 40000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 30000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 30000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 20000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 20000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 30000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 20000 ps;
	CC <= '0';
	WAIT FOR 20000 ps;
	CC <= '1';
	WAIT FOR 20000 ps;
	CC <= '0';
	WAIT FOR 20000 ps;
	CC <= '1';
	WAIT FOR 30000 ps;
	CC <= '0';
	WAIT FOR 20000 ps;
	CC <= '1';
	WAIT FOR 40000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
	WAIT FOR 10000 ps;
	CC <= '0';
	WAIT FOR 10000 ps;
	CC <= '1';
WAIT;
END PROCESS t_prcs_CC;

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
END practica6_arch;
