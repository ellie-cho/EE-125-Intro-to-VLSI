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
-- Generated on "05/17/2023 14:30:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          timer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY timer_vhd_vec_tst IS
END timer_vhd_vec_tst;
ARCHITECTURE timer_arch OF timer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_in : STD_LOGIC;
SIGNAL clk_slow : STD_LOGIC;
SIGNAL counter : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL ssd0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssd1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT timer
	PORT (
	clk_in : IN STD_LOGIC;
	clk_slow : BUFFER STD_LOGIC;
	counter : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	rst : IN STD_LOGIC;
	ssd0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssd1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : timer
	PORT MAP (
-- list connections between master ports and signals
	clk_in => clk_in,
	clk_slow => clk_slow,
	counter => counter,
	rst => rst,
	ssd0 => ssd0,
	ssd1 => ssd1
	);

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
	WAIT FOR 2040000 ps;
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- clk_in
t_prcs_clk_in: PROCESS
BEGIN
LOOP
	clk_in <= '0';
	WAIT FOR 500 ps;
	clk_in <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 2500000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_in;
END timer_arch;
