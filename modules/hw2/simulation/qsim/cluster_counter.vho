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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "05/04/2023 01:59:11"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cluster_counter IS
    PORT (
	x : IN std_logic_vector(0 TO 7);
	y : OUT std_logic_vector(3 DOWNTO 0);
	ssd : OUT std_logic_vector(0 TO 6)
	);
END cluster_counter;

-- Design Ports Information
-- y[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cluster_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(0 TO 7);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ssd : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \internal[7][1]~6_combout\ : std_logic;
SIGNAL \internal[5][0]~0_combout\ : std_logic;
SIGNAL \internal[7][0]~1_combout\ : std_logic;
SIGNAL \max_ones[6][2]~0_combout\ : std_logic;
SIGNAL \max_ones[6][2]~1_combout\ : std_logic;
SIGNAL \internal[6][2]~2_combout\ : std_logic;
SIGNAL \internal[7][3]~7_combout\ : std_logic;
SIGNAL \internal[7][2]~3_combout\ : std_logic;
SIGNAL \max_ones[5][1]~3_combout\ : std_logic;
SIGNAL \max_ones~2_combout\ : std_logic;
SIGNAL \max_ones[6][1]~4_combout\ : std_logic;
SIGNAL \max_ones~8_combout\ : std_logic;
SIGNAL \max_ones[5][0]~5_combout\ : std_logic;
SIGNAL \max_ones[6][0]~6_combout\ : std_logic;
SIGNAL \internal[6][1]~5_combout\ : std_logic;
SIGNAL \max_ones~7_combout\ : std_logic;
SIGNAL \internal[6][0]~4_combout\ : std_logic;
SIGNAL \max_ones~9_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \max_ones[7][0]~10_combout\ : std_logic;
SIGNAL \max_ones[7][1]~11_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \max_ones~14_combout\ : std_logic;
SIGNAL \max_ones~13_combout\ : std_logic;
SIGNAL \max_ones~12_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_internal[5][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_internal[7][0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~0_combout\ : std_logic;
SIGNAL \ALT_INV_internal[6][2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_internal[7][2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones[6][2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones[6][2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_internal[6][0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_internal[6][1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones~2_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones[5][1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones[6][1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones[5][0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones[6][0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones~7_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones~8_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_max_ones[7][0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_max_ones[7][1]~11_combout\ : std_logic;
SIGNAL \ALT_INV_internal[7][1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_internal[7][3]~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_x[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;

BEGIN

ww_x <= x;
y <= ww_y;
ssd <= ww_ssd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_internal[5][0]~0_combout\ <= NOT \internal[5][0]~0_combout\;
\ALT_INV_internal[7][0]~1_combout\ <= NOT \internal[7][0]~1_combout\;
\ALT_INV_Add4~0_combout\ <= NOT \Add4~0_combout\;
\ALT_INV_internal[6][2]~2_combout\ <= NOT \internal[6][2]~2_combout\;
\ALT_INV_internal[7][2]~3_combout\ <= NOT \internal[7][2]~3_combout\;
\ALT_INV_max_ones[6][2]~0_combout\ <= NOT \max_ones[6][2]~0_combout\;
\ALT_INV_max_ones[6][2]~1_combout\ <= NOT \max_ones[6][2]~1_combout\;
\ALT_INV_internal[6][0]~4_combout\ <= NOT \internal[6][0]~4_combout\;
\ALT_INV_internal[6][1]~5_combout\ <= NOT \internal[6][1]~5_combout\;
\ALT_INV_max_ones~2_combout\ <= NOT \max_ones~2_combout\;
\ALT_INV_max_ones[5][1]~3_combout\ <= NOT \max_ones[5][1]~3_combout\;
\ALT_INV_max_ones[6][1]~4_combout\ <= NOT \max_ones[6][1]~4_combout\;
\ALT_INV_max_ones[5][0]~5_combout\ <= NOT \max_ones[5][0]~5_combout\;
\ALT_INV_max_ones[6][0]~6_combout\ <= NOT \max_ones[6][0]~6_combout\;
\ALT_INV_max_ones~7_combout\ <= NOT \max_ones~7_combout\;
\ALT_INV_max_ones~8_combout\ <= NOT \max_ones~8_combout\;
\ALT_INV_max_ones~9_combout\ <= NOT \max_ones~9_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_max_ones[7][0]~10_combout\ <= NOT \max_ones[7][0]~10_combout\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_max_ones[7][1]~11_combout\ <= NOT \max_ones[7][1]~11_combout\;
\ALT_INV_internal[7][1]~6_combout\ <= NOT \internal[7][1]~6_combout\;
\ALT_INV_internal[7][3]~7_combout\ <= NOT \internal[7][3]~7_combout\;
\ALT_INV_LessThan7~1_combout\ <= NOT \LessThan7~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_x[7]~input_o\ <= NOT \x[7]~input_o\;
\ALT_INV_x[6]~input_o\ <= NOT \x[6]~input_o\;
\ALT_INV_x[5]~input_o\ <= NOT \x[5]~input_o\;
\ALT_INV_x[4]~input_o\ <= NOT \x[4]~input_o\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;

-- Location: IOOBUF_X38_Y0_N36
\y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \max_ones~14_combout\,
	devoe => ww_devoe,
	o => ww_y(0));

-- Location: IOOBUF_X36_Y0_N2
\y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \max_ones~13_combout\,
	devoe => ww_devoe,
	o => ww_y(1));

-- Location: IOOBUF_X38_Y0_N2
\y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \max_ones~12_combout\,
	devoe => ww_devoe,
	o => ww_y(2));

-- Location: IOOBUF_X36_Y0_N19
\y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \internal[7][3]~7_combout\,
	devoe => ww_devoe,
	o => ww_y(3));

-- Location: IOOBUF_X46_Y0_N36
\ssd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(6));

-- Location: IOOBUF_X50_Y0_N53
\ssd[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(5));

-- Location: IOOBUF_X48_Y0_N93
\ssd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(4));

-- Location: IOOBUF_X50_Y0_N36
\ssd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(3));

-- Location: IOOBUF_X48_Y0_N76
\ssd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(2));

-- Location: IOOBUF_X51_Y0_N36
\ssd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(1));

-- Location: IOOBUF_X52_Y0_N53
\ssd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(0));

-- Location: IOIBUF_X34_Y0_N35
\x[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\x[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LABCELL_X35_Y1_N15
\Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = ( \x[0]~input_o\ & ( (\x[4]~input_o\ & ((!\x[3]~input_o\) # ((!\x[2]~input_o\) # (\x[1]~input_o\)))) ) ) # ( !\x[0]~input_o\ & ( (\x[4]~input_o\ & ((!\x[3]~input_o\) # (!\x[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001010100010101010101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datab => \ALT_INV_x[3]~input_o\,
	datac => \ALT_INV_x[2]~input_o\,
	datad => \ALT_INV_x[1]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \Add4~0_combout\);

-- Location: IOIBUF_X34_Y0_N52
\x[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\x[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LABCELL_X35_Y1_N21
\internal[7][1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal[7][1]~6_combout\ = ( \x[5]~input_o\ & ( (\x[7]~input_o\ & (!\Add4~0_combout\ & \x[6]~input_o\)) ) ) # ( !\x[5]~input_o\ & ( (\x[7]~input_o\ & \x[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[7]~input_o\,
	datac => \ALT_INV_Add4~0_combout\,
	datad => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \internal[7][1]~6_combout\);

-- Location: LABCELL_X35_Y1_N0
\internal[5][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal[5][0]~0_combout\ = ( \x[2]~input_o\ & ( \x[5]~input_o\ & ( (!\x[4]~input_o\) # ((\x[1]~input_o\ & (!\x[0]~input_o\ & \x[3]~input_o\))) ) ) ) # ( !\x[2]~input_o\ & ( \x[5]~input_o\ & ( (!\x[4]~input_o\) # (\x[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111111010101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datab => \ALT_INV_x[1]~input_o\,
	datac => \ALT_INV_x[0]~input_o\,
	datad => \ALT_INV_x[3]~input_o\,
	datae => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \internal[5][0]~0_combout\);

-- Location: LABCELL_X36_Y1_N30
\internal[7][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal[7][0]~1_combout\ = ( \internal[5][0]~0_combout\ & ( \x[7]~input_o\ ) ) # ( !\internal[5][0]~0_combout\ & ( (\x[7]~input_o\ & !\x[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[7]~input_o\,
	datad => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_internal[5][0]~0_combout\,
	combout => \internal[7][0]~1_combout\);

-- Location: LABCELL_X35_Y1_N6
\max_ones[6][2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones[6][2]~0_combout\ = ( \x[5]~input_o\ & ( (!\x[4]~input_o\ & (((\x[0]~input_o\ & \x[1]~input_o\)))) # (\x[4]~input_o\ & (!\x[6]~input_o\)) ) ) # ( !\x[5]~input_o\ & ( (\x[1]~input_o\ & ((\x[0]~input_o\) # (\x[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111101000100010011100100010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datab => \ALT_INV_x[6]~input_o\,
	datac => \ALT_INV_x[0]~input_o\,
	datad => \ALT_INV_x[1]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \max_ones[6][2]~0_combout\);

-- Location: LABCELL_X35_Y1_N54
\max_ones[6][2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones[6][2]~1_combout\ = ( \x[3]~input_o\ & ( (\max_ones[6][2]~0_combout\ & \x[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_max_ones[6][2]~0_combout\,
	datad => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_x[3]~input_o\,
	combout => \max_ones[6][2]~1_combout\);

-- Location: LABCELL_X35_Y1_N9
\internal[6][2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal[6][2]~2_combout\ = ( \x[5]~input_o\ & ( (\x[4]~input_o\ & (\x[6]~input_o\ & \x[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datab => \ALT_INV_x[6]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \internal[6][2]~2_combout\);

-- Location: LABCELL_X35_Y1_N24
\internal[7][3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal[7][3]~7_combout\ = ( !\internal[5][0]~0_combout\ & ( \x[5]~input_o\ & ( (\x[6]~input_o\ & (\internal[6][2]~2_combout\ & (\x[7]~input_o\ & \Add4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[6]~input_o\,
	datab => \ALT_INV_internal[6][2]~2_combout\,
	datac => \ALT_INV_x[7]~input_o\,
	datad => \ALT_INV_Add4~0_combout\,
	datae => \ALT_INV_internal[5][0]~0_combout\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \internal[7][3]~7_combout\);

-- Location: LABCELL_X35_Y1_N48
\internal[7][2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal[7][2]~3_combout\ = ( \internal[5][0]~0_combout\ & ( \x[5]~input_o\ & ( (\internal[6][2]~2_combout\ & \x[7]~input_o\) ) ) ) # ( !\internal[5][0]~0_combout\ & ( \x[5]~input_o\ & ( (\x[7]~input_o\ & (!\internal[6][2]~2_combout\ $ 
-- (((!\x[6]~input_o\) # (!\Add4~0_combout\))))) ) ) ) # ( \internal[5][0]~0_combout\ & ( !\x[5]~input_o\ & ( (\internal[6][2]~2_combout\ & \x[7]~input_o\) ) ) ) # ( !\internal[5][0]~0_combout\ & ( !\x[5]~input_o\ & ( (\internal[6][2]~2_combout\ & 
-- \x[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000001100000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[6]~input_o\,
	datab => \ALT_INV_internal[6][2]~2_combout\,
	datac => \ALT_INV_x[7]~input_o\,
	datad => \ALT_INV_Add4~0_combout\,
	datae => \ALT_INV_internal[5][0]~0_combout\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \internal[7][2]~3_combout\);

-- Location: LABCELL_X35_Y1_N36
\max_ones[5][1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones[5][1]~3_combout\ = ( \x[2]~input_o\ & ( \x[5]~input_o\ & ( (!\x[3]~input_o\ & (((\x[1]~input_o\)))) # (\x[3]~input_o\ & (!\x[4]~input_o\ & ((!\x[1]~input_o\) # (!\x[0]~input_o\)))) ) ) ) # ( !\x[2]~input_o\ & ( \x[5]~input_o\ & ( (\x[1]~input_o\ 
-- & \x[0]~input_o\) ) ) ) # ( \x[2]~input_o\ & ( !\x[5]~input_o\ & ( (!\x[1]~input_o\ & (((\x[3]~input_o\)))) # (\x[1]~input_o\ & ((!\x[3]~input_o\) # ((!\x[4]~input_o\ & !\x[0]~input_o\)))) ) ) ) # ( !\x[2]~input_o\ & ( !\x[5]~input_o\ & ( (!\x[4]~input_o\ 
-- & (\x[1]~input_o\ & (\x[0]~input_o\))) # (\x[4]~input_o\ & (((\x[1]~input_o\ & \x[0]~input_o\)) # (\x[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111001100111110110000000011000000110011001110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datab => \ALT_INV_x[1]~input_o\,
	datac => \ALT_INV_x[0]~input_o\,
	datad => \ALT_INV_x[3]~input_o\,
	datae => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \max_ones[5][1]~3_combout\);

-- Location: LABCELL_X35_Y1_N12
\max_ones~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones~2_combout\ = ( \x[0]~input_o\ & ( (\x[4]~input_o\ & ((!\x[1]~input_o\) # (\x[3]~input_o\))) ) ) # ( !\x[0]~input_o\ & ( (!\x[4]~input_o\ & (!\x[3]~input_o\ & (!\x[1]~input_o\ & !\x[2]~input_o\))) # (\x[4]~input_o\ & (((!\x[1]~input_o\) # 
-- (!\x[2]~input_o\)) # (\x[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101010001110101010101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datab => \ALT_INV_x[3]~input_o\,
	datac => \ALT_INV_x[1]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \max_ones~2_combout\);

-- Location: MLABCELL_X34_Y1_N0
\max_ones[6][1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones[6][1]~4_combout\ = ( \x[6]~input_o\ & ( \x[5]~input_o\ & ( \max_ones[5][1]~3_combout\ ) ) ) # ( !\x[6]~input_o\ & ( \x[5]~input_o\ & ( (!\max_ones~2_combout\ & (\max_ones[5][1]~3_combout\)) # (\max_ones~2_combout\ & ((\Add4~0_combout\))) ) ) ) # 
-- ( \x[6]~input_o\ & ( !\x[5]~input_o\ & ( \max_ones[5][1]~3_combout\ ) ) ) # ( !\x[6]~input_o\ & ( !\x[5]~input_o\ & ( \max_ones[5][1]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_max_ones[5][1]~3_combout\,
	datac => \ALT_INV_Add4~0_combout\,
	datad => \ALT_INV_max_ones~2_combout\,
	datae => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \max_ones[6][1]~4_combout\);

-- Location: LABCELL_X35_Y1_N18
\max_ones~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones~8_combout\ = ( \max_ones[6][2]~0_combout\ & ( (!\x[7]~input_o\ & (!\internal[6][2]~2_combout\ $ (((\x[3]~input_o\ & \x[2]~input_o\))))) ) ) # ( !\max_ones[6][2]~0_combout\ & ( (!\x[7]~input_o\ & !\internal[6][2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000100000101010000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[7]~input_o\,
	datab => \ALT_INV_x[3]~input_o\,
	datac => \ALT_INV_internal[6][2]~2_combout\,
	datad => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_max_ones[6][2]~0_combout\,
	combout => \max_ones~8_combout\);

-- Location: LABCELL_X35_Y1_N42
\max_ones[5][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones[5][0]~5_combout\ = ( \x[2]~input_o\ & ( \x[5]~input_o\ & ( (!\x[4]~input_o\ & (!\x[3]~input_o\ $ (((!\x[1]~input_o\) # (\x[0]~input_o\))))) # (\x[4]~input_o\ & (!\x[0]~input_o\ & ((\x[3]~input_o\) # (\x[1]~input_o\)))) ) ) ) # ( !\x[2]~input_o\ 
-- & ( \x[5]~input_o\ & ( (!\x[1]~input_o\ & (!\x[0]~input_o\ & ((!\x[3]~input_o\) # (\x[4]~input_o\)))) # (\x[1]~input_o\ & (((\x[0]~input_o\)))) ) ) ) # ( \x[2]~input_o\ & ( !\x[5]~input_o\ & ( (!\x[4]~input_o\ & (!\x[3]~input_o\ $ (((!\x[1]~input_o\) # 
-- (\x[0]~input_o\))))) # (\x[4]~input_o\ & (\x[1]~input_o\ & (!\x[0]~input_o\))) ) ) ) # ( !\x[2]~input_o\ & ( !\x[5]~input_o\ & ( (!\x[4]~input_o\ & ((!\x[1]~input_o\ & (!\x[0]~input_o\ & !\x[3]~input_o\)) # (\x[1]~input_o\ & (\x[0]~input_o\)))) # 
-- (\x[4]~input_o\ & (((\x[1]~input_o\ & \x[0]~input_o\)) # (\x[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001101010111001100001001101011000011010000110011000011011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[4]~input_o\,
	datab => \ALT_INV_x[1]~input_o\,
	datac => \ALT_INV_x[0]~input_o\,
	datad => \ALT_INV_x[3]~input_o\,
	datae => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \max_ones[5][0]~5_combout\);

-- Location: LABCELL_X35_Y1_N30
\max_ones[6][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones[6][0]~6_combout\ = ( \max_ones[5][0]~5_combout\ & ( (\internal[5][0]~0_combout\ & (!\x[6]~input_o\ & (\x[5]~input_o\ & \max_ones~2_combout\))) ) ) # ( !\max_ones[5][0]~5_combout\ & ( (((!\x[5]~input_o\) # (!\max_ones~2_combout\)) # 
-- (\x[6]~input_o\)) # (\internal[5][0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111011100000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[5][0]~0_combout\,
	datab => \ALT_INV_x[6]~input_o\,
	datac => \ALT_INV_x[5]~input_o\,
	datad => \ALT_INV_max_ones~2_combout\,
	dataf => \ALT_INV_max_ones[5][0]~5_combout\,
	combout => \max_ones[6][0]~6_combout\);

-- Location: LABCELL_X35_Y1_N33
\internal[6][1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal[6][1]~5_combout\ = ( \x[5]~input_o\ & ( (\x[6]~input_o\ & (!\internal[5][0]~0_combout\ $ (!\Add4~0_combout\))) ) ) # ( !\x[5]~input_o\ & ( (\internal[5][0]~0_combout\ & \x[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[5][0]~0_combout\,
	datab => \ALT_INV_x[6]~input_o\,
	datac => \ALT_INV_Add4~0_combout\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \internal[6][1]~5_combout\);

-- Location: LABCELL_X35_Y1_N57
\max_ones~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones~7_combout\ = ( \internal[6][2]~2_combout\ & ( (!\x[7]~input_o\ & ((!\max_ones[6][2]~0_combout\) # ((!\x[3]~input_o\) # (!\x[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[7]~input_o\,
	datab => \ALT_INV_max_ones[6][2]~0_combout\,
	datac => \ALT_INV_x[3]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_internal[6][2]~2_combout\,
	combout => \max_ones~7_combout\);

-- Location: LABCELL_X36_Y1_N9
\internal[6][0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal[6][0]~4_combout\ = ( !\internal[5][0]~0_combout\ & ( \x[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_internal[5][0]~0_combout\,
	combout => \internal[6][0]~4_combout\);

-- Location: LABCELL_X36_Y1_N12
\max_ones~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones~9_combout\ = ( !\max_ones~7_combout\ & ( \internal[6][0]~4_combout\ & ( (!\max_ones~8_combout\) # ((!\max_ones[6][1]~4_combout\ & (\max_ones[6][0]~6_combout\ & !\internal[6][1]~5_combout\)) # (\max_ones[6][1]~4_combout\ & 
-- ((!\internal[6][1]~5_combout\) # (\max_ones[6][0]~6_combout\)))) ) ) ) # ( !\max_ones~7_combout\ & ( !\internal[6][0]~4_combout\ & ( ((!\max_ones~8_combout\) # (!\internal[6][1]~5_combout\)) # (\max_ones[6][1]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011101000000000000000011011111110011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max_ones[6][1]~4_combout\,
	datab => \ALT_INV_max_ones~8_combout\,
	datac => \ALT_INV_max_ones[6][0]~6_combout\,
	datad => \ALT_INV_internal[6][1]~5_combout\,
	datae => \ALT_INV_max_ones~7_combout\,
	dataf => \ALT_INV_internal[6][0]~4_combout\,
	combout => \max_ones~9_combout\);

-- Location: LABCELL_X36_Y1_N33
\LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ( \max_ones~9_combout\ & ( (!\internal[7][3]~7_combout\ & ((!\internal[7][2]~3_combout\) # (\max_ones[6][2]~1_combout\))) ) ) # ( !\max_ones~9_combout\ & ( (!\internal[7][3]~7_combout\ & ((!\internal[7][2]~3_combout\) # 
-- (\internal[6][2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max_ones[6][2]~1_combout\,
	datab => \ALT_INV_internal[6][2]~2_combout\,
	datac => \ALT_INV_internal[7][3]~7_combout\,
	datad => \ALT_INV_internal[7][2]~3_combout\,
	dataf => \ALT_INV_max_ones~9_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LABCELL_X36_Y1_N24
\max_ones[7][0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones[7][0]~10_combout\ = ( !\max_ones~7_combout\ & ( \internal[6][0]~4_combout\ & ( (!\max_ones[6][0]~6_combout\ & ((!\max_ones~8_combout\) # ((\max_ones[6][1]~4_combout\ & !\internal[6][1]~5_combout\)))) ) ) ) # ( \max_ones~7_combout\ & ( 
-- !\internal[6][0]~4_combout\ ) ) # ( !\max_ones~7_combout\ & ( !\internal[6][0]~4_combout\ & ( (!\max_ones[6][0]~6_combout\) # ((!\max_ones[6][1]~4_combout\ & (\max_ones~8_combout\ & \internal[6][1]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110010111111111111111111010000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max_ones[6][1]~4_combout\,
	datab => \ALT_INV_max_ones~8_combout\,
	datac => \ALT_INV_max_ones[6][0]~6_combout\,
	datad => \ALT_INV_internal[6][1]~5_combout\,
	datae => \ALT_INV_max_ones~7_combout\,
	dataf => \ALT_INV_internal[6][0]~4_combout\,
	combout => \max_ones[7][0]~10_combout\);

-- Location: LABCELL_X36_Y1_N3
\max_ones[7][1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones[7][1]~11_combout\ = ( \max_ones~8_combout\ & ( (!\internal[6][1]~5_combout\ & ((!\max_ones[6][1]~4_combout\) # (\max_ones~7_combout\))) ) ) # ( !\max_ones~8_combout\ & ( (!\max_ones~7_combout\ & ((!\max_ones[6][1]~4_combout\))) # 
-- (\max_ones~7_combout\ & (!\internal[6][1]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000001100111111000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_internal[6][1]~5_combout\,
	datac => \ALT_INV_max_ones~7_combout\,
	datad => \ALT_INV_max_ones[6][1]~4_combout\,
	dataf => \ALT_INV_max_ones~8_combout\,
	combout => \max_ones[7][1]~11_combout\);

-- Location: LABCELL_X36_Y1_N48
\LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( \max_ones~9_combout\ & ( !\internal[7][2]~3_combout\ $ (!\max_ones[6][2]~1_combout\) ) ) # ( !\max_ones~9_combout\ & ( !\internal[7][2]~3_combout\ $ (!\internal[6][2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_internal[7][2]~3_combout\,
	datac => \ALT_INV_max_ones[6][2]~1_combout\,
	datad => \ALT_INV_internal[6][2]~2_combout\,
	dataf => \ALT_INV_max_ones~9_combout\,
	combout => \LessThan7~0_combout\);

-- Location: LABCELL_X36_Y1_N54
\max_ones~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones~14_combout\ = ( \max_ones[7][1]~11_combout\ & ( \LessThan7~0_combout\ & ( (!\LessThan7~1_combout\ & (\internal[7][0]~1_combout\)) # (\LessThan7~1_combout\ & ((!\max_ones[7][0]~10_combout\))) ) ) ) # ( !\max_ones[7][1]~11_combout\ & ( 
-- \LessThan7~0_combout\ & ( (!\LessThan7~1_combout\ & (\internal[7][0]~1_combout\)) # (\LessThan7~1_combout\ & ((!\max_ones[7][0]~10_combout\))) ) ) ) # ( \max_ones[7][1]~11_combout\ & ( !\LessThan7~0_combout\ & ( ((!\internal[7][1]~6_combout\ & 
-- (\LessThan7~1_combout\ & !\max_ones[7][0]~10_combout\))) # (\internal[7][0]~1_combout\) ) ) ) # ( !\max_ones[7][1]~11_combout\ & ( !\LessThan7~0_combout\ & ( (!\LessThan7~1_combout\ & (((\internal[7][0]~1_combout\)))) # (\LessThan7~1_combout\ & 
-- ((!\max_ones[7][0]~10_combout\) # ((\internal[7][1]~6_combout\ & \internal[7][0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110001001110110011001100111111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[7][1]~6_combout\,
	datab => \ALT_INV_internal[7][0]~1_combout\,
	datac => \ALT_INV_LessThan7~1_combout\,
	datad => \ALT_INV_max_ones[7][0]~10_combout\,
	datae => \ALT_INV_max_ones[7][1]~11_combout\,
	dataf => \ALT_INV_LessThan7~0_combout\,
	combout => \max_ones~14_combout\);

-- Location: LABCELL_X36_Y1_N0
\max_ones~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones~13_combout\ = ( \LessThan7~0_combout\ & ( (!\LessThan7~1_combout\ & (\internal[7][1]~6_combout\)) # (\LessThan7~1_combout\ & ((!\max_ones[7][1]~11_combout\))) ) ) # ( !\LessThan7~0_combout\ & ( ((\LessThan7~1_combout\ & 
-- !\max_ones[7][1]~11_combout\)) # (\internal[7][1]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010101011111010100000101111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[7][1]~6_combout\,
	datac => \ALT_INV_LessThan7~1_combout\,
	datad => \ALT_INV_max_ones[7][1]~11_combout\,
	dataf => \ALT_INV_LessThan7~0_combout\,
	combout => \max_ones~13_combout\);

-- Location: LABCELL_X36_Y1_N6
\max_ones~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \max_ones~12_combout\ = ( \max_ones~9_combout\ & ( ((\max_ones[6][2]~1_combout\ & !\internal[7][3]~7_combout\)) # (\internal[7][2]~3_combout\) ) ) # ( !\max_ones~9_combout\ & ( ((!\internal[7][3]~7_combout\ & \internal[6][2]~2_combout\)) # 
-- (\internal[7][2]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max_ones[6][2]~1_combout\,
	datab => \ALT_INV_internal[7][3]~7_combout\,
	datac => \ALT_INV_internal[6][2]~2_combout\,
	datad => \ALT_INV_internal[7][2]~3_combout\,
	dataf => \ALT_INV_max_ones~9_combout\,
	combout => \max_ones~12_combout\);

-- Location: LABCELL_X36_Y1_N36
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \internal[7][0]~1_combout\ & ( (!\internal[7][1]~6_combout\ $ (!\internal[7][2]~3_combout\)) # (\internal[7][3]~7_combout\) ) ) # ( !\internal[7][0]~1_combout\ & ( ((\internal[7][2]~3_combout\) # (\internal[7][3]~7_combout\)) # 
-- (\internal[7][1]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111101110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[7][1]~6_combout\,
	datab => \ALT_INV_internal[7][3]~7_combout\,
	datad => \ALT_INV_internal[7][2]~3_combout\,
	dataf => \ALT_INV_internal[7][0]~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X36_Y1_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \internal[7][0]~1_combout\ & ( ((!\internal[7][2]~3_combout\) # (\internal[7][3]~7_combout\)) # (\internal[7][1]~6_combout\) ) ) # ( !\internal[7][0]~1_combout\ & ( (!\internal[7][2]~3_combout\ & (\internal[7][1]~6_combout\)) # 
-- (\internal[7][2]~3_combout\ & ((\internal[7][3]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[7][1]~6_combout\,
	datab => \ALT_INV_internal[7][3]~7_combout\,
	datac => \ALT_INV_internal[7][2]~3_combout\,
	dataf => \ALT_INV_internal[7][0]~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X36_Y1_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \internal[7][0]~1_combout\ ) # ( !\internal[7][0]~1_combout\ & ( (!\internal[7][1]~6_combout\ & ((\internal[7][2]~3_combout\))) # (\internal[7][1]~6_combout\ & (\internal[7][3]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[7][1]~6_combout\,
	datab => \ALT_INV_internal[7][3]~7_combout\,
	datad => \ALT_INV_internal[7][2]~3_combout\,
	dataf => \ALT_INV_internal[7][0]~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X36_Y1_N45
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \internal[7][0]~1_combout\ & ( (!\internal[7][1]~6_combout\ $ (\internal[7][2]~3_combout\)) # (\internal[7][3]~7_combout\) ) ) # ( !\internal[7][0]~1_combout\ & ( (!\internal[7][1]~6_combout\ & ((\internal[7][2]~3_combout\))) # 
-- (\internal[7][1]~6_combout\ & (\internal[7][3]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111010111111010111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[7][1]~6_combout\,
	datac => \ALT_INV_internal[7][3]~7_combout\,
	datad => \ALT_INV_internal[7][2]~3_combout\,
	dataf => \ALT_INV_internal[7][0]~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X36_Y1_N18
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \internal[7][0]~1_combout\ & ( \internal[7][3]~7_combout\ ) ) # ( !\internal[7][0]~1_combout\ & ( (!\internal[7][2]~3_combout\ & (\internal[7][1]~6_combout\)) # (\internal[7][2]~3_combout\ & ((\internal[7][3]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[7][1]~6_combout\,
	datab => \ALT_INV_internal[7][3]~7_combout\,
	datad => \ALT_INV_internal[7][2]~3_combout\,
	dataf => \ALT_INV_internal[7][0]~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X36_Y1_N21
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \internal[7][0]~1_combout\ & ( ((!\internal[7][1]~6_combout\ & \internal[7][2]~3_combout\)) # (\internal[7][3]~7_combout\) ) ) # ( !\internal[7][0]~1_combout\ & ( (!\internal[7][1]~6_combout\ & (\internal[7][3]~7_combout\ & 
-- \internal[7][2]~3_combout\)) # (\internal[7][1]~6_combout\ & ((\internal[7][2]~3_combout\) # (\internal[7][3]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[7][1]~6_combout\,
	datab => \ALT_INV_internal[7][3]~7_combout\,
	datac => \ALT_INV_internal[7][2]~3_combout\,
	dataf => \ALT_INV_internal[7][0]~1_combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X36_Y1_N51
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \internal[7][0]~1_combout\ & ( ((!\internal[7][2]~3_combout\ & !\internal[7][1]~6_combout\)) # (\internal[7][3]~7_combout\) ) ) # ( !\internal[7][0]~1_combout\ & ( (!\internal[7][1]~6_combout\ & (\internal[7][2]~3_combout\)) # 
-- (\internal[7][1]~6_combout\ & ((\internal[7][3]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111111001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_internal[7][2]~3_combout\,
	datac => \ALT_INV_internal[7][3]~7_combout\,
	datad => \ALT_INV_internal[7][1]~6_combout\,
	dataf => \ALT_INV_internal[7][0]~1_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X53_Y27_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


