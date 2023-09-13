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

-- DATE "05/24/2023 15:20:12"

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

ENTITY 	frequency_meter IS
    PORT (
	x : IN std_logic;
	clk : IN std_logic;
	ssd3 : OUT std_logic_vector(6 DOWNTO 0);
	ssd2 : OUT std_logic_vector(6 DOWNTO 0);
	ssd1 : OUT std_logic_vector(6 DOWNTO 0);
	ssd0 : OUT std_logic_vector(6 DOWNTO 0);
	o_flow : OUT std_logic
	);
END frequency_meter;

-- Design Ports Information
-- ssd3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_flow	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF frequency_meter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ssd3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_flow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \clock_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \clock_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \clock_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \clock_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \clock_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \clock_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \write_clear~0_combout\ : std_logic;
SIGNAL \write_clear~q\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \pulse_cond|q0~feeder_combout\ : std_logic;
SIGNAL \pulse_cond|q0~q\ : std_logic;
SIGNAL \pulse_cond|q1~q\ : std_logic;
SIGNAL \pulse_cond|q2~q\ : std_logic;
SIGNAL \pulse_count0~4_combout\ : std_logic;
SIGNAL \pulse_count1~0_combout\ : std_logic;
SIGNAL \pulse_cond|q2~DUPLICATE_q\ : std_logic;
SIGNAL \pulse_count1[3]~1_combout\ : std_logic;
SIGNAL \pulse_count1~4_combout\ : std_logic;
SIGNAL \pulse_count1~2_combout\ : std_logic;
SIGNAL \pulse_count1~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \ena2~0_combout\ : std_logic;
SIGNAL \ena2~q\ : std_logic;
SIGNAL \pulse_count0[3]~1_combout\ : std_logic;
SIGNAL \pulse_count0~0_combout\ : std_logic;
SIGNAL \pulse_count0~2_combout\ : std_logic;
SIGNAL \pulse_count0~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ena1~0_combout\ : std_logic;
SIGNAL \ena1~q\ : std_logic;
SIGNAL \ena3~q\ : std_logic;
SIGNAL \ena3~0_combout\ : std_logic;
SIGNAL \pulse_count2[0]~0_combout\ : std_logic;
SIGNAL \pulse_count2[0]~2_combout\ : std_logic;
SIGNAL \pulse_count2~6_combout\ : std_logic;
SIGNAL \pulse_count2[3]~7_combout\ : std_logic;
SIGNAL \pulse_count2~1_combout\ : std_logic;
SIGNAL \pulse_count2[2]~3_combout\ : std_logic;
SIGNAL \pulse_count2[1]~4_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \pulse_count2[2]~5_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \ena3~1_combout\ : std_logic;
SIGNAL \ena3~DUPLICATE_q\ : std_logic;
SIGNAL \pulse_count3~0_combout\ : std_logic;
SIGNAL \pulse_count3[3]~1_combout\ : std_logic;
SIGNAL \pulse_count3~2_combout\ : std_logic;
SIGNAL \pulse_count3~3_combout\ : std_logic;
SIGNAL \pulse_count3~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \fx[5]~feeder_combout\ : std_logic;
SIGNAL \fx[4]~feeder_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \fx[2]~feeder_combout\ : std_logic;
SIGNAL \fx[3]~feeder_combout\ : std_logic;
SIGNAL \fx[0]~feeder_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \o_flow~0_combout\ : std_logic;
SIGNAL \o_flow~reg0_q\ : std_logic;
SIGNAL clock_count : std_logic_vector(15 DOWNTO 0);
SIGNAL fx : std_logic_vector(15 DOWNTO 0);
SIGNAL pulse_count3 : std_logic_vector(3 DOWNTO 0);
SIGNAL pulse_count2 : std_logic_vector(3 DOWNTO 0);
SIGNAL pulse_count1 : std_logic_vector(3 DOWNTO 0);
SIGNAL pulse_count0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_clock_count : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_pulse_count2[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_pulse_count2[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_pulse_count2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_ena3~q\ : std_logic;
SIGNAL \ALT_INV_ena3~0_combout\ : std_logic;
SIGNAL \pulse_cond|ALT_INV_q1~q\ : std_logic;
SIGNAL \pulse_cond|ALT_INV_q2~q\ : std_logic;
SIGNAL \ALT_INV_ena1~q\ : std_logic;
SIGNAL \ALT_INV_ena2~q\ : std_logic;
SIGNAL ALT_INV_pulse_count0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_pulse_count1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_pulse_count2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_pulse_count3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_write_clear~q\ : std_logic;
SIGNAL \ALT_INV_o_flow~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL ALT_INV_fx : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ena3~DUPLICATE_q\ : std_logic;
SIGNAL \pulse_cond|ALT_INV_q2~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_pulse_count2~6_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_clk <= clk;
ssd3 <= ww_ssd3;
ssd2 <= ww_ssd2;
ssd1 <= ww_ssd1;
ssd0 <= ww_ssd0;
o_flow <= ww_o_flow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_clock_count(12) <= NOT clock_count(12);
ALT_INV_clock_count(0) <= NOT clock_count(0);
ALT_INV_clock_count(1) <= NOT clock_count(1);
ALT_INV_clock_count(2) <= NOT clock_count(2);
ALT_INV_clock_count(3) <= NOT clock_count(3);
ALT_INV_clock_count(5) <= NOT clock_count(5);
ALT_INV_clock_count(7) <= NOT clock_count(7);
ALT_INV_clock_count(10) <= NOT clock_count(10);
ALT_INV_clock_count(11) <= NOT clock_count(11);
ALT_INV_clock_count(15) <= NOT clock_count(15);
\ALT_INV_pulse_count2[2]~3_combout\ <= NOT \pulse_count2[2]~3_combout\;
\ALT_INV_pulse_count2[0]~2_combout\ <= NOT \pulse_count2[0]~2_combout\;
\ALT_INV_pulse_count2~1_combout\ <= NOT \pulse_count2~1_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_ena3~q\ <= NOT \ena3~q\;
\ALT_INV_ena3~0_combout\ <= NOT \ena3~0_combout\;
\pulse_cond|ALT_INV_q1~q\ <= NOT \pulse_cond|q1~q\;
\pulse_cond|ALT_INV_q2~q\ <= NOT \pulse_cond|q2~q\;
\ALT_INV_ena1~q\ <= NOT \ena1~q\;
\ALT_INV_ena2~q\ <= NOT \ena2~q\;
ALT_INV_pulse_count0(3) <= NOT pulse_count0(3);
ALT_INV_pulse_count0(2) <= NOT pulse_count0(2);
ALT_INV_pulse_count0(1) <= NOT pulse_count0(1);
ALT_INV_pulse_count0(0) <= NOT pulse_count0(0);
ALT_INV_pulse_count1(3) <= NOT pulse_count1(3);
ALT_INV_pulse_count1(2) <= NOT pulse_count1(2);
ALT_INV_pulse_count1(1) <= NOT pulse_count1(1);
ALT_INV_pulse_count1(0) <= NOT pulse_count1(0);
ALT_INV_pulse_count2(3) <= NOT pulse_count2(3);
ALT_INV_pulse_count2(2) <= NOT pulse_count2(2);
ALT_INV_pulse_count2(1) <= NOT pulse_count2(1);
ALT_INV_pulse_count2(0) <= NOT pulse_count2(0);
ALT_INV_pulse_count3(3) <= NOT pulse_count3(3);
ALT_INV_pulse_count3(2) <= NOT pulse_count3(2);
ALT_INV_pulse_count3(1) <= NOT pulse_count3(1);
\ALT_INV_write_clear~q\ <= NOT \write_clear~q\;
ALT_INV_pulse_count3(0) <= NOT pulse_count3(0);
\ALT_INV_o_flow~reg0_q\ <= NOT \o_flow~reg0_q\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
ALT_INV_fx(3) <= NOT fx(3);
ALT_INV_fx(2) <= NOT fx(2);
ALT_INV_fx(1) <= NOT fx(1);
ALT_INV_fx(0) <= NOT fx(0);
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
ALT_INV_fx(7) <= NOT fx(7);
ALT_INV_fx(6) <= NOT fx(6);
ALT_INV_fx(5) <= NOT fx(5);
ALT_INV_fx(4) <= NOT fx(4);
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
ALT_INV_fx(11) <= NOT fx(11);
ALT_INV_fx(10) <= NOT fx(10);
ALT_INV_fx(9) <= NOT fx(9);
ALT_INV_fx(8) <= NOT fx(8);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_fx(15) <= NOT fx(15);
ALT_INV_fx(14) <= NOT fx(14);
ALT_INV_fx(13) <= NOT fx(13);
ALT_INV_fx(12) <= NOT fx(12);
ALT_INV_clock_count(14) <= NOT clock_count(14);
ALT_INV_clock_count(4) <= NOT clock_count(4);
ALT_INV_clock_count(6) <= NOT clock_count(6);
ALT_INV_clock_count(8) <= NOT clock_count(8);
ALT_INV_clock_count(9) <= NOT clock_count(9);
ALT_INV_clock_count(13) <= NOT clock_count(13);
\ALT_INV_ena3~DUPLICATE_q\ <= NOT \ena3~DUPLICATE_q\;
\pulse_cond|ALT_INV_q2~DUPLICATE_q\ <= NOT \pulse_cond|q2~DUPLICATE_q\;
\ALT_INV_clock_count[14]~DUPLICATE_q\ <= NOT \clock_count[14]~DUPLICATE_q\;
\ALT_INV_clock_count[4]~DUPLICATE_q\ <= NOT \clock_count[4]~DUPLICATE_q\;
\ALT_INV_clock_count[2]~DUPLICATE_q\ <= NOT \clock_count[2]~DUPLICATE_q\;
\ALT_INV_clock_count[5]~DUPLICATE_q\ <= NOT \clock_count[5]~DUPLICATE_q\;
\ALT_INV_clock_count[7]~DUPLICATE_q\ <= NOT \clock_count[7]~DUPLICATE_q\;
\ALT_INV_clock_count[10]~DUPLICATE_q\ <= NOT \clock_count[10]~DUPLICATE_q\;
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_pulse_count2~6_combout\ <= NOT \pulse_count2~6_combout\;
\ALT_INV_Add3~0_combout\ <= NOT \Add3~0_combout\;

-- Location: IOOBUF_X40_Y0_N59
\ssd3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd3(0));

-- Location: IOOBUF_X46_Y0_N2
\ssd3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd3(1));

-- Location: IOOBUF_X40_Y0_N42
\ssd3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd3(2));

-- Location: IOOBUF_X46_Y0_N19
\ssd3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd3(3));

-- Location: IOOBUF_X52_Y0_N2
\ssd3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd3(4));

-- Location: IOOBUF_X51_Y0_N2
\ssd3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd3(5));

-- Location: IOOBUF_X51_Y0_N19
\ssd3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd3(6));

-- Location: IOOBUF_X48_Y0_N42
\ssd2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd2(0));

-- Location: IOOBUF_X38_Y0_N53
\ssd2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd2(1));

-- Location: IOOBUF_X22_Y0_N53
\ssd2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd2(2));

-- Location: IOOBUF_X36_Y0_N19
\ssd2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd2(3));

-- Location: IOOBUF_X38_Y0_N19
\ssd2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd2(4));

-- Location: IOOBUF_X46_Y0_N53
\ssd2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd2(5));

-- Location: IOOBUF_X40_Y0_N76
\ssd2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd2(6));

-- Location: IOOBUF_X44_Y0_N36
\ssd1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(0));

-- Location: IOOBUF_X40_Y0_N93
\ssd1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(1));

-- Location: IOOBUF_X44_Y0_N53
\ssd1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(2));

-- Location: IOOBUF_X43_Y0_N36
\ssd1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(3));

-- Location: IOOBUF_X38_Y0_N36
\ssd1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(4));

-- Location: IOOBUF_X43_Y0_N53
\ssd1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(5));

-- Location: IOOBUF_X51_Y0_N53
\ssd1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(6));

-- Location: IOOBUF_X52_Y0_N53
\ssd0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(0));

-- Location: IOOBUF_X51_Y0_N36
\ssd0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(1));

-- Location: IOOBUF_X48_Y0_N76
\ssd0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(2));

-- Location: IOOBUF_X50_Y0_N36
\ssd0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(3));

-- Location: IOOBUF_X48_Y0_N93
\ssd0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(4));

-- Location: IOOBUF_X50_Y0_N53
\ssd0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(5));

-- Location: IOOBUF_X46_Y0_N36
\ssd0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(6));

-- Location: IOOBUF_X0_Y18_N79
\o_flow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_flow~reg0_q\,
	devoe => ww_devoe,
	o => ww_o_flow);

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: LABCELL_X50_Y2_N0
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( clock_count(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~34\ = CARRY(( clock_count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_count(0),
	cin => GND,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X50_Y2_N51
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !clock_count(1) & ( (!clock_count(12) & (!clock_count(13) & !clock_count(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clock_count(12),
	datac => ALT_INV_clock_count(13),
	datad => ALT_INV_clock_count(0),
	dataf => ALT_INV_clock_count(1),
	combout => \Equal0~1_combout\);

-- Location: FF_X50_Y2_N44
\clock_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(14));

-- Location: FF_X50_Y2_N13
\clock_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(4));

-- Location: LABCELL_X50_Y2_N57
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( clock_count(8) & ( (clock_count(6) & (clock_count(14) & (clock_count(4) & clock_count(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clock_count(6),
	datab => ALT_INV_clock_count(14),
	datac => ALT_INV_clock_count(4),
	datad => ALT_INV_clock_count(9),
	dataf => ALT_INV_clock_count(8),
	combout => \Equal0~2_combout\);

-- Location: FF_X50_Y2_N22
\clock_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(7));

-- Location: FF_X50_Y2_N16
\clock_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(5));

-- Location: FF_X50_Y2_N8
\clock_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(2));

-- Location: FF_X50_Y2_N32
\clock_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(10));

-- Location: MLABCELL_X49_Y2_N45
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !clock_count(2) & ( !clock_count(10) & ( (!clock_count(11) & (!clock_count(7) & (!clock_count(5) & !clock_count(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clock_count(11),
	datab => ALT_INV_clock_count(7),
	datac => ALT_INV_clock_count(5),
	datad => ALT_INV_clock_count(3),
	datae => ALT_INV_clock_count(2),
	dataf => ALT_INV_clock_count(10),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X50_Y2_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~0_combout\ & ( (clock_count(15) & (\Equal0~1_combout\ & \Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clock_count(15),
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: FF_X50_Y2_N2
\clock_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(0));

-- Location: LABCELL_X50_Y2_N3
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( clock_count(1) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( clock_count(1) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_count(1),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X50_Y2_N5
\clock_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(1));

-- Location: LABCELL_X50_Y2_N6
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \clock_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( \clock_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clock_count[2]~DUPLICATE_q\,
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X50_Y2_N7
\clock_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_count[2]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y2_N9
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( clock_count(3) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( clock_count(3) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clock_count(3),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X50_Y2_N11
\clock_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(3));

-- Location: LABCELL_X50_Y2_N12
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \clock_count[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~58\ = CARRY(( \clock_count[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clock_count[4]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X50_Y2_N14
\clock_count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_count[4]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y2_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \clock_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~18\ = CARRY(( \clock_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clock_count[5]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X50_Y2_N17
\clock_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_count[5]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y2_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( clock_count(6) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~54\ = CARRY(( clock_count(6) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clock_count(6),
	cin => \Add0~18\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X50_Y2_N20
\clock_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(6));

-- Location: LABCELL_X50_Y2_N21
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \clock_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~14\ = CARRY(( \clock_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clock_count[7]~DUPLICATE_q\,
	cin => \Add0~54\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X50_Y2_N23
\clock_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_count[7]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y2_N24
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( clock_count(8) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~50\ = CARRY(( clock_count(8) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clock_count(8),
	cin => \Add0~14\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X50_Y2_N26
\clock_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(8));

-- Location: LABCELL_X50_Y2_N27
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( clock_count(9) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( clock_count(9) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_count(9),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X50_Y2_N29
\clock_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(9));

-- Location: LABCELL_X50_Y2_N30
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \clock_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~10\ = CARRY(( \clock_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clock_count[10]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X50_Y2_N31
\clock_count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_count[10]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y2_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( clock_count(11) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( clock_count(11) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clock_count(11),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X50_Y2_N35
\clock_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(11));

-- Location: LABCELL_X50_Y2_N36
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( clock_count(12) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~38\ = CARRY(( clock_count(12) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_count(12),
	cin => \Add0~6\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X50_Y2_N38
\clock_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(12));

-- Location: LABCELL_X50_Y2_N39
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( clock_count(13) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( clock_count(13) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clock_count(13),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X50_Y2_N41
\clock_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(13));

-- Location: LABCELL_X50_Y2_N42
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \clock_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~62\ = CARRY(( \clock_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clock_count[14]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X50_Y2_N43
\clock_count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_count[14]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y2_N45
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( clock_count(15) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clock_count(15),
	cin => \Add0~62\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X50_Y2_N47
\clock_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_count(15));

-- Location: LABCELL_X50_Y2_N54
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !clock_count(4) & ( (!clock_count(6) & (!clock_count(14) & (!clock_count(8) & !clock_count(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clock_count(6),
	datab => ALT_INV_clock_count(14),
	datac => ALT_INV_clock_count(8),
	datad => ALT_INV_clock_count(9),
	dataf => ALT_INV_clock_count(4),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X49_Y2_N51
\write_clear~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \write_clear~0_combout\ = ( \Equal1~0_combout\ & ( \write_clear~q\ & ( ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (clock_count(15)) ) ) ) # ( !\Equal1~0_combout\ & ( \write_clear~q\ ) ) # ( \Equal1~0_combout\ & ( !\write_clear~q\ & ( 
-- (clock_count(15) & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\))) ) ) ) # ( !\Equal1~0_combout\ & ( !\write_clear~q\ & ( (clock_count(15) & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000111111111111111111111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clock_count(15),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_write_clear~q\,
	combout => \write_clear~0_combout\);

-- Location: FF_X49_Y2_N23
write_clear : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \write_clear~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_clear~q\);

-- Location: IOIBUF_X10_Y0_N92
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: MLABCELL_X42_Y2_N51
\pulse_cond|q0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_cond|q0~feeder_combout\ = ( \x~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x~input_o\,
	combout => \pulse_cond|q0~feeder_combout\);

-- Location: FF_X42_Y2_N52
\pulse_cond|q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_cond|q0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_cond|q0~q\);

-- Location: FF_X48_Y2_N26
\pulse_cond|q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pulse_cond|q0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_cond|q1~q\);

-- Location: FF_X48_Y2_N7
\pulse_cond|q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pulse_cond|q1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_cond|q2~q\);

-- Location: MLABCELL_X49_Y1_N36
\pulse_count0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count0~4_combout\ = ( pulse_count0(3) & ( pulse_count0(1) & ( (!\pulse_cond|q2~q\ & (\pulse_cond|q1~q\ & (!pulse_count0(2) $ (!pulse_count0(0))))) ) ) ) # ( !pulse_count0(3) & ( pulse_count0(1) & ( (!\pulse_cond|q2~q\ & (pulse_count0(2) & 
-- (\pulse_cond|q1~q\ & pulse_count0(0)))) ) ) ) # ( pulse_count0(3) & ( !pulse_count0(1) & ( (!\pulse_cond|q2~q\ & \pulse_cond|q1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000100000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cond|ALT_INV_q2~q\,
	datab => ALT_INV_pulse_count0(2),
	datac => \pulse_cond|ALT_INV_q1~q\,
	datad => ALT_INV_pulse_count0(0),
	datae => ALT_INV_pulse_count0(3),
	dataf => ALT_INV_pulse_count0(1),
	combout => \pulse_count0~4_combout\);

-- Location: LABCELL_X48_Y2_N39
\pulse_count1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count1~0_combout\ = ( \ena1~q\ & ( (!pulse_count1(0) & ((!pulse_count1(3)) # ((!pulse_count1(1)) # (pulse_count1(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101000101010101010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count1(0),
	datab => ALT_INV_pulse_count1(3),
	datac => ALT_INV_pulse_count1(1),
	datad => ALT_INV_pulse_count1(2),
	dataf => \ALT_INV_ena1~q\,
	combout => \pulse_count1~0_combout\);

-- Location: FF_X48_Y2_N8
\pulse_cond|q2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pulse_cond|q1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_cond|q2~DUPLICATE_q\);

-- Location: LABCELL_X48_Y2_N0
\pulse_count1[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count1[3]~1_combout\ = ( \ena1~q\ & ( \pulse_cond|q2~DUPLICATE_q\ ) ) # ( !\ena1~q\ & ( \pulse_cond|q2~DUPLICATE_q\ & ( (!\ena2~q\ & (\write_clear~q\ & !\ena3~DUPLICATE_q\)) ) ) ) # ( \ena1~q\ & ( !\pulse_cond|q2~DUPLICATE_q\ & ( !\pulse_cond|q1~q\ 
-- ) ) ) # ( !\ena1~q\ & ( !\pulse_cond|q2~DUPLICATE_q\ & ( (!\ena2~q\ & (\write_clear~q\ & (!\pulse_cond|q1~q\ & !\ena3~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000111100001111000000100010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ena2~q\,
	datab => \ALT_INV_write_clear~q\,
	datac => \pulse_cond|ALT_INV_q1~q\,
	datad => \ALT_INV_ena3~DUPLICATE_q\,
	datae => \ALT_INV_ena1~q\,
	dataf => \pulse_cond|ALT_INV_q2~DUPLICATE_q\,
	combout => \pulse_count1[3]~1_combout\);

-- Location: FF_X48_Y2_N5
\pulse_count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count1~0_combout\,
	sload => VCC,
	ena => \pulse_count1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count1(0));

-- Location: LABCELL_X48_Y2_N36
\pulse_count1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count1~4_combout\ = ( \ena1~q\ & ( (!pulse_count1(0) & (pulse_count1(3) & ((!pulse_count1(1)) # (pulse_count1(2))))) # (pulse_count1(0) & (!pulse_count1(3) $ (((!pulse_count1(2)) # (!pulse_count1(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000101100011001100010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count1(0),
	datab => ALT_INV_pulse_count1(3),
	datac => ALT_INV_pulse_count1(2),
	datad => ALT_INV_pulse_count1(1),
	dataf => \ALT_INV_ena1~q\,
	combout => \pulse_count1~4_combout\);

-- Location: FF_X48_Y2_N59
\pulse_count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count1~4_combout\,
	sload => VCC,
	ena => \pulse_count1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count1(3));

-- Location: MLABCELL_X49_Y2_N18
\pulse_count1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count1~2_combout\ = ( \ena1~q\ & ( pulse_count1(0) & ( !pulse_count1(1) ) ) ) # ( \ena1~q\ & ( !pulse_count1(0) & ( (pulse_count1(1) & ((!pulse_count1(3)) # (pulse_count1(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000010100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count1(2),
	datac => ALT_INV_pulse_count1(1),
	datad => ALT_INV_pulse_count1(3),
	datae => \ALT_INV_ena1~q\,
	dataf => ALT_INV_pulse_count1(0),
	combout => \pulse_count1~2_combout\);

-- Location: FF_X48_Y2_N47
\pulse_count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count1~2_combout\,
	sload => VCC,
	ena => \pulse_count1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count1(1));

-- Location: LABCELL_X48_Y2_N30
\pulse_count1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count1~3_combout\ = ( \ena1~q\ & ( !pulse_count1(2) $ (((!pulse_count1(1)) # (!pulse_count1(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pulse_count1(1),
	datac => ALT_INV_pulse_count1(2),
	datad => ALT_INV_pulse_count1(0),
	dataf => \ALT_INV_ena1~q\,
	combout => \pulse_count1~3_combout\);

-- Location: FF_X48_Y2_N23
\pulse_count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count1~3_combout\,
	sload => VCC,
	ena => \pulse_count1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count1(2));

-- Location: LABCELL_X48_Y2_N51
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( pulse_count1(3) & ( (!pulse_count1(2) & (pulse_count1(1) & !pulse_count1(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count1(2),
	datac => ALT_INV_pulse_count1(1),
	datad => ALT_INV_pulse_count1(0),
	datae => ALT_INV_pulse_count1(3),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X48_Y2_N12
\ena2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ena2~0_combout\ = ( \pulse_cond|q2~DUPLICATE_q\ & ( (\ena1~q\ & ((\ena2~q\) # (\Equal3~0_combout\))) ) ) # ( !\pulse_cond|q2~DUPLICATE_q\ & ( (!\pulse_cond|q1~q\ & (\ena1~q\ & ((\ena2~q\) # (\Equal3~0_combout\)))) # (\pulse_cond|q1~q\ & (((\ena2~q\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101110011000000110111001100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~0_combout\,
	datab => \ALT_INV_ena2~q\,
	datac => \pulse_cond|ALT_INV_q1~q\,
	datad => \ALT_INV_ena1~q\,
	dataf => \pulse_cond|ALT_INV_q2~DUPLICATE_q\,
	combout => \ena2~0_combout\);

-- Location: FF_X47_Y2_N8
ena2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \ena2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena2~q\);

-- Location: LABCELL_X48_Y2_N42
\pulse_count0[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count0[3]~1_combout\ = ( !\ena1~q\ & ( \pulse_cond|q2~DUPLICATE_q\ & ( (!\ena2~q\ & (\write_clear~q\ & !\ena3~DUPLICATE_q\)) ) ) ) # ( \ena1~q\ & ( !\pulse_cond|q2~DUPLICATE_q\ & ( \pulse_cond|q1~q\ ) ) ) # ( !\ena1~q\ & ( 
-- !\pulse_cond|q2~DUPLICATE_q\ & ( ((!\ena2~q\ & (\write_clear~q\ & !\ena3~DUPLICATE_q\))) # (\pulse_cond|q1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111000011110000111100100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ena2~q\,
	datab => \ALT_INV_write_clear~q\,
	datac => \pulse_cond|ALT_INV_q1~q\,
	datad => \ALT_INV_ena3~DUPLICATE_q\,
	datae => \ALT_INV_ena1~q\,
	dataf => \pulse_cond|ALT_INV_q2~DUPLICATE_q\,
	combout => \pulse_count0[3]~1_combout\);

-- Location: FF_X49_Y1_N35
\pulse_count0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count0~4_combout\,
	sload => VCC,
	ena => \pulse_count0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count0(3));

-- Location: LABCELL_X48_Y2_N18
\pulse_count0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count0~0_combout\ = ( \pulse_cond|q1~q\ & ( pulse_count0(2) & ( (!pulse_count0(0) & !\pulse_cond|q2~DUPLICATE_q\) ) ) ) # ( \pulse_cond|q1~q\ & ( !pulse_count0(2) & ( (!pulse_count0(0) & (!\pulse_cond|q2~DUPLICATE_q\ & ((!pulse_count0(1)) # 
-- (!pulse_count0(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count0(1),
	datab => ALT_INV_pulse_count0(3),
	datac => ALT_INV_pulse_count0(0),
	datad => \pulse_cond|ALT_INV_q2~DUPLICATE_q\,
	datae => \pulse_cond|ALT_INV_q1~q\,
	dataf => ALT_INV_pulse_count0(2),
	combout => \pulse_count0~0_combout\);

-- Location: FF_X48_Y2_N50
\pulse_count0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count0~0_combout\,
	sload => VCC,
	ena => \pulse_count0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count0(0));

-- Location: MLABCELL_X49_Y1_N27
\pulse_count0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count0~2_combout\ = ( pulse_count0(1) & ( pulse_count0(3) & ( (!pulse_count0(0) & (pulse_count0(2) & (\pulse_cond|q1~q\ & !\pulse_cond|q2~q\))) ) ) ) # ( !pulse_count0(1) & ( pulse_count0(3) & ( (pulse_count0(0) & (\pulse_cond|q1~q\ & 
-- !\pulse_cond|q2~q\)) ) ) ) # ( pulse_count0(1) & ( !pulse_count0(3) & ( (!pulse_count0(0) & (\pulse_cond|q1~q\ & !\pulse_cond|q2~q\)) ) ) ) # ( !pulse_count0(1) & ( !pulse_count0(3) & ( (pulse_count0(0) & (\pulse_cond|q1~q\ & !\pulse_cond|q2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000010100000000000000101000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count0(0),
	datab => ALT_INV_pulse_count0(2),
	datac => \pulse_cond|ALT_INV_q1~q\,
	datad => \pulse_cond|ALT_INV_q2~q\,
	datae => ALT_INV_pulse_count0(1),
	dataf => ALT_INV_pulse_count0(3),
	combout => \pulse_count0~2_combout\);

-- Location: FF_X49_Y1_N23
\pulse_count0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count0~2_combout\,
	sload => VCC,
	ena => \pulse_count0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count0(1));

-- Location: LABCELL_X48_Y2_N54
\pulse_count0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count0~3_combout\ = ( \pulse_cond|q1~q\ & ( pulse_count0(2) & ( (!\pulse_cond|q2~DUPLICATE_q\ & ((!pulse_count0(1)) # (!pulse_count0(0)))) ) ) ) # ( \pulse_cond|q1~q\ & ( !pulse_count0(2) & ( (pulse_count0(1) & (pulse_count0(0) & 
-- !\pulse_cond|q2~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count0(1),
	datac => ALT_INV_pulse_count0(0),
	datad => \pulse_cond|ALT_INV_q2~DUPLICATE_q\,
	datae => \pulse_cond|ALT_INV_q1~q\,
	dataf => ALT_INV_pulse_count0(2),
	combout => \pulse_count0~3_combout\);

-- Location: FF_X48_Y2_N17
\pulse_count0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count0~3_combout\,
	sload => VCC,
	ena => \pulse_count0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count0(2));

-- Location: MLABCELL_X49_Y1_N15
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( pulse_count0(1) & ( pulse_count0(3) & ( (!pulse_count0(2) & !pulse_count0(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pulse_count0(2),
	datad => ALT_INV_pulse_count0(0),
	datae => ALT_INV_pulse_count0(1),
	dataf => ALT_INV_pulse_count0(3),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X47_Y1_N48
\ena1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ena1~0_combout\ = ( \ena1~q\ & ( \pulse_cond|q1~q\ & ( !\pulse_cond|q2~q\ ) ) ) # ( !\ena1~q\ & ( \pulse_cond|q1~q\ & ( (\Equal2~0_combout\ & !\pulse_cond|q2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~0_combout\,
	datad => \pulse_cond|ALT_INV_q2~q\,
	datae => \ALT_INV_ena1~q\,
	dataf => \pulse_cond|ALT_INV_q1~q\,
	combout => \ena1~0_combout\);

-- Location: FF_X47_Y1_N49
ena1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \ena1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena1~q\);

-- Location: FF_X47_Y2_N5
ena3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \ena3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena3~q\);

-- Location: LABCELL_X48_Y2_N33
\ena3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ena3~0_combout\ = ( \pulse_cond|q2~DUPLICATE_q\ & ( !\ena1~q\ ) ) # ( !\pulse_cond|q2~DUPLICATE_q\ & ( (!\pulse_cond|q1~q\ & !\ena1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cond|ALT_INV_q1~q\,
	datad => \ALT_INV_ena1~q\,
	dataf => \pulse_cond|ALT_INV_q2~DUPLICATE_q\,
	combout => \ena3~0_combout\);

-- Location: LABCELL_X47_Y2_N6
\pulse_count2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count2[0]~0_combout\ = ( \ena2~q\ & ( \ena3~0_combout\ & ( !pulse_count2(0) $ (\Equal4~0_combout\) ) ) ) # ( !\ena2~q\ & ( \ena3~0_combout\ & ( (!\ena3~q\ & (!\write_clear~q\ & (pulse_count2(0)))) # (\ena3~q\ & (((\Equal4~0_combout\) # 
-- (pulse_count2(0))))) ) ) ) # ( \ena2~q\ & ( !\ena3~0_combout\ & ( pulse_count2(0) ) ) ) # ( !\ena2~q\ & ( !\ena3~0_combout\ & ( pulse_count2(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001101010111011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ena3~q\,
	datab => \ALT_INV_write_clear~q\,
	datac => ALT_INV_pulse_count2(0),
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_ena2~q\,
	dataf => \ALT_INV_ena3~0_combout\,
	combout => \pulse_count2[0]~0_combout\);

-- Location: FF_X47_Y2_N2
\pulse_count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count2[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count2(0));

-- Location: LABCELL_X48_Y2_N15
\pulse_count2[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count2[0]~2_combout\ = ( \write_clear~q\ & ( (!\ena2~q\ & \ena3~DUPLICATE_q\) ) ) # ( !\write_clear~q\ & ( !\ena2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ena2~q\,
	datac => \ALT_INV_ena3~DUPLICATE_q\,
	dataf => \ALT_INV_write_clear~q\,
	combout => \pulse_count2[0]~2_combout\);

-- Location: LABCELL_X48_Y2_N24
\pulse_count2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count2~6_combout\ = ( pulse_count2(0) & ( pulse_count2(3) & ( (!\ena2~q\ & (((\ena3~DUPLICATE_q\)))) # (\ena2~q\ & ((!pulse_count2(2)) # ((!pulse_count2(1))))) ) ) ) # ( !pulse_count2(0) & ( pulse_count2(3) & ( (!\ena2~q\ & 
-- (((\ena3~DUPLICATE_q\)))) # (\ena2~q\ & (((!pulse_count2(1))) # (pulse_count2(2)))) ) ) ) # ( pulse_count2(0) & ( !pulse_count2(3) & ( (!\ena2~q\ & (((\ena3~DUPLICATE_q\)))) # (\ena2~q\ & (pulse_count2(2) & ((pulse_count2(1))))) ) ) ) # ( !pulse_count2(0) 
-- & ( !pulse_count2(3) & ( (\ena3~DUPLICATE_q\ & !\ena2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000010100110011111101010011001111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count2(2),
	datab => \ALT_INV_ena3~DUPLICATE_q\,
	datac => ALT_INV_pulse_count2(1),
	datad => \ALT_INV_ena2~q\,
	datae => ALT_INV_pulse_count2(0),
	dataf => ALT_INV_pulse_count2(3),
	combout => \pulse_count2~6_combout\);

-- Location: LABCELL_X48_Y2_N9
\pulse_count2[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count2[3]~7_combout\ = ( \pulse_count2~1_combout\ & ( \ena3~0_combout\ & ( \pulse_count2~6_combout\ ) ) ) # ( !\pulse_count2~1_combout\ & ( \ena3~0_combout\ & ( (!\pulse_count2[0]~2_combout\ & ((\pulse_count2~6_combout\))) # 
-- (\pulse_count2[0]~2_combout\ & (pulse_count2(3))) ) ) ) # ( \pulse_count2~1_combout\ & ( !\ena3~0_combout\ & ( pulse_count2(3) ) ) ) # ( !\pulse_count2~1_combout\ & ( !\ena3~0_combout\ & ( pulse_count2(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101101011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulse_count2[0]~2_combout\,
	datac => ALT_INV_pulse_count2(3),
	datad => \ALT_INV_pulse_count2~6_combout\,
	datae => \ALT_INV_pulse_count2~1_combout\,
	dataf => \ALT_INV_ena3~0_combout\,
	combout => \pulse_count2[3]~7_combout\);

-- Location: FF_X48_Y1_N41
\pulse_count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count2[3]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count2(3));

-- Location: LABCELL_X47_Y2_N42
\pulse_count2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count2~1_combout\ = ( pulse_count2(3) & ( (!pulse_count2(2) & (pulse_count2(1) & (!pulse_count2(0) & \ena3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count2(2),
	datab => ALT_INV_pulse_count2(1),
	datac => ALT_INV_pulse_count2(0),
	datad => \ALT_INV_ena3~q\,
	dataf => ALT_INV_pulse_count2(3),
	combout => \pulse_count2~1_combout\);

-- Location: LABCELL_X47_Y2_N36
\pulse_count2[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count2[2]~3_combout\ = ( pulse_count2(0) & ( pulse_count2(1) & ( \ena2~q\ ) ) ) # ( !pulse_count2(0) & ( pulse_count2(1) & ( (\ena2~q\ & ((!pulse_count2(3)) # (pulse_count2(2)))) ) ) ) # ( pulse_count2(0) & ( !pulse_count2(1) & ( \ena2~q\ ) ) ) # ( 
-- !pulse_count2(0) & ( !pulse_count2(1) & ( \ena2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ena2~q\,
	datac => ALT_INV_pulse_count2(2),
	datad => ALT_INV_pulse_count2(3),
	datae => ALT_INV_pulse_count2(0),
	dataf => ALT_INV_pulse_count2(1),
	combout => \pulse_count2[2]~3_combout\);

-- Location: LABCELL_X47_Y2_N24
\pulse_count2[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count2[1]~4_combout\ = ( \pulse_count2[2]~3_combout\ & ( pulse_count2(1) & ( (!pulse_count2(0)) # ((!\ena3~0_combout\) # ((\pulse_count2[0]~2_combout\ & !\pulse_count2~1_combout\))) ) ) ) # ( !\pulse_count2[2]~3_combout\ & ( pulse_count2(1) & ( 
-- (!\ena3~0_combout\) # ((\pulse_count2[0]~2_combout\ & !\pulse_count2~1_combout\)) ) ) ) # ( \pulse_count2[2]~3_combout\ & ( !pulse_count2(1) & ( (pulse_count2(0) & (\ena3~0_combout\ & ((!\pulse_count2[0]~2_combout\) # (\pulse_count2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010111110011111100001111101111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count2(0),
	datab => \ALT_INV_pulse_count2[0]~2_combout\,
	datac => \ALT_INV_ena3~0_combout\,
	datad => \ALT_INV_pulse_count2~1_combout\,
	datae => \ALT_INV_pulse_count2[2]~3_combout\,
	dataf => ALT_INV_pulse_count2(1),
	combout => \pulse_count2[1]~4_combout\);

-- Location: FF_X47_Y2_N32
\pulse_count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count2[1]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count2(1));

-- Location: LABCELL_X47_Y2_N12
\Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ( pulse_count2(1) & ( pulse_count2(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pulse_count2(0),
	dataf => ALT_INV_pulse_count2(1),
	combout => \Add3~0_combout\);

-- Location: LABCELL_X47_Y2_N57
\pulse_count2[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count2[2]~5_combout\ = ( \pulse_count2[2]~3_combout\ & ( \ena3~0_combout\ & ( !pulse_count2(2) $ (((!\Add3~0_combout\) # ((\pulse_count2[0]~2_combout\ & !\pulse_count2~1_combout\)))) ) ) ) # ( !\pulse_count2[2]~3_combout\ & ( \ena3~0_combout\ & ( 
-- (\pulse_count2[0]~2_combout\ & (!\pulse_count2~1_combout\ & pulse_count2(2))) ) ) ) # ( \pulse_count2[2]~3_combout\ & ( !\ena3~0_combout\ & ( pulse_count2(2) ) ) ) # ( !\pulse_count2[2]~3_combout\ & ( !\ena3~0_combout\ & ( pulse_count2(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001100000100010110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~0_combout\,
	datab => \ALT_INV_pulse_count2[0]~2_combout\,
	datac => \ALT_INV_pulse_count2~1_combout\,
	datad => ALT_INV_pulse_count2(2),
	datae => \ALT_INV_pulse_count2[2]~3_combout\,
	dataf => \ALT_INV_ena3~0_combout\,
	combout => \pulse_count2[2]~5_combout\);

-- Location: FF_X47_Y2_N41
\pulse_count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count2[2]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count2(2));

-- Location: LABCELL_X47_Y2_N45
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( pulse_count2(3) & ( (!pulse_count2(2) & (pulse_count2(1) & !pulse_count2(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count2(2),
	datac => ALT_INV_pulse_count2(1),
	datad => ALT_INV_pulse_count2(0),
	dataf => ALT_INV_pulse_count2(3),
	combout => \Equal4~0_combout\);

-- Location: LABCELL_X47_Y2_N3
\ena3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ena3~1_combout\ = ( \ena3~q\ & ( \pulse_cond|q2~q\ & ( (\ena2~q\) # (\ena1~q\) ) ) ) # ( !\ena3~q\ & ( \pulse_cond|q2~q\ & ( (!\ena1~q\ & (\Equal4~0_combout\ & \ena2~q\)) ) ) ) # ( \ena3~q\ & ( !\pulse_cond|q2~q\ & ( ((\ena2~q\) # (\pulse_cond|q1~q\)) # 
-- (\ena1~q\) ) ) ) # ( !\ena3~q\ & ( !\pulse_cond|q2~q\ & ( (!\ena1~q\ & (\Equal4~0_combout\ & (!\pulse_cond|q1~q\ & \ena2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000010111111111111100000000001000100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ena1~q\,
	datab => \ALT_INV_Equal4~0_combout\,
	datac => \pulse_cond|ALT_INV_q1~q\,
	datad => \ALT_INV_ena2~q\,
	datae => \ALT_INV_ena3~q\,
	dataf => \pulse_cond|ALT_INV_q2~q\,
	combout => \ena3~1_combout\);

-- Location: FF_X47_Y2_N4
\ena3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \ena3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ena3~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N57
\pulse_count3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count3~0_combout\ = ( !pulse_count3(0) & ( \ena3~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_pulse_count3(0),
	dataf => \ALT_INV_ena3~DUPLICATE_q\,
	combout => \pulse_count3~0_combout\);

-- Location: LABCELL_X48_Y1_N24
\pulse_count3[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count3[3]~1_combout\ = ( \pulse_cond|q1~q\ & ( \pulse_cond|q2~DUPLICATE_q\ & ( (!\ena1~q\ & (!\ena2~q\ & ((\ena3~DUPLICATE_q\) # (\write_clear~q\)))) ) ) ) # ( !\pulse_cond|q1~q\ & ( \pulse_cond|q2~DUPLICATE_q\ & ( (!\ena1~q\ & (!\ena2~q\ & 
-- ((\ena3~DUPLICATE_q\) # (\write_clear~q\)))) ) ) ) # ( !\pulse_cond|q1~q\ & ( !\pulse_cond|q2~DUPLICATE_q\ & ( (!\ena1~q\ & (!\ena2~q\ & ((\ena3~DUPLICATE_q\) # (\write_clear~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000000000000000000001001100000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_clear~q\,
	datab => \ALT_INV_ena1~q\,
	datac => \ALT_INV_ena3~DUPLICATE_q\,
	datad => \ALT_INV_ena2~q\,
	datae => \pulse_cond|ALT_INV_q1~q\,
	dataf => \pulse_cond|ALT_INV_q2~DUPLICATE_q\,
	combout => \pulse_count3[3]~1_combout\);

-- Location: FF_X48_Y1_N5
\pulse_count3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count3~0_combout\,
	sload => VCC,
	ena => \pulse_count3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count3(0));

-- Location: LABCELL_X48_Y1_N45
\pulse_count3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count3~2_combout\ = ( pulse_count3(0) & ( (!pulse_count3(1) & \ena3~DUPLICATE_q\) ) ) # ( !pulse_count3(0) & ( (pulse_count3(1) & \ena3~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000000000000011110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pulse_count3(1),
	datad => \ALT_INV_ena3~DUPLICATE_q\,
	datae => ALT_INV_pulse_count3(0),
	combout => \pulse_count3~2_combout\);

-- Location: FF_X48_Y1_N56
\pulse_count3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count3~2_combout\,
	sload => VCC,
	ena => \pulse_count3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count3(1));

-- Location: LABCELL_X48_Y1_N51
\pulse_count3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count3~3_combout\ = ( pulse_count3(1) & ( (\ena3~DUPLICATE_q\ & (!pulse_count3(0) $ (!pulse_count3(2)))) ) ) # ( !pulse_count3(1) & ( (\ena3~DUPLICATE_q\ & pulse_count3(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count3(0),
	datac => \ALT_INV_ena3~DUPLICATE_q\,
	datad => ALT_INV_pulse_count3(2),
	dataf => ALT_INV_pulse_count3(1),
	combout => \pulse_count3~3_combout\);

-- Location: FF_X48_Y1_N23
\pulse_count3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count3~3_combout\,
	sload => VCC,
	ena => \pulse_count3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count3(2));

-- Location: LABCELL_X48_Y1_N33
\pulse_count3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_count3~4_combout\ = ( pulse_count3(0) & ( \ena3~DUPLICATE_q\ & ( !pulse_count3(3) $ (((!pulse_count3(2)) # (!pulse_count3(1)))) ) ) ) # ( !pulse_count3(0) & ( \ena3~DUPLICATE_q\ & ( pulse_count3(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pulse_count3(2),
	datab => ALT_INV_pulse_count3(3),
	datac => ALT_INV_pulse_count3(1),
	datae => ALT_INV_pulse_count3(0),
	dataf => \ALT_INV_ena3~DUPLICATE_q\,
	combout => \pulse_count3~4_combout\);

-- Location: FF_X48_Y1_N14
\pulse_count3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \pulse_count3~4_combout\,
	sload => VCC,
	ena => \pulse_count3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_count3(3));

-- Location: FF_X48_Y1_N11
\fx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count3(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(15));

-- Location: FF_X48_Y1_N32
\fx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count3(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(12));

-- Location: FF_X48_Y1_N29
\fx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count3(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(13));

-- Location: FF_X48_Y1_N8
\fx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count3(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(14));

-- Location: LABCELL_X48_Y1_N12
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( fx(14) & ( (!fx(15) & (!fx(12) & !fx(13))) ) ) # ( !fx(14) & ( (!fx(15) & (fx(12) & !fx(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(15),
	datab => ALT_INV_fx(12),
	datac => ALT_INV_fx(13),
	dataf => ALT_INV_fx(14),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X48_Y1_N15
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !fx(15) & ( (fx(14) & (!fx(12) $ (!fx(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(12),
	datac => ALT_INV_fx(14),
	datad => ALT_INV_fx(13),
	dataf => ALT_INV_fx(15),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X48_Y1_N18
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( fx(13) & ( fx(14) & ( fx(15) ) ) ) # ( !fx(13) & ( fx(14) & ( fx(15) ) ) ) # ( fx(13) & ( !fx(14) & ( (!fx(12)) # (fx(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(15),
	datad => ALT_INV_fx(12),
	datae => ALT_INV_fx(13),
	dataf => ALT_INV_fx(14),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X48_Y1_N3
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( fx(13) & ( fx(14) & ( (fx(12) & !fx(15)) ) ) ) # ( !fx(13) & ( fx(14) & ( (!fx(12) & !fx(15)) ) ) ) # ( !fx(13) & ( !fx(14) & ( (fx(12) & !fx(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011000000110000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(12),
	datac => ALT_INV_fx(15),
	datae => ALT_INV_fx(13),
	dataf => ALT_INV_fx(14),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X48_Y1_N36
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( fx(13) & ( (fx(12) & !fx(15)) ) ) # ( !fx(13) & ( (!fx(14) & (fx(12))) # (fx(14) & ((!fx(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110000001100000011000000110011111100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(12),
	datac => ALT_INV_fx(15),
	datad => ALT_INV_fx(14),
	datae => ALT_INV_fx(13),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X48_Y1_N6
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!fx(15) & ((!fx(13) & (fx(12) & !fx(14))) # (fx(13) & ((!fx(14)) # (fx(12))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010000011100000001000001110000000100000111000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(13),
	datab => ALT_INV_fx(12),
	datac => ALT_INV_fx(15),
	datad => ALT_INV_fx(14),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X48_Y1_N9
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( fx(12) & ( (!fx(13) $ (!fx(14))) # (fx(15)) ) ) # ( !fx(12) & ( ((fx(15)) # (fx(14))) # (fx(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(13),
	datac => ALT_INV_fx(14),
	datad => ALT_INV_fx(15),
	dataf => ALT_INV_fx(12),
	combout => \Mux0~0_combout\);

-- Location: FF_X48_Y1_N44
\fx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count2(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(11));

-- Location: FF_X47_Y2_N29
\fx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count2(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(9));

-- Location: FF_X47_Y2_N56
\fx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count2(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(8));

-- Location: FF_X47_Y2_N20
\fx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count2(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(10));

-- Location: LABCELL_X48_Y1_N48
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( fx(10) & ( (!fx(11) & (!fx(9) & !fx(8))) ) ) # ( !fx(10) & ( (!fx(11) & (!fx(9) & fx(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(11),
	datac => ALT_INV_fx(9),
	datad => ALT_INV_fx(8),
	dataf => ALT_INV_fx(10),
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X47_Y2_N18
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!fx(11) & (fx(10) & (!fx(8) $ (!fx(9)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(8),
	datab => ALT_INV_fx(11),
	datac => ALT_INV_fx(9),
	datad => ALT_INV_fx(10),
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X47_Y2_N33
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!fx(10) & (fx(9) & ((!fx(8)) # (fx(11))))) # (fx(10) & (((fx(11)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000111001001110000011100100111000001110010011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(10),
	datab => ALT_INV_fx(9),
	datac => ALT_INV_fx(11),
	datad => ALT_INV_fx(8),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X47_Y2_N48
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!fx(11) & ((!fx(8) & (fx(10) & !fx(9))) # (fx(8) & (!fx(10) $ (fx(9))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000100010010000000010001001000000001000100100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(8),
	datab => ALT_INV_fx(11),
	datac => ALT_INV_fx(10),
	datad => ALT_INV_fx(9),
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X47_Y2_N51
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( fx(10) & ( (!fx(11) & ((!fx(9)) # (fx(8)))) ) ) # ( !fx(10) & ( (fx(8) & ((!fx(11)) # (!fx(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(8),
	datab => ALT_INV_fx(11),
	datac => ALT_INV_fx(9),
	dataf => ALT_INV_fx(10),
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X47_Y2_N21
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!fx(11) & ((!fx(8) & (fx(9) & !fx(10))) # (fx(8) & ((!fx(10)) # (fx(9))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000100010011000000010001001100000001000100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(8),
	datab => ALT_INV_fx(11),
	datac => ALT_INV_fx(9),
	datad => ALT_INV_fx(10),
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X47_Y2_N30
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ((!fx(10) & (fx(9))) # (fx(10) & ((!fx(9)) # (!fx(8))))) # (fx(11))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011011111111011101101111111101110110111111110111011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(10),
	datab => ALT_INV_fx(9),
	datac => ALT_INV_fx(8),
	datad => ALT_INV_fx(11),
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X49_Y2_N27
\fx[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fx[5]~feeder_combout\ = ( pulse_count1(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_pulse_count1(1),
	combout => \fx[5]~feeder_combout\);

-- Location: FF_X49_Y2_N29
\fx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	d => \fx[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(5));

-- Location: FF_X49_Y2_N47
\fx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count1(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(7));

-- Location: MLABCELL_X49_Y2_N24
\fx[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fx[4]~feeder_combout\ = ( pulse_count1(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_pulse_count1(0),
	combout => \fx[4]~feeder_combout\);

-- Location: FF_X49_Y2_N26
\fx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	d => \fx[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(4));

-- Location: FF_X49_Y2_N44
\fx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count1(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(6));

-- Location: MLABCELL_X45_Y2_N48
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( !fx(4) & ( fx(6) & ( (!fx(5) & !fx(7)) ) ) ) # ( fx(4) & ( !fx(6) & ( (!fx(5) & !fx(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(5),
	datac => ALT_INV_fx(7),
	datae => ALT_INV_fx(4),
	dataf => ALT_INV_fx(6),
	combout => \Mux20~0_combout\);

-- Location: MLABCELL_X45_Y2_N18
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( fx(4) & ( fx(6) & ( (!fx(5) & !fx(7)) ) ) ) # ( !fx(4) & ( fx(6) & ( (fx(5) & !fx(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(5),
	datac => ALT_INV_fx(7),
	datae => ALT_INV_fx(4),
	dataf => ALT_INV_fx(6),
	combout => \Mux19~0_combout\);

-- Location: MLABCELL_X45_Y2_N24
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( fx(4) & ( fx(6) & ( fx(7) ) ) ) # ( !fx(4) & ( fx(6) & ( fx(7) ) ) ) # ( fx(4) & ( !fx(6) & ( (fx(5) & fx(7)) ) ) ) # ( !fx(4) & ( !fx(6) & ( fx(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(5),
	datac => ALT_INV_fx(7),
	datae => ALT_INV_fx(4),
	dataf => ALT_INV_fx(6),
	combout => \Mux18~0_combout\);

-- Location: MLABCELL_X45_Y2_N33
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( fx(4) & ( fx(6) & ( (fx(5) & !fx(7)) ) ) ) # ( !fx(4) & ( fx(6) & ( (!fx(5) & !fx(7)) ) ) ) # ( fx(4) & ( !fx(6) & ( (!fx(5) & !fx(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000011110000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_fx(5),
	datad => ALT_INV_fx(7),
	datae => ALT_INV_fx(4),
	dataf => ALT_INV_fx(6),
	combout => \Mux17~0_combout\);

-- Location: MLABCELL_X45_Y2_N12
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( fx(4) & ( fx(6) & ( !fx(7) ) ) ) # ( !fx(4) & ( fx(6) & ( (!fx(5) & !fx(7)) ) ) ) # ( fx(4) & ( !fx(6) & ( (!fx(5)) # (!fx(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110011000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(5),
	datac => ALT_INV_fx(7),
	datae => ALT_INV_fx(4),
	dataf => ALT_INV_fx(6),
	combout => \Mux16~0_combout\);

-- Location: MLABCELL_X45_Y2_N6
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( fx(4) & ( fx(6) & ( (fx(5) & !fx(7)) ) ) ) # ( fx(4) & ( !fx(6) & ( !fx(7) ) ) ) # ( !fx(4) & ( !fx(6) & ( (fx(5) & !fx(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100001111000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(5),
	datac => ALT_INV_fx(7),
	datae => ALT_INV_fx(4),
	dataf => ALT_INV_fx(6),
	combout => \Mux15~0_combout\);

-- Location: MLABCELL_X49_Y2_N30
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( fx(5) & ( fx(6) & ( (!fx(4)) # (fx(7)) ) ) ) # ( !fx(5) & ( fx(6) ) ) # ( fx(5) & ( !fx(6) ) ) # ( !fx(5) & ( !fx(6) & ( fx(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111111111111111111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(7),
	datac => ALT_INV_fx(4),
	datae => ALT_INV_fx(5),
	dataf => ALT_INV_fx(6),
	combout => \Mux14~0_combout\);

-- Location: FF_X49_Y1_N41
\fx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	asdata => pulse_count0(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(1));

-- Location: MLABCELL_X49_Y2_N57
\fx[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fx[2]~feeder_combout\ = ( pulse_count0(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_pulse_count0(2),
	combout => \fx[2]~feeder_combout\);

-- Location: FF_X49_Y2_N59
\fx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	d => \fx[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(2));

-- Location: MLABCELL_X49_Y1_N54
\fx[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fx[3]~feeder_combout\ = ( pulse_count0(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_pulse_count0(3),
	combout => \fx[3]~feeder_combout\);

-- Location: FF_X49_Y1_N56
\fx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	d => \fx[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(3));

-- Location: MLABCELL_X49_Y2_N39
\fx[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fx[0]~feeder_combout\ = ( pulse_count0(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_pulse_count0(0),
	combout => \fx[0]~feeder_combout\);

-- Location: FF_X49_Y2_N41
\fx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \write_clear~q\,
	d => \fx[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fx(0));

-- Location: MLABCELL_X49_Y1_N18
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( !fx(3) & ( fx(0) & ( (!fx(1) & !fx(2)) ) ) ) # ( !fx(3) & ( !fx(0) & ( (!fx(1) & fx(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(1),
	datac => ALT_INV_fx(2),
	datae => ALT_INV_fx(3),
	dataf => ALT_INV_fx(0),
	combout => \Mux27~0_combout\);

-- Location: MLABCELL_X49_Y1_N42
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( fx(0) & ( (fx(2) & (!fx(1) & !fx(3))) ) ) # ( !fx(0) & ( (fx(2) & (fx(1) & !fx(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(2),
	datab => ALT_INV_fx(1),
	datac => ALT_INV_fx(3),
	dataf => ALT_INV_fx(0),
	combout => \Mux26~0_combout\);

-- Location: MLABCELL_X49_Y1_N45
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( fx(0) & ( (fx(3) & ((fx(1)) # (fx(2)))) ) ) # ( !fx(0) & ( (!fx(2) & (fx(1))) # (fx(2) & ((fx(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(2),
	datac => ALT_INV_fx(1),
	datad => ALT_INV_fx(3),
	dataf => ALT_INV_fx(0),
	combout => \Mux25~0_combout\);

-- Location: MLABCELL_X49_Y1_N6
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( fx(0) & ( (!fx(3) & (!fx(2) $ (fx(1)))) ) ) # ( !fx(0) & ( (fx(2) & (!fx(1) & !fx(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(2),
	datab => ALT_INV_fx(1),
	datac => ALT_INV_fx(3),
	dataf => ALT_INV_fx(0),
	combout => \Mux24~0_combout\);

-- Location: MLABCELL_X49_Y1_N0
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( fx(3) & ( fx(0) & ( (!fx(1) & !fx(2)) ) ) ) # ( !fx(3) & ( fx(0) ) ) # ( !fx(3) & ( !fx(0) & ( (!fx(1) & fx(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011111111111111111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_fx(1),
	datac => ALT_INV_fx(2),
	datae => ALT_INV_fx(3),
	dataf => ALT_INV_fx(0),
	combout => \Mux23~0_combout\);

-- Location: MLABCELL_X49_Y1_N9
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( fx(0) & ( (!fx(3) & ((!fx(2)) # (fx(1)))) ) ) # ( !fx(0) & ( (!fx(2) & (fx(1) & !fx(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(2),
	datac => ALT_INV_fx(1),
	datad => ALT_INV_fx(3),
	dataf => ALT_INV_fx(0),
	combout => \Mux22~0_combout\);

-- Location: MLABCELL_X49_Y1_N51
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( fx(3) & ( fx(2) ) ) # ( !fx(3) & ( fx(2) & ( (!fx(0)) # (!fx(1)) ) ) ) # ( fx(3) & ( !fx(2) ) ) # ( !fx(3) & ( !fx(2) & ( fx(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_fx(0),
	datac => ALT_INV_fx(1),
	datae => ALT_INV_fx(3),
	dataf => ALT_INV_fx(2),
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X47_Y2_N15
\o_flow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_flow~0_combout\ = ( \ena3~DUPLICATE_q\ & ( (!\ena2~q\ & ((!\ena3~0_combout\ & ((\o_flow~reg0_q\))) # (\ena3~0_combout\ & (\Equal4~0_combout\)))) # (\ena2~q\ & (((\o_flow~reg0_q\)))) ) ) # ( !\ena3~DUPLICATE_q\ & ( \o_flow~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010111101110000001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ena2~q\,
	datab => \ALT_INV_Equal4~0_combout\,
	datac => \ALT_INV_ena3~0_combout\,
	datad => \ALT_INV_o_flow~reg0_q\,
	dataf => \ALT_INV_ena3~DUPLICATE_q\,
	combout => \o_flow~0_combout\);

-- Location: FF_X47_Y2_N16
\o_flow~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \o_flow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_flow~reg0_q\);

-- Location: LABCELL_X43_Y11_N0
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


