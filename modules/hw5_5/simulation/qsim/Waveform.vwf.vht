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
-- Generated on "05/27/2023 18:52:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ssd_fun
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ssd_fun_vhd_vec_tst IS
END ssd_fun_vhd_vec_tst;
ARCHITECTURE ssd_fun_arch OF ssd_fun_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dir_btn : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL speed_btn : STD_LOGIC;
SIGNAL ssd : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL start_btn : STD_LOGIC;
COMPONENT ssd_fun
	PORT (
	clk : IN STD_LOGIC;
	dir_btn : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	speed_btn : IN STD_LOGIC;
	ssd : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	start_btn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ssd_fun
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dir_btn => dir_btn,
	rst => rst,
	speed_btn => speed_btn,
	ssd => ssd,
	start_btn => start_btn
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- dir_btn
t_prcs_dir_btn: PROCESS
BEGIN
	dir_btn <= '0';
	WAIT FOR 240000 ps;
	dir_btn <= '1';
	WAIT FOR 10000 ps;
	dir_btn <= '0';
	WAIT FOR 360000 ps;
	dir_btn <= '1';
	WAIT FOR 10000 ps;
	dir_btn <= '0';
WAIT;
END PROCESS t_prcs_dir_btn;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 30000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- speed_btn
t_prcs_speed_btn: PROCESS
BEGIN
	speed_btn <= '0';
WAIT;
END PROCESS t_prcs_speed_btn;

-- start_btn
t_prcs_start_btn: PROCESS
BEGIN
	start_btn <= '0';
WAIT;
END PROCESS t_prcs_start_btn;
END ssd_fun_arch;
