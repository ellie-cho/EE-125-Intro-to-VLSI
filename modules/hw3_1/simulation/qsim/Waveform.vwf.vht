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
-- Generated on "05/16/2023 16:15:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cluster_ones_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cluster_ones_counter_vhd_vec_tst IS
END cluster_ones_counter_vhd_vec_tst;
ARCHITECTURE cluster_ones_counter_arch OF cluster_ones_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ssd : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT cluster_ones_counter
	PORT (
	ssd : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	y : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cluster_ones_counter
	PORT MAP (
-- list connections between master ports and signals
	ssd => ssd,
	x => x,
	y => y
	);
-- x[7]
t_prcs_x_7: PROCESS
BEGIN
	x(7) <= '1';
	WAIT FOR 100000 ps;
	x(7) <= '0';
	WAIT FOR 100000 ps;
	x(7) <= '1';
WAIT;
END PROCESS t_prcs_x_7;
-- x[6]
t_prcs_x_6: PROCESS
BEGIN
	x(6) <= '1';
	WAIT FOR 100000 ps;
	x(6) <= '0';
	WAIT FOR 200000 ps;
	x(6) <= '1';
WAIT;
END PROCESS t_prcs_x_6;
-- x[5]
t_prcs_x_5: PROCESS
BEGIN
	x(5) <= '0';
	WAIT FOR 200000 ps;
	x(5) <= '1';
WAIT;
END PROCESS t_prcs_x_5;
-- x[4]
t_prcs_x_4: PROCESS
BEGIN
	x(4) <= '0';
	WAIT FOR 200000 ps;
	x(4) <= '1';
WAIT;
END PROCESS t_prcs_x_4;
-- x[3]
t_prcs_x_3: PROCESS
BEGIN
	x(3) <= '1';
	WAIT FOR 100000 ps;
	x(3) <= '0';
	WAIT FOR 100000 ps;
	x(3) <= '1';
WAIT;
END PROCESS t_prcs_x_3;
-- x[2]
t_prcs_x_2: PROCESS
BEGIN
	x(2) <= '1';
WAIT;
END PROCESS t_prcs_x_2;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
	x(1) <= '1';
	WAIT FOR 100000 ps;
	x(1) <= '0';
	WAIT FOR 100000 ps;
	x(1) <= '1';
WAIT;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
	x(0) <= '0';
	WAIT FOR 100000 ps;
	x(0) <= '1';
WAIT;
END PROCESS t_prcs_x_0;
END cluster_ones_counter_arch;
