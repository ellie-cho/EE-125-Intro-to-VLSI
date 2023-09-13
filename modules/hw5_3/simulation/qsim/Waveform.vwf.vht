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
-- Generated on "05/24/2023 01:18:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pulse_conditioner
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pulse_conditioner_vhd_vec_tst IS
END pulse_conditioner_vhd_vec_tst;
ARCHITECTURE pulse_conditioner_arch OF pulse_conditioner_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL pulse_in : STD_LOGIC;
SIGNAL pulse_out : STD_LOGIC;
COMPONENT pulse_conditioner
	PORT (
	clk : IN STD_LOGIC;
	pulse_in : IN STD_LOGIC;
	pulse_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pulse_conditioner
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	pulse_in => pulse_in,
	pulse_out => pulse_out
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500 ps;
	clk <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- pulse_in
t_prcs_pulse_in: PROCESS
BEGIN
LOOP
	pulse_in <= '0';
	WAIT FOR 5000 ps;
	pulse_in <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pulse_in;
END pulse_conditioner_arch;
