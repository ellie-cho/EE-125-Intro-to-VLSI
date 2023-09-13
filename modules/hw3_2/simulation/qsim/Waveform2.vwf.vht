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
-- Generated on "05/17/2023 22:47:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pwm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pwm_vhd_vec_tst IS
END pwm_vhd_vec_tst;
ARCHITECTURE pwm_arch OF pwm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL duty : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL pwm_out : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT pwm
	PORT (
	clk : IN STD_LOGIC;
	duty : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	pwm_out : OUT STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pwm
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	duty => duty,
	pwm_out => pwm_out,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 2500000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- duty[2]
t_prcs_duty_2: PROCESS
BEGIN
	duty(2) <= '0';
	WAIT FOR 1120000 ps;
	duty(2) <= '1';
	WAIT FOR 1370000 ps;
	duty(2) <= '0';
WAIT;
END PROCESS t_prcs_duty_2;
-- duty[1]
t_prcs_duty_1: PROCESS
BEGIN
	duty(1) <= '0';
	WAIT FOR 1120000 ps;
	duty(1) <= '1';
	WAIT FOR 1370000 ps;
	duty(1) <= '0';
WAIT;
END PROCESS t_prcs_duty_1;
-- duty[0]
t_prcs_duty_0: PROCESS
BEGIN
	duty(0) <= '0';
	WAIT FOR 540000 ps;
	duty(0) <= '1';
	WAIT FOR 580000 ps;
	duty(0) <= '0';
	WAIT FOR 760000 ps;
	duty(0) <= '1';
	WAIT FOR 610000 ps;
	duty(0) <= '0';
WAIT;
END PROCESS t_prcs_duty_0;
END pwm_arch;
