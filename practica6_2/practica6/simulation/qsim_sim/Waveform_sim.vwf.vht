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
-- Generated on "10/19/2026 10:26:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          practica6_sim
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY practica6_sim_vhd_vec_tst IS
END practica6_sim_vhd_vec_tst;
ARCHITECTURE practica6_sim_arch OF practica6_sim_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL boton : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL edo_pr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL entrada_int_RI : STD_LOGIC;
SIGNAL entrada_trans : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL salidas : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT practica6_sim
	PORT (
	boton : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	edo_pr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	entrada_int_RI : IN STD_LOGIC;
	entrada_trans : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rst : IN STD_LOGIC;
	salidas : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : practica6_sim
	PORT MAP (
-- list connections between master ports and signals
	boton => boton,
	clk => clk,
	edo_pr => edo_pr,
	entrada_int_RI => entrada_int_RI,
	entrada_trans => entrada_trans,
	rst => rst,
	salidas => salidas,
	X => X,
	Y => Y
	);

-- entrada_int_RI
t_prcs_entrada_int_RI: PROCESS
BEGIN
	entrada_int_RI <= '0';
WAIT;
END PROCESS t_prcs_entrada_int_RI;
-- entrada_trans[1]
t_prcs_entrada_trans_1: PROCESS
BEGIN
	entrada_trans(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_trans_1;
-- entrada_trans[0]
t_prcs_entrada_trans_0: PROCESS
BEGIN
	entrada_trans(0) <= '0';
	WAIT FOR 1600000 ps;
	entrada_trans(0) <= '1';
	WAIT FOR 700000 ps;
	entrada_trans(0) <= '0';
	WAIT FOR 700000 ps;
	entrada_trans(0) <= '1';
WAIT;
END PROCESS t_prcs_entrada_trans_0;

-- boton
t_prcs_boton: PROCESS
BEGIN
	boton <= '1';
	WAIT FOR 100000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
	WAIT FOR 130000 ps;
	boton <= '0';
	WAIT FOR 100000 ps;
	boton <= '1';
WAIT;
END PROCESS t_prcs_boton;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 40000 ps;
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '1';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
	Y <= '0';
	WAIT FOR 2050000 ps;
	Y <= '1';
WAIT;
END PROCESS t_prcs_Y;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 3600000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END practica6_sim_arch;
