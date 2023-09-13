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

-- DATE "05/17/2023 14:31:01"

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

ENTITY 	timer IS
    PORT (
	clk_in : IN std_logic;
	rst : IN std_logic;
	clk_slow : BUFFER std_logic;
	counter : OUT std_logic_vector(5 DOWNTO 0);
	ssd0 : OUT std_logic_vector(6 DOWNTO 0);
	ssd1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END timer;

-- Design Ports Information
-- clk_slow	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[4]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd1[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk_slow : std_logic;
SIGNAL ww_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ssd0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \count[3]~2_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \count[1]~3_combout\ : std_logic;
SIGNAL \count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clk_slow~0_combout\ : std_logic;
SIGNAL \clk_slow~reg0feeder_combout\ : std_logic;
SIGNAL \clk_slow~reg0_q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \process_1:count[1]~q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \process_1:count[2]~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \process_1:count[3]~q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \process_1:count[4]~q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \process_1:count[5]~q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \process_1:flag~0_combout\ : std_logic;
SIGNAL \process_1:flag~q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \process_1:count[0]~q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(4 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \ALT_INV_process_1:count[5]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:count[4]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:count[3]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:count[2]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:count[1]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:count[0]~q\ : std_logic;
SIGNAL \ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~8_combout\ : std_logic;
SIGNAL \ALT_INV_process_1:flag~q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk_slow~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk_slow~reg0_q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;

BEGIN

ww_clk_in <= clk_in;
ww_rst <= rst;
clk_slow <= ww_clk_slow;
counter <= ww_counter;
ssd0 <= ww_ssd0;
ssd1 <= ww_ssd1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~1_sumout\;
\ALT_INV_process_1:count[5]~q\ <= NOT \process_1:count[5]~q\;
\ALT_INV_process_1:count[4]~q\ <= NOT \process_1:count[4]~q\;
\ALT_INV_process_1:count[3]~q\ <= NOT \process_1:count[3]~q\;
\ALT_INV_process_1:count[2]~q\ <= NOT \process_1:count[2]~q\;
\ALT_INV_process_1:count[1]~q\ <= NOT \process_1:count[1]~q\;
\ALT_INV_process_1:count[0]~q\ <= NOT \process_1:count[0]~q\;
\ALT_INV_count[0]~DUPLICATE_q\ <= NOT \count[0]~DUPLICATE_q\;
\ALT_INV_count[1]~DUPLICATE_q\ <= NOT \count[1]~DUPLICATE_q\;
\ALT_INV_count[3]~DUPLICATE_q\ <= NOT \count[3]~DUPLICATE_q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[20]~11_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~10_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[20]~10_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~2_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~9_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~8_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\;
\ALT_INV_process_1:flag~q\ <= NOT \process_1:flag~q\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~7_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[19]~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~6_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[19]~6_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_clk_slow~0_combout\ <= NOT \clk_slow~0_combout\;
ALT_INV_count(0) <= NOT count(0);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(4) <= NOT count(4);
ALT_INV_count(2) <= NOT count(2);
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~5_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~4_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[19]~4_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~1_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~0_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\;
\ALT_INV_clk_slow~reg0_q\ <= NOT \clk_slow~reg0_q\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~17_sumout\;

-- Location: IOOBUF_X89_Y36_N5
\clk_slow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_slow~reg0_q\,
	devoe => ww_devoe,
	o => ww_clk_slow);

-- Location: IOOBUF_X89_Y35_N45
\counter[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_1:count[0]~q\,
	devoe => ww_devoe,
	o => ww_counter(0));

-- Location: IOOBUF_X89_Y35_N79
\counter[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_1:count[1]~q\,
	devoe => ww_devoe,
	o => ww_counter(1));

-- Location: IOOBUF_X89_Y36_N39
\counter[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_1:count[2]~q\,
	devoe => ww_devoe,
	o => ww_counter(2));

-- Location: IOOBUF_X89_Y36_N22
\counter[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_1:count[3]~q\,
	devoe => ww_devoe,
	o => ww_counter(3));

-- Location: IOOBUF_X89_Y36_N56
\counter[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_1:count[4]~q\,
	devoe => ww_devoe,
	o => ww_counter(4));

-- Location: IOOBUF_X89_Y35_N96
\counter[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_1:count[5]~q\,
	devoe => ww_devoe,
	o => ww_counter(5));

-- Location: IOOBUF_X89_Y9_N22
\ssd0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(0));

-- Location: IOOBUF_X89_Y38_N56
\ssd0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(1));

-- Location: IOOBUF_X89_Y38_N39
\ssd0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(2));

-- Location: IOOBUF_X89_Y9_N39
\ssd0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(3));

-- Location: IOOBUF_X89_Y38_N5
\ssd0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(4));

-- Location: IOOBUF_X89_Y38_N22
\ssd0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(5));

-- Location: IOOBUF_X89_Y9_N5
\ssd0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd0(6));

-- Location: IOOBUF_X89_Y37_N56
\ssd1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(0));

-- Location: IOOBUF_X89_Y37_N39
\ssd1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(1));

-- Location: IOOBUF_X84_Y81_N53
\ssd1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(2));

-- Location: IOOBUF_X89_Y8_N5
\ssd1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(3));

-- Location: IOOBUF_X89_Y37_N5
\ssd1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(4));

-- Location: IOOBUF_X89_Y37_N22
\ssd1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(5));

-- Location: IOOBUF_X89_Y8_N22
\ssd1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_ssd1(6));

-- Location: IOIBUF_X89_Y35_N61
\clk_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G10
\clk_in~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~input_o\,
	outclk => \clk_in~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y9_N55
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X88_Y35_N7
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \count[1]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LABCELL_X88_Y35_N57
\count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[3]~2_combout\ = ( \count[0]~DUPLICATE_q\ & ( !count(3) $ (((!count(1)) # (!count(2)))) ) ) # ( !\count[0]~DUPLICATE_q\ & ( count(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(1),
	datac => ALT_INV_count(2),
	datad => ALT_INV_count(3),
	dataf => \ALT_INV_count[0]~DUPLICATE_q\,
	combout => \count[3]~2_combout\);

-- Location: FF_X88_Y35_N59
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \count[3]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LABCELL_X88_Y35_N15
\count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~0_combout\ = ( \count[1]~DUPLICATE_q\ & ( !\count[0]~DUPLICATE_q\ $ (!count(2)) ) ) # ( !\count[1]~DUPLICATE_q\ & ( (count(2) & ((!count(4)) # ((\count[0]~DUPLICATE_q\) # (count(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(4),
	datab => ALT_INV_count(3),
	datac => \ALT_INV_count[0]~DUPLICATE_q\,
	datad => ALT_INV_count(2),
	dataf => \ALT_INV_count[1]~DUPLICATE_q\,
	combout => \count~0_combout\);

-- Location: FF_X88_Y35_N17
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: FF_X88_Y35_N58
\count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \count[3]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N3
\count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~1_combout\ = ( count(4) & ( \count[3]~DUPLICATE_q\ & ( (!\count[0]~DUPLICATE_q\) # ((!count(2)) # (!\count[1]~DUPLICATE_q\)) ) ) ) # ( !count(4) & ( \count[3]~DUPLICATE_q\ & ( (\count[0]~DUPLICATE_q\ & (count(2) & \count[1]~DUPLICATE_q\)) ) ) ) # ( 
-- count(4) & ( !\count[3]~DUPLICATE_q\ & ( ((!count(2)) # (\count[1]~DUPLICATE_q\)) # (\count[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111111101111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datab => ALT_INV_count(2),
	datac => \ALT_INV_count[1]~DUPLICATE_q\,
	datae => ALT_INV_count(4),
	dataf => \ALT_INV_count[3]~DUPLICATE_q\,
	combout => \count~1_combout\);

-- Location: FF_X88_Y35_N5
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \count~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: FF_X88_Y35_N14
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \count~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LABCELL_X88_Y35_N12
\count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~4_combout\ = ( count(2) & ( (!count(0) & ((!count(4)) # ((count(1)) # (count(3))))) ) ) # ( !count(2) & ( !count(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010111111000000001011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(4),
	datab => ALT_INV_count(3),
	datac => ALT_INV_count(1),
	datad => ALT_INV_count(0),
	dataf => ALT_INV_count(2),
	combout => \count~4_combout\);

-- Location: FF_X88_Y35_N13
\count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \count~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N6
\count[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[1]~3_combout\ = ( !count(1) & ( \count[0]~DUPLICATE_q\ ) ) # ( count(1) & ( !\count[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_count(1),
	dataf => \ALT_INV_count[0]~DUPLICATE_q\,
	combout => \count[1]~3_combout\);

-- Location: FF_X88_Y35_N8
\count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \count[1]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N18
\clk_slow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_slow~0_combout\ = ( count(3) & ( count(0) & ( \clk_slow~reg0_q\ ) ) ) # ( !count(3) & ( count(0) & ( ((\count[1]~DUPLICATE_q\ & (count(4) & !count(2)))) # (\clk_slow~reg0_q\) ) ) ) # ( count(3) & ( !count(0) & ( \clk_slow~reg0_q\ ) ) ) # ( !count(3) 
-- & ( !count(0) & ( (\clk_slow~reg0_q\ & (((!count(4)) # (!count(2))) # (\count[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010001010101010101010101010111010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_slow~reg0_q\,
	datab => \ALT_INV_count[1]~DUPLICATE_q\,
	datac => ALT_INV_count(4),
	datad => ALT_INV_count(2),
	datae => ALT_INV_count(3),
	dataf => ALT_INV_count(0),
	combout => \clk_slow~0_combout\);

-- Location: LABCELL_X88_Y35_N24
\clk_slow~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_slow~reg0feeder_combout\ = ( \clk_slow~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_clk_slow~0_combout\,
	combout => \clk_slow~reg0feeder_combout\);

-- Location: FF_X88_Y35_N26
\clk_slow~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \clk_slow~reg0feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_slow~reg0_q\);

-- Location: LABCELL_X85_Y35_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \process_1:count[0]~q\ ) + ( !\process_1:flag~q\ ) + ( !VCC ))
-- \Add1~2\ = CARRY(( \process_1:count[0]~q\ ) + ( !\process_1:flag~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:flag~q\,
	datad => \ALT_INV_process_1:count[0]~q\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X85_Y35_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \process_1:count[1]~q\ ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \process_1:count[1]~q\ ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:count[1]~q\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X85_Y35_N44
\process_1:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~reg0_q\,
	asdata => \Add1~5_sumout\,
	sclr => \Equal2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:count[1]~q\);

-- Location: LABCELL_X85_Y35_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \process_1:count[2]~q\ ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \process_1:count[2]~q\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_1:count[2]~q\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X85_Y35_N59
\process_1:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~reg0_q\,
	asdata => \Add1~9_sumout\,
	sclr => \Equal2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:count[2]~q\);

-- Location: LABCELL_X85_Y35_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \process_1:count[3]~q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \process_1:count[3]~q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[3]~q\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X85_Y35_N20
\process_1:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~reg0_q\,
	asdata => \Add1~13_sumout\,
	sclr => \Equal2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:count[3]~q\);

-- Location: LABCELL_X85_Y35_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \process_1:count[4]~q\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \process_1:count[4]~q\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:count[4]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X85_Y35_N50
\process_1:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~reg0_q\,
	asdata => \Add1~17_sumout\,
	sclr => \Equal2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:count[4]~q\);

-- Location: LABCELL_X85_Y35_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \process_1:count[5]~q\ ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:count[5]~q\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\);

-- Location: FF_X85_Y35_N32
\process_1:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~reg0_q\,
	asdata => \Add1~21_sumout\,
	sclr => \Equal2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:count[5]~q\);

-- Location: LABCELL_X85_Y35_N30
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( \process_1:count[5]~q\ & ( \process_1:count[3]~q\ & ( (\process_1:count[4]~q\ & (\process_1:count[2]~q\ & (!\process_1:count[0]~q\ & !\process_1:count[1]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[4]~q\,
	datab => \ALT_INV_process_1:count[2]~q\,
	datac => \ALT_INV_process_1:count[0]~q\,
	datad => \ALT_INV_process_1:count[1]~q\,
	datae => \ALT_INV_process_1:count[5]~q\,
	dataf => \ALT_INV_process_1:count[3]~q\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X85_Y35_N54
\process_1:flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1:flag~0_combout\ = ( \Equal2~0_combout\ ) # ( !\Equal2~0_combout\ & ( \process_1:flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:flag~q\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \process_1:flag~0_combout\);

-- Location: FF_X85_Y35_N23
\process_1:flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~reg0_q\,
	asdata => \process_1:flag~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:flag~q\);

-- Location: FF_X85_Y35_N38
\process_1:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~reg0_q\,
	asdata => \Add1~1_sumout\,
	sclr => \Equal2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:count[0]~q\);

-- Location: MLABCELL_X84_Y35_N30
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( \process_1:count[2]~q\ ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( \process_1:count[2]~q\ ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:count[2]~q\,
	cin => GND,
	sharein => GND,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: MLABCELL_X84_Y35_N33
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( \process_1:count[3]~q\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( \process_1:count[3]~q\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:count[3]~q\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: MLABCELL_X84_Y35_N36
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ = SUM(( !\process_1:count[4]~q\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ = CARRY(( !\process_1:count[4]~q\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ = SHARE(\process_1:count[4]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:count[4]~q\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~18\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~19\);

-- Location: MLABCELL_X84_Y35_N39
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ = SUM(( \process_1:count[5]~q\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ = CARRY(( \process_1:count[5]~q\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[5]~q\,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~18\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~19\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~14\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~15\);

-- Location: MLABCELL_X84_Y35_N42
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~14\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~15\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: MLABCELL_X84_Y35_N24
\Mod0|auto_generated|divider|divider|StageOut[21]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ = ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\);

-- Location: MLABCELL_X84_Y35_N21
\Mod0|auto_generated|divider|divider|StageOut[21]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ = ( \process_1:count[5]~q\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_process_1:count[5]~q\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\);

-- Location: MLABCELL_X84_Y35_N51
\Mod0|auto_generated|divider|divider|StageOut[19]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~6_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ & ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~6_combout\);

-- Location: MLABCELL_X84_Y35_N48
\Mod0|auto_generated|divider|divider|StageOut[19]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~7_combout\ = ( \process_1:count[3]~q\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_process_1:count[3]~q\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~7_combout\);

-- Location: LABCELL_X83_Y35_N6
\Mod0|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_5~22_cout\);

-- Location: LABCELL_X83_Y35_N9
\Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( \process_1:count[1]~q\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~22_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_5~6\ = CARRY(( \process_1:count[1]~q\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[1]~q\,
	cin => \Mod0|auto_generated|divider|divider|op_5~22_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X83_Y35_N12
\Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\process_1:count[2]~q\)) ) + ( \Mod0|auto_generated|divider|divider|op_5~6\ ))
-- \Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\process_1:count[2]~q\)) ) + ( \Mod0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \ALT_INV_process_1:count[2]~q\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X83_Y35_N15
\Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[19]~7_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[19]~6_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ ))
-- \Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[19]~7_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[19]~6_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~7_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X83_Y35_N18
\Mod0|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\process_1:count[4]~q\))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ ))
-- \Mod0|auto_generated|divider|divider|op_5~26\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\process_1:count[4]~q\))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \ALT_INV_process_1:count[4]~q\,
	cin => \Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~26\);

-- Location: LABCELL_X83_Y35_N21
\Mod0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~26\ ))
-- \Mod0|auto_generated|divider|divider|op_5~18\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~9_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~8_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X83_Y35_N24
\Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_5~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X83_Y35_N57
\Mod0|auto_generated|divider|divider|StageOut[18]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\process_1:count[2]~q\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \process_1:count[2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \ALT_INV_process_1:count[2]~q\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LABCELL_X83_Y35_N30
\Mod0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X83_Y35_N33
\Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( \process_1:count[0]~q\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( \process_1:count[0]~q\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:count[0]~q\,
	cin => \Mod0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X83_Y35_N36
\Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\process_1:count[1]~q\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~6\ ))
-- \Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\process_1:count[1]~q\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \ALT_INV_process_1:count[1]~q\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X83_Y35_N39
\Mod0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))
-- \Mod0|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~14\);

-- Location: MLABCELL_X84_Y35_N57
\Mod0|auto_generated|divider|divider|StageOut[20]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~10_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~10_combout\);

-- Location: MLABCELL_X84_Y35_N54
\Mod0|auto_generated|divider|divider|StageOut[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~11_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \process_1:count[4]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \ALT_INV_process_1:count[4]~q\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~11_combout\);

-- Location: MLABCELL_X84_Y35_N18
\Mod0|auto_generated|divider|divider|StageOut[19]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~4_combout\ = ( \process_1:count[3]~q\ & ( (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\) # (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) ) # ( 
-- !\process_1:count[3]~q\ & ( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	dataf => \ALT_INV_process_1:count[3]~q\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~4_combout\);

-- Location: LABCELL_X83_Y35_N42
\Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~4_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ ))
-- \Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~4_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~4_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X83_Y35_N45
\Mod0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_5~25_sumout\)) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[20]~11_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~10_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~18\,
	cout => \Mod0|auto_generated|divider|divider|op_6~30_cout\);

-- Location: LABCELL_X83_Y35_N48
\Mod0|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~30_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~22_cout\);

-- Location: LABCELL_X83_Y35_N51
\Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_6~22_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X83_Y35_N54
\Mod0|auto_generated|divider|divider|StageOut[32]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~9_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~13_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~9_sumout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_6~13_sumout\)) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ & 
-- \Mod0|auto_generated|divider|divider|op_5~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000001101010101111100110101010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\);

-- Location: LABCELL_X83_Y35_N3
\Mod0|auto_generated|divider|divider|StageOut[33]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~13_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~17_sumout\)))) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\) # ((\Mod0|auto_generated|divider|divider|StageOut[19]~4_combout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~13_sumout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[19]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~4_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\);

-- Location: LABCELL_X83_Y35_N0
\Mod0|auto_generated|divider|divider|StageOut[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~9_sumout\)))) # 
-- (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_5~1_sumout\) # ((\process_1:count[1]~q\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~9_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\process_1:count[1]~q\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_process_1:count[1]~q\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\);

-- Location: LABCELL_X85_Y35_N57
\Mod0|auto_generated|divider|divider|StageOut[30]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \process_1:count[0]~q\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_6~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[0]~q\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\);

-- Location: LABCELL_X88_Y35_N36
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( ((\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111101110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y35_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ & \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\))) # (\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & 
-- \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100110111111000110011011111100011001101111110001100110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y35_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & ( 
-- \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ ) ) # ( \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( 
-- \Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( 
-- \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y35_N54
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ $ 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\))) # (\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\))) # (\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111000011001111111100001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y35_N30
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ & ( (!\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & 
-- \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~5_combout\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y35_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ $ 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~5_combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y35_N48
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & ( \Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ $ 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\) ) ) ) # ( \Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( 
-- \Mod0|auto_generated|divider|divider|StageOut[33]~5_combout\ ) ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[31]~1_combout\ & ( !\Mod0|auto_generated|divider|divider|StageOut[30]~0_combout\ & ( 
-- \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001111000011110000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~3_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X84_Y35_N0
\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( \process_1:count[2]~q\ ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( \process_1:count[2]~q\ ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:count[2]~q\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: MLABCELL_X84_Y35_N3
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( \process_1:count[3]~q\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( \process_1:count[3]~q\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:count[3]~q\,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: MLABCELL_X84_Y35_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !\process_1:count[4]~q\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !\process_1:count[4]~q\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(\process_1:count[4]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:count[4]~q\,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: MLABCELL_X84_Y35_N9
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( \process_1:count[5]~q\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( \process_1:count[5]~q\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[5]~q\,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: MLABCELL_X84_Y35_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X85_Y35_N36
\Div0|auto_generated|divider|divider|StageOut[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = ( !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: MLABCELL_X87_Y35_N27
\Div0|auto_generated|divider|divider|StageOut[18]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = ( \process_1:count[5]~q\ & ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_process_1:count[5]~q\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LABCELL_X85_Y35_N18
\Div0|auto_generated|divider|divider|StageOut[16]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LABCELL_X85_Y35_N21
\Div0|auto_generated|divider|divider|StageOut[16]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\process_1:count[3]~q\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[3]~q\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: MLABCELL_X87_Y35_N36
\Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: MLABCELL_X87_Y35_N39
\Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( \process_1:count[1]~q\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( \process_1:count[1]~q\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[1]~q\,
	cin => \Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~22\);

-- Location: MLABCELL_X87_Y35_N42
\Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\process_1:count[2]~q\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))
-- \Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\process_1:count[2]~q\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[2]~q\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X87_Y35_N45
\Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( VCC ) + ( (\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\) # (\Div0|auto_generated|divider|divider|StageOut[16]~4_combout\) ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))
-- \Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( VCC ) + ( (\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\) # (\Div0|auto_generated|divider|divider|StageOut[16]~4_combout\) ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X87_Y35_N48
\Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\process_1:count[4]~q\)) ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))
-- \Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\process_1:count[4]~q\)) ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[4]~q\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X87_Y35_N51
\Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\Div0|auto_generated|divider|divider|StageOut[18]~1_combout\) # (\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~10\,
	cout => \Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: MLABCELL_X87_Y35_N54
\Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X85_Y35_N51
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X87_Y35_N30
\Div0|auto_generated|divider|divider|StageOut[17]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ & ( !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: MLABCELL_X87_Y35_N33
\Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = ( \process_1:count[4]~q\ & ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_process_1:count[4]~q\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: MLABCELL_X87_Y35_N24
\Div0|auto_generated|divider|divider|StageOut[16]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ ) # ( !\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ( 
-- \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: MLABCELL_X84_Y35_N27
\Div0|auto_generated|divider|divider|StageOut[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \process_1:count[2]~q\ ) ) # ( !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:count[2]~q\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: MLABCELL_X87_Y35_N0
\Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: MLABCELL_X87_Y35_N3
\Div0|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( \process_1:count[0]~q\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:count[0]~q\,
	cin => \Div0|auto_generated|divider|divider|op_6~26_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~22_cout\);

-- Location: MLABCELL_X87_Y35_N6
\Div0|auto_generated|divider|divider|op_6~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~18_cout\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\process_1:count[1]~q\)) ) + ( \Div0|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \ALT_INV_process_1:count[1]~q\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~22_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~18_cout\);

-- Location: MLABCELL_X87_Y35_N9
\Div0|auto_generated|divider|divider|op_6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~14_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~7_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~14_cout\);

-- Location: MLABCELL_X87_Y35_N12
\Div0|auto_generated|divider|divider|op_6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~6_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10_cout\);

-- Location: MLABCELL_X87_Y35_N15
\Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~9_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[17]~3_combout\) # (\Div0|auto_generated|divider|divider|StageOut[17]~2_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~2_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: MLABCELL_X87_Y35_N18
\Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X85_Y35_N45
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X85_Y35_N48
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\Div0|auto_generated|divider|divider|op_6~1_sumout\) # ((\Div0|auto_generated|divider|divider|op_5~1_sumout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110100111101001111010011110100111101001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X85_Y35_N27
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ $ (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X85_Y35_N42
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ ) # ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ $ 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X85_Y35_N24
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X72_Y2_N3
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


