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
-- Generated on "05/24/2023 15:20:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          frequency_meter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY frequency_meter_vhd_vec_tst IS
END frequency_meter_vhd_vec_tst;
ARCHITECTURE frequency_meter_arch OF frequency_meter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL o_flow : STD_LOGIC;
SIGNAL ssd0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssd1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssd2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssd3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL x : STD_LOGIC;
COMPONENT frequency_meter
	PORT (
	clk : IN STD_LOGIC;
	o_flow : OUT STD_LOGIC;
	ssd0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssd1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssd2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssd3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	x : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : frequency_meter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	o_flow => o_flow,
	ssd0 => ssd0,
	ssd1 => ssd1,
	ssd2 => ssd2,
	ssd3 => ssd3,
	x => x
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

-- x
t_prcs_x: PROCESS
BEGIN
LOOP
	x <= '0';
	WAIT FOR 10000 ps;
	x <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_x;
END frequency_meter_arch;
