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

-- DATE "05/17/2023 22:47:52"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	duty : IN std_logic_vector(2 DOWNTO 0);
	pwm_out : OUT std_logic
	);
END pwm;

-- Design Ports Information
-- pwm_out	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_duty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \count[0]~2_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \count[1]~0_combout\ : std_logic;
SIGNAL \clk_slow~0_combout\ : std_logic;
SIGNAL \clk_slow~feeder_combout\ : std_logic;
SIGNAL \clk_slow~q\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \duty[1]~input_o\ : std_logic;
SIGNAL \duty[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \duty[2]~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter[0]~feeder_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \counter[2]~feeder_combout\ : std_logic;
SIGNAL \pwm_out~2_combout\ : std_logic;
SIGNAL \pwm_out~1_combout\ : std_logic;
SIGNAL \pwm_out~0_combout\ : std_logic;
SIGNAL \pwm_out~reg0feeder_combout\ : std_logic;
SIGNAL \pwm_out~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(2 DOWNTO 0);
SIGNAL count : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_duty[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \ALT_INV_pwm_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_clk_slow~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_counter~2_combout\ : std_logic;
SIGNAL \ALT_INV_counter~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk_slow~q\ : std_logic;
SIGNAL \ALT_INV_pwm_out~0_combout\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_pwm_out~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_duty <= duty;
pwm_out <= ww_pwm_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_duty[0]~input_o\ <= NOT \duty[0]~input_o\;
\ALT_INV_duty[1]~input_o\ <= NOT \duty[1]~input_o\;
\ALT_INV_duty[2]~input_o\ <= NOT \duty[2]~input_o\;
\ALT_INV_pwm_out~2_combout\ <= NOT \pwm_out~2_combout\;
\ALT_INV_pwm_out~1_combout\ <= NOT \pwm_out~1_combout\;
\ALT_INV_clk_slow~0_combout\ <= NOT \clk_slow~0_combout\;
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_count(1) <= NOT count(1);
\ALT_INV_counter~2_combout\ <= NOT \counter~2_combout\;
\ALT_INV_counter~0_combout\ <= NOT \counter~0_combout\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\ALT_INV_clk_slow~q\ <= NOT \clk_slow~q\;
\ALT_INV_pwm_out~0_combout\ <= NOT \pwm_out~0_combout\;
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(2) <= NOT counter(2);
\ALT_INV_pwm_out~reg0_q\ <= NOT \pwm_out~reg0_q\;

-- Location: IOOBUF_X89_Y37_N22
\pwm_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_out~reg0_q\,
	devoe => ww_devoe,
	o => ww_pwm_out);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y35_N54
\count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~2_combout\ = ( !count(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_count(0),
	combout => \count[0]~2_combout\);

-- Location: FF_X88_Y35_N56
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LABCELL_X88_Y35_N0
\count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~1_combout\ = ( !count(2) & ( count(0) & ( count(1) ) ) ) # ( count(2) & ( !count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(1),
	datae => ALT_INV_count(2),
	dataf => ALT_INV_count(0),
	combout => \count~1_combout\);

-- Location: FF_X88_Y35_N2
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LABCELL_X88_Y35_N9
\count[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[1]~0_combout\ = ( count(1) & ( count(2) & ( !count(0) ) ) ) # ( count(1) & ( !count(2) & ( !count(0) ) ) ) # ( !count(1) & ( !count(2) & ( count(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(0),
	datae => ALT_INV_count(1),
	dataf => ALT_INV_count(2),
	combout => \count[1]~0_combout\);

-- Location: FF_X88_Y35_N11
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LABCELL_X88_Y35_N15
\clk_slow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_slow~0_combout\ = ( count(0) & ( \clk_slow~q\ & ( (!count(2)) # (count(1)) ) ) ) # ( !count(0) & ( \clk_slow~q\ ) ) # ( !count(0) & ( !\clk_slow~q\ & ( (!count(1) & count(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000011111111111111111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(2),
	datae => ALT_INV_count(0),
	dataf => \ALT_INV_clk_slow~q\,
	combout => \clk_slow~0_combout\);

-- Location: LABCELL_X88_Y35_N24
\clk_slow~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_slow~feeder_combout\ = ( \clk_slow~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_clk_slow~0_combout\,
	combout => \clk_slow~feeder_combout\);

-- Location: FF_X88_Y35_N26
clk_slow : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clk_slow~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_slow~q\);

-- Location: MLABCELL_X87_Y35_N9
\counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = ( counter(2) & ( counter(0) & ( !counter(1) ) ) ) # ( !counter(2) & ( counter(0) & ( !counter(1) ) ) ) # ( !counter(2) & ( !counter(0) & ( counter(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	datae => ALT_INV_counter(2),
	dataf => ALT_INV_counter(0),
	combout => \counter~1_combout\);

-- Location: IOIBUF_X89_Y35_N44
\duty[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(1),
	o => \duty[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\duty[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(0),
	o => \duty[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\duty[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(2),
	o => \duty[2]~input_o\);

-- Location: MLABCELL_X87_Y35_N57
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ((!\duty[1]~input_o\ & (!\duty[0]~input_o\ & !\duty[2]~input_o\))) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100001111100011110000111110001111000011111000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[1]~input_o\,
	datab => \ALT_INV_duty[0]~input_o\,
	datac => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_duty[2]~input_o\,
	combout => \process_1~0_combout\);

-- Location: FF_X87_Y35_N56
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	asdata => \counter~1_combout\,
	sload => VCC,
	ena => \ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: MLABCELL_X87_Y35_N45
\counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = ( !counter(2) & ( counter(1) & ( !counter(0) ) ) ) # ( counter(2) & ( !counter(1) & ( !counter(0) ) ) ) # ( !counter(2) & ( !counter(1) & ( !counter(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	datae => ALT_INV_counter(2),
	dataf => ALT_INV_counter(1),
	combout => \counter~2_combout\);

-- Location: MLABCELL_X87_Y35_N18
\counter[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[0]~feeder_combout\ = ( \counter~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_counter~2_combout\,
	combout => \counter[0]~feeder_combout\);

-- Location: FF_X87_Y35_N20
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \counter[0]~feeder_combout\,
	ena => \ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: MLABCELL_X87_Y35_N48
\counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = ( !counter(2) & ( counter(1) & ( counter(0) ) ) ) # ( counter(2) & ( !counter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(0),
	datae => ALT_INV_counter(2),
	dataf => ALT_INV_counter(1),
	combout => \counter~0_combout\);

-- Location: MLABCELL_X87_Y35_N0
\counter[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[2]~feeder_combout\ = ( \counter~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_counter~0_combout\,
	combout => \counter[2]~feeder_combout\);

-- Location: FF_X87_Y35_N2
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \counter[2]~feeder_combout\,
	ena => \ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: MLABCELL_X87_Y35_N54
\pwm_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_out~2_combout\ = (!\duty[1]~input_o\ & !\duty[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[1]~input_o\,
	datac => \ALT_INV_duty[2]~input_o\,
	combout => \pwm_out~2_combout\);

-- Location: MLABCELL_X87_Y35_N33
\pwm_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_out~1_combout\ = ( counter(2) & ( counter(0) & ( (\duty[1]~input_o\ & (\duty[2]~input_o\ & (\duty[0]~input_o\ & !counter(1)))) ) ) ) # ( !counter(2) & ( counter(0) & ( (!\duty[1]~input_o\ & (\duty[2]~input_o\ & ((!counter(1)) # (\duty[0]~input_o\)))) 
-- # (\duty[1]~input_o\ & (((\duty[0]~input_o\ & !counter(1))) # (\duty[2]~input_o\))) ) ) ) # ( counter(2) & ( !counter(0) & ( ((\duty[1]~input_o\ & \duty[2]~input_o\)) # (counter(1)) ) ) ) # ( !counter(2) & ( !counter(0) & ( (!counter(1)) # 
-- (\duty[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011000100011111111100110111000100110000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_duty[1]~input_o\,
	datab => \ALT_INV_duty[2]~input_o\,
	datac => \ALT_INV_duty[0]~input_o\,
	datad => ALT_INV_counter(1),
	datae => ALT_INV_counter(2),
	dataf => ALT_INV_counter(0),
	combout => \pwm_out~1_combout\);

-- Location: MLABCELL_X87_Y35_N39
\pwm_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_out~0_combout\ = ( counter(1) & ( \pwm_out~1_combout\ & ( ((counter(2) & !\pwm_out~2_combout\)) # (\pwm_out~reg0_q\) ) ) ) # ( !counter(1) & ( \pwm_out~1_combout\ & ( ((!counter(2) & !counter(0))) # (\pwm_out~reg0_q\) ) ) ) # ( !counter(1) & ( 
-- !\pwm_out~1_combout\ & ( (!counter(2) & (!\pwm_out~reg0_q\ & !counter(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000010101111000011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(2),
	datab => \ALT_INV_pwm_out~2_combout\,
	datac => \ALT_INV_pwm_out~reg0_q\,
	datad => ALT_INV_counter(0),
	datae => ALT_INV_counter(1),
	dataf => \ALT_INV_pwm_out~1_combout\,
	combout => \pwm_out~0_combout\);

-- Location: MLABCELL_X87_Y35_N12
\pwm_out~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_out~reg0feeder_combout\ = ( \pwm_out~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pwm_out~0_combout\,
	combout => \pwm_out~reg0feeder_combout\);

-- Location: FF_X87_Y35_N14
\pwm_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \pwm_out~reg0feeder_combout\,
	clrn => \ALT_INV_process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_out~reg0_q\);

-- Location: LABCELL_X61_Y26_N3
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


