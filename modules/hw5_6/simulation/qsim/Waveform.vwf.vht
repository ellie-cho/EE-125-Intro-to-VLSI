-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/28/2023 04:05:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          double_trigger_one_shot
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY double_trigger_one_shot_vhd_vec_tst IS
END double_trigger_one_shot_vhd_vec_tst;
ARCHITECTURE double_trigger_one_shot_arch OF double_trigger_one_shot_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL x1 : STD_LOGIC;
SIGNAL x2 : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT double_trigger_one_shot
	PORT (
	clk : IN STD_LOGIC;
	x1 : IN STD_LOGIC;
	x2 : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : double_trigger_one_shot
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	x1 => x1,
	x2 => x2,
	y => y
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 117
	LOOP
		clk <= '0';
		WAIT FOR 2000 ps;
		clk <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- x1
t_prcs_x1: PROCESS
BEGIN
	x1 <= '0';
	WAIT FOR 10000 ps;
	x1 <= '1';
	WAIT FOR 20000 ps;
	x1 <= '0';
	WAIT FOR 20000 ps;
	x1 <= '1';
	WAIT FOR 20000 ps;
	x1 <= '0';
	WAIT FOR 10000 ps;
	x1 <= '1';
	WAIT FOR 10000 ps;
	x1 <= '0';
	WAIT FOR 20000 ps;
	x1 <= '1';
	WAIT FOR 20000 ps;
	x1 <= '0';
	WAIT FOR 10000 ps;
	x1 <= '1';
	WAIT FOR 10000 ps;
	x1 <= '0';
	WAIT FOR 20000 ps;
	x1 <= '1';
	WAIT FOR 30000 ps;
	x1 <= '0';
WAIT;
END PROCESS t_prcs_x1;

-- x2
t_prcs_x2: PROCESS
BEGIN
	x2 <= '0';
	WAIT FOR 10000 ps;
	x2 <= '1';
	WAIT FOR 30000 ps;
	x2 <= '0';
	WAIT FOR 20000 ps;
	x2 <= '1';
	WAIT FOR 10000 ps;
	x2 <= '0';
	WAIT FOR 10000 ps;
	x2 <= '1';
	WAIT FOR 10000 ps;
	x2 <= '0';
	WAIT FOR 10000 ps;
	x2 <= '1';
	WAIT FOR 30000 ps;
	x2 <= '0';
	WAIT FOR 30000 ps;
	x2 <= '1';
	WAIT FOR 20000 ps;
	x2 <= '0';
	WAIT FOR 10000 ps;
	x2 <= '1';
	WAIT FOR 30000 ps;
	x2 <= '0';
WAIT;
END PROCESS t_prcs_x2;
END double_trigger_one_shot_arch;
