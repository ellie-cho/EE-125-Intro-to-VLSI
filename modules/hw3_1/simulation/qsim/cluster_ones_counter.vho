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

-- DATE "05/16/2023 16:15:29"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	cluster_ones_counter IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : BUFFER std_logic_vector(3 DOWNTO 0);
	ssd : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END cluster_ones_counter;

-- Design Ports Information
-- y[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cluster_ones_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ssd : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \max~4_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \max~0_combout\ : std_logic;
SIGNAL \max~2_combout\ : std_logic;
SIGNAL \max~1_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \max~3_combout\ : std_logic;
SIGNAL \counter[2]~3_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \counter[1]~4_combout\ : std_logic;
SIGNAL \max~9_combout\ : std_logic;
SIGNAL \max~5_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \max~6_combout\ : std_logic;
SIGNAL \max~7_combout\ : std_logic;
SIGNAL \max~8_combout\ : std_logic;
SIGNAL \counter[3]~6_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_max~9_combout\ : std_logic;
SIGNAL \ALT_INV_max~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_counter[3]~6_combout\ : std_logic;
SIGNAL \ALT_INV_max~7_combout\ : std_logic;
SIGNAL \ALT_INV_max~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ALT_INV_max~5_combout\ : std_logic;
SIGNAL \ALT_INV_max~4_combout\ : std_logic;
SIGNAL \ALT_INV_max~3_combout\ : std_logic;
SIGNAL \ALT_INV_counter~5_combout\ : std_logic;
SIGNAL \ALT_INV_counter[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_counter[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_max~2_combout\ : std_logic;
SIGNAL \ALT_INV_counter~2_combout\ : std_logic;
SIGNAL \ALT_INV_max~1_combout\ : std_logic;
SIGNAL \ALT_INV_max~0_combout\ : std_logic;
SIGNAL \ALT_INV_counter~1_combout\ : std_logic;
SIGNAL \ALT_INV_counter~0_combout\ : std_logic;

BEGIN

ww_x <= x;
y <= ww_y;
ssd <= ww_ssd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_x[7]~input_o\ <= NOT \x[7]~input_o\;
\ALT_INV_x[6]~input_o\ <= NOT \x[6]~input_o\;
\ALT_INV_x[5]~input_o\ <= NOT \x[5]~input_o\;
\ALT_INV_x[4]~input_o\ <= NOT \x[4]~input_o\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_max~9_combout\ <= NOT \max~9_combout\;
\ALT_INV_max~8_combout\ <= NOT \max~8_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_counter[3]~6_combout\ <= NOT \counter[3]~6_combout\;
\ALT_INV_max~7_combout\ <= NOT \max~7_combout\;
\ALT_INV_max~6_combout\ <= NOT \max~6_combout\;
\ALT_INV_LessThan7~1_combout\ <= NOT \LessThan7~1_combout\;
\ALT_INV_max~5_combout\ <= NOT \max~5_combout\;
\ALT_INV_max~4_combout\ <= NOT \max~4_combout\;
\ALT_INV_max~3_combout\ <= NOT \max~3_combout\;
\ALT_INV_counter~5_combout\ <= NOT \counter~5_combout\;
\ALT_INV_counter[1]~4_combout\ <= NOT \counter[1]~4_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_counter[2]~3_combout\ <= NOT \counter[2]~3_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_max~2_combout\ <= NOT \max~2_combout\;
\ALT_INV_counter~2_combout\ <= NOT \counter~2_combout\;
\ALT_INV_max~1_combout\ <= NOT \max~1_combout\;
\ALT_INV_max~0_combout\ <= NOT \max~0_combout\;
\ALT_INV_counter~1_combout\ <= NOT \counter~1_combout\;
\ALT_INV_counter~0_combout\ <= NOT \counter~0_combout\;

-- Location: IOOBUF_X89_Y37_N5
\y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \max~6_combout\,
	devoe => ww_devoe,
	o => ww_y(0));

-- Location: IOOBUF_X89_Y36_N56
\y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \max~7_combout\,
	devoe => ww_devoe,
	o => ww_y(1));

-- Location: IOOBUF_X89_Y36_N39
\y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \max~8_combout\,
	devoe => ww_devoe,
	o => ww_y(2));

-- Location: IOOBUF_X89_Y37_N22
\y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \counter[3]~6_combout\,
	devoe => ww_devoe,
	o => ww_y(3));

-- Location: IOOBUF_X89_Y37_N56
\ssd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(0));

-- Location: IOOBUF_X86_Y81_N2
\ssd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(1));

-- Location: IOOBUF_X89_Y9_N56
\ssd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(2));

-- Location: IOOBUF_X89_Y38_N39
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

-- Location: IOOBUF_X89_Y9_N5
\ssd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(4));

-- Location: IOOBUF_X89_Y36_N22
\ssd[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(5));

-- Location: IOOBUF_X89_Y37_N39
\ssd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd(6));

-- Location: IOIBUF_X89_Y38_N4
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\x[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\x[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\x[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\x[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LABCELL_X88_Y35_N30
\counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = ( \x[6]~input_o\ & ( \x[5]~input_o\ & ( (\x[2]~input_o\ & ((!\x[3]~input_o\) # ((!\x[7]~input_o\ & \x[4]~input_o\)))) ) ) ) # ( !\x[6]~input_o\ & ( \x[5]~input_o\ & ( (\x[2]~input_o\ & !\x[3]~input_o\) ) ) ) # ( \x[6]~input_o\ & ( 
-- !\x[5]~input_o\ & ( (\x[2]~input_o\ & ((!\x[3]~input_o\) # (\x[4]~input_o\))) ) ) ) # ( !\x[6]~input_o\ & ( !\x[5]~input_o\ & ( (\x[2]~input_o\ & ((!\x[3]~input_o\) # (\x[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010101010000010100000101000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2]~input_o\,
	datab => \ALT_INV_x[7]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	datad => \ALT_INV_x[4]~input_o\,
	datae => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \counter~0_combout\);

-- Location: IOIBUF_X89_Y35_N95
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: MLABCELL_X87_Y35_N39
\max~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~4_combout\ = ( \x[1]~input_o\ & ( (\counter~0_combout\ & \x[0]~input_o\) ) ) # ( !\x[1]~input_o\ & ( \x[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter~0_combout\,
	datac => \ALT_INV_x[0]~input_o\,
	dataf => \ALT_INV_x[1]~input_o\,
	combout => \max~4_combout\);

-- Location: LABCELL_X88_Y35_N24
\counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = ( \x[6]~input_o\ & ( \x[5]~input_o\ & ( (\x[2]~input_o\ & (\x[3]~input_o\ & ((!\x[4]~input_o\) # (\x[7]~input_o\)))) ) ) ) # ( !\x[6]~input_o\ & ( \x[5]~input_o\ & ( (\x[2]~input_o\ & (\x[3]~input_o\ & !\x[4]~input_o\)) ) ) ) # ( 
-- \x[6]~input_o\ & ( !\x[5]~input_o\ & ( (\x[2]~input_o\ & \x[3]~input_o\) ) ) ) # ( !\x[6]~input_o\ & ( !\x[5]~input_o\ & ( (\x[2]~input_o\ & \x[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000000000000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2]~input_o\,
	datab => \ALT_INV_x[7]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	datad => \ALT_INV_x[4]~input_o\,
	datae => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \counter~2_combout\);

-- Location: LABCELL_X88_Y35_N36
\counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = ( \x[1]~input_o\ & ( !\counter~0_combout\ $ (!\counter~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter~0_combout\,
	datac => \ALT_INV_counter~2_combout\,
	dataf => \ALT_INV_x[1]~input_o\,
	combout => \counter~5_combout\);

-- Location: LABCELL_X88_Y35_N12
\max~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~0_combout\ = ( \x[6]~input_o\ & ( \x[5]~input_o\ & ( (\x[4]~input_o\ & ((\x[3]~input_o\) # (\x[7]~input_o\))) ) ) ) # ( !\x[6]~input_o\ & ( \x[5]~input_o\ & ( (\x[2]~input_o\ & (\x[3]~input_o\ & \x[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2]~input_o\,
	datab => \ALT_INV_x[7]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	datad => \ALT_INV_x[4]~input_o\,
	datae => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \max~0_combout\);

-- Location: LABCELL_X88_Y35_N0
\max~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~2_combout\ = ( \x[6]~input_o\ & ( \x[5]~input_o\ & ( (\x[4]~input_o\ & ((!\x[7]~input_o\ & ((\x[3]~input_o\))) # (\x[7]~input_o\ & ((!\x[2]~input_o\) # (!\x[3]~input_o\))))) ) ) ) # ( !\x[6]~input_o\ & ( \x[5]~input_o\ & ( !\x[4]~input_o\ $ 
-- (((\x[2]~input_o\ & \x[3]~input_o\))) ) ) ) # ( \x[6]~input_o\ & ( !\x[5]~input_o\ & ( (!\x[7]~input_o\ & ((!\x[3]~input_o\) # ((!\x[2]~input_o\ & !\x[4]~input_o\)))) ) ) ) # ( !\x[6]~input_o\ & ( !\x[5]~input_o\ & ( (!\x[3]~input_o\) # ((!\x[2]~input_o\ 
-- & !\x[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000110010001100000011111010000001010000000000111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2]~input_o\,
	datab => \ALT_INV_x[7]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	datad => \ALT_INV_x[4]~input_o\,
	datae => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \max~2_combout\);

-- Location: LABCELL_X88_Y35_N48
\max~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~1_combout\ = ( \x[6]~input_o\ & ( \x[5]~input_o\ & ( !\x[7]~input_o\ $ (((\x[4]~input_o\ & ((!\x[3]~input_o\) # (\x[2]~input_o\))))) ) ) ) # ( !\x[6]~input_o\ & ( \x[5]~input_o\ & ( (!\x[3]~input_o\ & ((\x[4]~input_o\))) # (\x[3]~input_o\ & 
-- (\x[2]~input_o\)) ) ) ) # ( \x[6]~input_o\ & ( !\x[5]~input_o\ & ( (!\x[3]~input_o\ & (((\x[7]~input_o\)))) # (\x[3]~input_o\ & ((!\x[2]~input_o\ & ((\x[4]~input_o\) # (\x[7]~input_o\))) # (\x[2]~input_o\ & ((!\x[4]~input_o\))))) ) ) ) # ( !\x[6]~input_o\ 
-- & ( !\x[5]~input_o\ & ( (!\x[3]~input_o\ & (!\x[2]~input_o\ & (!\x[7]~input_o\ & !\x[4]~input_o\))) # (\x[3]~input_o\ & (!\x[2]~input_o\ $ (((!\x[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010100001010001101110011101000000101111101011100110000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2]~input_o\,
	datab => \ALT_INV_x[7]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	datad => \ALT_INV_x[4]~input_o\,
	datae => \ALT_INV_x[6]~input_o\,
	dataf => \ALT_INV_x[5]~input_o\,
	combout => \max~1_combout\);

-- Location: LABCELL_X88_Y35_N39
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( \counter~2_combout\ & ( (\x[1]~input_o\ & (!\counter~0_combout\ & ((\max~2_combout\) # (\max~1_combout\)))) ) ) # ( !\counter~2_combout\ & ( (\x[1]~input_o\ & (\max~2_combout\ & ((\max~1_combout\) # (\counter~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_counter~0_combout\,
	datac => \ALT_INV_max~1_combout\,
	datad => \ALT_INV_max~2_combout\,
	dataf => \ALT_INV_counter~2_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X88_Y35_N6
\counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = ( \x[2]~input_o\ & ( \x[4]~input_o\ & ( (\x[1]~input_o\ & \x[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	datae => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_x[4]~input_o\,
	combout => \counter~1_combout\);

-- Location: LABCELL_X88_Y35_N42
\max~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~3_combout\ = ( \counter~1_combout\ & ( (!\max~0_combout\ & (\counter~5_combout\)) # (\max~0_combout\ & ((!\LessThan6~0_combout\ & ((!\max~2_combout\))) # (\LessThan6~0_combout\ & (\counter~5_combout\)))) ) ) # ( !\counter~1_combout\ & ( 
-- (!\max~0_combout\ & ((!\LessThan6~0_combout\ & ((!\max~2_combout\))) # (\LessThan6~0_combout\ & (\counter~5_combout\)))) # (\max~0_combout\ & (((!\max~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001110100111100000111010001110100010101010111010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter~5_combout\,
	datab => \ALT_INV_max~0_combout\,
	datac => \ALT_INV_max~2_combout\,
	datad => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_counter~1_combout\,
	combout => \max~3_combout\);

-- Location: MLABCELL_X87_Y35_N30
\counter[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[2]~3_combout\ = ( \counter~1_combout\ & ( \x[0]~input_o\ & ( (!\x[1]~input_o\) # ((!\counter~2_combout\) # (\counter~0_combout\)) ) ) ) # ( !\counter~1_combout\ & ( \x[0]~input_o\ & ( (\x[1]~input_o\ & (\counter~2_combout\ & 
-- !\counter~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100001110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_counter~2_combout\,
	datac => \ALT_INV_counter~0_combout\,
	datae => \ALT_INV_counter~1_combout\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \counter[2]~3_combout\);

-- Location: MLABCELL_X87_Y35_N36
\LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( \max~0_combout\ & ( !\counter[2]~3_combout\ ) ) # ( !\max~0_combout\ & ( !\counter[2]~3_combout\ $ (!\counter~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter[2]~3_combout\,
	datac => \ALT_INV_counter~1_combout\,
	dataf => \ALT_INV_max~0_combout\,
	combout => \LessThan7~0_combout\);

-- Location: MLABCELL_X87_Y35_N42
\counter[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[1]~4_combout\ = ( \x[0]~input_o\ & ( (!\counter~2_combout\ & \x[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter~2_combout\,
	datac => \ALT_INV_x[1]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \counter[1]~4_combout\);

-- Location: LABCELL_X88_Y35_N54
\max~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~9_combout\ = ( \LessThan6~0_combout\ & ( \counter~1_combout\ & ( (\x[1]~input_o\ & !\counter~0_combout\) ) ) ) # ( !\LessThan6~0_combout\ & ( \counter~1_combout\ & ( (!\max~0_combout\ & (\x[1]~input_o\ & (!\counter~0_combout\))) # (\max~0_combout\ & 
-- (((!\max~1_combout\)))) ) ) ) # ( \LessThan6~0_combout\ & ( !\counter~1_combout\ & ( (!\max~0_combout\ & (\x[1]~input_o\ & (!\counter~0_combout\))) # (\max~0_combout\ & (((!\max~1_combout\)))) ) ) ) # ( !\LessThan6~0_combout\ & ( !\counter~1_combout\ & ( 
-- !\max~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000010001001111000001000100111100000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_counter~0_combout\,
	datac => \ALT_INV_max~1_combout\,
	datad => \ALT_INV_max~0_combout\,
	datae => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_counter~1_combout\,
	combout => \max~9_combout\);

-- Location: LABCELL_X88_Y35_N45
\max~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~5_combout\ = ( \x[3]~input_o\ & ( \x[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_x[2]~input_o\,
	dataf => \ALT_INV_x[3]~input_o\,
	combout => \max~5_combout\);

-- Location: LABCELL_X88_Y35_N18
\LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ( \x[0]~input_o\ & ( \x[4]~input_o\ & ( (\x[1]~input_o\ & (\max~5_combout\ & (\counter~2_combout\ & !\counter~0_combout\))) ) ) ) # ( \x[0]~input_o\ & ( !\x[4]~input_o\ & ( (\x[1]~input_o\ & \max~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_max~5_combout\,
	datac => \ALT_INV_counter~2_combout\,
	datad => \ALT_INV_counter~0_combout\,
	datae => \ALT_INV_x[0]~input_o\,
	dataf => \ALT_INV_x[4]~input_o\,
	combout => \LessThan7~1_combout\);

-- Location: MLABCELL_X87_Y35_N48
\max~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~6_combout\ = ( \max~9_combout\ & ( \LessThan7~1_combout\ & ( \max~4_combout\ ) ) ) # ( !\max~9_combout\ & ( \LessThan7~1_combout\ & ( \max~4_combout\ ) ) ) # ( \max~9_combout\ & ( !\LessThan7~1_combout\ & ( (((!\counter[1]~4_combout\) # 
-- (\LessThan7~0_combout\)) # (\max~3_combout\)) # (\max~4_combout\) ) ) ) # ( !\max~9_combout\ & ( !\LessThan7~1_combout\ & ( (\max~4_combout\ & (!\LessThan7~0_combout\ & ((!\max~3_combout\) # (\counter[1]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010000111111110111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max~4_combout\,
	datab => \ALT_INV_max~3_combout\,
	datac => \ALT_INV_LessThan7~0_combout\,
	datad => \ALT_INV_counter[1]~4_combout\,
	datae => \ALT_INV_max~9_combout\,
	dataf => \ALT_INV_LessThan7~1_combout\,
	combout => \max~6_combout\);

-- Location: MLABCELL_X87_Y35_N24
\max~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~7_combout\ = ( \counter[1]~4_combout\ & ( ((!\LessThan7~0_combout\) # (\max~3_combout\)) # (\LessThan7~1_combout\) ) ) # ( !\counter[1]~4_combout\ & ( (!\LessThan7~1_combout\ & \max~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan7~1_combout\,
	datac => \ALT_INV_LessThan7~0_combout\,
	datad => \ALT_INV_max~3_combout\,
	dataf => \ALT_INV_counter[1]~4_combout\,
	combout => \max~7_combout\);

-- Location: MLABCELL_X87_Y35_N27
\max~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \max~8_combout\ = ( \max~0_combout\ & ( (!\LessThan7~1_combout\) # (\counter[2]~3_combout\) ) ) # ( !\max~0_combout\ & ( (!\LessThan7~1_combout\ & ((\counter~1_combout\))) # (\LessThan7~1_combout\ & (\counter[2]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan7~1_combout\,
	datac => \ALT_INV_counter[2]~3_combout\,
	datad => \ALT_INV_counter~1_combout\,
	dataf => \ALT_INV_max~0_combout\,
	combout => \max~8_combout\);

-- Location: MLABCELL_X87_Y35_N3
\counter[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[3]~6_combout\ = ( \counter~1_combout\ & ( \x[0]~input_o\ & ( (!\counter~0_combout\ & (\counter~2_combout\ & \x[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter~0_combout\,
	datac => \ALT_INV_counter~2_combout\,
	datad => \ALT_INV_x[1]~input_o\,
	datae => \ALT_INV_counter~1_combout\,
	dataf => \ALT_INV_x[0]~input_o\,
	combout => \counter[3]~6_combout\);

-- Location: MLABCELL_X87_Y35_N6
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \max~6_combout\ & ( (!\max~7_combout\ $ (!\max~8_combout\)) # (\counter[3]~6_combout\) ) ) # ( !\max~6_combout\ & ( ((\counter[3]~6_combout\) # (\max~8_combout\)) # (\max~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max~7_combout\,
	datab => \ALT_INV_max~8_combout\,
	datac => \ALT_INV_counter[3]~6_combout\,
	dataf => \ALT_INV_max~6_combout\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X87_Y35_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \max~6_combout\ & ( ((!\max~8_combout\) # (\counter[3]~6_combout\)) # (\max~7_combout\) ) ) # ( !\max~6_combout\ & ( (!\max~8_combout\ & (\max~7_combout\)) # (\max~8_combout\ & ((\counter[3]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max~7_combout\,
	datab => \ALT_INV_max~8_combout\,
	datad => \ALT_INV_counter[3]~6_combout\,
	dataf => \ALT_INV_max~6_combout\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X87_Y35_N12
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \max~6_combout\ ) # ( !\max~6_combout\ & ( (!\max~7_combout\ & (\max~8_combout\)) # (\max~7_combout\ & ((\counter[3]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max~7_combout\,
	datab => \ALT_INV_max~8_combout\,
	datac => \ALT_INV_counter[3]~6_combout\,
	dataf => \ALT_INV_max~6_combout\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X87_Y35_N15
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \max~6_combout\ & ( (!\max~7_combout\ $ (\max~8_combout\)) # (\counter[3]~6_combout\) ) ) # ( !\max~6_combout\ & ( (!\max~7_combout\ & (\max~8_combout\)) # (\max~7_combout\ & ((\counter[3]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011110011001111111111001100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max~7_combout\,
	datab => \ALT_INV_max~8_combout\,
	datad => \ALT_INV_counter[3]~6_combout\,
	dataf => \ALT_INV_max~6_combout\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X87_Y35_N18
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \max~6_combout\ & ( \counter[3]~6_combout\ ) ) # ( !\max~6_combout\ & ( (!\max~8_combout\ & (\max~7_combout\)) # (\max~8_combout\ & ((\counter[3]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_max~8_combout\,
	datac => \ALT_INV_max~7_combout\,
	datad => \ALT_INV_counter[3]~6_combout\,
	dataf => \ALT_INV_max~6_combout\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X87_Y35_N21
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \max~6_combout\ & ( ((!\max~7_combout\ & \max~8_combout\)) # (\counter[3]~6_combout\) ) ) # ( !\max~6_combout\ & ( (!\max~7_combout\ & (\max~8_combout\ & \counter[3]~6_combout\)) # (\max~7_combout\ & ((\counter[3]~6_combout\) # 
-- (\max~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010111111110010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_max~7_combout\,
	datab => \ALT_INV_max~8_combout\,
	datad => \ALT_INV_counter[3]~6_combout\,
	dataf => \ALT_INV_max~6_combout\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X87_Y35_N54
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \counter[3]~6_combout\ & ( \max~6_combout\ ) ) # ( !\counter[3]~6_combout\ & ( \max~6_combout\ & ( (!\max~8_combout\ & !\max~7_combout\) ) ) ) # ( \counter[3]~6_combout\ & ( !\max~6_combout\ & ( (\max~7_combout\) # (\max~8_combout\) ) 
-- ) ) # ( !\counter[3]~6_combout\ & ( !\max~6_combout\ & ( (\max~8_combout\ & !\max~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111111000000110000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_max~8_combout\,
	datac => \ALT_INV_max~7_combout\,
	datae => \ALT_INV_counter[3]~6_combout\,
	dataf => \ALT_INV_max~6_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X40_Y76_N3
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


