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

-- DATE "05/16/2023 14:53:39"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	galois_lsfr IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	outp : OUT std_logic_vector(1 DOWNTO 0)
	);
END galois_lsfr;

-- Design Ports Information
-- outp[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF galois_lsfr IS
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
SIGNAL ww_outp : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \clk_slow~0_combout\ : std_logic;
SIGNAL \clk_slow~q\ : std_logic;
SIGNAL \digit[0]~DUPLICATE_q\ : std_logic;
SIGNAL \digit[7]~10_combout\ : std_logic;
SIGNAL \digit[6]~9_combout\ : std_logic;
SIGNAL \digit~2_combout\ : std_logic;
SIGNAL \digit~1_combout\ : std_logic;
SIGNAL \digit~0_combout\ : std_logic;
SIGNAL \digit[2]~5_combout\ : std_logic;
SIGNAL \digit[1]~4_combout\ : std_logic;
SIGNAL \digit[0]~3_combout\ : std_logic;
SIGNAL \outp~0_combout\ : std_logic;
SIGNAL \outp~1_combout\ : std_logic;
SIGNAL digit : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(4 DOWNTO 0);
SIGNAL ALT_INV_digit : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk_slow~q\ : std_logic;
SIGNAL \ALT_INV_outp~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_digit[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[4]~DUPLICATE_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
outp <= ww_outp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_digit(0) <= NOT digit(0);
\ALT_INV_clk_slow~q\ <= NOT \clk_slow~q\;
\ALT_INV_outp~0_combout\ <= NOT \outp~0_combout\;
ALT_INV_digit(1) <= NOT digit(1);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(4) <= NOT count(4);
ALT_INV_digit(2) <= NOT digit(2);
ALT_INV_digit(3) <= NOT digit(3);
ALT_INV_digit(4) <= NOT digit(4);
ALT_INV_digit(5) <= NOT digit(5);
ALT_INV_digit(6) <= NOT digit(6);
ALT_INV_digit(7) <= NOT digit(7);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_digit[0]~DUPLICATE_q\ <= NOT \digit[0]~DUPLICATE_q\;
\ALT_INV_count[1]~DUPLICATE_q\ <= NOT \count[1]~DUPLICATE_q\;
\ALT_INV_count[2]~DUPLICATE_q\ <= NOT \count[2]~DUPLICATE_q\;
\ALT_INV_count[3]~DUPLICATE_q\ <= NOT \count[3]~DUPLICATE_q\;
\ALT_INV_count[4]~DUPLICATE_q\ <= NOT \count[4]~DUPLICATE_q\;

-- Location: IOOBUF_X54_Y18_N45
\outp[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_outp~0_combout\,
	devoe => ww_devoe,
	o => ww_outp(0));

-- Location: IOOBUF_X54_Y18_N79
\outp[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outp~1_combout\,
	devoe => ww_devoe,
	o => ww_outp(1));

-- Location: IOIBUF_X54_Y18_N61
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

-- Location: IOIBUF_X54_Y18_N95
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X53_Y18_N22
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: FF_X53_Y18_N55
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LABCELL_X53_Y18_N54
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( !count(1) & ( count(0) ) ) # ( count(1) & ( !count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_count(1),
	dataf => ALT_INV_count(0),
	combout => \Add0~0_combout\);

-- Location: FF_X53_Y18_N56
\count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y18_N21
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( count(2) & ( \count[1]~DUPLICATE_q\ & ( !count(0) ) ) ) # ( !count(2) & ( \count[1]~DUPLICATE_q\ & ( count(0) ) ) ) # ( count(2) & ( !\count[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(0),
	datae => ALT_INV_count(2),
	dataf => \ALT_INV_count[1]~DUPLICATE_q\,
	combout => \Add0~1_combout\);

-- Location: FF_X53_Y18_N23
\count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2]~DUPLICATE_q\);

-- Location: FF_X53_Y18_N28
\count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[3]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y18_N30
\count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~2_combout\ = ( \count[3]~DUPLICATE_q\ & ( (!\count[2]~DUPLICATE_q\ & (count(4) & ((count(0)) # (count(1))))) # (\count[2]~DUPLICATE_q\ & (!count(4) $ (((!count(1)) # (!count(0)))))) ) ) # ( !\count[3]~DUPLICATE_q\ & ( count(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001011111100000000101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[2]~DUPLICATE_q\,
	datab => ALT_INV_count(1),
	datac => ALT_INV_count(0),
	datad => ALT_INV_count(4),
	dataf => \ALT_INV_count[3]~DUPLICATE_q\,
	combout => \count~2_combout\);

-- Location: FF_X53_Y18_N31
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LABCELL_X53_Y18_N48
\count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~0_combout\ = ( !count(0) & ( \count[3]~DUPLICATE_q\ & ( (!count(4)) # ((count(1)) # (count(2))) ) ) ) # ( !count(0) & ( !\count[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010111011111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(4),
	datab => ALT_INV_count(2),
	datad => ALT_INV_count(1),
	datae => ALT_INV_count(0),
	dataf => \ALT_INV_count[3]~DUPLICATE_q\,
	combout => \count~0_combout\);

-- Location: FF_X53_Y18_N50
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: FF_X53_Y18_N32
\count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[4]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y18_N27
\count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~1_combout\ = ( count(3) & ( \count[1]~DUPLICATE_q\ & ( (!count(0)) # (!\count[2]~DUPLICATE_q\) ) ) ) # ( !count(3) & ( \count[1]~DUPLICATE_q\ & ( (count(0) & \count[2]~DUPLICATE_q\) ) ) ) # ( count(3) & ( !\count[1]~DUPLICATE_q\ & ( 
-- ((!\count[4]~DUPLICATE_q\) # (\count[2]~DUPLICATE_q\)) # (count(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111111100000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(0),
	datac => \ALT_INV_count[4]~DUPLICATE_q\,
	datad => \ALT_INV_count[2]~DUPLICATE_q\,
	datae => ALT_INV_count(3),
	dataf => \ALT_INV_count[1]~DUPLICATE_q\,
	combout => \count~1_combout\);

-- Location: FF_X53_Y18_N29
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LABCELL_X53_Y18_N15
\clk_slow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_slow~0_combout\ = ( \count[2]~DUPLICATE_q\ & ( count(0) & ( \clk_slow~q\ ) ) ) # ( !\count[2]~DUPLICATE_q\ & ( count(0) & ( \clk_slow~q\ ) ) ) # ( \count[2]~DUPLICATE_q\ & ( !count(0) & ( \clk_slow~q\ ) ) ) # ( !\count[2]~DUPLICATE_q\ & ( !count(0) & 
-- ( !\clk_slow~q\ $ (((!count(3)) # ((!\count[4]~DUPLICATE_q\) # (\count[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => \ALT_INV_clk_slow~q\,
	datac => \ALT_INV_count[4]~DUPLICATE_q\,
	datad => \ALT_INV_count[1]~DUPLICATE_q\,
	datae => \ALT_INV_count[2]~DUPLICATE_q\,
	dataf => ALT_INV_count(0),
	combout => \clk_slow~0_combout\);

-- Location: FF_X53_Y18_N41
clk_slow : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \clk_slow~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_slow~q\);

-- Location: FF_X52_Y18_N37
\digit[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \digit[0]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit[0]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y18_N42
\digit[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit[7]~10_combout\ = ( !\digit[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_digit[0]~DUPLICATE_q\,
	combout => \digit[7]~10_combout\);

-- Location: FF_X52_Y18_N43
\digit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \digit[7]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(7));

-- Location: LABCELL_X52_Y18_N54
\digit[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit[6]~9_combout\ = !digit(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_digit(7),
	combout => \digit[6]~9_combout\);

-- Location: FF_X52_Y18_N55
\digit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \digit[6]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(6));

-- Location: LABCELL_X52_Y18_N39
\digit~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit~2_combout\ = ( \digit[0]~DUPLICATE_q\ & ( digit(6) ) ) # ( !\digit[0]~DUPLICATE_q\ & ( !digit(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_digit(6),
	dataf => \ALT_INV_digit[0]~DUPLICATE_q\,
	combout => \digit~2_combout\);

-- Location: FF_X52_Y18_N40
\digit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \digit~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(5));

-- Location: LABCELL_X52_Y18_N51
\digit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit~1_combout\ = ( digit(5) & ( \digit[0]~DUPLICATE_q\ ) ) # ( !digit(5) & ( !\digit[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_digit[0]~DUPLICATE_q\,
	dataf => ALT_INV_digit(5),
	combout => \digit~1_combout\);

-- Location: FF_X52_Y18_N52
\digit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \digit~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(4));

-- Location: LABCELL_X52_Y18_N48
\digit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit~0_combout\ = ( digit(4) & ( \digit[0]~DUPLICATE_q\ ) ) # ( !digit(4) & ( !\digit[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_digit[0]~DUPLICATE_q\,
	dataf => ALT_INV_digit(4),
	combout => \digit~0_combout\);

-- Location: FF_X52_Y18_N49
\digit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \digit~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(3));

-- Location: LABCELL_X52_Y18_N9
\digit[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit[2]~5_combout\ = !digit(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_digit(3),
	combout => \digit[2]~5_combout\);

-- Location: FF_X52_Y18_N10
\digit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \digit[2]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(2));

-- Location: LABCELL_X52_Y18_N27
\digit[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit[1]~4_combout\ = !digit(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit(2),
	combout => \digit[1]~4_combout\);

-- Location: FF_X52_Y18_N28
\digit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \digit[1]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(1));

-- Location: LABCELL_X52_Y18_N36
\digit[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \digit[0]~3_combout\ = ( !digit(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_digit(1),
	combout => \digit[0]~3_combout\);

-- Location: FF_X52_Y18_N38
\digit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~q\,
	d => \digit[0]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit(0));

-- Location: LABCELL_X53_Y18_N33
\outp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \outp~0_combout\ = ( \clk_slow~q\ & ( digit(0) ) ) # ( !\clk_slow~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit(0),
	dataf => \ALT_INV_clk_slow~q\,
	combout => \outp~0_combout\);

-- Location: LABCELL_X53_Y18_N36
\outp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \outp~1_combout\ = ( digit(0) & ( \clk_slow~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_digit(0),
	dataf => \ALT_INV_clk_slow~q\,
	combout => \outp~1_combout\);

-- Location: MLABCELL_X42_Y9_N0
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


