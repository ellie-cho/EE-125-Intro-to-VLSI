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

-- DATE "05/27/2023 18:52:56"

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

ENTITY 	ssd_fun IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	start_btn : IN std_logic;
	dir_btn : IN std_logic;
	speed_btn : IN std_logic;
	ssd : OUT std_logic_vector(6 DOWNTO 0)
	);
END ssd_fun;

-- Design Ports Information
-- ssd[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir_btn	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_btn	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed_btn	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ssd_fun IS
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
SIGNAL ww_start_btn : std_logic;
SIGNAL ww_dir_btn : std_logic;
SIGNAL ww_speed_btn : std_logic;
SIGNAL ww_ssd : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dir_btn~input_o\ : std_logic;
SIGNAL \nx_dir_state~0_combout\ : std_logic;
SIGNAL \nx_dir_state~q\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \pr_dir_state~q\ : std_logic;
SIGNAL \start_btn~input_o\ : std_logic;
SIGNAL \nx_run_state~0_combout\ : std_logic;
SIGNAL \nx_run_state~q\ : std_logic;
SIGNAL \pr_run_state~q\ : std_logic;
SIGNAL \speed_btn~input_o\ : std_logic;
SIGNAL \speed_btn~inputCLKENA0_outclk\ : std_logic;
SIGNAL \nx_speed_state.one_forty~0_combout\ : std_logic;
SIGNAL \nx_speed_state.one_forty~q\ : std_logic;
SIGNAL \pr_speed_state.one_forty~q\ : std_logic;
SIGNAL \nx_speed_state.one_hundred~q\ : std_logic;
SIGNAL \pr_speed_state.one_hundred~feeder_combout\ : std_logic;
SIGNAL \pr_speed_state.one_hundred~q\ : std_logic;
SIGNAL \nx_speed_state.seventy~q\ : std_logic;
SIGNAL \pr_speed_state.seventy~q\ : std_logic;
SIGNAL \nx_speed_state.two_hundred~0_combout\ : std_logic;
SIGNAL \nx_speed_state.two_hundred~q\ : std_logic;
SIGNAL \pr_speed_state.two_hundred~q\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \t[19]~feeder_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \pr_state.one~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \pr_state.three~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \pr_state.four~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \pr_state.five~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \pr_state.six~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \pr_state.seven~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \pr_state.eight~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \pr_state.nine~q\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \pr_state.ten~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \pr_state.eleven~q\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \pr_state.twelve~q\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \nx_state~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~5_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \WideOr0~4_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \pr_state.two~q\ : std_logic;
SIGNAL \WideOr18~combout\ : std_logic;
SIGNAL \WideOr17~combout\ : std_logic;
SIGNAL \WideOr16~combout\ : std_logic;
SIGNAL \WideOr15~combout\ : std_logic;
SIGNAL \WideOr14~combout\ : std_logic;
SIGNAL \WideOr13~combout\ : std_logic;
SIGNAL t : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL ALT_INV_t : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_nx_speed_state.one_hundred~q\ : std_logic;
SIGNAL \ALT_INV_WideOr0~5_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~3_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_nx_state~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_pr_speed_state.seventy~q\ : std_logic;
SIGNAL \ALT_INV_pr_speed_state.two_hundred~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_pr_speed_state.one_hundred~q\ : std_logic;
SIGNAL \ALT_INV_pr_run_state~q\ : std_logic;
SIGNAL \ALT_INV_pr_dir_state~q\ : std_logic;
SIGNAL \ALT_INV_WideOr13~combout\ : std_logic;
SIGNAL \ALT_INV_pr_state.one~q\ : std_logic;
SIGNAL \ALT_INV_WideOr14~combout\ : std_logic;
SIGNAL \ALT_INV_pr_state.twelve~q\ : std_logic;
SIGNAL \ALT_INV_pr_state.eleven~q\ : std_logic;
SIGNAL \ALT_INV_WideOr15~combout\ : std_logic;
SIGNAL \ALT_INV_pr_state.ten~q\ : std_logic;
SIGNAL \ALT_INV_pr_state.nine~q\ : std_logic;
SIGNAL \ALT_INV_WideOr16~combout\ : std_logic;
SIGNAL \ALT_INV_pr_state.eight~q\ : std_logic;
SIGNAL \ALT_INV_pr_state.seven~q\ : std_logic;
SIGNAL \ALT_INV_WideOr17~combout\ : std_logic;
SIGNAL \ALT_INV_pr_state.six~q\ : std_logic;
SIGNAL \ALT_INV_pr_state.five~q\ : std_logic;
SIGNAL \ALT_INV_WideOr18~combout\ : std_logic;
SIGNAL \ALT_INV_pr_state.four~q\ : std_logic;
SIGNAL \ALT_INV_pr_state.three~q\ : std_logic;
SIGNAL \ALT_INV_pr_state.two~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_start_btn <= start_btn;
ww_dir_btn <= dir_btn;
ww_speed_btn <= speed_btn;
ssd <= ww_ssd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
ALT_INV_t(6) <= NOT t(6);
ALT_INV_t(7) <= NOT t(7);
ALT_INV_t(8) <= NOT t(8);
ALT_INV_t(9) <= NOT t(9);
ALT_INV_t(10) <= NOT t(10);
ALT_INV_t(20) <= NOT t(20);
ALT_INV_t(11) <= NOT t(11);
ALT_INV_t(12) <= NOT t(12);
ALT_INV_t(13) <= NOT t(13);
ALT_INV_t(14) <= NOT t(14);
ALT_INV_t(15) <= NOT t(15);
ALT_INV_t(16) <= NOT t(16);
ALT_INV_t(26) <= NOT t(26);
ALT_INV_t(27) <= NOT t(27);
ALT_INV_t(28) <= NOT t(28);
ALT_INV_t(29) <= NOT t(29);
ALT_INV_t(30) <= NOT t(30);
ALT_INV_t(5) <= NOT t(5);
ALT_INV_t(19) <= NOT t(19);
ALT_INV_t(21) <= NOT t(21);
ALT_INV_t(22) <= NOT t(22);
ALT_INV_t(23) <= NOT t(23);
ALT_INV_t(24) <= NOT t(24);
ALT_INV_t(25) <= NOT t(25);
ALT_INV_t(17) <= NOT t(17);
ALT_INV_t(18) <= NOT t(18);
ALT_INV_t(3) <= NOT t(3);
ALT_INV_t(4) <= NOT t(4);
ALT_INV_t(0) <= NOT t(0);
ALT_INV_t(1) <= NOT t(1);
ALT_INV_t(2) <= NOT t(2);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_nx_speed_state.one_hundred~q\ <= NOT \nx_speed_state.one_hundred~q\;
\ALT_INV_WideOr0~5_combout\ <= NOT \WideOr0~5_combout\;
\ALT_INV_WideOr0~4_combout\ <= NOT \WideOr0~4_combout\;
\ALT_INV_Selector1~2_combout\ <= NOT \Selector1~2_combout\;
\ALT_INV_Selector3~2_combout\ <= NOT \Selector3~2_combout\;
\ALT_INV_WideOr0~3_combout\ <= NOT \WideOr0~3_combout\;
\ALT_INV_WideOr0~2_combout\ <= NOT \WideOr0~2_combout\;
\ALT_INV_Selector5~2_combout\ <= NOT \Selector5~2_combout\;
\ALT_INV_Selector7~2_combout\ <= NOT \Selector7~2_combout\;
\ALT_INV_WideOr0~1_combout\ <= NOT \WideOr0~1_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_Selector9~2_combout\ <= NOT \Selector9~2_combout\;
\ALT_INV_Selector11~2_combout\ <= NOT \Selector11~2_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_nx_state~0_combout\ <= NOT \nx_state~0_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_pr_speed_state.seventy~q\ <= NOT \pr_speed_state.seventy~q\;
\ALT_INV_pr_speed_state.two_hundred~q\ <= NOT \pr_speed_state.two_hundred~q\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_pr_speed_state.one_hundred~q\ <= NOT \pr_speed_state.one_hundred~q\;
\ALT_INV_pr_run_state~q\ <= NOT \pr_run_state~q\;
\ALT_INV_pr_dir_state~q\ <= NOT \pr_dir_state~q\;
\ALT_INV_WideOr13~combout\ <= NOT \WideOr13~combout\;
\ALT_INV_pr_state.one~q\ <= NOT \pr_state.one~q\;
\ALT_INV_WideOr14~combout\ <= NOT \WideOr14~combout\;
\ALT_INV_pr_state.twelve~q\ <= NOT \pr_state.twelve~q\;
\ALT_INV_pr_state.eleven~q\ <= NOT \pr_state.eleven~q\;
\ALT_INV_WideOr15~combout\ <= NOT \WideOr15~combout\;
\ALT_INV_pr_state.ten~q\ <= NOT \pr_state.ten~q\;
\ALT_INV_pr_state.nine~q\ <= NOT \pr_state.nine~q\;
\ALT_INV_WideOr16~combout\ <= NOT \WideOr16~combout\;
\ALT_INV_pr_state.eight~q\ <= NOT \pr_state.eight~q\;
\ALT_INV_pr_state.seven~q\ <= NOT \pr_state.seven~q\;
\ALT_INV_WideOr17~combout\ <= NOT \WideOr17~combout\;
\ALT_INV_pr_state.six~q\ <= NOT \pr_state.six~q\;
\ALT_INV_pr_state.five~q\ <= NOT \pr_state.five~q\;
\ALT_INV_WideOr18~combout\ <= NOT \WideOr18~combout\;
\ALT_INV_pr_state.four~q\ <= NOT \pr_state.four~q\;
\ALT_INV_pr_state.three~q\ <= NOT \pr_state.three~q\;
\ALT_INV_pr_state.two~q\ <= NOT \pr_state.two~q\;

-- Location: IOOBUF_X54_Y16_N5
\ssd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ssd(0));

-- Location: IOOBUF_X0_Y18_N79
\ssd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr18~combout\,
	devoe => ww_devoe,
	o => ww_ssd(1));

-- Location: IOOBUF_X0_Y19_N39
\ssd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr17~combout\,
	devoe => ww_devoe,
	o => ww_ssd(2));

-- Location: IOOBUF_X0_Y19_N22
\ssd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr16~combout\,
	devoe => ww_devoe,
	o => ww_ssd(3));

-- Location: IOOBUF_X0_Y19_N56
\ssd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr15~combout\,
	devoe => ww_devoe,
	o => ww_ssd(4));

-- Location: IOOBUF_X0_Y18_N45
\ssd[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr14~combout\,
	devoe => ww_devoe,
	o => ww_ssd(5));

-- Location: IOOBUF_X10_Y0_N59
\ssd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr13~combout\,
	devoe => ww_devoe,
	o => ww_ssd(6));

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

-- Location: IOIBUF_X0_Y18_N95
\dir_btn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir_btn,
	o => \dir_btn~input_o\);

-- Location: LABCELL_X5_Y17_N12
\nx_dir_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nx_dir_state~0_combout\ = !\pr_dir_state~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pr_dir_state~q\,
	combout => \nx_dir_state~0_combout\);

-- Location: FF_X5_Y17_N13
nx_dir_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dir_btn~input_o\,
	d => \nx_dir_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nx_dir_state~q\);

-- Location: IOIBUF_X0_Y19_N4
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X5_Y17_N59
pr_dir_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \nx_dir_state~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_dir_state~q\);

-- Location: IOIBUF_X0_Y18_N61
\start_btn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_btn,
	o => \start_btn~input_o\);

-- Location: LABCELL_X7_Y17_N42
\nx_run_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nx_run_state~0_combout\ = !\pr_run_state~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_run_state~q\,
	combout => \nx_run_state~0_combout\);

-- Location: FF_X7_Y17_N44
nx_run_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start_btn~input_o\,
	d => \nx_run_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nx_run_state~q\);

-- Location: FF_X7_Y17_N59
pr_run_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \nx_run_state~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_run_state~q\);

-- Location: IOIBUF_X54_Y18_N44
\speed_btn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed_btn,
	o => \speed_btn~input_o\);

-- Location: CLKCTRL_G8
\speed_btn~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \speed_btn~input_o\,
	outclk => \speed_btn~inputCLKENA0_outclk\);

-- Location: LABCELL_X6_Y17_N51
\nx_speed_state.one_forty~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nx_speed_state.one_forty~0_combout\ = !\pr_speed_state.two_hundred~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_speed_state.two_hundred~q\,
	combout => \nx_speed_state.one_forty~0_combout\);

-- Location: FF_X6_Y17_N52
\nx_speed_state.one_forty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \speed_btn~inputCLKENA0_outclk\,
	d => \nx_speed_state.one_forty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nx_speed_state.one_forty~q\);

-- Location: FF_X6_Y18_N4
\pr_speed_state.one_forty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \nx_speed_state.one_forty~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_speed_state.one_forty~q\);

-- Location: FF_X6_Y18_N10
\nx_speed_state.one_hundred\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \speed_btn~inputCLKENA0_outclk\,
	asdata => \pr_speed_state.one_forty~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nx_speed_state.one_hundred~q\);

-- Location: LABCELL_X6_Y18_N48
\pr_speed_state.one_hundred~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_speed_state.one_hundred~feeder_combout\ = ( \nx_speed_state.one_hundred~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_nx_speed_state.one_hundred~q\,
	combout => \pr_speed_state.one_hundred~feeder_combout\);

-- Location: FF_X6_Y18_N50
\pr_speed_state.one_hundred\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pr_speed_state.one_hundred~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_speed_state.one_hundred~q\);

-- Location: FF_X6_Y18_N44
\nx_speed_state.seventy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \speed_btn~inputCLKENA0_outclk\,
	asdata => \pr_speed_state.one_hundred~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nx_speed_state.seventy~q\);

-- Location: FF_X6_Y17_N59
\pr_speed_state.seventy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \nx_speed_state.seventy~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_speed_state.seventy~q\);

-- Location: LABCELL_X6_Y17_N0
\nx_speed_state.two_hundred~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nx_speed_state.two_hundred~0_combout\ = !\pr_speed_state.seventy~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pr_speed_state.seventy~q\,
	combout => \nx_speed_state.two_hundred~0_combout\);

-- Location: FF_X6_Y17_N2
\nx_speed_state.two_hundred\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \speed_btn~inputCLKENA0_outclk\,
	d => \nx_speed_state.two_hundred~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nx_speed_state.two_hundred~q\);

-- Location: FF_X6_Y17_N23
\pr_speed_state.two_hundred\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \nx_speed_state.two_hundred~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_speed_state.two_hundred~q\);

-- Location: LABCELL_X7_Y18_N0
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( t(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~10\ = CARRY(( t(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_t(0),
	cin => GND,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X7_Y18_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( t(1) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( t(1) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(1),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X7_Y18_N6
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( t(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( t(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(2),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X6_Y17_N26
\t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(2));

-- Location: LABCELL_X7_Y18_N9
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( t(3) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~18\ = CARRY(( t(3) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(3),
	cin => \Add0~2\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X7_Y18_N11
\t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(3));

-- Location: LABCELL_X7_Y18_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( t(4) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( t(4) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_t(4),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X7_Y18_N14
\t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(4));

-- Location: LABCELL_X7_Y18_N15
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( t(5) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~54\ = CARRY(( t(5) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_t(5),
	cin => \Add0~14\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X6_Y18_N35
\t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~53_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(5));

-- Location: LABCELL_X7_Y18_N18
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( t(6) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~122\ = CARRY(( t(6) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(6),
	cin => \Add0~54\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X6_Y18_N41
\t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~121_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(6));

-- Location: LABCELL_X7_Y18_N21
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( t(7) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( t(7) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_t(7),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X7_Y18_N23
\t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(7));

-- Location: LABCELL_X7_Y18_N24
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( t(8) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( t(8) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_t(8),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X6_Y18_N17
\t[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~113_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(8));

-- Location: LABCELL_X7_Y18_N27
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( t(9) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( t(9) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_t(9),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X6_Y18_N29
\t[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~109_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(9));

-- Location: LABCELL_X7_Y18_N30
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( t(10) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( t(10) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_t(10),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X6_Y18_N20
\t[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~105_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(10));

-- Location: LABCELL_X7_Y18_N33
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( t(11) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~98\ = CARRY(( t(11) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_t(11),
	cin => \Add0~106\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X6_Y18_N59
\t[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~97_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(11));

-- Location: LABCELL_X7_Y18_N36
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( t(12) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( t(12) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(12),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X7_Y18_N38
\t[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(12));

-- Location: LABCELL_X7_Y18_N39
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( t(13) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( t(13) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_t(13),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X6_Y18_N32
\t[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~89_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(13));

-- Location: LABCELL_X7_Y18_N42
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( t(14) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( t(14) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_t(14),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X6_Y18_N56
\t[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~85_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(14));

-- Location: LABCELL_X7_Y18_N45
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( t(15) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( t(15) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(15),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X7_Y18_N47
\t[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(15));

-- Location: LABCELL_X7_Y18_N48
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( t(16) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( t(16) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(16),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X6_Y18_N23
\t[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~77_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(16));

-- Location: LABCELL_X7_Y18_N51
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( t(17) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~26\ = CARRY(( t(17) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_t(17),
	cin => \Add0~78\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X7_Y18_N53
\t[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(17));

-- Location: LABCELL_X7_Y18_N54
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( t(18) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( t(18) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(18),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X7_Y18_N56
\t[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(18));

-- Location: LABCELL_X7_Y18_N57
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( t(19) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~50\ = CARRY(( t(19) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(19),
	cin => \Add0~22\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X6_Y18_N51
\t[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \t[19]~feeder_combout\ = ( \Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \t[19]~feeder_combout\);

-- Location: FF_X6_Y18_N53
\t[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \t[19]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(19));

-- Location: LABCELL_X7_Y17_N0
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( t(20) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~102\ = CARRY(( t(20) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(20),
	cin => \Add0~50\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X7_Y17_N2
\t[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(20));

-- Location: LABCELL_X6_Y18_N6
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( !t(7) & ( !t(20) & ( (!t(9) & (!t(8) & (!t(10) & !t(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_t(9),
	datab => ALT_INV_t(8),
	datac => ALT_INV_t(10),
	datad => ALT_INV_t(6),
	datae => ALT_INV_t(7),
	dataf => ALT_INV_t(20),
	combout => \LessThan1~3_combout\);

-- Location: LABCELL_X7_Y17_N3
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( t(21) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~46\ = CARRY(( t(21) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_t(21),
	cin => \Add0~102\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X7_Y17_N5
\t[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(21));

-- Location: LABCELL_X7_Y17_N6
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( t(22) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( t(22) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_t(22),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X7_Y17_N8
\t[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(22));

-- Location: LABCELL_X7_Y17_N9
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( t(23) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( t(23) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(23),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X7_Y17_N11
\t[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(23));

-- Location: LABCELL_X7_Y17_N12
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( t(24) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( t(24) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_t(24),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X7_Y17_N14
\t[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(24));

-- Location: LABCELL_X7_Y17_N15
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( t(25) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( t(25) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(25),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X7_Y17_N17
\t[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(25));

-- Location: LABCELL_X6_Y18_N45
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( !t(24) & ( !t(25) & ( (!t(19) & (!t(21) & (!t(22) & !t(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_t(19),
	datab => ALT_INV_t(21),
	datac => ALT_INV_t(22),
	datad => ALT_INV_t(23),
	datae => ALT_INV_t(24),
	dataf => ALT_INV_t(25),
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X6_Y18_N24
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( !t(14) & ( !t(15) & ( (!t(16) & (!t(13) & (!t(12) & !t(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_t(16),
	datab => ALT_INV_t(13),
	datac => ALT_INV_t(12),
	datad => ALT_INV_t(11),
	datae => ALT_INV_t(14),
	dataf => ALT_INV_t(15),
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X7_Y17_N18
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( t(26) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~74\ = CARRY(( t(26) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(26),
	cin => \Add0~30\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X7_Y17_N20
\t[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(26));

-- Location: LABCELL_X7_Y17_N21
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( t(27) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( t(27) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_t(27),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X7_Y17_N23
\t[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(27));

-- Location: LABCELL_X7_Y17_N24
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( t(28) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( t(28) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(28),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X7_Y17_N26
\t[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(28));

-- Location: LABCELL_X7_Y17_N27
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( t(29) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( t(29) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_t(29),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X7_Y17_N29
\t[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(29));

-- Location: LABCELL_X7_Y17_N30
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( t(30) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_t(30),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\);

-- Location: FF_X7_Y17_N32
\t[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(30));

-- Location: LABCELL_X6_Y18_N36
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( !t(26) & ( !t(27) & ( (!t(5) & (!t(29) & (!t(28) & !t(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_t(5),
	datab => ALT_INV_t(29),
	datac => ALT_INV_t(28),
	datad => ALT_INV_t(30),
	datae => ALT_INV_t(26),
	dataf => ALT_INV_t(27),
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X6_Y18_N33
\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( \LessThan1~1_combout\ & ( !t(17) & ( (!t(18) & (\LessThan1~3_combout\ & (\LessThan1~0_combout\ & \LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_t(18),
	datab => \ALT_INV_LessThan1~3_combout\,
	datac => \ALT_INV_LessThan1~0_combout\,
	datad => \ALT_INV_LessThan1~2_combout\,
	datae => \ALT_INV_LessThan1~1_combout\,
	dataf => ALT_INV_t(17),
	combout => \LessThan1~4_combout\);

-- Location: LABCELL_X7_Y17_N45
\LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ( t(3) & ( t(4) ) ) # ( !t(3) & ( (t(4) & t(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_t(4),
	datad => ALT_INV_t(2),
	dataf => ALT_INV_t(3),
	combout => \LessThan1~5_combout\);

-- Location: LABCELL_X6_Y18_N18
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \LessThan1~4_combout\ & ( \LessThan1~5_combout\ & ( (\pr_run_state~q\ & \pr_state.twelve~q\) ) ) ) # ( !\LessThan1~4_combout\ & ( \LessThan1~5_combout\ & ( (\pr_run_state~q\ & \pr_state.twelve~q\) ) ) ) # ( \LessThan1~4_combout\ 
-- & ( !\LessThan1~5_combout\ & ( \pr_state.twelve~q\ ) ) ) # ( !\LessThan1~4_combout\ & ( !\LessThan1~5_combout\ & ( (\pr_run_state~q\ & \pr_state.twelve~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000001111111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_pr_state.twelve~q\,
	datae => \ALT_INV_LessThan1~4_combout\,
	dataf => \ALT_INV_LessThan1~5_combout\,
	combout => \Selector11~0_combout\);

-- Location: LABCELL_X6_Y17_N15
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \pr_state.twelve~q\ & ( \pr_state.two~q\ & ( (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\))) ) ) ) # ( !\pr_state.twelve~q\ & ( \pr_state.two~q\ & ( (!\pr_dir_state~q\ & (!\pr_run_state~q\ & 
-- ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\)))) ) ) ) # ( \pr_state.twelve~q\ & ( !\pr_state.two~q\ & ( (\pr_dir_state~q\ & (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100010000000010100010000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_dir_state~q\,
	datab => \ALT_INV_LessThan1~5_combout\,
	datac => \ALT_INV_LessThan1~4_combout\,
	datad => \ALT_INV_pr_run_state~q\,
	datae => \ALT_INV_pr_state.twelve~q\,
	dataf => \ALT_INV_pr_state.two~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X5_Y17_N30
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \LessThan0~5_combout\ & ( (!\Selector0~0_combout\ & \pr_state.one~q\) ) ) # ( !\LessThan0~5_combout\ & ( (!\Selector0~0_combout\ & ((!\pr_run_state~q\) # (\pr_state.one~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_run_state~q\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => \ALT_INV_pr_state.one~q\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X5_Y17_N32
\pr_state.one\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.one~q\);

-- Location: LABCELL_X6_Y19_N54
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \LessThan1~4_combout\ & ( \pr_state.ten~q\ & ( (!\LessThan1~5_combout\) # (\pr_run_state~q\) ) ) ) # ( !\LessThan1~4_combout\ & ( \pr_state.ten~q\ & ( \pr_run_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_LessThan1~5_combout\,
	datae => \ALT_INV_LessThan1~4_combout\,
	dataf => \ALT_INV_pr_state.ten~q\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X6_Y17_N42
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \pr_state.four~q\ & ( \pr_state.two~q\ & ( (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\))) ) ) ) # ( !\pr_state.four~q\ & ( \pr_state.two~q\ & ( (\pr_dir_state~q\ & (!\pr_run_state~q\ & 
-- ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\)))) ) ) ) # ( \pr_state.four~q\ & ( !\pr_state.two~q\ & ( (!\pr_dir_state~q\ & (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000010000001010000000100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_dir_state~q\,
	datab => \ALT_INV_LessThan1~5_combout\,
	datac => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_LessThan1~4_combout\,
	datae => \ALT_INV_pr_state.four~q\,
	dataf => \ALT_INV_pr_state.two~q\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X5_Y17_N0
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( \LessThan0~5_combout\ & ( (\pr_state.three~q\) # (\Selector2~0_combout\) ) ) # ( !\LessThan0~5_combout\ & ( ((\pr_run_state~q\ & \pr_state.three~q\)) # (\Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_run_state~q\,
	datac => \ALT_INV_Selector2~0_combout\,
	datad => \ALT_INV_pr_state.three~q\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X5_Y17_N2
\pr_state.three\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.three~q\);

-- Location: LABCELL_X6_Y19_N42
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \LessThan1~4_combout\ & ( \pr_state.four~q\ & ( (!\LessThan1~5_combout\) # (\pr_run_state~q\) ) ) ) # ( !\LessThan1~4_combout\ & ( \pr_state.four~q\ & ( \pr_run_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_LessThan1~5_combout\,
	datae => \ALT_INV_LessThan1~4_combout\,
	dataf => \ALT_INV_pr_state.four~q\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X6_Y19_N51
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \LessThan0~5_combout\ & ( \Selector3~0_combout\ ) ) # ( !\LessThan0~5_combout\ & ( \Selector3~0_combout\ ) ) # ( !\LessThan0~5_combout\ & ( !\Selector3~0_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & 
-- ((\pr_state.five~q\))) # (\pr_dir_state~q\ & (\pr_state.three~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_run_state~q\,
	datab => \ALT_INV_pr_dir_state~q\,
	datac => \ALT_INV_pr_state.three~q\,
	datad => \ALT_INV_pr_state.five~q\,
	datae => \ALT_INV_LessThan0~5_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X6_Y19_N53
\pr_state.four\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.four~q\);

-- Location: LABCELL_X6_Y17_N45
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \pr_state.six~q\ & ( \pr_state.four~q\ & ( (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\))) ) ) ) # ( !\pr_state.six~q\ & ( \pr_state.four~q\ & ( (\pr_dir_state~q\ & (!\pr_run_state~q\ & 
-- ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\)))) ) ) ) # ( \pr_state.six~q\ & ( !\pr_state.four~q\ & ( (!\pr_dir_state~q\ & (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000100000000001010001000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_dir_state~q\,
	datab => \ALT_INV_LessThan1~5_combout\,
	datac => \ALT_INV_LessThan1~4_combout\,
	datad => \ALT_INV_pr_run_state~q\,
	datae => \ALT_INV_pr_state.six~q\,
	dataf => \ALT_INV_pr_state.four~q\,
	combout => \Selector4~0_combout\);

-- Location: LABCELL_X5_Y17_N3
\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( \Selector4~0_combout\ ) # ( !\Selector4~0_combout\ & ( (\pr_state.five~q\ & ((\pr_run_state~q\) # (\LessThan0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_pr_state.five~q\,
	dataf => \ALT_INV_Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X5_Y17_N5
\pr_state.five\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.five~q\);

-- Location: LABCELL_X6_Y19_N15
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \LessThan1~5_combout\ & ( (\pr_state.six~q\ & \pr_run_state~q\) ) ) # ( !\LessThan1~5_combout\ & ( (\pr_state.six~q\ & ((\pr_run_state~q\) # (\LessThan1~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_state.six~q\,
	datac => \ALT_INV_LessThan1~4_combout\,
	datad => \ALT_INV_pr_run_state~q\,
	dataf => \ALT_INV_LessThan1~5_combout\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X6_Y19_N6
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \LessThan0~5_combout\ & ( \Selector5~0_combout\ ) ) # ( !\LessThan0~5_combout\ & ( \Selector5~0_combout\ ) ) # ( !\LessThan0~5_combout\ & ( !\Selector5~0_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & 
-- ((\pr_state.seven~q\))) # (\pr_dir_state~q\ & (\pr_state.five~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.five~q\,
	datab => \ALT_INV_pr_dir_state~q\,
	datac => \ALT_INV_pr_state.seven~q\,
	datad => \ALT_INV_pr_run_state~q\,
	datae => \ALT_INV_LessThan0~5_combout\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X6_Y19_N8
\pr_state.six\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.six~q\);

-- Location: LABCELL_X6_Y17_N12
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \pr_state.six~q\ & ( \pr_state.eight~q\ & ( (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\))) ) ) ) # ( !\pr_state.six~q\ & ( \pr_state.eight~q\ & ( (!\pr_dir_state~q\ & (!\pr_run_state~q\ & 
-- ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\)))) ) ) ) # ( \pr_state.six~q\ & ( !\pr_state.eight~q\ & ( (\pr_dir_state~q\ & (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan1~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000001000010100000001000001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_dir_state~q\,
	datab => \ALT_INV_LessThan1~5_combout\,
	datac => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_LessThan1~4_combout\,
	datae => \ALT_INV_pr_state.six~q\,
	dataf => \ALT_INV_pr_state.eight~q\,
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X5_Y17_N33
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \Selector6~0_combout\ ) # ( !\Selector6~0_combout\ & ( (\pr_state.seven~q\ & ((\pr_run_state~q\) # (\LessThan0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_pr_state.seven~q\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X5_Y17_N35
\pr_state.seven\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.seven~q\);

-- Location: LABCELL_X6_Y19_N0
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \LessThan1~4_combout\ & ( \pr_state.eight~q\ & ( (!\LessThan1~5_combout\) # (\pr_run_state~q\) ) ) ) # ( !\LessThan1~4_combout\ & ( \pr_state.eight~q\ & ( \pr_run_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_LessThan1~5_combout\,
	datae => \ALT_INV_LessThan1~4_combout\,
	dataf => \ALT_INV_pr_state.eight~q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X6_Y19_N33
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( \LessThan0~5_combout\ & ( \pr_state.nine~q\ & ( \Selector7~0_combout\ ) ) ) # ( !\LessThan0~5_combout\ & ( \pr_state.nine~q\ & ( ((!\pr_run_state~q\ & ((!\pr_dir_state~q\) # (\pr_state.seven~q\)))) # (\Selector7~0_combout\) ) ) ) 
-- # ( \LessThan0~5_combout\ & ( !\pr_state.nine~q\ & ( \Selector7~0_combout\ ) ) ) # ( !\LessThan0~5_combout\ & ( !\pr_state.nine~q\ & ( ((\pr_state.seven~q\ & (\pr_dir_state~q\ & !\pr_run_state~q\))) # (\Selector7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000000001111111111010000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.seven~q\,
	datab => \ALT_INV_pr_dir_state~q\,
	datac => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_Selector7~0_combout\,
	datae => \ALT_INV_LessThan0~5_combout\,
	dataf => \ALT_INV_pr_state.nine~q\,
	combout => \Selector7~1_combout\);

-- Location: FF_X6_Y19_N35
\pr_state.eight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.eight~q\);

-- Location: LABCELL_X7_Y17_N48
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \LessThan1~5_combout\ & ( \LessThan1~4_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & (\pr_state.ten~q\)) # (\pr_dir_state~q\ & ((\pr_state.eight~q\))))) ) ) ) # ( \LessThan1~5_combout\ & ( !\LessThan1~4_combout\ & ( 
-- (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & (\pr_state.ten~q\)) # (\pr_dir_state~q\ & ((\pr_state.eight~q\))))) ) ) ) # ( !\LessThan1~5_combout\ & ( !\LessThan1~4_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & (\pr_state.ten~q\)) # 
-- (\pr_dir_state~q\ & ((\pr_state.eight~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000000000000000000000010011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_dir_state~q\,
	datab => \ALT_INV_pr_state.ten~q\,
	datac => \ALT_INV_pr_state.eight~q\,
	datad => \ALT_INV_pr_run_state~q\,
	datae => \ALT_INV_LessThan1~5_combout\,
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X5_Y17_N27
\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( \Selector8~0_combout\ ) # ( !\Selector8~0_combout\ & ( (\pr_state.nine~q\ & ((\pr_run_state~q\) # (\LessThan0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_pr_state.nine~q\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X5_Y17_N29
\pr_state.nine\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.nine~q\);

-- Location: LABCELL_X6_Y19_N18
\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( \LessThan0~5_combout\ & ( \pr_state.nine~q\ & ( \Selector9~0_combout\ ) ) ) # ( !\LessThan0~5_combout\ & ( \pr_state.nine~q\ & ( ((!\pr_run_state~q\ & ((\pr_dir_state~q\) # (\pr_state.eleven~q\)))) # (\Selector9~0_combout\) ) ) ) 
-- # ( \LessThan0~5_combout\ & ( !\pr_state.nine~q\ & ( \Selector9~0_combout\ ) ) ) # ( !\LessThan0~5_combout\ & ( !\pr_state.nine~q\ & ( ((!\pr_run_state~q\ & (\pr_state.eleven~q\ & !\pr_dir_state~q\))) # (\Selector9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111000011110000111100101111101011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_run_state~q\,
	datab => \ALT_INV_pr_state.eleven~q\,
	datac => \ALT_INV_Selector9~0_combout\,
	datad => \ALT_INV_pr_dir_state~q\,
	datae => \ALT_INV_LessThan0~5_combout\,
	dataf => \ALT_INV_pr_state.nine~q\,
	combout => \Selector9~1_combout\);

-- Location: FF_X6_Y19_N20
\pr_state.ten\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.ten~q\);

-- Location: LABCELL_X7_Y17_N54
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \LessThan1~5_combout\ & ( \LessThan1~4_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & (\pr_state.twelve~q\)) # (\pr_dir_state~q\ & ((\pr_state.ten~q\))))) ) ) ) # ( \LessThan1~5_combout\ & ( !\LessThan1~4_combout\ & ( 
-- (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & (\pr_state.twelve~q\)) # (\pr_dir_state~q\ & ((\pr_state.ten~q\))))) ) ) ) # ( !\LessThan1~5_combout\ & ( !\LessThan1~4_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & (\pr_state.twelve~q\)) # 
-- (\pr_dir_state~q\ & ((\pr_state.ten~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000000000000000000000101001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.twelve~q\,
	datab => \ALT_INV_pr_state.ten~q\,
	datac => \ALT_INV_pr_dir_state~q\,
	datad => \ALT_INV_pr_run_state~q\,
	datae => \ALT_INV_LessThan1~5_combout\,
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \Selector10~0_combout\);

-- Location: LABCELL_X5_Y17_N24
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \LessThan0~5_combout\ & ( (\pr_state.eleven~q\) # (\Selector10~0_combout\) ) ) # ( !\LessThan0~5_combout\ & ( ((\pr_run_state~q\ & \pr_state.eleven~q\)) # (\Selector10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_run_state~q\,
	datac => \ALT_INV_Selector10~0_combout\,
	datad => \ALT_INV_pr_state.eleven~q\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X5_Y17_N26
\pr_state.eleven\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector10~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.eleven~q\);

-- Location: LABCELL_X6_Y18_N12
\Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = ( \LessThan0~5_combout\ & ( \pr_dir_state~q\ & ( \Selector11~0_combout\ ) ) ) # ( !\LessThan0~5_combout\ & ( \pr_dir_state~q\ & ( ((\pr_state.eleven~q\ & !\pr_run_state~q\)) # (\Selector11~0_combout\) ) ) ) # ( 
-- \LessThan0~5_combout\ & ( !\pr_dir_state~q\ & ( \Selector11~0_combout\ ) ) ) # ( !\LessThan0~5_combout\ & ( !\pr_dir_state~q\ & ( ((!\pr_state.one~q\ & !\pr_run_state~q\)) # (\Selector11~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110101010101010101010101010101011111010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector11~0_combout\,
	datab => \ALT_INV_pr_state.one~q\,
	datac => \ALT_INV_pr_state.eleven~q\,
	datad => \ALT_INV_pr_run_state~q\,
	datae => \ALT_INV_LessThan0~5_combout\,
	dataf => \ALT_INV_pr_dir_state~q\,
	combout => \Selector11~1_combout\);

-- Location: FF_X6_Y18_N14
\pr_state.twelve\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector11~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.twelve~q\);

-- Location: LABCELL_X6_Y17_N9
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \pr_speed_state.one_hundred~q\ & ( (!t(2) & (((\pr_speed_state.two_hundred~q\ & !t(1))) # (\rst~input_o\))) ) ) # ( !\pr_speed_state.one_hundred~q\ & ( (!t(2)) # ((\pr_speed_state.two_hundred~q\ & (!\rst~input_o\ & !t(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000000111111110100000001110011000000000111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_speed_state.two_hundred~q\,
	datab => \ALT_INV_rst~input_o\,
	datac => ALT_INV_t(1),
	datad => ALT_INV_t(2),
	dataf => \ALT_INV_pr_speed_state.one_hundred~q\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X6_Y17_N33
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( t(2) & ( (\pr_speed_state.one_hundred~q\ & !\rst~input_o\) ) ) # ( !t(2) & ( (!\pr_speed_state.one_hundred~q\) # (\rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pr_speed_state.one_hundred~q\,
	datad => \ALT_INV_rst~input_o\,
	dataf => ALT_INV_t(2),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X6_Y17_N3
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( t(4) & ( (!t(3) & ((!\pr_speed_state.two_hundred~q\) # (\rst~input_o\))) ) ) # ( !t(4) & ( (!\rst~input_o\ & (\pr_speed_state.two_hundred~q\ & (!\pr_speed_state.seventy~q\ $ (!t(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datab => \ALT_INV_pr_speed_state.seventy~q\,
	datac => ALT_INV_t(3),
	datad => \ALT_INV_pr_speed_state.two_hundred~q\,
	dataf => ALT_INV_t(4),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X6_Y17_N6
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !t(4) & ( (!\pr_speed_state.two_hundred~q\) # (((!t(3) & !\pr_speed_state.seventy~q\)) # (\rst~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101110111011111110111011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_speed_state.two_hundred~q\,
	datab => \ALT_INV_rst~input_o\,
	datac => ALT_INV_t(3),
	datad => \ALT_INV_pr_speed_state.seventy~q\,
	dataf => ALT_INV_t(4),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X6_Y17_N30
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( !\LessThan0~4_combout\ & ( (!\LessThan0~3_combout\) # ((!\LessThan0~2_combout\ & ((!\LessThan0~1_combout\) # (\LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001100111111111000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X5_Y17_N54
\Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = ( \LessThan0~6_combout\ & ( \LessThan1~4_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & ((!\pr_state.one~q\))) # (\pr_dir_state~q\ & (\pr_state.eleven~q\)))) ) ) ) # ( \LessThan0~6_combout\ & ( !\LessThan1~4_combout\ & ( 
-- (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & ((!\pr_state.one~q\))) # (\pr_dir_state~q\ & (\pr_state.eleven~q\)))) ) ) ) # ( !\LessThan0~6_combout\ & ( !\LessThan1~4_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & ((!\pr_state.one~q\))) # 
-- (\pr_dir_state~q\ & (\pr_state.eleven~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001010000110000000101000000000000000000001100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.eleven~q\,
	datab => \ALT_INV_pr_state.one~q\,
	datac => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_pr_dir_state~q\,
	datae => \ALT_INV_LessThan0~6_combout\,
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \Selector11~2_combout\);

-- Location: LABCELL_X5_Y17_N21
\Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = ( \pr_state.eleven~q\ & ( \pr_state.nine~q\ & ( (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\))) ) ) ) # ( !\pr_state.eleven~q\ & ( \pr_state.nine~q\ & ( (!\pr_run_state~q\ & (\pr_dir_state~q\ & 
-- ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\)))) ) ) ) # ( \pr_state.eleven~q\ & ( !\pr_state.nine~q\ & ( (!\pr_run_state~q\ & (!\pr_dir_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000100000100000001000101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_run_state~q\,
	datab => \ALT_INV_pr_dir_state~q\,
	datac => \ALT_INV_LessThan1~4_combout\,
	datad => \ALT_INV_LessThan0~6_combout\,
	datae => \ALT_INV_pr_state.eleven~q\,
	dataf => \ALT_INV_pr_state.nine~q\,
	combout => \Selector9~2_combout\);

-- Location: LABCELL_X5_Y17_N51
\nx_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nx_state~0_combout\ = ( \LessThan1~4_combout\ & ( (!\pr_run_state~q\ & \LessThan1~5_combout\) ) ) # ( !\LessThan1~4_combout\ & ( !\pr_run_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_LessThan1~5_combout\,
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \nx_state~0_combout\);

-- Location: LABCELL_X5_Y17_N45
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( \Selector9~2_combout\ & ( \nx_state~0_combout\ & ( (\pr_state.ten~q\ & (!\pr_state.twelve~q\ $ (\Selector11~2_combout\))) ) ) ) # ( !\Selector9~2_combout\ & ( \nx_state~0_combout\ & ( (!\pr_state.ten~q\ & (!\pr_state.twelve~q\ $ 
-- (\Selector11~2_combout\))) ) ) ) # ( \Selector9~2_combout\ & ( !\nx_state~0_combout\ & ( (\pr_state.ten~q\ & ((!\Selector11~2_combout\) # (\pr_state.twelve~q\))) ) ) ) # ( !\Selector9~2_combout\ & ( !\nx_state~0_combout\ & ( (!\Selector11~2_combout\) # 
-- (\pr_state.twelve~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000011110000010110100000010100000000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.twelve~q\,
	datac => \ALT_INV_pr_state.ten~q\,
	datad => \ALT_INV_Selector11~2_combout\,
	datae => \ALT_INV_Selector9~2_combout\,
	dataf => \ALT_INV_nx_state~0_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X5_Y17_N18
\Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = ( \pr_state.nine~q\ & ( \pr_state.seven~q\ & ( (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\))) ) ) ) # ( !\pr_state.nine~q\ & ( \pr_state.seven~q\ & ( (!\pr_run_state~q\ & (\pr_dir_state~q\ & 
-- ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\)))) ) ) ) # ( \pr_state.nine~q\ & ( !\pr_state.seven~q\ & ( (!\pr_run_state~q\ & (!\pr_dir_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000000100000100010000000101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_run_state~q\,
	datab => \ALT_INV_pr_dir_state~q\,
	datac => \ALT_INV_LessThan0~6_combout\,
	datad => \ALT_INV_LessThan1~4_combout\,
	datae => \ALT_INV_pr_state.nine~q\,
	dataf => \ALT_INV_pr_state.seven~q\,
	combout => \Selector7~2_combout\);

-- Location: LABCELL_X5_Y17_N9
\Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = ( \pr_state.five~q\ & ( \pr_state.seven~q\ & ( (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\))) ) ) ) # ( !\pr_state.five~q\ & ( \pr_state.seven~q\ & ( (!\pr_dir_state~q\ & (!\pr_run_state~q\ & 
-- ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\)))) ) ) ) # ( \pr_state.five~q\ & ( !\pr_state.seven~q\ & ( (\pr_dir_state~q\ & (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000001000011000000010000001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~6_combout\,
	datab => \ALT_INV_pr_dir_state~q\,
	datac => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_LessThan1~4_combout\,
	datae => \ALT_INV_pr_state.five~q\,
	dataf => \ALT_INV_pr_state.seven~q\,
	combout => \Selector5~2_combout\);

-- Location: LABCELL_X5_Y17_N48
\WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = ( \Selector5~2_combout\ & ( (\pr_state.six~q\ & ((!\pr_state.eight~q\ & ((!\Selector7~2_combout\))) # (\pr_state.eight~q\ & ((!\nx_state~0_combout\) # (\Selector7~2_combout\))))) ) ) # ( !\Selector5~2_combout\ & ( 
-- (!\nx_state~0_combout\ & (((!\Selector7~2_combout\)) # (\pr_state.eight~q\))) # (\nx_state~0_combout\ & (!\pr_state.six~q\ & (!\pr_state.eight~q\ $ (\Selector7~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001110100010111000111010001000000000111000110000000011100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nx_state~0_combout\,
	datab => \ALT_INV_pr_state.eight~q\,
	datac => \ALT_INV_Selector7~2_combout\,
	datad => \ALT_INV_pr_state.six~q\,
	dataf => \ALT_INV_Selector5~2_combout\,
	combout => \WideOr0~2_combout\);

-- Location: LABCELL_X6_Y17_N27
\WideOr0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = ( \Selector4~0_combout\ & ( \Selector6~0_combout\ & ( (\pr_state.five~q\ & \pr_state.seven~q\) ) ) ) # ( !\Selector4~0_combout\ & ( \Selector6~0_combout\ & ( (\pr_state.seven~q\ & (((!\pr_state.five~q\) # (\LessThan0~5_combout\)) # 
-- (\pr_run_state~q\))) ) ) ) # ( \Selector4~0_combout\ & ( !\Selector6~0_combout\ & ( (\pr_state.five~q\ & (((!\pr_state.seven~q\) # (\LessThan0~5_combout\)) # (\pr_run_state~q\))) ) ) ) # ( !\Selector4~0_combout\ & ( !\Selector6~0_combout\ & ( 
-- (((!\pr_state.five~q\ & !\pr_state.seven~q\)) # (\LessThan0~5_combout\)) # (\pr_run_state~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111111111001100010011001100001101000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_run_state~q\,
	datab => \ALT_INV_pr_state.five~q\,
	datac => \ALT_INV_pr_state.seven~q\,
	datad => \ALT_INV_LessThan0~5_combout\,
	datae => \ALT_INV_Selector4~0_combout\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \WideOr0~3_combout\);

-- Location: LABCELL_X7_Y17_N36
\WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = ( \Selector10~0_combout\ & ( \LessThan0~5_combout\ & ( (\pr_state.eleven~q\ & ((!\Selector8~0_combout\) # (\pr_state.nine~q\))) ) ) ) # ( !\Selector10~0_combout\ & ( \LessThan0~5_combout\ & ( (!\Selector8~0_combout\) # 
-- (\pr_state.nine~q\) ) ) ) # ( \Selector10~0_combout\ & ( !\LessThan0~5_combout\ & ( (\pr_state.eleven~q\ & ((!\Selector8~0_combout\ & ((!\pr_state.nine~q\) # (\pr_run_state~q\))) # (\Selector8~0_combout\ & ((\pr_state.nine~q\))))) ) ) ) # ( 
-- !\Selector10~0_combout\ & ( !\LessThan0~5_combout\ & ( (!\pr_run_state~q\ & (!\pr_state.eleven~q\ & (!\Selector8~0_combout\ $ (\pr_state.nine~q\)))) # (\pr_run_state~q\ & (((!\Selector8~0_combout\) # (\pr_state.nine~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000111011010100000001010111110000111111110101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.eleven~q\,
	datab => \ALT_INV_pr_run_state~q\,
	datac => \ALT_INV_Selector8~0_combout\,
	datad => \ALT_INV_pr_state.nine~q\,
	datae => \ALT_INV_Selector10~0_combout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LABCELL_X6_Y17_N36
\WideOr0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~5_combout\ = ( \pr_state.three~q\ & ( \Selector2~0_combout\ & ( (!\pr_state.one~q\ & (((\Selector0~0_combout\) # (\LessThan0~5_combout\)) # (\pr_run_state~q\))) # (\pr_state.one~q\ & (((!\Selector0~0_combout\)))) ) ) ) # ( \pr_state.three~q\ & ( 
-- !\Selector2~0_combout\ & ( (!\pr_run_state~q\ & (\LessThan0~5_combout\ & ((!\pr_state.one~q\) # (!\Selector0~0_combout\)))) # (\pr_run_state~q\ & ((!\pr_state.one~q\) # ((!\Selector0~0_combout\)))) ) ) ) # ( !\pr_state.three~q\ & ( !\Selector2~0_combout\ 
-- & ( (!\pr_state.one~q\ & (((\Selector0~0_combout\) # (\LessThan0~5_combout\)) # (\pr_run_state~q\))) # (\pr_state.one~q\ & (((!\Selector0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111001100010111110100110000000000000000000111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_run_state~q\,
	datab => \ALT_INV_pr_state.one~q\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	datae => \ALT_INV_pr_state.three~q\,
	dataf => \ALT_INV_Selector2~0_combout\,
	combout => \WideOr0~5_combout\);

-- Location: LABCELL_X5_Y17_N36
\Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = ( \LessThan0~6_combout\ & ( \LessThan1~4_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & (\pr_state.three~q\)) # (\pr_dir_state~q\ & ((!\pr_state.one~q\))))) ) ) ) # ( \LessThan0~6_combout\ & ( !\LessThan1~4_combout\ & ( 
-- (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & (\pr_state.three~q\)) # (\pr_dir_state~q\ & ((!\pr_state.one~q\))))) ) ) ) # ( !\LessThan0~6_combout\ & ( !\LessThan1~4_combout\ & ( (!\pr_run_state~q\ & ((!\pr_dir_state~q\ & (\pr_state.three~q\)) # 
-- (\pr_dir_state~q\ & ((!\pr_state.one~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011000000010100001100000000000000000000000101000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.three~q\,
	datab => \ALT_INV_pr_state.one~q\,
	datac => \ALT_INV_pr_run_state~q\,
	datad => \ALT_INV_pr_dir_state~q\,
	datae => \ALT_INV_LessThan0~6_combout\,
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \Selector1~2_combout\);

-- Location: LABCELL_X5_Y17_N6
\Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = ( \pr_state.three~q\ & ( \pr_state.five~q\ & ( (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\))) ) ) ) # ( !\pr_state.three~q\ & ( \pr_state.five~q\ & ( (!\pr_dir_state~q\ & (!\pr_run_state~q\ & 
-- ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\)))) ) ) ) # ( \pr_state.three~q\ & ( !\pr_state.five~q\ & ( (\pr_dir_state~q\ & (!\pr_run_state~q\ & ((!\LessThan1~4_combout\) # (\LessThan0~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100010000000011000100000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~6_combout\,
	datab => \ALT_INV_pr_dir_state~q\,
	datac => \ALT_INV_LessThan1~4_combout\,
	datad => \ALT_INV_pr_run_state~q\,
	datae => \ALT_INV_pr_state.three~q\,
	dataf => \ALT_INV_pr_state.five~q\,
	combout => \Selector3~2_combout\);

-- Location: LABCELL_X5_Y17_N15
\WideOr0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~4_combout\ = ( \Selector3~2_combout\ & ( (\pr_state.four~q\ & ((!\pr_state.two~q\ & ((!\Selector1~2_combout\))) # (\pr_state.two~q\ & ((!\nx_state~0_combout\) # (\Selector1~2_combout\))))) ) ) # ( !\Selector3~2_combout\ & ( (!\nx_state~0_combout\ 
-- & (((!\Selector1~2_combout\)) # (\pr_state.two~q\))) # (\nx_state~0_combout\ & (!\pr_state.four~q\ & (!\pr_state.two~q\ $ (\Selector1~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000110010111010100011001000001110000000110000111000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nx_state~0_combout\,
	datab => \ALT_INV_pr_state.two~q\,
	datac => \ALT_INV_pr_state.four~q\,
	datad => \ALT_INV_Selector1~2_combout\,
	dataf => \ALT_INV_Selector3~2_combout\,
	combout => \WideOr0~4_combout\);

-- Location: LABCELL_X6_Y17_N54
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \WideOr0~5_combout\ & ( \WideOr0~4_combout\ & ( (!\WideOr0~0_combout\) # ((!\WideOr0~2_combout\) # ((!\WideOr0~3_combout\) # (!\WideOr0~1_combout\))) ) ) ) # ( !\WideOr0~5_combout\ & ( \WideOr0~4_combout\ ) ) # ( \WideOr0~5_combout\ 
-- & ( !\WideOr0~4_combout\ ) ) # ( !\WideOr0~5_combout\ & ( !\WideOr0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~0_combout\,
	datab => \ALT_INV_WideOr0~2_combout\,
	datac => \ALT_INV_WideOr0~3_combout\,
	datad => \ALT_INV_WideOr0~1_combout\,
	datae => \ALT_INV_WideOr0~5_combout\,
	dataf => \ALT_INV_WideOr0~4_combout\,
	combout => \WideOr0~combout\);

-- Location: FF_X7_Y17_N53
\t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~9_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(0));

-- Location: FF_X6_Y17_N41
\t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \WideOr0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(1));

-- Location: LABCELL_X6_Y17_N48
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !t(0) & ( (!\rst~input_o\ & (\pr_speed_state.seventy~q\ & (!\pr_speed_state.two_hundred~q\ $ (t(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_speed_state.two_hundred~q\,
	datab => ALT_INV_t(1),
	datac => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_pr_speed_state.seventy~q\,
	dataf => ALT_INV_t(0),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X6_Y17_N18
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan1~4_combout\ & ( \LessThan0~0_combout\ & ( ((\LessThan0~2_combout\ & \LessThan0~3_combout\)) # (\LessThan0~4_combout\) ) ) ) # ( \LessThan1~4_combout\ & ( !\LessThan0~0_combout\ & ( ((\LessThan0~3_combout\ & 
-- ((\LessThan0~2_combout\) # (\LessThan0~1_combout\)))) # (\LessThan0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001111111111100000000000000000000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_LessThan0~4_combout\,
	datae => \ALT_INV_LessThan1~4_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X6_Y18_N57
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \LessThan1~4_combout\ & ( \LessThan1~5_combout\ & ( (\pr_state.two~q\ & \pr_run_state~q\) ) ) ) # ( !\LessThan1~4_combout\ & ( \LessThan1~5_combout\ & ( (\pr_state.two~q\ & \pr_run_state~q\) ) ) ) # ( \LessThan1~4_combout\ & ( 
-- !\LessThan1~5_combout\ & ( \pr_state.two~q\ ) ) ) # ( !\LessThan1~4_combout\ & ( !\LessThan1~5_combout\ & ( (\pr_state.two~q\ & \pr_run_state~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.two~q\,
	datac => \ALT_INV_pr_run_state~q\,
	datae => \ALT_INV_LessThan1~4_combout\,
	dataf => \ALT_INV_LessThan1~5_combout\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X6_Y18_N0
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \pr_state.one~q\ & ( \Selector1~0_combout\ ) ) # ( !\pr_state.one~q\ & ( \Selector1~0_combout\ ) ) # ( \pr_state.one~q\ & ( !\Selector1~0_combout\ & ( (!\pr_dir_state~q\ & (!\pr_run_state~q\ & (!\LessThan0~5_combout\ & 
-- \pr_state.three~q\))) ) ) ) # ( !\pr_state.one~q\ & ( !\Selector1~0_combout\ & ( (!\pr_run_state~q\ & (!\LessThan0~5_combout\ & ((\pr_state.three~q\) # (\pr_dir_state~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000000000001000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_dir_state~q\,
	datab => \ALT_INV_pr_run_state~q\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_pr_state.three~q\,
	datae => \ALT_INV_pr_state.one~q\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X6_Y18_N2
\pr_state.two\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.two~q\);

-- Location: LABCELL_X5_Y18_N15
WideOr18 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr18~combout\ = ( \pr_state.four~q\ ) # ( !\pr_state.four~q\ & ( (\pr_state.three~q\) # (\pr_state.two~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111101011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.two~q\,
	datac => \ALT_INV_pr_state.three~q\,
	datae => \ALT_INV_pr_state.four~q\,
	combout => \WideOr18~combout\);

-- Location: LABCELL_X6_Y19_N12
WideOr17 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr17~combout\ = ( \pr_state.five~q\ ) # ( !\pr_state.five~q\ & ( (\pr_state.four~q\) # (\pr_state.six~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_state.six~q\,
	datac => \ALT_INV_pr_state.four~q\,
	dataf => \ALT_INV_pr_state.five~q\,
	combout => \WideOr17~combout\);

-- Location: LABCELL_X6_Y19_N36
WideOr16 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr16~combout\ = ( \pr_state.six~q\ ) # ( !\pr_state.six~q\ & ( (\pr_state.seven~q\) # (\pr_state.eight~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.eight~q\,
	datac => \ALT_INV_pr_state.seven~q\,
	dataf => \ALT_INV_pr_state.six~q\,
	combout => \WideOr16~combout\);

-- Location: LABCELL_X6_Y19_N24
WideOr15 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr15~combout\ = ( \pr_state.eight~q\ ) # ( !\pr_state.eight~q\ & ( (\pr_state.ten~q\) # (\pr_state.nine~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_state.nine~q\,
	datac => \ALT_INV_pr_state.ten~q\,
	dataf => \ALT_INV_pr_state.eight~q\,
	combout => \WideOr15~combout\);

-- Location: LABCELL_X5_Y18_N45
WideOr14 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr14~combout\ = ( \pr_state.ten~q\ ) # ( !\pr_state.ten~q\ & ( (\pr_state.twelve~q\) # (\pr_state.eleven~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.eleven~q\,
	datac => \ALT_INV_pr_state.twelve~q\,
	dataf => \ALT_INV_pr_state.ten~q\,
	combout => \WideOr14~combout\);

-- Location: LABCELL_X5_Y18_N27
WideOr13 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr13~combout\ = ( \pr_state.two~q\ & ( \pr_state.one~q\ ) ) # ( !\pr_state.two~q\ & ( \pr_state.one~q\ & ( \pr_state.twelve~q\ ) ) ) # ( \pr_state.two~q\ & ( !\pr_state.one~q\ ) ) # ( !\pr_state.two~q\ & ( !\pr_state.one~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pr_state.twelve~q\,
	datae => \ALT_INV_pr_state.two~q\,
	dataf => \ALT_INV_pr_state.one~q\,
	combout => \WideOr13~combout\);

-- Location: LABCELL_X21_Y40_N0
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


