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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/28/2021 15:51:13"

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

ENTITY 	ularv IS
    PORT (
	opcode : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Z : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic
	);
END ularv;

-- Design Ports Information
-- Z[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[7]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[9]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[10]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[12]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[13]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[14]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[15]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[16]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[17]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[18]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[19]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[20]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[21]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[22]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[23]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[24]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[25]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[26]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[27]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[28]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[29]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[30]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[31]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ularv IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \LessThan0~40_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \LessThan0~27_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \LessThan0~25_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \LessThan0~22_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \LessThan0~24_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \LessThan0~23_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \LessThan0~31_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \LessThan0~29_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \LessThan0~28_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \LessThan0~21_combout\ : std_logic;
SIGNAL \LessThan0~36_combout\ : std_logic;
SIGNAL \LessThan0~37_combout\ : std_logic;
SIGNAL \LessThan0~38_combout\ : std_logic;
SIGNAL \LessThan0~33_combout\ : std_logic;
SIGNAL \LessThan0~34_combout\ : std_logic;
SIGNAL \LessThan0~35_combout\ : std_logic;
SIGNAL \LessThan0~39_combout\ : std_logic;
SIGNAL \LessThan0~41_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \LessThan0~42_combout\ : std_logic;
SIGNAL \LessThan0~43_combout\ : std_logic;
SIGNAL \Equal7~8_combout\ : std_logic;
SIGNAL \Equal7~9_combout\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \ShiftRight1~7_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \ShiftRight1~5_combout\ : std_logic;
SIGNAL \ShiftRight1~8_combout\ : std_logic;
SIGNAL \ShiftRight1~9_combout\ : std_logic;
SIGNAL \ShiftRight1~3_combout\ : std_logic;
SIGNAL \ShiftRight1~2_combout\ : std_logic;
SIGNAL \ShiftRight1~1_combout\ : std_logic;
SIGNAL \ShiftRight1~0_combout\ : std_logic;
SIGNAL \ShiftRight1~4_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight1~10_combout\ : std_logic;
SIGNAL \ShiftRight1~11_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \ShiftRight1~41_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftRight1~42_combout\ : std_logic;
SIGNAL \ShiftRight1~43_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight1~44_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftRight1~45_combout\ : std_logic;
SIGNAL \ShiftRight1~46_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftRight1~47_combout\ : std_logic;
SIGNAL \ShiftRight1~48_combout\ : std_logic;
SIGNAL \ShiftRight1~49_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight1~50_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight1~51_combout\ : std_logic;
SIGNAL \ShiftRight1~52_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight1~53_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight1~54_combout\ : std_logic;
SIGNAL \ShiftRight1~55_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftRight1~56_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight1~57_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \ShiftRight1~58_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight1~59_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight1~61_combout\ : std_logic;
SIGNAL \ShiftRight1~62_combout\ : std_logic;
SIGNAL \ShiftRight1~60_combout\ : std_logic;
SIGNAL \ShiftRight1~63_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \ShiftRight1~64_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ShiftRight1~65_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \ShiftRight1~66_combout\ : std_logic;
SIGNAL \ShiftRight1~67_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ShiftRight1~68_combout\ : std_logic;
SIGNAL \ShiftRight1~69_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \ShiftRight1~70_combout\ : std_logic;
SIGNAL \ShiftRight1~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \ShiftRight1~72_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ShiftRight1~73_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~71\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \ShiftRight1~74_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~75\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight1~75_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~83\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight1~76_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~87\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight1~77_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \ShiftRight1~78_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight1~79_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~95\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~99\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight1~80_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~103\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ShiftRight1~81_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ShiftLeft0~79_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \ShiftRight1~82_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ShiftLeft0~82_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~107\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ShiftRight1~83_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~111\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \ShiftRight1~84_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~115\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \ShiftRight1~85_combout\ : std_logic;
SIGNAL \ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~90_combout\ : std_logic;
SIGNAL \ShiftLeft0~91_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~119\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~92_combout\ : std_logic;
SIGNAL \ShiftLeft0~93_combout\ : std_logic;
SIGNAL \ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~123\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux31~12_combout\ : std_logic;
SIGNAL \Mux31~14_combout\ : std_logic;
SIGNAL \Mux31~13_combout\ : std_logic;
SIGNAL \Mux31~15_combout\ : std_logic;
SIGNAL \Mux31~10_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \Mux31~11_combout\ : std_logic;
SIGNAL \Mux31~16_combout\ : std_logic;
SIGNAL \zero~13_combout\ : std_logic;
SIGNAL \zero~15_combout\ : std_logic;
SIGNAL \zero~14_combout\ : std_logic;
SIGNAL \zero~16_combout\ : std_logic;
SIGNAL \zero~17_combout\ : std_logic;
SIGNAL \zero~7_combout\ : std_logic;
SIGNAL \zero~18_combout\ : std_logic;
SIGNAL \zero~12_combout\ : std_logic;
SIGNAL \zero~11_combout\ : std_logic;
SIGNAL \zero~19_combout\ : std_logic;
SIGNAL \zero~0_combout\ : std_logic;
SIGNAL \zero~10_combout\ : std_logic;
SIGNAL \zero~8_combout\ : std_logic;
SIGNAL \zero~5_combout\ : std_logic;
SIGNAL \zero~1_combout\ : std_logic;
SIGNAL \zero~3_combout\ : std_logic;
SIGNAL \zero~2_combout\ : std_logic;
SIGNAL \zero~4_combout\ : std_logic;
SIGNAL \zero~6_combout\ : std_logic;
SIGNAL \zero~9_combout\ : std_logic;
SIGNAL \Mux31~24_combout\ : std_logic;
SIGNAL \Mux31~17_combout\ : std_logic;
SIGNAL \Mux31~18_combout\ : std_logic;
SIGNAL \Mux31~19_combout\ : std_logic;
SIGNAL \Mux31~20_combout\ : std_logic;
SIGNAL \Mux31~21_combout\ : std_logic;
SIGNAL \Mux31~22_combout\ : std_logic;
SIGNAL \Mux31~23_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~21_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~20_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~19_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~18_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~17_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~16_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~15_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~14_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~13_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~12_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~11_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~10_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~5_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~9_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~8_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~7_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~6_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~5_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~3_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~43_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~42_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~41_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~40_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~39_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~38_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~37_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~36_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~35_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~34_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~33_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~32_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~31_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~30_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~29_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~27_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~25_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~62_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~61_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~34_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~60_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~33_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~32_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~59_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~31_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~30_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~29_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~28_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~27_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~58_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~26_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~25_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~24_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~23_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~22_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~21_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~20_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~57_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~19_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~56_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~18_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~55_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~54_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~17_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~53_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~16_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~52_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~51_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~15_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~50_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~14_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~49_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~48_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~13_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~47_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~12_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~46_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~45_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~11_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~44_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~43_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~42_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~41_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~40_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~39_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~38_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~37_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~36_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~35_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~34_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~33_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~32_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~31_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~30_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~29_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~28_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~27_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~26_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~25_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~24_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~23_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~22_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~81_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~48_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~80_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~47_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~79_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~46_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~78_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~45_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~77_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~44_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~76_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~43_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~75_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~42_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~74_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~41_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~73_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~40_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~72_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~39_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~71_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~38_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~70_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~69_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~37_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~68_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~67_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~36_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~66_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~65_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~35_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~64_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~63_combout\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux31~24_combout\ : std_logic;
SIGNAL \ALT_INV_zero~19_combout\ : std_logic;
SIGNAL \ALT_INV_zero~18_combout\ : std_logic;
SIGNAL \ALT_INV_zero~17_combout\ : std_logic;
SIGNAL \ALT_INV_zero~16_combout\ : std_logic;
SIGNAL \ALT_INV_zero~15_combout\ : std_logic;
SIGNAL \ALT_INV_zero~14_combout\ : std_logic;
SIGNAL \ALT_INV_zero~13_combout\ : std_logic;
SIGNAL \ALT_INV_zero~12_combout\ : std_logic;
SIGNAL \ALT_INV_zero~11_combout\ : std_logic;
SIGNAL \ALT_INV_zero~10_combout\ : std_logic;
SIGNAL \ALT_INV_zero~9_combout\ : std_logic;
SIGNAL \ALT_INV_zero~8_combout\ : std_logic;
SIGNAL \ALT_INV_zero~7_combout\ : std_logic;
SIGNAL \ALT_INV_zero~6_combout\ : std_logic;
SIGNAL \ALT_INV_zero~5_combout\ : std_logic;
SIGNAL \ALT_INV_zero~4_combout\ : std_logic;
SIGNAL \ALT_INV_zero~3_combout\ : std_logic;
SIGNAL \ALT_INV_zero~2_combout\ : std_logic;
SIGNAL \ALT_INV_zero~1_combout\ : std_logic;
SIGNAL \ALT_INV_zero~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~93_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~92_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~85_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~52_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~90_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~84_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~51_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~83_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~50_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight1~82_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~49_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ALT_INV_opcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;

BEGIN

ww_opcode <= opcode;
ww_A <= A;
ww_B <= B;
Z <= ww_Z;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add1~113_sumout\ <= NOT \Add1~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add1~109_sumout\ <= NOT \Add1~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add1~105_sumout\ <= NOT \Add1~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add1~101_sumout\ <= NOT \Add1~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add1~97_sumout\ <= NOT \Add1~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add1~93_sumout\ <= NOT \Add1~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add1~89_sumout\ <= NOT \Add1~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add1~85_sumout\ <= NOT \Add1~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add1~81_sumout\ <= NOT \Add1~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add1~77_sumout\ <= NOT \Add1~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add1~73_sumout\ <= NOT \Add1~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add1~69_sumout\ <= NOT \Add1~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add1~65_sumout\ <= NOT \Add1~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_ShiftRight1~21_combout\ <= NOT \ShiftRight1~21_combout\;
\ALT_INV_ShiftRight1~20_combout\ <= NOT \ShiftRight1~20_combout\;
\ALT_INV_ShiftRight1~19_combout\ <= NOT \ShiftRight1~19_combout\;
\ALT_INV_ShiftRight1~18_combout\ <= NOT \ShiftRight1~18_combout\;
\ALT_INV_ShiftRight0~3_combout\ <= NOT \ShiftRight0~3_combout\;
\ALT_INV_ShiftRight0~2_combout\ <= NOT \ShiftRight0~2_combout\;
\ALT_INV_ShiftRight1~17_combout\ <= NOT \ShiftRight1~17_combout\;
\ALT_INV_ShiftRight1~16_combout\ <= NOT \ShiftRight1~16_combout\;
\ALT_INV_ShiftRight1~15_combout\ <= NOT \ShiftRight1~15_combout\;
\ALT_INV_ShiftRight0~1_combout\ <= NOT \ShiftRight0~1_combout\;
\ALT_INV_ShiftRight1~14_combout\ <= NOT \ShiftRight1~14_combout\;
\ALT_INV_ShiftRight1~13_combout\ <= NOT \ShiftRight1~13_combout\;
\ALT_INV_ShiftRight1~12_combout\ <= NOT \ShiftRight1~12_combout\;
\ALT_INV_ShiftRight1~11_combout\ <= NOT \ShiftRight1~11_combout\;
\ALT_INV_ShiftRight1~10_combout\ <= NOT \ShiftRight1~10_combout\;
\ALT_INV_ShiftLeft0~2_combout\ <= NOT \ShiftLeft0~2_combout\;
\ALT_INV_ShiftLeft0~1_combout\ <= NOT \ShiftLeft0~1_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux31~6_combout\ <= NOT \Mux31~6_combout\;
\ALT_INV_Mux31~5_combout\ <= NOT \Mux31~5_combout\;
\ALT_INV_ShiftRight1~9_combout\ <= NOT \ShiftRight1~9_combout\;
\ALT_INV_ShiftRight1~8_combout\ <= NOT \ShiftRight1~8_combout\;
\ALT_INV_ShiftRight1~7_combout\ <= NOT \ShiftRight1~7_combout\;
\ALT_INV_ShiftRight1~6_combout\ <= NOT \ShiftRight1~6_combout\;
\ALT_INV_ShiftRight1~5_combout\ <= NOT \ShiftRight1~5_combout\;
\ALT_INV_ShiftRight1~4_combout\ <= NOT \ShiftRight1~4_combout\;
\ALT_INV_ShiftRight1~3_combout\ <= NOT \ShiftRight1~3_combout\;
\ALT_INV_ShiftRight1~2_combout\ <= NOT \ShiftRight1~2_combout\;
\ALT_INV_ShiftRight1~1_combout\ <= NOT \ShiftRight1~1_combout\;
\ALT_INV_ShiftRight1~0_combout\ <= NOT \ShiftRight1~0_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Mux31~4_combout\ <= NOT \Mux31~4_combout\;
\ALT_INV_ShiftRight0~0_combout\ <= NOT \ShiftRight0~0_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_ShiftLeft0~0_combout\ <= NOT \ShiftLeft0~0_combout\;
\ALT_INV_Mux31~3_combout\ <= NOT \Mux31~3_combout\;
\ALT_INV_Mux31~2_combout\ <= NOT \Mux31~2_combout\;
\ALT_INV_Mux31~1_combout\ <= NOT \Mux31~1_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Equal7~9_combout\ <= NOT \Equal7~9_combout\;
\ALT_INV_Equal7~8_combout\ <= NOT \Equal7~8_combout\;
\ALT_INV_LessThan0~43_combout\ <= NOT \LessThan0~43_combout\;
\ALT_INV_LessThan0~42_combout\ <= NOT \LessThan0~42_combout\;
\ALT_INV_LessThan0~41_combout\ <= NOT \LessThan0~41_combout\;
\ALT_INV_LessThan0~40_combout\ <= NOT \LessThan0~40_combout\;
\ALT_INV_LessThan0~39_combout\ <= NOT \LessThan0~39_combout\;
\ALT_INV_LessThan0~38_combout\ <= NOT \LessThan0~38_combout\;
\ALT_INV_LessThan0~37_combout\ <= NOT \LessThan0~37_combout\;
\ALT_INV_LessThan0~36_combout\ <= NOT \LessThan0~36_combout\;
\ALT_INV_LessThan0~35_combout\ <= NOT \LessThan0~35_combout\;
\ALT_INV_LessThan0~34_combout\ <= NOT \LessThan0~34_combout\;
\ALT_INV_LessThan0~33_combout\ <= NOT \LessThan0~33_combout\;
\ALT_INV_Equal7~7_combout\ <= NOT \Equal7~7_combout\;
\ALT_INV_LessThan0~32_combout\ <= NOT \LessThan0~32_combout\;
\ALT_INV_LessThan0~31_combout\ <= NOT \LessThan0~31_combout\;
\ALT_INV_Equal7~6_combout\ <= NOT \Equal7~6_combout\;
\ALT_INV_LessThan0~30_combout\ <= NOT \LessThan0~30_combout\;
\ALT_INV_LessThan0~29_combout\ <= NOT \LessThan0~29_combout\;
\ALT_INV_LessThan0~28_combout\ <= NOT \LessThan0~28_combout\;
\ALT_INV_LessThan0~27_combout\ <= NOT \LessThan0~27_combout\;
\ALT_INV_Equal7~5_combout\ <= NOT \Equal7~5_combout\;
\ALT_INV_LessThan0~26_combout\ <= NOT \LessThan0~26_combout\;
\ALT_INV_LessThan0~25_combout\ <= NOT \LessThan0~25_combout\;
\ALT_INV_Equal7~4_combout\ <= NOT \Equal7~4_combout\;
\ALT_INV_LessThan0~24_combout\ <= NOT \LessThan0~24_combout\;
\ALT_INV_LessThan0~23_combout\ <= NOT \LessThan0~23_combout\;
\ALT_INV_LessThan0~22_combout\ <= NOT \LessThan0~22_combout\;
\ALT_INV_LessThan0~21_combout\ <= NOT \LessThan0~21_combout\;
\ALT_INV_LessThan0~20_combout\ <= NOT \LessThan0~20_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_Equal7~3_combout\ <= NOT \Equal7~3_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_Equal7~2_combout\ <= NOT \Equal7~2_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_Equal7~1_combout\ <= NOT \Equal7~1_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Mux15~2_combout\ <= NOT \Mux15~2_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux32~1_combout\ <= NOT \Mux32~1_combout\;
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add1~125_sumout\ <= NOT \Add1~125_sumout\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add1~121_sumout\ <= NOT \Add1~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add1~117_sumout\ <= NOT \Add1~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_ShiftRight1~62_combout\ <= NOT \ShiftRight1~62_combout\;
\ALT_INV_ShiftRight1~61_combout\ <= NOT \ShiftRight1~61_combout\;
\ALT_INV_ShiftRight0~34_combout\ <= NOT \ShiftRight0~34_combout\;
\ALT_INV_ShiftRight1~60_combout\ <= NOT \ShiftRight1~60_combout\;
\ALT_INV_ShiftRight0~33_combout\ <= NOT \ShiftRight0~33_combout\;
\ALT_INV_ShiftRight0~32_combout\ <= NOT \ShiftRight0~32_combout\;
\ALT_INV_ShiftLeft0~30_combout\ <= NOT \ShiftLeft0~30_combout\;
\ALT_INV_ShiftLeft0~29_combout\ <= NOT \ShiftLeft0~29_combout\;
\ALT_INV_ShiftLeft0~28_combout\ <= NOT \ShiftLeft0~28_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_ShiftRight1~59_combout\ <= NOT \ShiftRight1~59_combout\;
\ALT_INV_ShiftRight0~31_combout\ <= NOT \ShiftRight0~31_combout\;
\ALT_INV_ShiftRight0~30_combout\ <= NOT \ShiftRight0~30_combout\;
\ALT_INV_ShiftRight0~29_combout\ <= NOT \ShiftRight0~29_combout\;
\ALT_INV_ShiftRight0~28_combout\ <= NOT \ShiftRight0~28_combout\;
\ALT_INV_ShiftRight0~27_combout\ <= NOT \ShiftRight0~27_combout\;
\ALT_INV_ShiftLeft0~27_combout\ <= NOT \ShiftLeft0~27_combout\;
\ALT_INV_ShiftLeft0~26_combout\ <= NOT \ShiftLeft0~26_combout\;
\ALT_INV_ShiftLeft0~25_combout\ <= NOT \ShiftLeft0~25_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_ShiftRight1~58_combout\ <= NOT \ShiftRight1~58_combout\;
\ALT_INV_ShiftRight0~26_combout\ <= NOT \ShiftRight0~26_combout\;
\ALT_INV_ShiftRight0~25_combout\ <= NOT \ShiftRight0~25_combout\;
\ALT_INV_ShiftRight0~24_combout\ <= NOT \ShiftRight0~24_combout\;
\ALT_INV_ShiftRight0~23_combout\ <= NOT \ShiftRight0~23_combout\;
\ALT_INV_ShiftRight0~22_combout\ <= NOT \ShiftRight0~22_combout\;
\ALT_INV_ShiftRight0~21_combout\ <= NOT \ShiftRight0~21_combout\;
\ALT_INV_ShiftRight0~20_combout\ <= NOT \ShiftRight0~20_combout\;
\ALT_INV_ShiftLeft0~24_combout\ <= NOT \ShiftLeft0~24_combout\;
\ALT_INV_ShiftLeft0~23_combout\ <= NOT \ShiftLeft0~23_combout\;
\ALT_INV_ShiftLeft0~22_combout\ <= NOT \ShiftLeft0~22_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_ShiftRight1~57_combout\ <= NOT \ShiftRight1~57_combout\;
\ALT_INV_ShiftRight0~19_combout\ <= NOT \ShiftRight0~19_combout\;
\ALT_INV_ShiftRight1~56_combout\ <= NOT \ShiftRight1~56_combout\;
\ALT_INV_ShiftRight0~18_combout\ <= NOT \ShiftRight0~18_combout\;
\ALT_INV_ShiftLeft0~21_combout\ <= NOT \ShiftLeft0~21_combout\;
\ALT_INV_ShiftLeft0~20_combout\ <= NOT \ShiftLeft0~20_combout\;
\ALT_INV_ShiftLeft0~19_combout\ <= NOT \ShiftLeft0~19_combout\;
\ALT_INV_Mux24~3_combout\ <= NOT \Mux24~3_combout\;
\ALT_INV_Mux24~2_combout\ <= NOT \Mux24~2_combout\;
\ALT_INV_ShiftRight1~55_combout\ <= NOT \ShiftRight1~55_combout\;
\ALT_INV_ShiftRight1~54_combout\ <= NOT \ShiftRight1~54_combout\;
\ALT_INV_ShiftRight0~17_combout\ <= NOT \ShiftRight0~17_combout\;
\ALT_INV_ShiftRight1~53_combout\ <= NOT \ShiftRight1~53_combout\;
\ALT_INV_ShiftRight0~16_combout\ <= NOT \ShiftRight0~16_combout\;
\ALT_INV_ShiftLeft0~18_combout\ <= NOT \ShiftLeft0~18_combout\;
\ALT_INV_ShiftLeft0~17_combout\ <= NOT \ShiftLeft0~17_combout\;
\ALT_INV_ShiftLeft0~16_combout\ <= NOT \ShiftLeft0~16_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_ShiftRight1~52_combout\ <= NOT \ShiftRight1~52_combout\;
\ALT_INV_ShiftRight1~51_combout\ <= NOT \ShiftRight1~51_combout\;
\ALT_INV_ShiftRight0~15_combout\ <= NOT \ShiftRight0~15_combout\;
\ALT_INV_ShiftRight1~50_combout\ <= NOT \ShiftRight1~50_combout\;
\ALT_INV_ShiftRight0~14_combout\ <= NOT \ShiftRight0~14_combout\;
\ALT_INV_ShiftLeft0~15_combout\ <= NOT \ShiftLeft0~15_combout\;
\ALT_INV_ShiftLeft0~14_combout\ <= NOT \ShiftLeft0~14_combout\;
\ALT_INV_ShiftLeft0~13_combout\ <= NOT \ShiftLeft0~13_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_ShiftRight1~49_combout\ <= NOT \ShiftRight1~49_combout\;
\ALT_INV_ShiftRight1~48_combout\ <= NOT \ShiftRight1~48_combout\;
\ALT_INV_ShiftRight0~13_combout\ <= NOT \ShiftRight0~13_combout\;
\ALT_INV_ShiftRight1~47_combout\ <= NOT \ShiftRight1~47_combout\;
\ALT_INV_ShiftRight0~12_combout\ <= NOT \ShiftRight0~12_combout\;
\ALT_INV_ShiftLeft0~12_combout\ <= NOT \ShiftLeft0~12_combout\;
\ALT_INV_ShiftLeft0~11_combout\ <= NOT \ShiftLeft0~11_combout\;
\ALT_INV_ShiftLeft0~10_combout\ <= NOT \ShiftLeft0~10_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_ShiftRight1~46_combout\ <= NOT \ShiftRight1~46_combout\;
\ALT_INV_ShiftRight1~45_combout\ <= NOT \ShiftRight1~45_combout\;
\ALT_INV_ShiftRight0~11_combout\ <= NOT \ShiftRight0~11_combout\;
\ALT_INV_ShiftRight1~44_combout\ <= NOT \ShiftRight1~44_combout\;
\ALT_INV_ShiftRight0~10_combout\ <= NOT \ShiftRight0~10_combout\;
\ALT_INV_ShiftLeft0~9_combout\ <= NOT \ShiftLeft0~9_combout\;
\ALT_INV_ShiftLeft0~8_combout\ <= NOT \ShiftLeft0~8_combout\;
\ALT_INV_ShiftLeft0~7_combout\ <= NOT \ShiftLeft0~7_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_ShiftRight1~43_combout\ <= NOT \ShiftRight1~43_combout\;
\ALT_INV_ShiftRight1~42_combout\ <= NOT \ShiftRight1~42_combout\;
\ALT_INV_ShiftRight0~9_combout\ <= NOT \ShiftRight0~9_combout\;
\ALT_INV_ShiftRight0~8_combout\ <= NOT \ShiftRight0~8_combout\;
\ALT_INV_ShiftRight1~41_combout\ <= NOT \ShiftRight1~41_combout\;
\ALT_INV_ShiftRight1~40_combout\ <= NOT \ShiftRight1~40_combout\;
\ALT_INV_ShiftRight0~7_combout\ <= NOT \ShiftRight0~7_combout\;
\ALT_INV_ShiftRight1~39_combout\ <= NOT \ShiftRight1~39_combout\;
\ALT_INV_ShiftRight1~38_combout\ <= NOT \ShiftRight1~38_combout\;
\ALT_INV_ShiftRight1~37_combout\ <= NOT \ShiftRight1~37_combout\;
\ALT_INV_ShiftRight1~36_combout\ <= NOT \ShiftRight1~36_combout\;
\ALT_INV_ShiftRight1~35_combout\ <= NOT \ShiftRight1~35_combout\;
\ALT_INV_ShiftRight1~34_combout\ <= NOT \ShiftRight1~34_combout\;
\ALT_INV_ShiftLeft0~6_combout\ <= NOT \ShiftLeft0~6_combout\;
\ALT_INV_ShiftLeft0~5_combout\ <= NOT \ShiftLeft0~5_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_ShiftRight1~33_combout\ <= NOT \ShiftRight1~33_combout\;
\ALT_INV_ShiftRight1~32_combout\ <= NOT \ShiftRight1~32_combout\;
\ALT_INV_ShiftRight1~31_combout\ <= NOT \ShiftRight1~31_combout\;
\ALT_INV_ShiftRight1~30_combout\ <= NOT \ShiftRight1~30_combout\;
\ALT_INV_ShiftRight0~6_combout\ <= NOT \ShiftRight0~6_combout\;
\ALT_INV_ShiftRight0~5_combout\ <= NOT \ShiftRight0~5_combout\;
\ALT_INV_ShiftRight1~29_combout\ <= NOT \ShiftRight1~29_combout\;
\ALT_INV_ShiftRight1~28_combout\ <= NOT \ShiftRight1~28_combout\;
\ALT_INV_ShiftRight1~27_combout\ <= NOT \ShiftRight1~27_combout\;
\ALT_INV_ShiftRight0~4_combout\ <= NOT \ShiftRight0~4_combout\;
\ALT_INV_ShiftRight1~26_combout\ <= NOT \ShiftRight1~26_combout\;
\ALT_INV_ShiftRight1~25_combout\ <= NOT \ShiftRight1~25_combout\;
\ALT_INV_ShiftRight1~24_combout\ <= NOT \ShiftRight1~24_combout\;
\ALT_INV_ShiftRight1~23_combout\ <= NOT \ShiftRight1~23_combout\;
\ALT_INV_ShiftRight1~22_combout\ <= NOT \ShiftRight1~22_combout\;
\ALT_INV_ShiftLeft0~4_combout\ <= NOT \ShiftLeft0~4_combout\;
\ALT_INV_ShiftLeft0~3_combout\ <= NOT \ShiftLeft0~3_combout\;
\ALT_INV_ShiftLeft0~80_combout\ <= NOT \ShiftLeft0~80_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_ShiftRight1~81_combout\ <= NOT \ShiftRight1~81_combout\;
\ALT_INV_ShiftRight0~48_combout\ <= NOT \ShiftRight0~48_combout\;
\ALT_INV_ShiftLeft0~79_combout\ <= NOT \ShiftLeft0~79_combout\;
\ALT_INV_ShiftLeft0~78_combout\ <= NOT \ShiftLeft0~78_combout\;
\ALT_INV_ShiftLeft0~77_combout\ <= NOT \ShiftLeft0~77_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_ShiftRight1~80_combout\ <= NOT \ShiftRight1~80_combout\;
\ALT_INV_ShiftRight0~47_combout\ <= NOT \ShiftRight0~47_combout\;
\ALT_INV_ShiftLeft0~76_combout\ <= NOT \ShiftLeft0~76_combout\;
\ALT_INV_ShiftLeft0~75_combout\ <= NOT \ShiftLeft0~75_combout\;
\ALT_INV_ShiftLeft0~74_combout\ <= NOT \ShiftLeft0~74_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_ShiftRight1~79_combout\ <= NOT \ShiftRight1~79_combout\;
\ALT_INV_ShiftRight0~46_combout\ <= NOT \ShiftRight0~46_combout\;
\ALT_INV_ShiftLeft0~73_combout\ <= NOT \ShiftLeft0~73_combout\;
\ALT_INV_ShiftLeft0~72_combout\ <= NOT \ShiftLeft0~72_combout\;
\ALT_INV_ShiftLeft0~71_combout\ <= NOT \ShiftLeft0~71_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_ShiftRight1~78_combout\ <= NOT \ShiftRight1~78_combout\;
\ALT_INV_ShiftRight0~45_combout\ <= NOT \ShiftRight0~45_combout\;
\ALT_INV_ShiftLeft0~70_combout\ <= NOT \ShiftLeft0~70_combout\;
\ALT_INV_ShiftLeft0~69_combout\ <= NOT \ShiftLeft0~69_combout\;
\ALT_INV_ShiftLeft0~68_combout\ <= NOT \ShiftLeft0~68_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_ShiftRight1~77_combout\ <= NOT \ShiftRight1~77_combout\;
\ALT_INV_ShiftRight0~44_combout\ <= NOT \ShiftRight0~44_combout\;
\ALT_INV_ShiftLeft0~67_combout\ <= NOT \ShiftLeft0~67_combout\;
\ALT_INV_ShiftLeft0~66_combout\ <= NOT \ShiftLeft0~66_combout\;
\ALT_INV_ShiftLeft0~65_combout\ <= NOT \ShiftLeft0~65_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_ShiftRight1~76_combout\ <= NOT \ShiftRight1~76_combout\;
\ALT_INV_ShiftRight0~43_combout\ <= NOT \ShiftRight0~43_combout\;
\ALT_INV_ShiftLeft0~64_combout\ <= NOT \ShiftLeft0~64_combout\;
\ALT_INV_ShiftLeft0~63_combout\ <= NOT \ShiftLeft0~63_combout\;
\ALT_INV_ShiftLeft0~62_combout\ <= NOT \ShiftLeft0~62_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_ShiftRight1~75_combout\ <= NOT \ShiftRight1~75_combout\;
\ALT_INV_ShiftRight0~42_combout\ <= NOT \ShiftRight0~42_combout\;
\ALT_INV_ShiftLeft0~61_combout\ <= NOT \ShiftLeft0~61_combout\;
\ALT_INV_ShiftLeft0~60_combout\ <= NOT \ShiftLeft0~60_combout\;
\ALT_INV_ShiftLeft0~59_combout\ <= NOT \ShiftLeft0~59_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_ShiftRight1~74_combout\ <= NOT \ShiftRight1~74_combout\;
\ALT_INV_ShiftRight0~41_combout\ <= NOT \ShiftRight0~41_combout\;
\ALT_INV_ShiftLeft0~58_combout\ <= NOT \ShiftLeft0~58_combout\;
\ALT_INV_ShiftLeft0~57_combout\ <= NOT \ShiftLeft0~57_combout\;
\ALT_INV_ShiftLeft0~56_combout\ <= NOT \ShiftLeft0~56_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_ShiftRight1~73_combout\ <= NOT \ShiftRight1~73_combout\;
\ALT_INV_ShiftRight0~40_combout\ <= NOT \ShiftRight0~40_combout\;
\ALT_INV_ShiftLeft0~55_combout\ <= NOT \ShiftLeft0~55_combout\;
\ALT_INV_ShiftLeft0~54_combout\ <= NOT \ShiftLeft0~54_combout\;
\ALT_INV_ShiftLeft0~53_combout\ <= NOT \ShiftLeft0~53_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_ShiftRight1~72_combout\ <= NOT \ShiftRight1~72_combout\;
\ALT_INV_ShiftRight0~39_combout\ <= NOT \ShiftRight0~39_combout\;
\ALT_INV_ShiftLeft0~52_combout\ <= NOT \ShiftLeft0~52_combout\;
\ALT_INV_ShiftLeft0~51_combout\ <= NOT \ShiftLeft0~51_combout\;
\ALT_INV_ShiftLeft0~50_combout\ <= NOT \ShiftLeft0~50_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_ShiftLeft0~49_combout\ <= NOT \ShiftLeft0~49_combout\;
\ALT_INV_ShiftLeft0~48_combout\ <= NOT \ShiftLeft0~48_combout\;
\ALT_INV_ShiftLeft0~47_combout\ <= NOT \ShiftLeft0~47_combout\;
\ALT_INV_ShiftLeft0~46_combout\ <= NOT \ShiftLeft0~46_combout\;
\ALT_INV_ShiftLeft0~45_combout\ <= NOT \ShiftLeft0~45_combout\;
\ALT_INV_ShiftLeft0~44_combout\ <= NOT \ShiftLeft0~44_combout\;
\ALT_INV_ShiftLeft0~43_combout\ <= NOT \ShiftLeft0~43_combout\;
\ALT_INV_Mux16~1_combout\ <= NOT \Mux16~1_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_ShiftRight1~71_combout\ <= NOT \ShiftRight1~71_combout\;
\ALT_INV_ShiftRight0~38_combout\ <= NOT \ShiftRight0~38_combout\;
\ALT_INV_ShiftRight1~70_combout\ <= NOT \ShiftRight1~70_combout\;
\ALT_INV_ShiftLeft0~42_combout\ <= NOT \ShiftLeft0~42_combout\;
\ALT_INV_ShiftLeft0~41_combout\ <= NOT \ShiftLeft0~41_combout\;
\ALT_INV_ShiftLeft0~40_combout\ <= NOT \ShiftLeft0~40_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_ShiftRight1~69_combout\ <= NOT \ShiftRight1~69_combout\;
\ALT_INV_ShiftRight0~37_combout\ <= NOT \ShiftRight0~37_combout\;
\ALT_INV_ShiftRight1~68_combout\ <= NOT \ShiftRight1~68_combout\;
\ALT_INV_ShiftLeft0~39_combout\ <= NOT \ShiftLeft0~39_combout\;
\ALT_INV_ShiftLeft0~38_combout\ <= NOT \ShiftLeft0~38_combout\;
\ALT_INV_ShiftLeft0~37_combout\ <= NOT \ShiftLeft0~37_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_ShiftRight1~67_combout\ <= NOT \ShiftRight1~67_combout\;
\ALT_INV_ShiftRight0~36_combout\ <= NOT \ShiftRight0~36_combout\;
\ALT_INV_ShiftRight1~66_combout\ <= NOT \ShiftRight1~66_combout\;
\ALT_INV_ShiftLeft0~36_combout\ <= NOT \ShiftLeft0~36_combout\;
\ALT_INV_ShiftLeft0~35_combout\ <= NOT \ShiftLeft0~35_combout\;
\ALT_INV_ShiftLeft0~34_combout\ <= NOT \ShiftLeft0~34_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_ShiftRight1~65_combout\ <= NOT \ShiftRight1~65_combout\;
\ALT_INV_ShiftRight0~35_combout\ <= NOT \ShiftRight0~35_combout\;
\ALT_INV_ShiftRight1~64_combout\ <= NOT \ShiftRight1~64_combout\;
\ALT_INV_ShiftLeft0~33_combout\ <= NOT \ShiftLeft0~33_combout\;
\ALT_INV_ShiftLeft0~32_combout\ <= NOT \ShiftLeft0~32_combout\;
\ALT_INV_ShiftLeft0~31_combout\ <= NOT \ShiftLeft0~31_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_ShiftRight1~63_combout\ <= NOT \ShiftRight1~63_combout\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_opcode[3]~input_o\ <= NOT \opcode[3]~input_o\;
\ALT_INV_Mux31~24_combout\ <= NOT \Mux31~24_combout\;
\ALT_INV_zero~19_combout\ <= NOT \zero~19_combout\;
\ALT_INV_zero~18_combout\ <= NOT \zero~18_combout\;
\ALT_INV_zero~17_combout\ <= NOT \zero~17_combout\;
\ALT_INV_zero~16_combout\ <= NOT \zero~16_combout\;
\ALT_INV_zero~15_combout\ <= NOT \zero~15_combout\;
\ALT_INV_zero~14_combout\ <= NOT \zero~14_combout\;
\ALT_INV_zero~13_combout\ <= NOT \zero~13_combout\;
\ALT_INV_zero~12_combout\ <= NOT \zero~12_combout\;
\ALT_INV_zero~11_combout\ <= NOT \zero~11_combout\;
\ALT_INV_zero~10_combout\ <= NOT \zero~10_combout\;
\ALT_INV_zero~9_combout\ <= NOT \zero~9_combout\;
\ALT_INV_zero~8_combout\ <= NOT \zero~8_combout\;
\ALT_INV_zero~7_combout\ <= NOT \zero~7_combout\;
\ALT_INV_zero~6_combout\ <= NOT \zero~6_combout\;
\ALT_INV_zero~5_combout\ <= NOT \zero~5_combout\;
\ALT_INV_zero~4_combout\ <= NOT \zero~4_combout\;
\ALT_INV_zero~3_combout\ <= NOT \zero~3_combout\;
\ALT_INV_zero~2_combout\ <= NOT \zero~2_combout\;
\ALT_INV_zero~1_combout\ <= NOT \zero~1_combout\;
\ALT_INV_zero~0_combout\ <= NOT \zero~0_combout\;
\ALT_INV_Mux31~23_combout\ <= NOT \Mux31~23_combout\;
\ALT_INV_Mux31~22_combout\ <= NOT \Mux31~22_combout\;
\ALT_INV_Mux31~21_combout\ <= NOT \Mux31~21_combout\;
\ALT_INV_Mux31~20_combout\ <= NOT \Mux31~20_combout\;
\ALT_INV_Mux31~19_combout\ <= NOT \Mux31~19_combout\;
\ALT_INV_Mux31~18_combout\ <= NOT \Mux31~18_combout\;
\ALT_INV_Mux31~17_combout\ <= NOT \Mux31~17_combout\;
\ALT_INV_Mux31~16_combout\ <= NOT \Mux31~16_combout\;
\ALT_INV_Mux31~15_combout\ <= NOT \Mux31~15_combout\;
\ALT_INV_Mux31~14_combout\ <= NOT \Mux31~14_combout\;
\ALT_INV_Mux31~13_combout\ <= NOT \Mux31~13_combout\;
\ALT_INV_Mux31~12_combout\ <= NOT \Mux31~12_combout\;
\ALT_INV_Mux31~11_combout\ <= NOT \Mux31~11_combout\;
\ALT_INV_Mux31~10_combout\ <= NOT \Mux31~10_combout\;
\ALT_INV_Mux31~9_combout\ <= NOT \Mux31~9_combout\;
\ALT_INV_Mux31~8_combout\ <= NOT \Mux31~8_combout\;
\ALT_INV_Equal2~6_combout\ <= NOT \Equal2~6_combout\;
\ALT_INV_Equal2~5_combout\ <= NOT \Equal2~5_combout\;
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal3~5_combout\ <= NOT \Equal3~5_combout\;
\ALT_INV_Equal3~4_combout\ <= NOT \Equal3~4_combout\;
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_ShiftLeft0~94_combout\ <= NOT \ShiftLeft0~94_combout\;
\ALT_INV_ShiftLeft0~93_combout\ <= NOT \ShiftLeft0~93_combout\;
\ALT_INV_ShiftLeft0~92_combout\ <= NOT \ShiftLeft0~92_combout\;
\ALT_INV_ShiftRight0~53_combout\ <= NOT \ShiftRight0~53_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_ShiftRight1~85_combout\ <= NOT \ShiftRight1~85_combout\;
\ALT_INV_ShiftRight0~52_combout\ <= NOT \ShiftRight0~52_combout\;
\ALT_INV_ShiftLeft0~91_combout\ <= NOT \ShiftLeft0~91_combout\;
\ALT_INV_ShiftLeft0~90_combout\ <= NOT \ShiftLeft0~90_combout\;
\ALT_INV_ShiftLeft0~89_combout\ <= NOT \ShiftLeft0~89_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_ShiftRight1~84_combout\ <= NOT \ShiftRight1~84_combout\;
\ALT_INV_ShiftRight0~51_combout\ <= NOT \ShiftRight0~51_combout\;
\ALT_INV_ShiftLeft0~88_combout\ <= NOT \ShiftLeft0~88_combout\;
\ALT_INV_ShiftLeft0~87_combout\ <= NOT \ShiftLeft0~87_combout\;
\ALT_INV_ShiftLeft0~86_combout\ <= NOT \ShiftLeft0~86_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_ShiftRight1~83_combout\ <= NOT \ShiftRight1~83_combout\;
\ALT_INV_ShiftRight0~50_combout\ <= NOT \ShiftRight0~50_combout\;
\ALT_INV_ShiftLeft0~85_combout\ <= NOT \ShiftLeft0~85_combout\;
\ALT_INV_ShiftLeft0~84_combout\ <= NOT \ShiftLeft0~84_combout\;
\ALT_INV_ShiftLeft0~83_combout\ <= NOT \ShiftLeft0~83_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_ShiftRight1~82_combout\ <= NOT \ShiftRight1~82_combout\;
\ALT_INV_ShiftRight0~49_combout\ <= NOT \ShiftRight0~49_combout\;
\ALT_INV_ShiftLeft0~82_combout\ <= NOT \ShiftLeft0~82_combout\;
\ALT_INV_ShiftLeft0~81_combout\ <= NOT \ShiftLeft0~81_combout\;
\ALT_INV_opcode[0]~input_o\ <= NOT \opcode[0]~input_o\;
\ALT_INV_opcode[2]~input_o\ <= NOT \opcode[2]~input_o\;
\ALT_INV_opcode[1]~input_o\ <= NOT \opcode[1]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;

-- Location: IOOBUF_X72_Y0_N2
\Z[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~7_combout\,
	devoe => ww_devoe,
	o => ww_Z(0));

-- Location: IOOBUF_X64_Y0_N2
\Z[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(1));

-- Location: IOOBUF_X58_Y0_N76
\Z[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(2));

-- Location: IOOBUF_X70_Y0_N2
\Z[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(3));

-- Location: IOOBUF_X72_Y0_N19
\Z[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(4));

-- Location: IOOBUF_X66_Y0_N76
\Z[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(5));

-- Location: IOOBUF_X58_Y0_N93
\Z[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(6));

-- Location: IOOBUF_X68_Y0_N2
\Z[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~4_combout\,
	devoe => ww_devoe,
	o => ww_Z(7));

-- Location: IOOBUF_X68_Y0_N36
\Z[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(8));

-- Location: IOOBUF_X66_Y0_N59
\Z[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(9));

-- Location: IOOBUF_X56_Y0_N2
\Z[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(10));

-- Location: IOOBUF_X89_Y6_N56
\Z[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(11));

-- Location: IOOBUF_X64_Y0_N53
\Z[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(12));

-- Location: IOOBUF_X68_Y0_N53
\Z[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(13));

-- Location: IOOBUF_X54_Y0_N36
\Z[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(14));

-- Location: IOOBUF_X60_Y0_N36
\Z[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(15));

-- Location: IOOBUF_X54_Y0_N53
\Z[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => ww_Z(16));

-- Location: IOOBUF_X64_Y0_N36
\Z[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(17));

-- Location: IOOBUF_X70_Y0_N19
\Z[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(18));

-- Location: IOOBUF_X72_Y0_N36
\Z[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => ww_Z(19));

-- Location: IOOBUF_X60_Y0_N53
\Z[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => ww_Z(20));

-- Location: IOOBUF_X64_Y0_N19
\Z[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_Z(21));

-- Location: IOOBUF_X2_Y0_N93
\Z[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(22));

-- Location: IOOBUF_X8_Y0_N53
\Z[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(23));

-- Location: IOOBUF_X70_Y0_N53
\Z[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(24));

-- Location: IOOBUF_X2_Y0_N76
\Z[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(25));

-- Location: IOOBUF_X62_Y0_N19
\Z[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_Z(26));

-- Location: IOOBUF_X4_Y0_N19
\Z[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_Z(27));

-- Location: IOOBUF_X89_Y4_N79
\Z[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => ww_Z(28));

-- Location: IOOBUF_X6_Y0_N36
\Z[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(29));

-- Location: IOOBUF_X4_Y0_N2
\Z[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(30));

-- Location: IOOBUF_X8_Y0_N19
\Z[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => ww_Z(31));

-- Location: IOOBUF_X72_Y0_N53
\zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => ww_zero);

-- Location: IOIBUF_X28_Y0_N1
\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X31_Y3_N42
\LessThan0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~40_combout\ = ( \B[29]~input_o\ & ( \B[31]~input_o\ & ( (!\A[31]~input_o\) # ((!\A[29]~input_o\ & ((!\A[30]~input_o\) # (\B[30]~input_o\))) # (\A[29]~input_o\ & (\B[30]~input_o\ & !\A[30]~input_o\))) ) ) ) # ( !\B[29]~input_o\ & ( 
-- \B[31]~input_o\ & ( (!\A[31]~input_o\) # ((\B[30]~input_o\ & !\A[30]~input_o\)) ) ) ) # ( \B[29]~input_o\ & ( !\B[31]~input_o\ & ( (!\A[31]~input_o\ & ((!\A[29]~input_o\ & ((!\A[30]~input_o\) # (\B[30]~input_o\))) # (\A[29]~input_o\ & (\B[30]~input_o\ & 
-- !\A[30]~input_o\)))) ) ) ) # ( !\B[29]~input_o\ & ( !\B[31]~input_o\ & ( (!\A[31]~input_o\ & (\B[30]~input_o\ & !\A[30]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000100010100000100010101111101010101110111110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	datae => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \LessThan0~40_combout\);

-- Location: IOIBUF_X40_Y0_N52
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X33_Y3_N30
\LessThan0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~27_combout\ = ( \A[14]~input_o\ & ( \B[13]~input_o\ & ( (\B[14]~input_o\ & ((!\A[13]~input_o\) # ((!\A[12]~input_o\ & \B[12]~input_o\)))) ) ) ) # ( !\A[14]~input_o\ & ( \B[13]~input_o\ & ( ((!\A[13]~input_o\) # ((!\A[12]~input_o\ & 
-- \B[12]~input_o\))) # (\B[14]~input_o\) ) ) ) # ( \A[14]~input_o\ & ( !\B[13]~input_o\ & ( (!\A[12]~input_o\ & (\B[12]~input_o\ & (\B[14]~input_o\ & !\A[13]~input_o\))) ) ) ) # ( !\A[14]~input_o\ & ( !\B[13]~input_o\ & ( ((!\A[12]~input_o\ & 
-- (\B[12]~input_o\ & !\A[13]~input_o\))) # (\B[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111000000100000000011111111001011110000111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \LessThan0~27_combout\);

-- Location: IOIBUF_X38_Y0_N35
\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X30_Y1_N36
\LessThan0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~25_combout\ = ( \B[16]~input_o\ & ( !\A[16]~input_o\ ) ) # ( !\B[16]~input_o\ & ( \A[16]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \LessThan0~25_combout\);

-- Location: IOIBUF_X36_Y0_N35
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X34_Y4_N30
\LessThan0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = ( \B[15]~input_o\ & ( !\A[15]~input_o\ ) ) # ( !\B[15]~input_o\ & ( \A[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \LessThan0~26_combout\);

-- Location: IOIBUF_X30_Y0_N1
\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X30_Y2_N36
\LessThan0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~22_combout\ = ( \B[21]~input_o\ & ( \A[19]~input_o\ & ( (\A[21]~input_o\ & (\B[19]~input_o\ & (!\A[20]~input_o\ $ (\B[20]~input_o\)))) ) ) ) # ( !\B[21]~input_o\ & ( \A[19]~input_o\ & ( (!\A[21]~input_o\ & (\B[19]~input_o\ & (!\A[20]~input_o\ $ 
-- (\B[20]~input_o\)))) ) ) ) # ( \B[21]~input_o\ & ( !\A[19]~input_o\ & ( (\A[21]~input_o\ & (!\B[19]~input_o\ & (!\A[20]~input_o\ $ (\B[20]~input_o\)))) ) ) ) # ( !\B[21]~input_o\ & ( !\A[19]~input_o\ & ( (!\A[21]~input_o\ & (!\B[19]~input_o\ & 
-- (!\A[20]~input_o\ $ (\B[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \LessThan0~22_combout\);

-- Location: IOIBUF_X38_Y0_N18
\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: MLABCELL_X28_Y2_N33
\LessThan0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~24_combout\ = !\B[17]~input_o\ $ (!\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	combout => \LessThan0~24_combout\);

-- Location: IOIBUF_X38_Y0_N1
\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: MLABCELL_X34_Y4_N33
\LessThan0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~23_combout\ = ( \B[18]~input_o\ & ( !\A[18]~input_o\ ) ) # ( !\B[18]~input_o\ & ( \A[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \LessThan0~23_combout\);

-- Location: MLABCELL_X28_Y2_N30
\Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = ( !\LessThan0~23_combout\ & ( (\LessThan0~22_combout\ & !\LessThan0~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~22_combout\,
	datac => \ALT_INV_LessThan0~24_combout\,
	dataf => \ALT_INV_LessThan0~23_combout\,
	combout => \Equal7~4_combout\);

-- Location: MLABCELL_X28_Y5_N45
\Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = ( \Equal7~4_combout\ & ( (!\LessThan0~25_combout\ & !\LessThan0~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~25_combout\,
	datad => \ALT_INV_LessThan0~26_combout\,
	dataf => \ALT_INV_Equal7~4_combout\,
	combout => \Equal7~5_combout\);

-- Location: IOIBUF_X28_Y0_N18
\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X27_Y3_N6
\LessThan0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = ( \B[22]~input_o\ & ( !\A[22]~input_o\ ) ) # ( !\B[22]~input_o\ & ( \A[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[22]~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \LessThan0~32_combout\);

-- Location: IOIBUF_X26_Y0_N58
\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X27_Y3_N30
\LessThan0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~31_combout\ = ( \B[23]~input_o\ & ( !\A[23]~input_o\ ) ) # ( !\B[23]~input_o\ & ( \A[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \LessThan0~31_combout\);

-- Location: IOIBUF_X66_Y0_N92
\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X29_Y3_N6
\LessThan0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = ( \A[24]~input_o\ & ( !\B[24]~input_o\ ) ) # ( !\A[24]~input_o\ & ( \B[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \LessThan0~30_combout\);

-- Location: IOIBUF_X6_Y0_N18
\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X29_Y3_N30
\LessThan0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~29_combout\ = ( \B[25]~input_o\ & ( !\A[25]~input_o\ ) ) # ( !\B[25]~input_o\ & ( \A[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \LessThan0~29_combout\);

-- Location: IOIBUF_X2_Y0_N41
\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X30_Y3_N36
\LessThan0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~28_combout\ = ( \B[28]~input_o\ & ( \A[27]~input_o\ & ( (\B[27]~input_o\ & (\A[28]~input_o\ & (!\B[26]~input_o\ $ (\A[26]~input_o\)))) ) ) ) # ( !\B[28]~input_o\ & ( \A[27]~input_o\ & ( (\B[27]~input_o\ & (!\A[28]~input_o\ & (!\B[26]~input_o\ $ 
-- (\A[26]~input_o\)))) ) ) ) # ( \B[28]~input_o\ & ( !\A[27]~input_o\ & ( (!\B[27]~input_o\ & (\A[28]~input_o\ & (!\B[26]~input_o\ $ (\A[26]~input_o\)))) ) ) ) # ( !\B[28]~input_o\ & ( !\A[27]~input_o\ & ( (!\B[27]~input_o\ & (!\A[28]~input_o\ & 
-- (!\B[26]~input_o\ $ (\A[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \LessThan0~28_combout\);

-- Location: LABCELL_X29_Y3_N9
\Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (!\LessThan0~30_combout\ & (!\LessThan0~29_combout\ & \LessThan0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~30_combout\,
	datac => \ALT_INV_LessThan0~29_combout\,
	datad => \ALT_INV_LessThan0~28_combout\,
	combout => \Equal7~6_combout\);

-- Location: LABCELL_X27_Y3_N45
\Equal7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = ( \Equal7~6_combout\ & ( (!\LessThan0~32_combout\ & !\LessThan0~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~32_combout\,
	datac => \ALT_INV_LessThan0~31_combout\,
	dataf => \ALT_INV_Equal7~6_combout\,
	combout => \Equal7~7_combout\);

-- Location: IOIBUF_X52_Y0_N35
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X31_Y5_N33
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \B[6]~input_o\ & ( (!\B[7]~input_o\ & (!\A[6]~input_o\ & !\A[7]~input_o\)) # (\B[7]~input_o\ & ((!\A[6]~input_o\) # (!\A[7]~input_o\))) ) ) # ( !\B[6]~input_o\ & ( (\B[7]~input_o\ & !\A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \LessThan0~13_combout\);

-- Location: LABCELL_X31_Y5_N30
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = !\B[7]~input_o\ $ (!\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X30_Y0_N35
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X31_Y5_N6
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \B[6]~input_o\ & ( !\A[6]~input_o\ ) ) # ( !\B[6]~input_o\ & ( \A[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X26_Y0_N75
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X31_Y5_N42
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( !\A[4]~input_o\ & ( \B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \LessThan0~12_combout\);

-- Location: IOIBUF_X62_Y0_N35
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X31_Y5_N48
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( \LessThan0~12_combout\ & ( \B[5]~input_o\ & ( (!\LessThan0~13_combout\ & ((\LessThan0~3_combout\) # (\LessThan0~2_combout\))) ) ) ) # ( !\LessThan0~12_combout\ & ( \B[5]~input_o\ & ( (!\LessThan0~13_combout\ & 
-- (((\LessThan0~3_combout\) # (\A[5]~input_o\)) # (\LessThan0~2_combout\))) ) ) ) # ( \LessThan0~12_combout\ & ( !\B[5]~input_o\ & ( (!\LessThan0~13_combout\ & (((\LessThan0~3_combout\) # (\A[5]~input_o\)) # (\LessThan0~2_combout\))) ) ) ) # ( 
-- !\LessThan0~12_combout\ & ( !\B[5]~input_o\ & ( !\LessThan0~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001010101010101000101010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~13_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_LessThan0~12_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \LessThan0~14_combout\);

-- Location: IOIBUF_X34_Y0_N75
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X28_Y1_N30
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( \B[9]~input_o\ & ( !\A[9]~input_o\ ) ) # ( !\B[9]~input_o\ & ( \A[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \LessThan0~10_combout\);

-- Location: IOIBUF_X52_Y0_N52
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X29_Y5_N3
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( \B[8]~input_o\ & ( !\A[8]~input_o\ ) ) # ( !\B[8]~input_o\ & ( \A[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \LessThan0~11_combout\);

-- Location: IOIBUF_X50_Y0_N92
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X33_Y4_N39
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \B[10]~input_o\ & ( !\A[10]~input_o\ ) ) # ( !\B[10]~input_o\ & ( \A[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \LessThan0~9_combout\);

-- Location: IOIBUF_X40_Y0_N35
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X33_Y4_N33
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = !\B[11]~input_o\ $ (!\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X27_Y5_N3
\Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = ( !\LessThan0~9_combout\ & ( !\LessThan0~8_combout\ & ( (!\LessThan0~10_combout\ & !\LessThan0~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~10_combout\,
	datac => \ALT_INV_LessThan0~11_combout\,
	datae => \ALT_INV_LessThan0~9_combout\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \Equal7~2_combout\);

-- Location: IOIBUF_X26_Y0_N92
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X27_Y4_N30
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \A[1]~input_o\ & ( (\B[1]~input_o\ & (\B[0]~input_o\ & !\A[0]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( ((\B[0]~input_o\ & !\A[0]~input_o\)) # (\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \LessThan0~6_combout\);

-- Location: IOIBUF_X26_Y0_N41
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X28_Y5_N3
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \A[3]~input_o\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & (!\A[2]~input_o\ & \LessThan0~6_combout\)) # (\B[2]~input_o\ & ((!\A[2]~input_o\) # (\LessThan0~6_combout\))))) ) ) # ( !\A[3]~input_o\ & ( ((!\B[2]~input_o\ & 
-- (!\A[2]~input_o\ & \LessThan0~6_combout\)) # (\B[2]~input_o\ & ((!\A[2]~input_o\) # (\LessThan0~6_combout\)))) # (\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111111111010011011111111100000000010011010000000001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_LessThan0~6_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X30_Y5_N33
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( \A[12]~input_o\ & ( !\B[12]~input_o\ ) ) # ( !\A[12]~input_o\ & ( \B[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \LessThan0~17_combout\);

-- Location: LABCELL_X30_Y1_N33
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( \B[14]~input_o\ & ( !\A[14]~input_o\ ) ) # ( !\B[14]~input_o\ & ( \A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \LessThan0~15_combout\);

-- Location: LABCELL_X33_Y5_N30
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( \B[13]~input_o\ & ( !\A[13]~input_o\ ) ) # ( !\B[13]~input_o\ & ( \A[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \LessThan0~16_combout\);

-- Location: LABCELL_X23_Y5_N3
\Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = ( !\LessThan0~16_combout\ & ( (!\LessThan0~17_combout\ & !\LessThan0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~17_combout\,
	datac => \ALT_INV_LessThan0~15_combout\,
	dataf => \ALT_INV_LessThan0~16_combout\,
	combout => \Equal7~3_combout\);

-- Location: LABCELL_X29_Y4_N33
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \B[4]~input_o\ & ( !\A[4]~input_o\ ) ) # ( !\B[4]~input_o\ & ( \A[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X31_Y5_N9
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \B[5]~input_o\ & ( !\A[5]~input_o\ ) ) # ( !\B[5]~input_o\ & ( \A[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X31_Y5_N45
\Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = ( !\LessThan0~4_combout\ & ( (!\LessThan0~5_combout\ & (!\LessThan0~3_combout\ & !\LessThan0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \Equal7~1_combout\);

-- Location: LABCELL_X33_Y4_N42
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( \B[8]~input_o\ & ( !\A[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \LessThan0~18_combout\);

-- Location: LABCELL_X33_Y4_N30
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( \B[10]~input_o\ & ( (!\B[11]~input_o\ & (!\A[11]~input_o\ & !\A[10]~input_o\)) # (\B[11]~input_o\ & ((!\A[11]~input_o\) # (!\A[10]~input_o\))) ) ) # ( !\B[10]~input_o\ & ( (\B[11]~input_o\ & !\A[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011010100110101001101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \LessThan0~19_combout\);

-- Location: LABCELL_X33_Y4_N18
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( \B[9]~input_o\ & ( !\LessThan0~19_combout\ & ( (((\A[9]~input_o\ & !\LessThan0~18_combout\)) # (\LessThan0~8_combout\)) # (\LessThan0~9_combout\) ) ) ) # ( !\B[9]~input_o\ & ( !\LessThan0~19_combout\ & ( 
-- (((!\LessThan0~18_combout\) # (\LessThan0~8_combout\)) # (\LessThan0~9_combout\)) # (\A[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111011111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_LessThan0~9_combout\,
	datac => \ALT_INV_LessThan0~8_combout\,
	datad => \ALT_INV_LessThan0~18_combout\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_LessThan0~19_combout\,
	combout => \LessThan0~20_combout\);

-- Location: MLABCELL_X28_Y5_N6
\LessThan0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~21_combout\ = ( \Equal7~1_combout\ & ( \LessThan0~20_combout\ & ( (\Equal7~2_combout\ & (\Equal7~3_combout\ & ((!\LessThan0~14_combout\) # (\LessThan0~7_combout\)))) ) ) ) # ( !\Equal7~1_combout\ & ( \LessThan0~20_combout\ & ( 
-- (!\LessThan0~14_combout\ & (\Equal7~2_combout\ & \Equal7~3_combout\)) ) ) ) # ( \Equal7~1_combout\ & ( !\LessThan0~20_combout\ & ( \Equal7~3_combout\ ) ) ) # ( !\Equal7~1_combout\ & ( !\LessThan0~20_combout\ & ( \Equal7~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000001000100000000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~14_combout\,
	datab => \ALT_INV_Equal7~2_combout\,
	datac => \ALT_INV_LessThan0~7_combout\,
	datad => \ALT_INV_Equal7~3_combout\,
	datae => \ALT_INV_Equal7~1_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \LessThan0~21_combout\);

-- Location: LABCELL_X31_Y3_N36
\LessThan0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~36_combout\ = ( \B[26]~input_o\ & ( \A[28]~input_o\ & ( (\B[28]~input_o\ & ((!\A[27]~input_o\ & ((!\A[26]~input_o\) # (\B[27]~input_o\))) # (\A[27]~input_o\ & (\B[27]~input_o\ & !\A[26]~input_o\)))) ) ) ) # ( !\B[26]~input_o\ & ( 
-- \A[28]~input_o\ & ( (!\A[27]~input_o\ & (\B[27]~input_o\ & \B[28]~input_o\)) ) ) ) # ( \B[26]~input_o\ & ( !\A[28]~input_o\ & ( ((!\A[27]~input_o\ & ((!\A[26]~input_o\) # (\B[27]~input_o\))) # (\A[27]~input_o\ & (\B[27]~input_o\ & !\A[26]~input_o\))) # 
-- (\B[28]~input_o\) ) ) ) # ( !\B[26]~input_o\ & ( !\A[28]~input_o\ & ( ((!\A[27]~input_o\ & \B[27]~input_o\)) # (\B[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111111101100101111111100000000001000100000000010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	datae => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \LessThan0~36_combout\);

-- Location: LABCELL_X29_Y3_N12
\LessThan0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~37_combout\ = ( \LessThan0~28_combout\ & ( \B[24]~input_o\ & ( (!\LessThan0~36_combout\ & ((!\A[24]~input_o\ & (\A[25]~input_o\ & !\B[25]~input_o\)) # (\A[24]~input_o\ & ((!\B[25]~input_o\) # (\A[25]~input_o\))))) ) ) ) # ( 
-- !\LessThan0~28_combout\ & ( \B[24]~input_o\ & ( !\LessThan0~36_combout\ ) ) ) # ( \LessThan0~28_combout\ & ( !\B[24]~input_o\ & ( (!\LessThan0~36_combout\ & ((!\B[25]~input_o\) # (\A[25]~input_o\))) ) ) ) # ( !\LessThan0~28_combout\ & ( !\B[24]~input_o\ & 
-- ( !\LessThan0~36_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010100000101010101010101010100010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~36_combout\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	datae => \ALT_INV_LessThan0~28_combout\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \LessThan0~37_combout\);

-- Location: LABCELL_X27_Y3_N18
\LessThan0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~38_combout\ = ( \LessThan0~37_combout\ & ( \B[23]~input_o\ & ( (!\Equal7~6_combout\) # ((\A[23]~input_o\ & ((!\B[22]~input_o\) # (\A[22]~input_o\)))) ) ) ) # ( \LessThan0~37_combout\ & ( !\B[23]~input_o\ & ( ((!\Equal7~6_combout\) # 
-- ((!\B[22]~input_o\) # (\A[23]~input_o\))) # (\A[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111101111100000000000000001100111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_Equal7~6_combout\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	datae => \ALT_INV_LessThan0~37_combout\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \LessThan0~38_combout\);

-- Location: LABCELL_X30_Y2_N12
\LessThan0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~33_combout\ = ( \B[21]~input_o\ & ( \B[19]~input_o\ & ( (!\A[21]~input_o\) # ((!\A[19]~input_o\ & ((!\A[20]~input_o\) # (\B[20]~input_o\))) # (\A[19]~input_o\ & (\B[20]~input_o\ & !\A[20]~input_o\))) ) ) ) # ( !\B[21]~input_o\ & ( 
-- \B[19]~input_o\ & ( (!\A[21]~input_o\ & ((!\A[19]~input_o\ & ((!\A[20]~input_o\) # (\B[20]~input_o\))) # (\A[19]~input_o\ & (\B[20]~input_o\ & !\A[20]~input_o\)))) ) ) ) # ( \B[21]~input_o\ & ( !\B[19]~input_o\ & ( (!\A[21]~input_o\) # ((\B[20]~input_o\ & 
-- !\A[20]~input_o\)) ) ) ) # ( !\B[21]~input_o\ & ( !\B[19]~input_o\ & ( (\B[20]~input_o\ & (!\A[21]~input_o\ & !\A[20]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000111100111111000010110000001000001111101111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	combout => \LessThan0~33_combout\);

-- Location: MLABCELL_X28_Y2_N6
\LessThan0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~34_combout\ = ( \A[17]~input_o\ & ( \B[18]~input_o\ & ( (!\LessThan0~33_combout\ & ((!\LessThan0~22_combout\) # (\A[18]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( \B[18]~input_o\ & ( (!\LessThan0~33_combout\ & ((!\LessThan0~22_combout\) # 
-- ((\A[18]~input_o\ & !\B[17]~input_o\)))) ) ) ) # ( \A[17]~input_o\ & ( !\B[18]~input_o\ & ( !\LessThan0~33_combout\ ) ) ) # ( !\A[17]~input_o\ & ( !\B[18]~input_o\ & ( (!\LessThan0~33_combout\ & (((!\LessThan0~22_combout\) # (!\B[17]~input_o\)) # 
-- (\A[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000100110011001100110011000100110000001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_LessThan0~33_combout\,
	datac => \ALT_INV_LessThan0~22_combout\,
	datad => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \LessThan0~34_combout\);

-- Location: LABCELL_X33_Y3_N36
\LessThan0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~35_combout\ = ( \B[16]~input_o\ & ( \Equal7~4_combout\ & ( (\A[16]~input_o\ & (\LessThan0~34_combout\ & ((!\B[15]~input_o\) # (\A[15]~input_o\)))) ) ) ) # ( !\B[16]~input_o\ & ( \Equal7~4_combout\ & ( (\LessThan0~34_combout\ & 
-- (((!\B[15]~input_o\) # (\A[15]~input_o\)) # (\A[16]~input_o\))) ) ) ) # ( \B[16]~input_o\ & ( !\Equal7~4_combout\ & ( \LessThan0~34_combout\ ) ) ) # ( !\B[16]~input_o\ & ( !\Equal7~4_combout\ & ( \LessThan0~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110001001100110001000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_LessThan0~34_combout\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_Equal7~4_combout\,
	combout => \LessThan0~35_combout\);

-- Location: MLABCELL_X28_Y5_N18
\LessThan0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~39_combout\ = ( \LessThan0~38_combout\ & ( \LessThan0~35_combout\ & ( (!\Equal7~5_combout\) # ((!\Equal7~7_combout\) # ((!\LessThan0~27_combout\ & !\LessThan0~21_combout\))) ) ) ) # ( \LessThan0~38_combout\ & ( !\LessThan0~35_combout\ & ( 
-- !\Equal7~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~27_combout\,
	datab => \ALT_INV_Equal7~5_combout\,
	datac => \ALT_INV_Equal7~7_combout\,
	datad => \ALT_INV_LessThan0~21_combout\,
	datae => \ALT_INV_LessThan0~38_combout\,
	dataf => \ALT_INV_LessThan0~35_combout\,
	combout => \LessThan0~39_combout\);

-- Location: MLABCELL_X28_Y5_N24
\LessThan0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~41_combout\ = ( \A[3]~input_o\ & ( !\B[3]~input_o\ ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \LessThan0~41_combout\);

-- Location: MLABCELL_X25_Y3_N9
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = !\B[29]~input_o\ $ (!\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X25_Y3_N0
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \A[30]~input_o\ & ( !\B[30]~input_o\ ) ) # ( !\A[30]~input_o\ & ( \B[30]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X25_Y3_N3
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( \A[31]~input_o\ & ( (\B[31]~input_o\ & (!\LessThan0~1_combout\ & !\LessThan0~0_combout\)) ) ) # ( !\A[31]~input_o\ & ( (!\B[31]~input_o\ & (!\LessThan0~1_combout\ & !\LessThan0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: MLABCELL_X28_Y5_N0
\LessThan0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~42_combout\ = !\B[2]~input_o\ $ (!\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	combout => \LessThan0~42_combout\);

-- Location: LABCELL_X27_Y4_N33
\LessThan0~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~43_combout\ = ( \A[1]~input_o\ & ( !\B[1]~input_o\ ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \LessThan0~43_combout\);

-- Location: MLABCELL_X28_Y5_N27
\Equal7~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~8_combout\ = (!\LessThan0~43_combout\ & (!\B[0]~input_o\ $ (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_LessThan0~43_combout\,
	datad => \ALT_INV_A[0]~input_o\,
	combout => \Equal7~8_combout\);

-- Location: MLABCELL_X28_Y5_N42
\Equal7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~9_combout\ = ( \Equal7~3_combout\ & ( (!\LessThan0~41_combout\ & (\Equal7~0_combout\ & (!\LessThan0~42_combout\ & \Equal7~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~41_combout\,
	datab => \ALT_INV_Equal7~0_combout\,
	datac => \ALT_INV_LessThan0~42_combout\,
	datad => \ALT_INV_Equal7~8_combout\,
	dataf => \ALT_INV_Equal7~3_combout\,
	combout => \Equal7~9_combout\);

-- Location: IOIBUF_X34_Y0_N58
\opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: MLABCELL_X28_Y5_N30
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \Equal7~5_combout\ & ( \opcode[0]~input_o\ & ( (!\Equal7~7_combout\) # ((!\Equal7~2_combout\) # ((!\Equal7~1_combout\) # (!\Equal7~9_combout\))) ) ) ) # ( !\Equal7~5_combout\ & ( \opcode[0]~input_o\ ) ) # ( \Equal7~5_combout\ & ( 
-- !\opcode[0]~input_o\ & ( (\Equal7~7_combout\ & (\Equal7~2_combout\ & (\Equal7~1_combout\ & \Equal7~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~7_combout\,
	datab => \ALT_INV_Equal7~2_combout\,
	datac => \ALT_INV_Equal7~1_combout\,
	datad => \ALT_INV_Equal7~9_combout\,
	datae => \ALT_INV_Equal7~5_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X68_Y0_N18
\opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: MLABCELL_X28_Y3_N36
\Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = ( \Equal7~0_combout\ & ( \opcode[1]~input_o\ & ( (!\LessThan0~40_combout\ & (\LessThan0~39_combout\ & !\opcode[2]~input_o\)) ) ) ) # ( !\Equal7~0_combout\ & ( \opcode[1]~input_o\ & ( (!\LessThan0~40_combout\ & !\opcode[2]~input_o\) ) ) 
-- ) # ( \Equal7~0_combout\ & ( !\opcode[1]~input_o\ & ( (!\opcode[2]~input_o\ & (((!\LessThan0~39_combout\)) # (\LessThan0~40_combout\))) # (\opcode[2]~input_o\ & (((\Mux31~0_combout\)))) ) ) ) # ( !\Equal7~0_combout\ & ( !\opcode[1]~input_o\ & ( 
-- (!\opcode[2]~input_o\ & (\LessThan0~40_combout\)) # (\opcode[2]~input_o\ & ((\Mux31~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111110111010000111110101010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~40_combout\,
	datab => \ALT_INV_LessThan0~39_combout\,
	datac => \ALT_INV_Mux31~0_combout\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: LABCELL_X31_Y5_N24
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !\B[7]~input_o\ & ( !\B[6]~input_o\ & ( (!\B[10]~input_o\ & (!\B[8]~input_o\ & (!\B[5]~input_o\ & !\B[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X27_Y2_N6
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !\B[19]~input_o\ & ( !\B[18]~input_o\ & ( (!\B[17]~input_o\ & (!\B[22]~input_o\ & (!\B[20]~input_o\ & !\B[21]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[17]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X30_Y3_N42
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\B[28]~input_o\ & ( !\B[24]~input_o\ & ( (!\B[25]~input_o\ & (!\B[26]~input_o\ & (!\B[23]~input_o\ & !\B[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[25]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	datae => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: MLABCELL_X25_Y3_N6
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\B[29]~input_o\ & !\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X33_Y3_N42
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !\B[16]~input_o\ & ( !\B[13]~input_o\ & ( (!\B[15]~input_o\ & (!\B[12]~input_o\ & (!\B[14]~input_o\ & !\B[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X24_Y3_N0
\ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = ( \Equal1~1_combout\ & ( \Equal1~5_combout\ & ( (\Equal1~4_combout\ & (!\B[4]~input_o\ & (\Equal1~3_combout\ & \Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \ShiftRight0~0_combout\);

-- Location: LABCELL_X31_Y4_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X27_Y4_N6
\ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: LABCELL_X22_Y3_N6
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\B[2]~input_o\ & ( !\B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X24_Y4_N3
\Mux31~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = ( \Equal1~0_combout\ & ( \opcode[0]~input_o\ & ( (\ShiftRight0~0_combout\ & \ShiftLeft0~0_combout\) ) ) ) # ( \Equal1~0_combout\ & ( !\opcode[0]~input_o\ & ( \Add0~1_sumout\ ) ) ) # ( !\Equal1~0_combout\ & ( !\opcode[0]~input_o\ & ( 
-- \Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_ShiftLeft0~0_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux31~4_combout\);

-- Location: MLABCELL_X28_Y3_N15
\Mux31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = ( \A[0]~input_o\ & ( (\opcode[0]~input_o\) # (\B[0]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (\B[0]~input_o\ & \opcode[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Mux31~3_combout\);

-- Location: LABCELL_X24_Y3_N36
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~5_combout\ & ( (\Equal1~1_combout\ & (\Equal1~2_combout\ & (\Equal1~4_combout\ & \Equal1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_Equal1~2_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X30_Y5_N36
\ShiftRight1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~7_combout\ = ( \A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) 
-- # (\A[9]~input_o\)))) # (\B[1]~input_o\ & (\A[11]~input_o\ & ((\B[0]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\A[9]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[11]~input_o\))) ) 
-- ) ) # ( !\A[10]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \ShiftRight1~7_combout\);

-- Location: LABCELL_X29_Y5_N6
\ShiftRight1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = ( \A[7]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[5]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[6]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[5]~input_o\))) # (\B[1]~input_o\ & (((\A[6]~input_o\ & !\B[0]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # 
-- (\A[6]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\A[6]~input_o\ & !\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \ShiftRight1~6_combout\);

-- Location: LABCELL_X27_Y4_N12
\ShiftRight1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~5_combout\ = ( \A[0]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[2]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[1]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\A[2]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[1]~input_o\))) ) ) ) # ( \A[0]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[2]~input_o\)))) # (\B[0]~input_o\ & (\A[1]~input_o\ & 
-- ((!\B[1]~input_o\)))) ) ) ) # ( !\A[0]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (((\A[2]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[1]~input_o\ & ((!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \ShiftRight1~5_combout\);

-- Location: LABCELL_X33_Y3_N48
\ShiftRight1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~8_combout\ = ( \B[0]~input_o\ & ( \A[13]~input_o\ & ( (!\B[1]~input_o\) # (\A[15]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[13]~input_o\ & ( (!\B[1]~input_o\ & (\A[12]~input_o\)) # (\B[1]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[13]~input_o\ & ( (\B[1]~input_o\ & \A[15]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & (\A[12]~input_o\)) # (\B[1]~input_o\ & ((\A[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \ShiftRight1~8_combout\);

-- Location: LABCELL_X24_Y5_N36
\ShiftRight1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~9_combout\ = ( \ShiftRight1~8_combout\ & ( \B[2]~input_o\ & ( (\ShiftRight1~6_combout\) # (\B[3]~input_o\) ) ) ) # ( !\ShiftRight1~8_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \ShiftRight1~6_combout\) ) ) ) # ( \ShiftRight1~8_combout\ 
-- & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\ShiftRight1~5_combout\))) # (\B[3]~input_o\ & (\ShiftRight1~7_combout\)) ) ) ) # ( !\ShiftRight1~8_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\ShiftRight1~5_combout\))) # (\B[3]~input_o\ & 
-- (\ShiftRight1~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~7_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftRight1~6_combout\,
	datad => \ALT_INV_ShiftRight1~5_combout\,
	datae => \ALT_INV_ShiftRight1~8_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \ShiftRight1~9_combout\);

-- Location: MLABCELL_X21_Y3_N30
\ShiftRight1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~3_combout\ = ( \A[29]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[30]~input_o\)) # (\B[0]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[30]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[31]~input_o\))) ) ) ) # ( \A[29]~input_o\ & ( !\B[1]~input_o\ & ( (\A[28]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight1~3_combout\);

-- Location: LABCELL_X30_Y2_N18
\ShiftRight1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~2_combout\ = ( \A[21]~input_o\ & ( \A[20]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[22]~input_o\))) # (\B[0]~input_o\ & (\A[23]~input_o\))) ) ) ) # ( !\A[21]~input_o\ & ( \A[20]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[22]~input_o\))) # (\B[0]~input_o\ & (\A[23]~input_o\)))) ) ) ) # ( \A[21]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & ((\A[22]~input_o\))) # (\B[0]~input_o\ & (\A[23]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( !\A[20]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[22]~input_o\))) # (\B[0]~input_o\ & (\A[23]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \ShiftRight1~2_combout\);

-- Location: LABCELL_X24_Y2_N0
\ShiftRight1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~1_combout\ = ( \A[24]~input_o\ & ( \A[26]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( \A[26]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))))) ) ) ) # ( \A[24]~input_o\ & ( !\A[26]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[26]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \ShiftRight1~1_combout\);

-- Location: LABCELL_X29_Y1_N30
\ShiftRight1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~0_combout\ = ( \A[19]~input_o\ & ( \A[16]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[17]~input_o\)))) # (\B[1]~input_o\ & (((\A[18]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[19]~input_o\ & ( \A[16]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[17]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[18]~input_o\)))) ) ) ) # ( \A[19]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[17]~input_o\))) # (\B[1]~input_o\ & 
-- (((\A[18]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[19]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[17]~input_o\))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[18]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \ShiftRight1~0_combout\);

-- Location: LABCELL_X24_Y5_N0
\ShiftRight1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~4_combout\ = ( \ShiftRight1~1_combout\ & ( \ShiftRight1~0_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\ShiftRight1~2_combout\))) # (\B[3]~input_o\ & (\ShiftRight1~3_combout\))) ) ) ) # ( !\ShiftRight1~1_combout\ & ( 
-- \ShiftRight1~0_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\)) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\ShiftRight1~2_combout\))) # (\B[3]~input_o\ & (\ShiftRight1~3_combout\)))) ) ) ) # ( \ShiftRight1~1_combout\ & ( !\ShiftRight1~0_combout\ & ( 
-- (!\B[2]~input_o\ & (\B[3]~input_o\)) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\ShiftRight1~2_combout\))) # (\B[3]~input_o\ & (\ShiftRight1~3_combout\)))) ) ) ) # ( !\ShiftRight1~1_combout\ & ( !\ShiftRight1~0_combout\ & ( (\B[2]~input_o\ & 
-- ((!\B[3]~input_o\ & ((\ShiftRight1~2_combout\))) # (\B[3]~input_o\ & (\ShiftRight1~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftRight1~3_combout\,
	datad => \ALT_INV_ShiftRight1~2_combout\,
	datae => \ALT_INV_ShiftRight1~1_combout\,
	dataf => \ALT_INV_ShiftRight1~0_combout\,
	combout => \ShiftRight1~4_combout\);

-- Location: MLABCELL_X28_Y3_N18
\Mux31~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = ( \A[31]~input_o\ & ( \B[4]~input_o\ & ( (!\Equal1~6_combout\ & ((\opcode[0]~input_o\))) # (\Equal1~6_combout\ & (\ShiftRight1~4_combout\)) ) ) ) # ( !\A[31]~input_o\ & ( \B[4]~input_o\ & ( (\Equal1~6_combout\ & 
-- \ShiftRight1~4_combout\) ) ) ) # ( \A[31]~input_o\ & ( !\B[4]~input_o\ & ( (!\Equal1~6_combout\ & ((\opcode[0]~input_o\))) # (\Equal1~6_combout\ & (\ShiftRight1~9_combout\)) ) ) ) # ( !\A[31]~input_o\ & ( !\B[4]~input_o\ & ( (\Equal1~6_combout\ & 
-- \ShiftRight1~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011011101100000101000001010000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_ShiftRight1~9_combout\,
	datac => \ALT_INV_ShiftRight1~4_combout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux31~5_combout\);

-- Location: LABCELL_X30_Y4_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\A[0]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\A[0]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\B[0]~input_o\) # (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: MLABCELL_X28_Y4_N9
\Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = ( \Add0~1_sumout\ & ( \opcode[0]~input_o\ & ( \Add1~1_sumout\ ) ) ) # ( !\Add0~1_sumout\ & ( \opcode[0]~input_o\ & ( \Add1~1_sumout\ ) ) ) # ( \Add0~1_sumout\ & ( !\opcode[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux31~2_combout\);

-- Location: MLABCELL_X28_Y3_N54
\Mux31~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = ( \Mux31~2_combout\ & ( \opcode[1]~input_o\ & ( (!\opcode[2]~input_o\ & (\Mux31~3_combout\)) # (\opcode[2]~input_o\ & ((\Mux31~5_combout\))) ) ) ) # ( !\Mux31~2_combout\ & ( \opcode[1]~input_o\ & ( (!\opcode[2]~input_o\ & 
-- (\Mux31~3_combout\)) # (\opcode[2]~input_o\ & ((\Mux31~5_combout\))) ) ) ) # ( \Mux31~2_combout\ & ( !\opcode[1]~input_o\ & ( (!\opcode[2]~input_o\) # (\Mux31~4_combout\) ) ) ) # ( !\Mux31~2_combout\ & ( !\opcode[1]~input_o\ & ( (\Mux31~4_combout\ & 
-- \opcode[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux31~4_combout\,
	datab => \ALT_INV_Mux31~3_combout\,
	datac => \ALT_INV_Mux31~5_combout\,
	datad => \ALT_INV_opcode[2]~input_o\,
	datae => \ALT_INV_Mux31~2_combout\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux31~6_combout\);

-- Location: IOIBUF_X89_Y4_N61
\opcode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: MLABCELL_X25_Y4_N33
\Mux31~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = ( \Mux31~6_combout\ & ( \opcode[3]~input_o\ & ( \Mux31~1_combout\ ) ) ) # ( !\Mux31~6_combout\ & ( \opcode[3]~input_o\ & ( \Mux31~1_combout\ ) ) ) # ( \Mux31~6_combout\ & ( !\opcode[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux31~1_combout\,
	datae => \ALT_INV_Mux31~6_combout\,
	dataf => \ALT_INV_opcode[3]~input_o\,
	combout => \Mux31~7_combout\);

-- Location: LABCELL_X30_Y4_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\B[1]~input_o\ $ (\A[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\B[1]~input_o\ $ (\A[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((!\B[1]~input_o\ & \A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: LABCELL_X31_Y4_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X28_Y4_N48
\Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ( !\opcode[1]~input_o\ & ( \A[1]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\Add0~5_sumout\))) # (\opcode[0]~input_o\ & (!\Add1~5_sumout\)) ) ) ) # ( \opcode[1]~input_o\ & ( !\A[1]~input_o\ & ( !\B[1]~input_o\ ) ) ) # ( 
-- !\opcode[1]~input_o\ & ( !\A[1]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\Add0~5_sumout\))) # (\opcode[0]~input_o\ & (!\Add1~5_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001000100111100001111000011101110010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LABCELL_X27_Y4_N9
\ShiftLeft0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\A[0]~input_o\ & (\B[0]~input_o\ & !\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \ShiftLeft0~1_combout\);

-- Location: LABCELL_X23_Y4_N3
\ShiftLeft0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\ShiftRight0~0_combout\ & (\Equal1~0_combout\ & \ShiftLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_ShiftLeft0~1_combout\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LABCELL_X24_Y2_N36
\ShiftRight1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = ( \A[28]~input_o\ & ( \A[26]~input_o\ & ( ((!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( \A[26]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[28]~input_o\ & ( !\A[26]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[27]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[28]~input_o\ & ( !\A[26]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[25]~input_o\)) # (\B[1]~input_o\ & ((\A[27]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \ShiftRight1~15_combout\);

-- Location: MLABCELL_X21_Y3_N39
\ShiftRight1~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = ( \B[1]~input_o\ & ( \A[31]~input_o\ ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[29]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight1~19_combout\);

-- Location: MLABCELL_X25_Y2_N48
\ShiftRight1~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = ( \ShiftRight1~19_combout\ & ( (\B[3]~input_o\ & ((\ShiftRight1~15_combout\) # (\B[2]~input_o\))) ) ) # ( !\ShiftRight1~19_combout\ & ( (!\B[2]~input_o\ & (\ShiftRight1~15_combout\ & \B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftRight1~15_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftRight1~19_combout\,
	combout => \ShiftRight1~20_combout\);

-- Location: LABCELL_X29_Y1_N36
\ShiftRight1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = ( \A[19]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[20]~input_o\) ) ) ) # ( !\A[19]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \A[20]~input_o\) ) ) ) # ( \A[19]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[18]~input_o\))) ) ) ) # ( !\A[19]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight1~17_combout\);

-- Location: LABCELL_X30_Y2_N54
\ShiftRight1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = ( \A[21]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[23]~input_o\))) # (\B[0]~input_o\ & (\A[24]~input_o\)) ) ) ) # ( !\A[21]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[23]~input_o\))) # (\B[0]~input_o\ 
-- & (\A[24]~input_o\)) ) ) ) # ( \A[21]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[22]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & \A[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight1~16_combout\);

-- Location: MLABCELL_X25_Y2_N15
\ShiftRight1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = ( \ShiftRight1~16_combout\ & ( (!\B[3]~input_o\ & ((\B[2]~input_o\) # (\ShiftRight1~17_combout\))) ) ) # ( !\ShiftRight1~16_combout\ & ( (\ShiftRight1~17_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~17_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftRight1~16_combout\,
	combout => \ShiftRight1~18_combout\);

-- Location: LABCELL_X30_Y5_N12
\ShiftRight1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = ( \A[10]~input_o\ & ( \A[9]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[11]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \A[9]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)) # (\A[11]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\ & \A[12]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (\A[11]~input_o\ & (\B[1]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # 
-- (\A[12]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[9]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[11]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \ShiftRight1~12_combout\);

-- Location: LABCELL_X27_Y4_N48
\ShiftRight1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~10_combout\ = ( \A[4]~input_o\ & ( \A[3]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # 
-- (\A[1]~input_o\)))) # (\B[0]~input_o\ & (\A[2]~input_o\ & ((!\B[1]~input_o\)))) ) ) ) # ( \A[4]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (((\A[1]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[2]~input_o\))) ) ) ) 
-- # ( !\A[4]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \ShiftRight1~10_combout\);

-- Location: LABCELL_X29_Y5_N42
\ShiftRight1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~11_combout\ = ( \A[6]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\A[5]~input_o\ & 
-- !\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( \A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[5]~input_o\)))) # (\B[1]~input_o\ & (\A[7]~input_o\ & ((!\B[0]~input_o\)))) ) ) ) 
-- # ( !\A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \ShiftRight1~11_combout\);

-- Location: LABCELL_X33_Y3_N54
\ShiftRight1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = ( \B[0]~input_o\ & ( \A[13]~input_o\ & ( (!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[16]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[13]~input_o\ & ( (!\B[1]~input_o\) # (\A[15]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[16]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[13]~input_o\ & ( (\B[1]~input_o\ & \A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \ShiftRight1~13_combout\);

-- Location: MLABCELL_X25_Y2_N0
\ShiftRight1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = ( \B[2]~input_o\ & ( \ShiftRight1~13_combout\ & ( (\ShiftRight1~11_combout\) # (\B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \ShiftRight1~13_combout\ & ( (!\B[3]~input_o\ & ((\ShiftRight1~10_combout\))) # (\B[3]~input_o\ & 
-- (\ShiftRight1~12_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\ShiftRight1~13_combout\ & ( (!\B[3]~input_o\ & \ShiftRight1~11_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\ShiftRight1~13_combout\ & ( (!\B[3]~input_o\ & ((\ShiftRight1~10_combout\))) # 
-- (\B[3]~input_o\ & (\ShiftRight1~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~12_combout\,
	datab => \ALT_INV_ShiftRight1~10_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_ShiftRight1~11_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftRight1~13_combout\,
	combout => \ShiftRight1~14_combout\);

-- Location: MLABCELL_X25_Y2_N24
\ShiftRight1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = ( \Equal1~6_combout\ & ( \A[31]~input_o\ & ( (!\B[4]~input_o\ & (((!\ShiftRight1~14_combout\)))) # (\B[4]~input_o\ & (!\ShiftRight1~20_combout\ & (!\ShiftRight1~18_combout\))) ) ) ) # ( \Equal1~6_combout\ & ( !\A[31]~input_o\ & 
-- ( (!\B[4]~input_o\ & (((!\ShiftRight1~14_combout\)))) # (\B[4]~input_o\ & (!\ShiftRight1~20_combout\ & (!\ShiftRight1~18_combout\))) ) ) ) # ( !\Equal1~6_combout\ & ( !\A[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001000100000000000000000001111000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~20_combout\,
	datab => \ALT_INV_ShiftRight1~18_combout\,
	datac => \ALT_INV_ShiftRight1~14_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~21_combout\);

-- Location: MLABCELL_X21_Y3_N36
\ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = ( \B[1]~input_o\ & ( (\A[31]~input_o\ & !\B[0]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[29]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight0~1_combout\);

-- Location: MLABCELL_X25_Y2_N6
\ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = ( \B[3]~input_o\ & ( \ShiftRight1~16_combout\ & ( (!\B[2]~input_o\ & (\ShiftRight1~15_combout\)) # (\B[2]~input_o\ & ((\ShiftRight0~1_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \ShiftRight1~16_combout\ & ( (\B[2]~input_o\) # 
-- (\ShiftRight1~17_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\ShiftRight1~16_combout\ & ( (!\B[2]~input_o\ & (\ShiftRight1~15_combout\)) # (\B[2]~input_o\ & ((\ShiftRight0~1_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\ShiftRight1~16_combout\ & ( 
-- (\ShiftRight1~17_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~15_combout\,
	datab => \ALT_INV_ShiftRight0~1_combout\,
	datac => \ALT_INV_ShiftRight1~17_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftRight1~16_combout\,
	combout => \ShiftRight0~2_combout\);

-- Location: MLABCELL_X28_Y2_N15
\ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = ( \ShiftRight0~2_combout\ & ( \B[4]~input_o\ & ( \Equal1~6_combout\ ) ) ) # ( \ShiftRight0~2_combout\ & ( !\B[4]~input_o\ & ( (\Equal1~6_combout\ & \ShiftRight1~14_combout\) ) ) ) # ( !\ShiftRight0~2_combout\ & ( !\B[4]~input_o\ 
-- & ( (\Equal1~6_combout\ & \ShiftRight1~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_ShiftRight1~14_combout\,
	datae => \ALT_INV_ShiftRight0~2_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \ShiftRight0~3_combout\);

-- Location: MLABCELL_X28_Y4_N42
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( !\ShiftRight1~21_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( \ShiftLeft0~2_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( 
-- \ShiftRight0~3_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( \LessThan0~43_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~2_combout\,
	datab => \ALT_INV_ShiftRight1~21_combout\,
	datac => \ALT_INV_ShiftRight0~3_combout\,
	datad => \ALT_INV_LessThan0~43_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X25_Y3_N45
\Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( !\opcode[3]~input_o\ & ( ((!\opcode[0]~input_o\ & \opcode[1]~input_o\)) # (\opcode[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101010101011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[3]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: MLABCELL_X25_Y3_N42
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( !\opcode[3]~input_o\ & ( ((!\opcode[1]~input_o\) # (\opcode[0]~input_o\)) # (\opcode[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[3]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: MLABCELL_X28_Y4_N54
\Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ( \B[1]~input_o\ & ( \A[1]~input_o\ & ( (!\Mux24~1_combout\ & (!\Mux30~1_combout\ & ((\Mux24~0_combout\)))) # (\Mux24~1_combout\ & (((!\Mux24~0_combout\) # (\Mux30~0_combout\)))) ) ) ) # ( !\B[1]~input_o\ & ( \A[1]~input_o\ & ( 
-- (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & (!\Mux30~1_combout\)) # (\Mux24~1_combout\ & ((\Mux30~0_combout\))))) ) ) ) # ( \B[1]~input_o\ & ( !\A[1]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & (!\Mux30~1_combout\)) # (\Mux24~1_combout\ & 
-- ((\Mux30~0_combout\))))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & (!\Mux30~1_combout\)) # (\Mux24~1_combout\ & ((\Mux30~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100011000000001010001100000000101000110000111110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~1_combout\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_Mux24~0_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LABCELL_X27_Y4_N0
\ShiftRight1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = ( \A[5]~input_o\ & ( \A[3]~input_o\ & ( ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[5]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))))) # 
-- (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[5]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \ShiftRight1~22_combout\);

-- Location: LABCELL_X33_Y3_N0
\ShiftRight1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = ( \B[0]~input_o\ & ( \A[17]~input_o\ & ( (\B[1]~input_o\) # (\A[15]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[17]~input_o\ & ( (!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[16]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[17]~input_o\ & ( (\A[15]~input_o\ & !\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[16]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \ShiftRight1~25_combout\);

-- Location: LABCELL_X29_Y5_N18
\ShiftRight1~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = ( \A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[7]~input_o\ & 
-- ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[9]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[7]~input_o\))) # (\B[1]~input_o\ & (((\A[9]~input_o\ & \B[0]~input_o\)))) ) ) 
-- ) # ( !\A[6]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \ShiftRight1~23_combout\);

-- Location: LABCELL_X30_Y5_N18
\ShiftRight1~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = ( \A[10]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[12]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[11]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( \A[13]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A[12]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[11]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[12]~input_o\)))) # (\B[0]~input_o\ & 
-- (\A[11]~input_o\ & (!\B[1]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\ & \A[12]~input_o\)))) # (\B[0]~input_o\ & (\A[11]~input_o\ & (!\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \ShiftRight1~24_combout\);

-- Location: MLABCELL_X21_Y4_N0
\ShiftRight1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = ( \ShiftRight1~23_combout\ & ( \ShiftRight1~24_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\ShiftRight1~22_combout\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\ShiftRight1~25_combout\)))) ) ) ) # ( 
-- !\ShiftRight1~23_combout\ & ( \ShiftRight1~24_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\ShiftRight1~22_combout\))) # (\B[2]~input_o\ & (((\B[3]~input_o\ & \ShiftRight1~25_combout\)))) ) ) ) # ( \ShiftRight1~23_combout\ & ( 
-- !\ShiftRight1~24_combout\ & ( (!\B[2]~input_o\ & (\ShiftRight1~22_combout\ & (!\B[3]~input_o\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\ShiftRight1~25_combout\)))) ) ) ) # ( !\ShiftRight1~23_combout\ & ( !\ShiftRight1~24_combout\ & ( (!\B[2]~input_o\ 
-- & (\ShiftRight1~22_combout\ & (!\B[3]~input_o\))) # (\B[2]~input_o\ & (((\B[3]~input_o\ & \ShiftRight1~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_ShiftRight1~22_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_ShiftRight1~25_combout\,
	datae => \ALT_INV_ShiftRight1~23_combout\,
	dataf => \ALT_INV_ShiftRight1~24_combout\,
	combout => \ShiftRight1~26_combout\);

-- Location: LABCELL_X24_Y2_N12
\ShiftRight1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = ( \A[24]~input_o\ & ( \A[25]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[22]~input_o\))) # (\B[0]~input_o\ & (\A[23]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[24]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\A[22]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[23]~input_o\))) ) ) ) # ( \A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[22]~input_o\)))) # (\B[0]~input_o\ & (\A[23]~input_o\ & 
-- ((!\B[1]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[22]~input_o\))) # (\B[0]~input_o\ & (\A[23]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \ShiftRight1~28_combout\);

-- Location: MLABCELL_X21_Y3_N48
\ShiftRight1~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = ( \A[29]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[28]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( \B[1]~input_o\ & ( (\A[28]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[29]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\)) ) ) ) # ( !\A[29]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight1~27_combout\);

-- Location: LABCELL_X29_Y1_N12
\ShiftRight1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = ( \A[19]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # (\B[0]~input_o\ & (\A[21]~input_o\)) ) ) ) # ( !\A[19]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # (\B[0]~input_o\ 
-- & (\A[21]~input_o\)) ) ) ) # ( \A[19]~input_o\ & ( !\B[1]~input_o\ & ( (\A[18]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[19]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight1~29_combout\);

-- Location: MLABCELL_X21_Y3_N42
\ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[30]~input_o\))) # (\B[0]~input_o\ & (\A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: MLABCELL_X21_Y4_N6
\ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = ( \ShiftRight1~29_combout\ & ( \ShiftRight0~4_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\ShiftRight1~28_combout\))) # (\B[3]~input_o\ & (((\B[2]~input_o\) # (\ShiftRight1~27_combout\)))) ) ) ) # ( 
-- !\ShiftRight1~29_combout\ & ( \ShiftRight0~4_combout\ & ( (!\B[3]~input_o\ & (\ShiftRight1~28_combout\ & ((\B[2]~input_o\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\) # (\ShiftRight1~27_combout\)))) ) ) ) # ( \ShiftRight1~29_combout\ & ( 
-- !\ShiftRight0~4_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\ShiftRight1~28_combout\))) # (\B[3]~input_o\ & (((\ShiftRight1~27_combout\ & !\B[2]~input_o\)))) ) ) ) # ( !\ShiftRight1~29_combout\ & ( !\ShiftRight0~4_combout\ & ( (!\B[3]~input_o\ 
-- & (\ShiftRight1~28_combout\ & ((\B[2]~input_o\)))) # (\B[3]~input_o\ & (((\ShiftRight1~27_combout\ & !\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~28_combout\,
	datab => \ALT_INV_ShiftRight1~27_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_ShiftRight1~29_combout\,
	dataf => \ALT_INV_ShiftRight0~4_combout\,
	combout => \ShiftRight0~5_combout\);

-- Location: LABCELL_X27_Y2_N12
\ShiftRight0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = ( \B[4]~input_o\ & ( \ShiftRight0~5_combout\ & ( \Equal1~6_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \ShiftRight0~5_combout\ & ( (\Equal1~6_combout\ & \ShiftRight1~26_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\ShiftRight0~5_combout\ 
-- & ( (\Equal1~6_combout\ & \ShiftRight1~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000000000001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_ShiftRight1~26_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftRight0~5_combout\,
	combout => \ShiftRight0~6_combout\);

-- Location: LABCELL_X27_Y4_N54
\ShiftLeft0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = ( \B[0]~input_o\ & ( (\A[1]~input_o\ & !\B[1]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \ShiftLeft0~3_combout\);

-- Location: MLABCELL_X25_Y4_N36
\ShiftLeft0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = ( \ShiftRight0~0_combout\ & ( \ShiftLeft0~3_combout\ & ( \Equal1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_ShiftLeft0~3_combout\,
	combout => \ShiftLeft0~4_combout\);

-- Location: MLABCELL_X21_Y4_N45
\ShiftRight1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\ShiftRight1~29_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~28_combout\,
	datab => \ALT_INV_ShiftRight1~29_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftRight1~30_combout\);

-- Location: MLABCELL_X21_Y3_N54
\ShiftRight1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = ( \B[1]~input_o\ & ( \A[31]~input_o\ ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[30]~input_o\)) # (\B[0]~input_o\ & ((\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight1~31_combout\);

-- Location: MLABCELL_X21_Y4_N48
\ShiftRight1~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\ShiftRight1~27_combout\)) # (\B[2]~input_o\ & ((\ShiftRight1~31_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_ShiftRight1~27_combout\,
	datac => \ALT_INV_ShiftRight1~31_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftRight1~32_combout\);

-- Location: LABCELL_X27_Y2_N48
\ShiftRight1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = ( \B[4]~input_o\ & ( \ShiftRight1~26_combout\ & ( (!\Equal1~6_combout\ & (!\A[31]~input_o\)) # (\Equal1~6_combout\ & (((!\ShiftRight1~30_combout\ & !\ShiftRight1~32_combout\)))) ) ) ) # ( !\B[4]~input_o\ & ( 
-- \ShiftRight1~26_combout\ & ( (!\A[31]~input_o\ & !\Equal1~6_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\ShiftRight1~26_combout\ & ( (!\Equal1~6_combout\ & (!\A[31]~input_o\)) # (\Equal1~6_combout\ & (((!\ShiftRight1~30_combout\ & 
-- !\ShiftRight1~32_combout\)))) ) ) ) # ( !\B[4]~input_o\ & ( !\ShiftRight1~26_combout\ & ( (!\A[31]~input_o\) # (\Equal1~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101100000010101010000000001010101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftRight1~30_combout\,
	datac => \ALT_INV_ShiftRight1~32_combout\,
	datad => \ALT_INV_Equal1~6_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftRight1~26_combout\,
	combout => \ShiftRight1~33_combout\);

-- Location: MLABCELL_X28_Y2_N48
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \ShiftRight1~33_combout\ & ( \opcode[1]~input_o\ & ( (\ShiftRight0~6_combout\ & !\opcode[0]~input_o\) ) ) ) # ( !\ShiftRight1~33_combout\ & ( \opcode[1]~input_o\ & ( (\opcode[0]~input_o\) # (\ShiftRight0~6_combout\) ) ) ) # ( 
-- \ShiftRight1~33_combout\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & (\LessThan0~42_combout\)) # (\opcode[0]~input_o\ & ((\ShiftLeft0~4_combout\))) ) ) ) # ( !\ShiftRight1~33_combout\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & 
-- (\LessThan0~42_combout\)) # (\opcode[0]~input_o\ & ((\ShiftLeft0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101011111010111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~6_combout\,
	datab => \ALT_INV_LessThan0~42_combout\,
	datac => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_ShiftLeft0~4_combout\,
	datae => \ALT_INV_ShiftRight1~33_combout\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LABCELL_X31_Y4_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X30_Y4_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\B[2]~input_o\ $ (\A[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\B[2]~input_o\ $ (\A[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((!\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: LABCELL_X29_Y4_N6
\Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\opcode[0]~input_o\ & (!\Add0~9_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~9_sumout\))))) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- ((!\opcode[0]~input_o\ & (!\Add0~9_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~9_sumout\))))) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\opcode[0]~input_o\ & (!\Add0~9_sumout\)) # (\opcode[0]~input_o\ & 
-- ((!\Add1~9_sumout\))))) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( ((!\opcode[0]~input_o\ & (!\Add0~9_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~9_sumout\)))) # (\opcode[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111110101100010001010000010001000101000001000100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LABCELL_X29_Y4_N12
\Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = ( \A[2]~input_o\ & ( \Mux24~1_combout\ & ( (!\Mux24~0_combout\ & ((\B[2]~input_o\))) # (\Mux24~0_combout\ & (\Mux29~0_combout\)) ) ) ) # ( !\A[2]~input_o\ & ( \Mux24~1_combout\ & ( (\Mux24~0_combout\ & \Mux29~0_combout\) ) ) ) # ( 
-- \A[2]~input_o\ & ( !\Mux24~1_combout\ & ( (\Mux24~0_combout\ & !\Mux29~1_combout\) ) ) ) # ( !\A[2]~input_o\ & ( !\Mux24~1_combout\ & ( (\Mux24~0_combout\ & !\Mux29~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000010001000100010001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux24~0_combout\,
	datab => \ALT_INV_Mux29~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Mux29~1_combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_Mux24~1_combout\,
	combout => \Mux29~2_combout\);

-- Location: LABCELL_X31_Y4_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X30_Y4_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((\A[3]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: MLABCELL_X28_Y5_N12
\Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \B[3]~input_o\ & ( \Add1~13_sumout\ & ( (!\Add0~13_sumout\ & (!\opcode[0]~input_o\ & !\opcode[1]~input_o\)) ) ) ) # ( !\B[3]~input_o\ & ( \Add1~13_sumout\ & ( (!\opcode[1]~input_o\ & (!\Add0~13_sumout\ & (!\opcode[0]~input_o\))) # 
-- (\opcode[1]~input_o\ & (((!\A[3]~input_o\)))) ) ) ) # ( \B[3]~input_o\ & ( !\Add1~13_sumout\ & ( (!\opcode[1]~input_o\ & ((!\Add0~13_sumout\) # (\opcode[0]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Add1~13_sumout\ & ( (!\opcode[1]~input_o\ & 
-- ((!\Add0~13_sumout\) # ((\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (((!\A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110110000101100001011000010001111100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \Mux28~1_combout\);

-- Location: LABCELL_X29_Y5_N24
\ShiftRight1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = ( \A[3]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) 
-- # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))))) ) ) ) # ( \A[3]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[5]~input_o\)) # 
-- (\B[0]~input_o\ & ((\A[6]~input_o\))))) ) ) ) # ( !\A[3]~input_o\ & ( !\A[4]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \ShiftRight1~34_combout\);

-- Location: LABCELL_X30_Y5_N24
\ShiftRight1~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = ( \B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\B[1]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[12]~input_o\ & ( (\A[14]~input_o\ & \B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \ShiftRight1~36_combout\);

-- Location: LABCELL_X29_Y5_N30
\ShiftRight1~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = ( \A[10]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) 
-- # (\A[7]~input_o\))) # (\B[1]~input_o\ & (((\A[9]~input_o\ & !\B[0]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[7]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[9]~input_o\)))) ) ) 
-- ) # ( !\A[10]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \ShiftRight1~35_combout\);

-- Location: LABCELL_X29_Y1_N48
\ShiftRight1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = ( \B[1]~input_o\ & ( \A[16]~input_o\ & ( (!\B[0]~input_o\ & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[18]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[16]~input_o\ & ( (\B[0]~input_o\) # (\A[15]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & (\A[17]~input_o\)) # (\B[0]~input_o\ & ((\A[18]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[16]~input_o\ & ( (\A[15]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \ShiftRight1~37_combout\);

-- Location: MLABCELL_X21_Y5_N30
\ShiftRight1~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = ( \ShiftRight1~35_combout\ & ( \ShiftRight1~37_combout\ & ( ((!\B[3]~input_o\ & (\ShiftRight1~34_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~36_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\ShiftRight1~35_combout\ & ( 
-- \ShiftRight1~37_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\ShiftRight1~34_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~36_combout\))))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( \ShiftRight1~35_combout\ & ( !\ShiftRight1~37_combout\ 
-- & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\ShiftRight1~34_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~36_combout\))))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( !\ShiftRight1~35_combout\ & ( !\ShiftRight1~37_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\B[3]~input_o\ & (\ShiftRight1~34_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~36_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~34_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_ShiftRight1~36_combout\,
	datae => \ALT_INV_ShiftRight1~35_combout\,
	dataf => \ALT_INV_ShiftRight1~37_combout\,
	combout => \ShiftRight1~38_combout\);

-- Location: MLABCELL_X21_Y3_N0
\ShiftRight1~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = ( \A[29]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[30]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( \B[1]~input_o\ & ( (\A[30]~input_o\ & \B[0]~input_o\) ) ) ) # ( \A[29]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ & ((\A[28]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ & ((\A[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight1~39_combout\);

-- Location: LABCELL_X24_Y2_N18
\ShiftRight1~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = ( \B[0]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\ & (\A[24]~input_o\)) # (\B[1]~input_o\ & ((\A[26]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[25]~input_o\ & ( (\A[23]~input_o\) # (\B[1]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & (\A[24]~input_o\)) # (\B[1]~input_o\ & ((\A[26]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & \A[23]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \ShiftRight1~40_combout\);

-- Location: LABCELL_X29_Y1_N54
\ShiftRight1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~41_combout\ = ( \A[21]~input_o\ & ( \A[20]~input_o\ & ( (!\B[1]~input_o\ & (((\A[19]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[22]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( \A[20]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\A[19]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & (\B[0]~input_o\ & (\A[22]~input_o\))) ) ) ) # ( \A[21]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[19]~input_o\)))) # (\B[1]~input_o\ & 
-- ((!\B[0]~input_o\) # ((\A[22]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( !\A[20]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[19]~input_o\)))) # (\B[1]~input_o\ & (\B[0]~input_o\ & (\A[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \ShiftRight1~41_combout\);

-- Location: MLABCELL_X21_Y3_N45
\ShiftRight0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftRight0~7_combout\);

-- Location: MLABCELL_X21_Y5_N6
\ShiftRight0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = ( \ShiftRight1~41_combout\ & ( \ShiftRight0~7_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\ShiftRight1~40_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\ShiftRight1~39_combout\))) ) ) ) # ( 
-- !\ShiftRight1~41_combout\ & ( \ShiftRight0~7_combout\ & ( (!\B[3]~input_o\ & (((\ShiftRight1~40_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\ShiftRight1~39_combout\))) ) ) ) # ( \ShiftRight1~41_combout\ & ( 
-- !\ShiftRight0~7_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\ShiftRight1~40_combout\)))) # (\B[3]~input_o\ & (\ShiftRight1~39_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( !\ShiftRight1~41_combout\ & ( !\ShiftRight0~7_combout\ & ( (!\B[3]~input_o\ 
-- & (((\ShiftRight1~40_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (\ShiftRight1~39_combout\ & ((!\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftRight1~39_combout\,
	datac => \ALT_INV_ShiftRight1~40_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_ShiftRight1~41_combout\,
	dataf => \ALT_INV_ShiftRight0~7_combout\,
	combout => \ShiftRight0~8_combout\);

-- Location: MLABCELL_X21_Y5_N15
\ShiftRight0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = ( \B[4]~input_o\ & ( (\ShiftRight0~8_combout\ & \Equal1~6_combout\) ) ) # ( !\B[4]~input_o\ & ( (\ShiftRight1~38_combout\ & \Equal1~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight1~38_combout\,
	datac => \ALT_INV_ShiftRight0~8_combout\,
	datad => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \ShiftRight0~9_combout\);

-- Location: LABCELL_X27_Y4_N36
\ShiftLeft0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = ( \B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\) # (\A[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & 
-- ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[3]~input_o\ & ( (\A[2]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LABCELL_X22_Y5_N33
\ShiftLeft0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = ( \ShiftLeft0~5_combout\ & ( (\ShiftRight0~0_combout\ & \Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_ShiftLeft0~5_combout\,
	combout => \ShiftLeft0~6_combout\);

-- Location: MLABCELL_X21_Y5_N9
\ShiftRight1~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~42_combout\ = ( \ShiftRight1~41_combout\ & ( \A[31]~input_o\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\ShiftRight1~40_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\ShiftRight1~39_combout\))) ) ) ) # ( !\ShiftRight1~41_combout\ 
-- & ( \A[31]~input_o\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\ & \ShiftRight1~40_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\ShiftRight1~39_combout\))) ) ) ) # ( \ShiftRight1~41_combout\ & ( !\A[31]~input_o\ & ( (!\B[3]~input_o\ & 
-- (((!\B[2]~input_o\) # (\ShiftRight1~40_combout\)))) # (\B[3]~input_o\ & (\ShiftRight1~39_combout\ & (!\B[2]~input_o\))) ) ) ) # ( !\ShiftRight1~41_combout\ & ( !\A[31]~input_o\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\ & \ShiftRight1~40_combout\)))) # 
-- (\B[3]~input_o\ & (\ShiftRight1~39_combout\ & (!\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftRight1~39_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftRight1~40_combout\,
	datae => \ALT_INV_ShiftRight1~41_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~42_combout\);

-- Location: MLABCELL_X21_Y5_N18
\ShiftRight1~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~43_combout\ = ( \B[4]~input_o\ & ( (!\Equal1~6_combout\ & ((\A[31]~input_o\))) # (\Equal1~6_combout\ & (\ShiftRight1~42_combout\)) ) ) # ( !\B[4]~input_o\ & ( (!\Equal1~6_combout\ & (\A[31]~input_o\)) # (\Equal1~6_combout\ & 
-- ((\ShiftRight1~38_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_ShiftRight1~42_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftRight1~38_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \ShiftRight1~43_combout\);

-- Location: MLABCELL_X28_Y5_N36
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \ShiftRight1~43_combout\ & ( \opcode[0]~input_o\ & ( (\ShiftLeft0~6_combout\) # (\opcode[1]~input_o\) ) ) ) # ( !\ShiftRight1~43_combout\ & ( \opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & \ShiftLeft0~6_combout\) ) ) ) # ( 
-- \ShiftRight1~43_combout\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & ((\LessThan0~41_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight0~9_combout\)) ) ) ) # ( !\ShiftRight1~43_combout\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- ((\LessThan0~41_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight0~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_ShiftRight0~9_combout\,
	datac => \ALT_INV_LessThan0~41_combout\,
	datad => \ALT_INV_ShiftLeft0~6_combout\,
	datae => \ALT_INV_ShiftRight1~43_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X28_Y5_N48
\Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( \Mux28~0_combout\ & ( \Mux24~1_combout\ & ( ((\B[3]~input_o\ & \A[3]~input_o\)) # (\Mux24~0_combout\) ) ) ) # ( !\Mux28~0_combout\ & ( \Mux24~1_combout\ & ( (\B[3]~input_o\ & (!\Mux24~0_combout\ & \A[3]~input_o\)) ) ) ) # ( 
-- \Mux28~0_combout\ & ( !\Mux24~1_combout\ & ( (!\Mux28~1_combout\ & \Mux24~0_combout\) ) ) ) # ( !\Mux28~0_combout\ & ( !\Mux24~1_combout\ & ( (!\Mux28~1_combout\ & \Mux24~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000010100000000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Mux28~1_combout\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_Mux28~0_combout\,
	dataf => \ALT_INV_Mux24~1_combout\,
	combout => \Mux28~2_combout\);

-- Location: LABCELL_X31_Y4_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X30_Y4_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\B[4]~input_o\ $ (\A[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\B[4]~input_o\ $ (\A[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((!\B[4]~input_o\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: LABCELL_X29_Y4_N24
\Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \opcode[0]~input_o\ & ( \B[4]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add1~17_sumout\) ) ) ) # ( !\opcode[0]~input_o\ & ( \B[4]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add0~17_sumout\) ) ) ) # ( \opcode[0]~input_o\ & ( !\B[4]~input_o\ 
-- & ( (!\opcode[1]~input_o\ & ((!\Add1~17_sumout\))) # (\opcode[1]~input_o\ & (!\A[4]~input_o\)) ) ) ) # ( !\opcode[0]~input_o\ & ( !\B[4]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\Add0~17_sumout\))) # (\opcode[1]~input_o\ & (!\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111011100100010010100000101000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Add1~17_sumout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LABCELL_X24_Y5_N45
\ShiftRight0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = ( \ShiftRight1~2_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\ShiftRight1~1_combout\)))) # (\B[3]~input_o\ & (\ShiftRight1~3_combout\ & (!\B[2]~input_o\))) ) ) # ( !\ShiftRight1~2_combout\ & ( (!\B[3]~input_o\ & 
-- (((\B[2]~input_o\ & \ShiftRight1~1_combout\)))) # (\B[3]~input_o\ & (\ShiftRight1~3_combout\ & (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100000001110011010000110111001101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~3_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftRight1~1_combout\,
	dataf => \ALT_INV_ShiftRight1~2_combout\,
	combout => \ShiftRight0~10_combout\);

-- Location: LABCELL_X24_Y5_N48
\ShiftRight1~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~44_combout\ = ( \ShiftRight1~6_combout\ & ( \ShiftRight1~7_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & ((\ShiftRight1~8_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~0_combout\))) ) ) ) # ( !\ShiftRight1~6_combout\ & ( 
-- \ShiftRight1~7_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\ShiftRight1~8_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~0_combout\)))) ) ) ) # ( \ShiftRight1~6_combout\ & ( !\ShiftRight1~7_combout\ & ( 
-- (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\ShiftRight1~8_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~0_combout\)))) ) ) ) # ( !\ShiftRight1~6_combout\ & ( !\ShiftRight1~7_combout\ & ( (\B[3]~input_o\ & 
-- ((!\B[2]~input_o\ & ((\ShiftRight1~8_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftRight1~8_combout\,
	datae => \ALT_INV_ShiftRight1~6_combout\,
	dataf => \ALT_INV_ShiftRight1~7_combout\,
	combout => \ShiftRight1~44_combout\);

-- Location: MLABCELL_X25_Y4_N12
\ShiftRight0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = ( \ShiftRight1~44_combout\ & ( (\Equal1~6_combout\ & ((!\B[4]~input_o\) # (\ShiftRight0~10_combout\))) ) ) # ( !\ShiftRight1~44_combout\ & ( (\Equal1~6_combout\ & (\ShiftRight0~10_combout\ & \B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_ShiftRight0~10_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftRight1~44_combout\,
	combout => \ShiftRight0~11_combout\);

-- Location: LABCELL_X27_Y4_N42
\ShiftLeft0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = ( \B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[3]~input_o\ & ( (\B[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[3]~input_o\ & ( (\A[4]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LABCELL_X24_Y4_N36
\ShiftLeft0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = ( \ShiftLeft0~0_combout\ & ( (!\B[3]~input_o\ & ((\ShiftLeft0~7_combout\) # (\B[2]~input_o\))) ) ) # ( !\ShiftLeft0~0_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & \ShiftLeft0~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~7_combout\,
	dataf => \ALT_INV_ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LABCELL_X24_Y4_N12
\ShiftLeft0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\ShiftRight0~0_combout\ & \ShiftLeft0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftLeft0~8_combout\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LABCELL_X24_Y5_N54
\ShiftRight1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~45_combout\ = ( \ShiftRight1~1_combout\ & ( \ShiftRight1~2_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\ShiftRight1~3_combout\)) # (\B[2]~input_o\ & ((\A[31]~input_o\)))) ) ) ) # ( !\ShiftRight1~1_combout\ & ( 
-- \ShiftRight1~2_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\ShiftRight1~3_combout\)))) # (\B[2]~input_o\ & (\B[3]~input_o\ & ((\A[31]~input_o\)))) ) ) ) # ( \ShiftRight1~1_combout\ & ( !\ShiftRight1~2_combout\ & ( (!\B[2]~input_o\ & 
-- (\B[3]~input_o\ & (\ShiftRight1~3_combout\))) # (\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\A[31]~input_o\)))) ) ) ) # ( !\ShiftRight1~1_combout\ & ( !\ShiftRight1~2_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\ShiftRight1~3_combout\)) # 
-- (\B[2]~input_o\ & ((\A[31]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftRight1~3_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_ShiftRight1~1_combout\,
	dataf => \ALT_INV_ShiftRight1~2_combout\,
	combout => \ShiftRight1~45_combout\);

-- Location: MLABCELL_X25_Y4_N48
\ShiftRight1~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~46_combout\ = ( \Equal1~6_combout\ & ( \A[31]~input_o\ & ( (!\B[4]~input_o\ & ((\ShiftRight1~44_combout\))) # (\B[4]~input_o\ & (\ShiftRight1~45_combout\)) ) ) ) # ( !\Equal1~6_combout\ & ( \A[31]~input_o\ ) ) # ( \Equal1~6_combout\ & ( 
-- !\A[31]~input_o\ & ( (!\B[4]~input_o\ & ((\ShiftRight1~44_combout\))) # (\B[4]~input_o\ & (\ShiftRight1~45_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110011001111111111111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight1~45_combout\,
	datac => \ALT_INV_ShiftRight1~44_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~46_combout\);

-- Location: LABCELL_X29_Y4_N18
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \ShiftRight1~46_combout\ & ( \opcode[1]~input_o\ & ( (\opcode[0]~input_o\) # (\ShiftRight0~11_combout\) ) ) ) # ( !\ShiftRight1~46_combout\ & ( \opcode[1]~input_o\ & ( (\ShiftRight0~11_combout\ & !\opcode[0]~input_o\) ) ) ) # ( 
-- \ShiftRight1~46_combout\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & (\LessThan0~5_combout\)) # (\opcode[0]~input_o\ & ((\ShiftLeft0~9_combout\))) ) ) ) # ( !\ShiftRight1~46_combout\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & 
-- (\LessThan0~5_combout\)) # (\opcode[0]~input_o\ & ((\ShiftLeft0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_ShiftRight0~11_combout\,
	datac => \ALT_INV_ShiftLeft0~9_combout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_ShiftRight1~46_combout\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X29_Y4_N0
\Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( \B[4]~input_o\ & ( \Mux27~0_combout\ & ( (!\Mux24~0_combout\ & (((\A[4]~input_o\ & \Mux24~1_combout\)))) # (\Mux24~0_combout\ & ((!\Mux27~1_combout\) # ((\Mux24~1_combout\)))) ) ) ) # ( !\B[4]~input_o\ & ( \Mux27~0_combout\ & ( 
-- (\Mux24~0_combout\ & ((!\Mux27~1_combout\) # (\Mux24~1_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\Mux27~0_combout\ & ( (!\Mux24~0_combout\ & (((\A[4]~input_o\ & \Mux24~1_combout\)))) # (\Mux24~0_combout\ & (!\Mux27~1_combout\ & ((!\Mux24~1_combout\)))) ) 
-- ) ) # ( !\B[4]~input_o\ & ( !\Mux27~0_combout\ & ( (!\Mux27~1_combout\ & (\Mux24~0_combout\ & !\Mux24~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100011000000001010000011110000101000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~1_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_Mux24~1_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Mux27~0_combout\,
	combout => \Mux27~2_combout\);

-- Location: LABCELL_X27_Y4_N18
\ShiftLeft0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = ( \B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( \B[1]~input_o\ & 
-- ( !\A[3]~input_o\ & ( (\A[2]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LABCELL_X23_Y4_N36
\ShiftLeft0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = ( \ShiftLeft0~10_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\ShiftLeft0~1_combout\))) ) ) # ( !\ShiftLeft0~10_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & \ShiftLeft0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~1_combout\,
	dataf => \ALT_INV_ShiftLeft0~10_combout\,
	combout => \ShiftLeft0~11_combout\);

-- Location: MLABCELL_X28_Y4_N33
\ShiftLeft0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = ( \ShiftRight0~0_combout\ & ( \ShiftLeft0~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~11_combout\,
	dataf => \ALT_INV_ShiftRight0~0_combout\,
	combout => \ShiftLeft0~12_combout\);

-- Location: MLABCELL_X25_Y2_N36
\ShiftRight1~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~47_combout\ = ( \B[3]~input_o\ & ( \ShiftRight1~13_combout\ & ( (!\B[2]~input_o\) # (\ShiftRight1~17_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \ShiftRight1~13_combout\ & ( (!\B[2]~input_o\ & (\ShiftRight1~11_combout\)) # (\B[2]~input_o\ & 
-- ((\ShiftRight1~12_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\ShiftRight1~13_combout\ & ( (\ShiftRight1~17_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\ShiftRight1~13_combout\ & ( (!\B[2]~input_o\ & (\ShiftRight1~11_combout\)) # 
-- (\B[2]~input_o\ & ((\ShiftRight1~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~17_combout\,
	datab => \ALT_INV_ShiftRight1~11_combout\,
	datac => \ALT_INV_ShiftRight1~12_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftRight1~13_combout\,
	combout => \ShiftRight1~47_combout\);

-- Location: MLABCELL_X25_Y2_N42
\ShiftRight1~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~48_combout\ = ( \B[3]~input_o\ & ( \ShiftRight1~16_combout\ & ( (!\B[2]~input_o\ & (\ShiftRight1~19_combout\)) # (\B[2]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( \ShiftRight1~16_combout\ & ( (!\B[2]~input_o\) # 
-- (\ShiftRight1~15_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\ShiftRight1~16_combout\ & ( (!\B[2]~input_o\ & (\ShiftRight1~19_combout\)) # (\B[2]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( !\ShiftRight1~16_combout\ & ( 
-- (\ShiftRight1~15_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~15_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftRight1~19_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftRight1~16_combout\,
	combout => \ShiftRight1~48_combout\);

-- Location: LABCELL_X22_Y5_N36
\ShiftRight1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~49_combout\ = ( \A[31]~input_o\ & ( (!\Equal1~6_combout\) # ((!\B[4]~input_o\ & (\ShiftRight1~47_combout\)) # (\B[4]~input_o\ & ((\ShiftRight1~48_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (\Equal1~6_combout\ & ((!\B[4]~input_o\ & 
-- (\ShiftRight1~47_combout\)) # (\B[4]~input_o\ & ((\ShiftRight1~48_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011111111111001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftRight1~47_combout\,
	datac => \ALT_INV_ShiftRight1~48_combout\,
	datad => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~49_combout\);

-- Location: MLABCELL_X25_Y2_N33
\ShiftRight0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = ( \ShiftRight1~16_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\ShiftRight0~1_combout\)))) # (\B[2]~input_o\ & (\ShiftRight1~15_combout\ & ((!\B[3]~input_o\)))) ) ) # ( !\ShiftRight1~16_combout\ & ( (!\B[2]~input_o\ & 
-- (((\ShiftRight0~1_combout\ & \B[3]~input_o\)))) # (\B[2]~input_o\ & (\ShiftRight1~15_combout\ & ((!\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~15_combout\,
	datab => \ALT_INV_ShiftRight0~1_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftRight1~16_combout\,
	combout => \ShiftRight0~12_combout\);

-- Location: LABCELL_X22_Y5_N39
\ShiftRight0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = ( \ShiftRight0~12_combout\ & ( (\Equal1~6_combout\ & ((\ShiftRight1~47_combout\) # (\B[4]~input_o\))) ) ) # ( !\ShiftRight0~12_combout\ & ( (!\B[4]~input_o\ & (\ShiftRight1~47_combout\ & \Equal1~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftRight1~47_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_ShiftRight0~12_combout\,
	combout => \ShiftRight0~13_combout\);

-- Location: MLABCELL_X28_Y4_N36
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \ShiftRight0~13_combout\ & ( \opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & (\ShiftLeft0~12_combout\)) # (\opcode[1]~input_o\ & ((\ShiftRight1~49_combout\))) ) ) ) # ( !\ShiftRight0~13_combout\ & ( \opcode[0]~input_o\ & ( 
-- (!\opcode[1]~input_o\ & (\ShiftLeft0~12_combout\)) # (\opcode[1]~input_o\ & ((\ShiftRight1~49_combout\))) ) ) ) # ( \ShiftRight0~13_combout\ & ( !\opcode[0]~input_o\ & ( (\opcode[1]~input_o\) # (\LessThan0~4_combout\) ) ) ) # ( !\ShiftRight0~13_combout\ & 
-- ( !\opcode[0]~input_o\ & ( (\LessThan0~4_combout\ & !\opcode[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~12_combout\,
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_ShiftRight1~49_combout\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_ShiftRight0~13_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X31_Y4_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \B[5]~input_o\ ) + ( \A[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \B[5]~input_o\ ) + ( \A[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X30_Y4_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((!\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: LABCELL_X29_Y4_N36
\Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \Add1~21_sumout\ & ( \B[5]~input_o\ & ( (!\Add0~21_sumout\ & (!\opcode[0]~input_o\ & !\opcode[1]~input_o\)) ) ) ) # ( !\Add1~21_sumout\ & ( \B[5]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\Add0~21_sumout\) # (\opcode[0]~input_o\))) ) ) 
-- ) # ( \Add1~21_sumout\ & ( !\B[5]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add0~21_sumout\ & (!\opcode[0]~input_o\))) # (\opcode[1]~input_o\ & (((!\A[5]~input_o\)))) ) ) ) # ( !\Add1~21_sumout\ & ( !\B[5]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- ((!\Add0~21_sumout\) # ((\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (((!\A[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110110000100011111000000010110000101100001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~21_sumout\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: LABCELL_X29_Y4_N42
\Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( \Mux26~1_combout\ & ( \B[5]~input_o\ & ( (\Mux24~1_combout\ & ((!\Mux24~0_combout\ & ((\A[5]~input_o\))) # (\Mux24~0_combout\ & (\Mux26~0_combout\)))) ) ) ) # ( !\Mux26~1_combout\ & ( \B[5]~input_o\ & ( (!\Mux24~0_combout\ & 
-- (((\A[5]~input_o\ & \Mux24~1_combout\)))) # (\Mux24~0_combout\ & (((!\Mux24~1_combout\)) # (\Mux26~0_combout\))) ) ) ) # ( \Mux26~1_combout\ & ( !\B[5]~input_o\ & ( (\Mux24~0_combout\ & (\Mux26~0_combout\ & \Mux24~1_combout\)) ) ) ) # ( !\Mux26~1_combout\ 
-- & ( !\B[5]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\) # (\Mux26~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010001000000000001000101010101000110110000000000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux24~0_combout\,
	datab => \ALT_INV_Mux26~0_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_Mux24~1_combout\,
	datae => \ALT_INV_Mux26~1_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux26~2_combout\);

-- Location: LABCELL_X27_Y4_N24
\ShiftLeft0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = ( \B[1]~input_o\ & ( \A[3]~input_o\ & ( (\A[4]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) ) # ( \B[1]~input_o\ & 
-- ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & \A[4]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \ShiftLeft0~13_combout\);

-- Location: LABCELL_X23_Y3_N30
\ShiftLeft0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = ( \ShiftLeft0~3_combout\ & ( (!\B[3]~input_o\ & ((\ShiftLeft0~13_combout\) # (\B[2]~input_o\))) ) ) # ( !\ShiftLeft0~3_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & \ShiftLeft0~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~13_combout\,
	dataf => \ALT_INV_ShiftLeft0~3_combout\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LABCELL_X24_Y4_N15
\ShiftLeft0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\ShiftRight0~0_combout\ & \ShiftLeft0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftLeft0~14_combout\,
	combout => \ShiftLeft0~15_combout\);

-- Location: MLABCELL_X21_Y4_N57
\ShiftRight0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = ( \B[3]~input_o\ & ( (\ShiftRight0~4_combout\ & !\B[2]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\ShiftRight1~28_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~4_combout\,
	datab => \ALT_INV_ShiftRight1~27_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftRight1~28_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftRight0~14_combout\);

-- Location: MLABCELL_X21_Y4_N30
\ShiftRight1~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~50_combout\ = ( \ShiftRight1~29_combout\ & ( \ShiftRight1~24_combout\ & ( ((!\B[3]~input_o\ & (\ShiftRight1~23_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~25_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\ShiftRight1~29_combout\ & ( 
-- \ShiftRight1~24_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\ShiftRight1~23_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~25_combout\))))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( \ShiftRight1~29_combout\ & ( !\ShiftRight1~24_combout\ 
-- & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\ShiftRight1~23_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~25_combout\))))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( !\ShiftRight1~29_combout\ & ( !\ShiftRight1~24_combout\ & ( (!\B[2]~input_o\ & 
-- ((!\B[3]~input_o\ & (\ShiftRight1~23_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~25_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_ShiftRight1~23_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_ShiftRight1~25_combout\,
	datae => \ALT_INV_ShiftRight1~29_combout\,
	dataf => \ALT_INV_ShiftRight1~24_combout\,
	combout => \ShiftRight1~50_combout\);

-- Location: LABCELL_X22_Y5_N15
\ShiftRight0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\Equal1~6_combout\ & ((!\B[4]~input_o\ & ((\ShiftRight1~50_combout\))) # (\B[4]~input_o\ & (\ShiftRight0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_ShiftRight0~14_combout\,
	datad => \ALT_INV_ShiftRight1~50_combout\,
	combout => \ShiftRight0~15_combout\);

-- Location: MLABCELL_X21_Y4_N36
\ShiftRight1~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~51_combout\ = ( \A[31]~input_o\ & ( \B[2]~input_o\ & ( (\ShiftRight1~27_combout\) # (\B[3]~input_o\) ) ) ) # ( !\A[31]~input_o\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \ShiftRight1~27_combout\) ) ) ) # ( \A[31]~input_o\ & ( !\B[2]~input_o\ 
-- & ( (!\B[3]~input_o\ & (\ShiftRight1~28_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~31_combout\))) ) ) ) # ( !\A[31]~input_o\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\ShiftRight1~28_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~31_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftRight1~27_combout\,
	datac => \ALT_INV_ShiftRight1~28_combout\,
	datad => \ALT_INV_ShiftRight1~31_combout\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \ShiftRight1~51_combout\);

-- Location: LABCELL_X22_Y5_N12
\ShiftRight1~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~52_combout\ = ( \A[31]~input_o\ & ( (!\Equal1~6_combout\) # ((!\B[4]~input_o\ & ((\ShiftRight1~50_combout\))) # (\B[4]~input_o\ & (\ShiftRight1~51_combout\))) ) ) # ( !\A[31]~input_o\ & ( (\Equal1~6_combout\ & ((!\B[4]~input_o\ & 
-- ((\ShiftRight1~50_combout\))) # (\B[4]~input_o\ & (\ShiftRight1~51_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_ShiftRight1~51_combout\,
	datad => \ALT_INV_ShiftRight1~50_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~52_combout\);

-- Location: LABCELL_X31_Y5_N0
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \ShiftRight1~52_combout\ & ( \opcode[0]~input_o\ & ( (\ShiftLeft0~15_combout\) # (\opcode[1]~input_o\) ) ) ) # ( !\ShiftRight1~52_combout\ & ( \opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & \ShiftLeft0~15_combout\) ) ) ) # ( 
-- \ShiftRight1~52_combout\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & ((\LessThan0~3_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight0~15_combout\)) ) ) ) # ( !\ShiftRight1~52_combout\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- ((\LessThan0~3_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight0~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_ShiftLeft0~15_combout\,
	datac => \ALT_INV_ShiftRight0~15_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_ShiftRight1~52_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X31_Y4_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \B[6]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \B[6]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X30_Y4_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((\A[6]~input_o\ & !\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: LABCELL_X31_Y5_N36
\Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \Add1~25_sumout\ & ( \A[6]~input_o\ & ( (!\Add0~25_sumout\ & (!\opcode[1]~input_o\ & !\opcode[0]~input_o\)) ) ) ) # ( !\Add1~25_sumout\ & ( \A[6]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\Add0~25_sumout\) # (\opcode[0]~input_o\))) ) ) 
-- ) # ( \Add1~25_sumout\ & ( !\A[6]~input_o\ & ( (!\opcode[1]~input_o\ & (((!\Add0~25_sumout\ & !\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (!\B[6]~input_o\)) ) ) ) # ( !\Add1~25_sumout\ & ( !\A[6]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- (((!\Add0~25_sumout\) # (\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (!\B[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011111010110010100000101011000000111100001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_Add1~25_sumout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LABCELL_X31_Y5_N12
\Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \Mux25~1_combout\ & ( \B[6]~input_o\ & ( (\Mux24~1_combout\ & ((!\Mux24~0_combout\ & ((\A[6]~input_o\))) # (\Mux24~0_combout\ & (\Mux25~0_combout\)))) ) ) ) # ( !\Mux25~1_combout\ & ( \B[6]~input_o\ & ( (!\Mux24~1_combout\ & 
-- (((\Mux24~0_combout\)))) # (\Mux24~1_combout\ & ((!\Mux24~0_combout\ & ((\A[6]~input_o\))) # (\Mux24~0_combout\ & (\Mux25~0_combout\)))) ) ) ) # ( \Mux25~1_combout\ & ( !\B[6]~input_o\ & ( (\Mux25~0_combout\ & (\Mux24~1_combout\ & \Mux24~0_combout\)) ) ) 
-- ) # ( !\Mux25~1_combout\ & ( !\B[6]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\) # (\Mux25~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000000010000000100001101001111010000000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~0_combout\,
	datab => \ALT_INV_Mux24~1_combout\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_Mux25~1_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: MLABCELL_X21_Y5_N57
\ShiftRight0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = ( \ShiftRight0~7_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\ShiftRight1~40_combout\))) # (\B[2]~input_o\ & (((\ShiftRight1~39_combout\ & !\B[3]~input_o\)))) ) ) # ( !\ShiftRight0~7_combout\ & ( (!\B[3]~input_o\ & 
-- ((!\B[2]~input_o\ & (\ShiftRight1~40_combout\)) # (\B[2]~input_o\ & ((\ShiftRight1~39_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111000000000100011111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~40_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftRight1~39_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_ShiftRight0~7_combout\,
	combout => \ShiftRight0~16_combout\);

-- Location: MLABCELL_X21_Y5_N0
\ShiftRight1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~53_combout\ = ( \ShiftRight1~35_combout\ & ( \ShiftRight1~37_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\ShiftRight1~36_combout\))) # (\B[3]~input_o\ & (\ShiftRight1~41_combout\))) ) ) ) # ( !\ShiftRight1~35_combout\ & ( 
-- \ShiftRight1~37_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & ((\ShiftRight1~36_combout\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\ShiftRight1~41_combout\)))) ) ) ) # ( \ShiftRight1~35_combout\ & ( !\ShiftRight1~37_combout\ & ( (!\B[3]~input_o\ 
-- & ((!\B[2]~input_o\) # ((\ShiftRight1~36_combout\)))) # (\B[3]~input_o\ & (\B[2]~input_o\ & (\ShiftRight1~41_combout\))) ) ) ) # ( !\ShiftRight1~35_combout\ & ( !\ShiftRight1~37_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- ((\ShiftRight1~36_combout\))) # (\B[3]~input_o\ & (\ShiftRight1~41_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftRight1~41_combout\,
	datad => \ALT_INV_ShiftRight1~36_combout\,
	datae => \ALT_INV_ShiftRight1~35_combout\,
	dataf => \ALT_INV_ShiftRight1~37_combout\,
	combout => \ShiftRight1~53_combout\);

-- Location: MLABCELL_X21_Y5_N39
\ShiftRight0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = ( \Equal1~6_combout\ & ( (!\B[4]~input_o\ & ((\ShiftRight1~53_combout\))) # (\B[4]~input_o\ & (\ShiftRight0~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~16_combout\,
	datad => \ALT_INV_ShiftRight1~53_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \ShiftRight0~17_combout\);

-- Location: MLABCELL_X21_Y5_N42
\ShiftRight1~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~54_combout\ = ( \ShiftRight1~39_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)) # (\ShiftRight1~40_combout\))) # (\B[3]~input_o\ & (((\A[31]~input_o\)))) ) ) # ( !\ShiftRight1~39_combout\ & ( (!\B[3]~input_o\ & (\ShiftRight1~40_combout\ & 
-- (!\B[2]~input_o\))) # (\B[3]~input_o\ & (((\A[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111010000000100111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~40_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftRight1~39_combout\,
	combout => \ShiftRight1~54_combout\);

-- Location: MLABCELL_X21_Y5_N36
\ShiftRight1~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~55_combout\ = ( \A[31]~input_o\ & ( (!\Equal1~6_combout\) # ((!\B[4]~input_o\ & (\ShiftRight1~53_combout\)) # (\B[4]~input_o\ & ((\ShiftRight1~54_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (\Equal1~6_combout\ & ((!\B[4]~input_o\ & 
-- (\ShiftRight1~53_combout\)) # (\B[4]~input_o\ & ((\ShiftRight1~54_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011111110100111101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~53_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_ShiftRight1~54_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~55_combout\);

-- Location: LABCELL_X29_Y5_N36
\ShiftLeft0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = ( \A[7]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[6]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[5]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\A[6]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[5]~input_o\))) ) ) ) # ( \A[7]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[6]~input_o\)))) # (\B[1]~input_o\ & (\A[5]~input_o\ & 
-- ((!\B[0]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (((\A[6]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[5]~input_o\ & ((!\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LABCELL_X23_Y3_N9
\ShiftLeft0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = ( \ShiftLeft0~5_combout\ & ( (!\B[3]~input_o\ & ((\ShiftLeft0~16_combout\) # (\B[2]~input_o\))) ) ) # ( !\ShiftLeft0~5_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & \ShiftLeft0~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftLeft0~16_combout\,
	dataf => \ALT_INV_ShiftLeft0~5_combout\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LABCELL_X27_Y5_N6
\ShiftLeft0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = ( \ShiftLeft0~17_combout\ & ( \ShiftRight0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~0_combout\,
	datae => \ALT_INV_ShiftLeft0~17_combout\,
	combout => \ShiftLeft0~18_combout\);

-- Location: LABCELL_X27_Y5_N12
\Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( \ShiftRight1~55_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( \ShiftLeft0~18_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( 
-- \ShiftRight0~17_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( \LessThan0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_ShiftRight0~17_combout\,
	datac => \ALT_INV_ShiftRight1~55_combout\,
	datad => \ALT_INV_ShiftLeft0~18_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux24~2_combout\);

-- Location: LABCELL_X30_Y4_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\B[7]~input_o\ $ (\A[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\B[7]~input_o\ $ (\A[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((!\B[7]~input_o\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

-- Location: LABCELL_X31_Y4_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \B[7]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \B[7]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X31_Y5_N18
\Mux24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = ( \B[7]~input_o\ & ( \Add0~29_sumout\ & ( (\opcode[0]~input_o\ & (!\opcode[1]~input_o\ & !\Add1~29_sumout\)) ) ) ) # ( !\B[7]~input_o\ & ( \Add0~29_sumout\ & ( (!\opcode[1]~input_o\ & (((\opcode[0]~input_o\ & !\Add1~29_sumout\)))) # 
-- (\opcode[1]~input_o\ & (!\A[7]~input_o\)) ) ) ) # ( \B[7]~input_o\ & ( !\Add0~29_sumout\ & ( (!\opcode[1]~input_o\ & ((!\opcode[0]~input_o\) # (!\Add1~29_sumout\))) ) ) ) # ( !\B[7]~input_o\ & ( !\Add0~29_sumout\ & ( (!\opcode[1]~input_o\ & 
-- (((!\opcode[0]~input_o\) # (!\Add1~29_sumout\)))) # (\opcode[1]~input_o\ & (!\A[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001010111100001100000000111010000010100011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_Add1~29_sumout\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Mux24~3_combout\);

-- Location: LABCELL_X31_Y5_N54
\Mux24~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = ( \Mux24~0_combout\ & ( \Mux24~3_combout\ & ( (\Mux24~2_combout\ & \Mux24~1_combout\) ) ) ) # ( !\Mux24~0_combout\ & ( \Mux24~3_combout\ & ( (\A[7]~input_o\ & (\B[7]~input_o\ & \Mux24~1_combout\)) ) ) ) # ( \Mux24~0_combout\ & ( 
-- !\Mux24~3_combout\ & ( (!\Mux24~1_combout\) # (\Mux24~2_combout\) ) ) ) # ( !\Mux24~0_combout\ & ( !\Mux24~3_combout\ & ( (\A[7]~input_o\ & (\B[7]~input_o\ & \Mux24~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111110101010100000000000000110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux24~2_combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_Mux24~1_combout\,
	datae => \ALT_INV_Mux24~0_combout\,
	dataf => \ALT_INV_Mux24~3_combout\,
	combout => \Mux24~4_combout\);

-- Location: LABCELL_X29_Y5_N12
\ShiftLeft0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = ( \A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[5]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # 
-- (\A[7]~input_o\))) # (\B[1]~input_o\ & (((\A[5]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[7]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[5]~input_o\)))) ) ) ) # 
-- ( !\A[6]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \ShiftLeft0~19_combout\);

-- Location: LABCELL_X24_Y4_N18
\ShiftLeft0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = ( \ShiftLeft0~0_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\ShiftLeft0~19_combout\))) # (\B[2]~input_o\ & (\ShiftLeft0~7_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\)) ) ) # ( !\ShiftLeft0~0_combout\ & ( 
-- (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\ShiftLeft0~19_combout\))) # (\B[2]~input_o\ & (\ShiftLeft0~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~7_combout\,
	datad => \ALT_INV_ShiftLeft0~19_combout\,
	dataf => \ALT_INV_ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~20_combout\);

-- Location: LABCELL_X24_Y4_N27
\ShiftLeft0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = ( \ShiftLeft0~20_combout\ & ( \ShiftRight0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~21_combout\);

-- Location: LABCELL_X24_Y5_N30
\ShiftRight1~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~56_combout\ = ( \ShiftRight1~8_combout\ & ( \ShiftRight1~7_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\ShiftRight1~0_combout\)) # (\B[2]~input_o\ & ((\ShiftRight1~2_combout\)))) ) ) ) # ( !\ShiftRight1~8_combout\ & ( 
-- \ShiftRight1~7_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\ShiftRight1~0_combout\)) # (\B[2]~input_o\ & ((\ShiftRight1~2_combout\))))) ) ) ) # ( \ShiftRight1~8_combout\ & ( !\ShiftRight1~7_combout\ & ( 
-- (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\ShiftRight1~0_combout\)) # (\B[2]~input_o\ & ((\ShiftRight1~2_combout\))))) ) ) ) # ( !\ShiftRight1~8_combout\ & ( !\ShiftRight1~7_combout\ & ( (\B[3]~input_o\ & 
-- ((!\B[2]~input_o\ & (\ShiftRight1~0_combout\)) # (\B[2]~input_o\ & ((\ShiftRight1~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftRight1~2_combout\,
	datae => \ALT_INV_ShiftRight1~8_combout\,
	dataf => \ALT_INV_ShiftRight1~7_combout\,
	combout => \ShiftRight1~56_combout\);

-- Location: LABCELL_X24_Y5_N42
\ShiftRight0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = ( \B[2]~input_o\ & ( (\ShiftRight1~3_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \ShiftRight1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~3_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftRight1~1_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \ShiftRight0~18_combout\);

-- Location: LABCELL_X24_Y5_N12
\ShiftRight1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~57_combout\ = ( \B[4]~input_o\ & ( \A[31]~input_o\ & ( (!\B[3]~input_o\ & (\Equal1~6_combout\ & !\ShiftRight0~18_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( \A[31]~input_o\ & ( (!\ShiftRight1~56_combout\ & \Equal1~6_combout\) ) ) ) # ( 
-- \B[4]~input_o\ & ( !\A[31]~input_o\ & ( (!\Equal1~6_combout\) # (!\ShiftRight0~18_combout\) ) ) ) # ( !\B[4]~input_o\ & ( !\A[31]~input_o\ & ( (!\ShiftRight1~56_combout\) # (!\Equal1~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111111111111000000001010000010100000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~56_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_ShiftRight0~18_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~57_combout\);

-- Location: LABCELL_X24_Y5_N6
\ShiftRight0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = ( \ShiftRight0~18_combout\ & ( (\Equal1~6_combout\ & ((\ShiftRight1~56_combout\) # (\B[4]~input_o\))) ) ) # ( !\ShiftRight0~18_combout\ & ( (\Equal1~6_combout\ & (!\B[4]~input_o\ & \ShiftRight1~56_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ShiftRight1~56_combout\,
	dataf => \ALT_INV_ShiftRight0~18_combout\,
	combout => \ShiftRight0~19_combout\);

-- Location: LABCELL_X27_Y5_N48
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( !\ShiftRight1~57_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( \ShiftLeft0~21_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( 
-- \ShiftRight0~19_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( \LessThan0~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~21_combout\,
	datab => \ALT_INV_ShiftRight1~57_combout\,
	datac => \ALT_INV_ShiftRight0~19_combout\,
	datad => \ALT_INV_LessThan0~11_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X31_Y4_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \B[8]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \B[8]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X30_Y4_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\B[8]~input_o\ $ (\A[8]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\B[8]~input_o\ $ (\A[8]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((!\B[8]~input_o\ & \A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: LABCELL_X33_Y4_N54
\Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \Add1~33_sumout\ & ( \B[8]~input_o\ & ( (!\Add0~33_sumout\ & (!\opcode[1]~input_o\ & !\opcode[0]~input_o\)) ) ) ) # ( !\Add1~33_sumout\ & ( \B[8]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\Add0~33_sumout\) # (\opcode[0]~input_o\))) ) ) 
-- ) # ( \Add1~33_sumout\ & ( !\B[8]~input_o\ & ( (!\opcode[1]~input_o\ & (((!\Add0~33_sumout\ & !\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (!\A[8]~input_o\)) ) ) ) # ( !\Add1~33_sumout\ & ( !\B[8]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- (((!\Add0~33_sumout\) # (\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (!\A[8]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011111010110010100000101011000000111100001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_Add1~33_sumout\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LABCELL_X33_Y4_N0
\Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \Mux23~1_combout\ & ( \B[8]~input_o\ & ( (\Mux24~1_combout\ & ((!\Mux24~0_combout\ & ((\A[8]~input_o\))) # (\Mux24~0_combout\ & (\Mux23~0_combout\)))) ) ) ) # ( !\Mux23~1_combout\ & ( \B[8]~input_o\ & ( (!\Mux24~1_combout\ & 
-- (((\Mux24~0_combout\)))) # (\Mux24~1_combout\ & ((!\Mux24~0_combout\ & ((\A[8]~input_o\))) # (\Mux24~0_combout\ & (\Mux23~0_combout\)))) ) ) ) # ( \Mux23~1_combout\ & ( !\B[8]~input_o\ & ( (\Mux23~0_combout\ & (\Mux24~1_combout\ & \Mux24~0_combout\)) ) ) 
-- ) # ( !\Mux23~1_combout\ & ( !\B[8]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\) # (\Mux23~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000000010000000100001101001111010000000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux23~0_combout\,
	datab => \ALT_INV_Mux24~1_combout\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_Mux23~1_combout\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: LABCELL_X29_Y5_N48
\ShiftLeft0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = ( \A[6]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # 
-- (\A[9]~input_o\)))) # (\B[1]~input_o\ & (\A[7]~input_o\ & ((!\B[0]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\A[9]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[7]~input_o\))) ) ) ) 
-- # ( !\A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \ShiftLeft0~22_combout\);

-- Location: LABCELL_X23_Y4_N12
\ShiftLeft0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = ( \B[3]~input_o\ & ( (\ShiftLeft0~1_combout\ & !\B[2]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\ShiftLeft0~22_combout\))) # (\B[2]~input_o\ & (\ShiftLeft0~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~10_combout\,
	datab => \ALT_INV_ShiftLeft0~22_combout\,
	datac => \ALT_INV_ShiftLeft0~1_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftLeft0~23_combout\);

-- Location: LABCELL_X22_Y4_N30
\ShiftLeft0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = ( \ShiftLeft0~23_combout\ & ( \ShiftRight0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~24_combout\);

-- Location: MLABCELL_X25_Y2_N51
\ShiftRight0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = ( \ShiftRight1~13_combout\ & ( (\B[2]~input_o\) # (\ShiftRight1~12_combout\) ) ) # ( !\ShiftRight1~13_combout\ & ( (\ShiftRight1~12_combout\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~12_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftRight1~13_combout\,
	combout => \ShiftRight0~22_combout\);

-- Location: LABCELL_X24_Y3_N45
\ShiftRight0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = !\B[3]~input_o\ $ (!\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	combout => \ShiftRight0~25_combout\);

-- Location: LABCELL_X24_Y3_N18
\ShiftRight0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = ( \Equal1~1_combout\ & ( \Equal1~5_combout\ & ( (\Equal1~4_combout\ & (\ShiftRight0~25_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_ShiftRight0~25_combout\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \ShiftRight0~26_combout\);

-- Location: MLABCELL_X25_Y2_N18
\ShiftRight0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = ( \ShiftRight1~15_combout\ & ( (!\B[2]~input_o\) # (\ShiftRight1~19_combout\) ) ) # ( !\ShiftRight1~15_combout\ & ( (\B[2]~input_o\ & \ShiftRight1~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftRight1~19_combout\,
	dataf => \ALT_INV_ShiftRight1~15_combout\,
	combout => \ShiftRight0~24_combout\);

-- Location: MLABCELL_X25_Y2_N12
\ShiftRight0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = ( \ShiftRight1~16_combout\ & ( (\B[2]~input_o\) # (\ShiftRight1~17_combout\) ) ) # ( !\ShiftRight1~16_combout\ & ( (\ShiftRight1~17_combout\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~17_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftRight1~16_combout\,
	combout => \ShiftRight0~21_combout\);

-- Location: LABCELL_X22_Y4_N42
\ShiftRight1~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~58_combout\ = ( \ShiftRight0~0_combout\ & ( \A[31]~input_o\ & ( (!\ShiftRight0~26_combout\ & (\ShiftRight0~22_combout\)) # (\ShiftRight0~26_combout\ & ((\ShiftRight0~21_combout\))) ) ) ) # ( !\ShiftRight0~0_combout\ & ( \A[31]~input_o\ & ( 
-- (!\ShiftRight0~26_combout\) # (\ShiftRight0~24_combout\) ) ) ) # ( \ShiftRight0~0_combout\ & ( !\A[31]~input_o\ & ( (!\ShiftRight0~26_combout\ & (\ShiftRight0~22_combout\)) # (\ShiftRight0~26_combout\ & ((\ShiftRight0~21_combout\))) ) ) ) # ( 
-- !\ShiftRight0~0_combout\ & ( !\A[31]~input_o\ & ( (\ShiftRight0~26_combout\ & \ShiftRight0~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~22_combout\,
	datab => \ALT_INV_ShiftRight0~26_combout\,
	datac => \ALT_INV_ShiftRight0~24_combout\,
	datad => \ALT_INV_ShiftRight0~21_combout\,
	datae => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~58_combout\);

-- Location: MLABCELL_X25_Y2_N30
\ShiftRight0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = ( \ShiftRight0~1_combout\ & ( (\B[2]~input_o\) # (\ShiftRight1~15_combout\) ) ) # ( !\ShiftRight0~1_combout\ & ( (\ShiftRight1~15_combout\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~15_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftRight0~1_combout\,
	combout => \ShiftRight0~20_combout\);

-- Location: LABCELL_X22_Y4_N6
\ShiftRight0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = ( \ShiftRight0~20_combout\ & ( \ShiftRight0~21_combout\ & ( (\Equal1~6_combout\ & ((!\B[3]~input_o\ & ((\B[4]~input_o\) # (\ShiftRight0~22_combout\))) # (\B[3]~input_o\ & ((!\B[4]~input_o\))))) ) ) ) # ( 
-- !\ShiftRight0~20_combout\ & ( \ShiftRight0~21_combout\ & ( (\Equal1~6_combout\ & (!\B[4]~input_o\ & ((\ShiftRight0~22_combout\) # (\B[3]~input_o\)))) ) ) ) # ( \ShiftRight0~20_combout\ & ( !\ShiftRight0~21_combout\ & ( (!\B[3]~input_o\ & 
-- (\Equal1~6_combout\ & ((\B[4]~input_o\) # (\ShiftRight0~22_combout\)))) ) ) ) # ( !\ShiftRight0~20_combout\ & ( !\ShiftRight0~21_combout\ & ( (!\B[3]~input_o\ & (\Equal1~6_combout\ & (\ShiftRight0~22_combout\ & !\B[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100010001000010011000000000001001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_ShiftRight0~22_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_ShiftRight0~20_combout\,
	dataf => \ALT_INV_ShiftRight0~21_combout\,
	combout => \ShiftRight0~23_combout\);

-- Location: MLABCELL_X28_Y1_N9
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \ShiftRight1~58_combout\ & ( \ShiftRight0~23_combout\ & ( ((!\opcode[0]~input_o\ & ((\LessThan0~10_combout\))) # (\opcode[0]~input_o\ & (\ShiftLeft0~24_combout\))) # (\opcode[1]~input_o\) ) ) ) # ( !\ShiftRight1~58_combout\ & ( 
-- \ShiftRight0~23_combout\ & ( (!\opcode[0]~input_o\ & (((\opcode[1]~input_o\) # (\LessThan0~10_combout\)))) # (\opcode[0]~input_o\ & (\ShiftLeft0~24_combout\ & ((!\opcode[1]~input_o\)))) ) ) ) # ( \ShiftRight1~58_combout\ & ( !\ShiftRight0~23_combout\ & ( 
-- (!\opcode[0]~input_o\ & (((\LessThan0~10_combout\ & !\opcode[1]~input_o\)))) # (\opcode[0]~input_o\ & (((\opcode[1]~input_o\)) # (\ShiftLeft0~24_combout\))) ) ) ) # ( !\ShiftRight1~58_combout\ & ( !\ShiftRight0~23_combout\ & ( (!\opcode[1]~input_o\ & 
-- ((!\opcode[0]~input_o\ & ((\LessThan0~10_combout\))) # (\opcode[0]~input_o\ & (\ShiftLeft0~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_ShiftLeft0~24_combout\,
	datac => \ALT_INV_LessThan0~10_combout\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_ShiftRight1~58_combout\,
	dataf => \ALT_INV_ShiftRight0~23_combout\,
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X31_Y4_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \A[9]~input_o\ ) + ( \B[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \A[9]~input_o\ ) + ( \B[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X30_Y4_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\A[9]~input_o\ $ (\B[9]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\A[9]~input_o\ $ (\B[9]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((\A[9]~input_o\ & !\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: LABCELL_X33_Y4_N6
\Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \B[9]~input_o\ & ( \A[9]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\opcode[0]~input_o\ & (!\Add0~37_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~37_sumout\))))) ) ) ) # ( !\B[9]~input_o\ & ( \A[9]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- ((!\opcode[0]~input_o\ & (!\Add0~37_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~37_sumout\))))) ) ) ) # ( \B[9]~input_o\ & ( !\A[9]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\opcode[0]~input_o\ & (!\Add0~37_sumout\)) # (\opcode[0]~input_o\ & 
-- ((!\Add1~37_sumout\))))) ) ) ) # ( !\B[9]~input_o\ & ( !\A[9]~input_o\ & ( ((!\opcode[0]~input_o\ & (!\Add0~37_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~37_sumout\)))) # (\opcode[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111110101100010001010000010001000101000001000100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_Add0~37_sumout\,
	datac => \ALT_INV_Add1~37_sumout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: LABCELL_X33_Y4_N12
\Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \B[9]~input_o\ & ( \A[9]~input_o\ & ( (!\Mux24~1_combout\ & (((\Mux24~0_combout\ & !\Mux22~1_combout\)))) # (\Mux24~1_combout\ & (((!\Mux24~0_combout\)) # (\Mux22~0_combout\))) ) ) ) # ( !\B[9]~input_o\ & ( \A[9]~input_o\ & ( 
-- (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & ((!\Mux22~1_combout\))) # (\Mux24~1_combout\ & (\Mux22~0_combout\)))) ) ) ) # ( \B[9]~input_o\ & ( !\A[9]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & ((!\Mux22~1_combout\))) # (\Mux24~1_combout\ & 
-- (\Mux22~0_combout\)))) ) ) ) # ( !\B[9]~input_o\ & ( !\A[9]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & ((!\Mux22~1_combout\))) # (\Mux24~1_combout\ & (\Mux22~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000001000011010000000100001101000000010011110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux22~0_combout\,
	datab => \ALT_INV_Mux24~1_combout\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_Mux22~1_combout\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LABCELL_X31_Y4_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \B[10]~input_o\ ) + ( \A[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \B[10]~input_o\ ) + ( \A[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X30_Y4_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\A[10]~input_o\ $ (\B[10]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !\A[10]~input_o\ $ (\B[10]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~43\ = SHARE((\A[10]~input_o\ & !\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\,
	shareout => \Add1~43\);

-- Location: LABCELL_X33_Y4_N48
\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \Add1~41_sumout\ & ( \B[10]~input_o\ & ( (!\Add0~41_sumout\ & (!\opcode[1]~input_o\ & !\opcode[0]~input_o\)) ) ) ) # ( !\Add1~41_sumout\ & ( \B[10]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\Add0~41_sumout\) # (\opcode[0]~input_o\))) ) 
-- ) ) # ( \Add1~41_sumout\ & ( !\B[10]~input_o\ & ( (!\opcode[1]~input_o\ & (((!\Add0~41_sumout\ & !\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (!\A[10]~input_o\)) ) ) ) # ( !\Add1~41_sumout\ & ( !\B[10]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- (((!\Add0~41_sumout\) # (\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (!\A[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011111010110010100000101011000000111100001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_Add0~41_sumout\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_Add1~41_sumout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: MLABCELL_X21_Y4_N51
\ShiftRight0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = ( \ShiftRight1~24_combout\ & ( (!\B[2]~input_o\) # (\ShiftRight1~25_combout\) ) ) # ( !\ShiftRight1~24_combout\ & ( (\B[2]~input_o\ & \ShiftRight1~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftRight1~25_combout\,
	dataf => \ALT_INV_ShiftRight1~24_combout\,
	combout => \ShiftRight0~29_combout\);

-- Location: MLABCELL_X21_Y4_N42
\ShiftRight0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = ( \ShiftRight1~28_combout\ & ( (\B[2]~input_o\) # (\ShiftRight1~29_combout\) ) ) # ( !\ShiftRight1~28_combout\ & ( (\ShiftRight1~29_combout\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight1~29_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftRight1~28_combout\,
	combout => \ShiftRight0~28_combout\);

-- Location: MLABCELL_X21_Y4_N12
\ShiftRight0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = ( \ShiftRight1~27_combout\ & ( (!\B[2]~input_o\) # (\ShiftRight1~31_combout\) ) ) # ( !\ShiftRight1~27_combout\ & ( (\ShiftRight1~31_combout\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight1~31_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftRight1~27_combout\,
	combout => \ShiftRight0~31_combout\);

-- Location: LABCELL_X22_Y4_N24
\ShiftRight1~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~59_combout\ = ( \ShiftRight0~0_combout\ & ( \A[31]~input_o\ & ( (!\ShiftRight0~26_combout\ & (\ShiftRight0~29_combout\)) # (\ShiftRight0~26_combout\ & ((\ShiftRight0~28_combout\))) ) ) ) # ( !\ShiftRight0~0_combout\ & ( \A[31]~input_o\ & ( 
-- (!\ShiftRight0~26_combout\) # (\ShiftRight0~31_combout\) ) ) ) # ( \ShiftRight0~0_combout\ & ( !\A[31]~input_o\ & ( (!\ShiftRight0~26_combout\ & (\ShiftRight0~29_combout\)) # (\ShiftRight0~26_combout\ & ((\ShiftRight0~28_combout\))) ) ) ) # ( 
-- !\ShiftRight0~0_combout\ & ( !\A[31]~input_o\ & ( (\ShiftRight0~31_combout\ & \ShiftRight0~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~29_combout\,
	datab => \ALT_INV_ShiftRight0~28_combout\,
	datac => \ALT_INV_ShiftRight0~31_combout\,
	datad => \ALT_INV_ShiftRight0~26_combout\,
	datae => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~59_combout\);

-- Location: LABCELL_X29_Y5_N54
\ShiftLeft0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = ( \A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\A[9]~input_o\ & 
-- \B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[9]~input_o\)))) # (\B[1]~input_o\ & (\A[7]~input_o\ & ((\B[0]~input_o\)))) ) ) 
-- ) # ( !\A[10]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \ShiftLeft0~25_combout\);

-- Location: LABCELL_X23_Y3_N42
\ShiftLeft0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = ( \ShiftLeft0~3_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\ShiftLeft0~25_combout\)) # (\B[2]~input_o\ & ((\ShiftLeft0~13_combout\))))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) # ( !\ShiftLeft0~3_combout\ & ( 
-- (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\ShiftLeft0~25_combout\)) # (\B[2]~input_o\ & ((\ShiftLeft0~13_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000101001110111000010100111011100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftLeft0~25_combout\,
	datac => \ALT_INV_ShiftLeft0~13_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~3_combout\,
	combout => \ShiftLeft0~26_combout\);

-- Location: LABCELL_X27_Y2_N57
\ShiftLeft0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = ( \ShiftRight0~0_combout\ & ( \ShiftLeft0~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_ShiftLeft0~26_combout\,
	combout => \ShiftLeft0~27_combout\);

-- Location: MLABCELL_X21_Y4_N54
\ShiftRight0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = ( \B[2]~input_o\ & ( \ShiftRight0~4_combout\ ) ) # ( !\B[2]~input_o\ & ( \ShiftRight1~27_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~4_combout\,
	datab => \ALT_INV_ShiftRight1~27_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \ShiftRight0~27_combout\);

-- Location: LABCELL_X22_Y4_N18
\ShiftRight0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = ( \ShiftRight0~28_combout\ & ( \ShiftRight0~27_combout\ & ( (\Equal1~6_combout\ & ((!\B[3]~input_o\ & ((\B[4]~input_o\) # (\ShiftRight0~29_combout\))) # (\B[3]~input_o\ & ((!\B[4]~input_o\))))) ) ) ) # ( 
-- !\ShiftRight0~28_combout\ & ( \ShiftRight0~27_combout\ & ( (!\B[3]~input_o\ & (\Equal1~6_combout\ & ((\B[4]~input_o\) # (\ShiftRight0~29_combout\)))) ) ) ) # ( \ShiftRight0~28_combout\ & ( !\ShiftRight0~27_combout\ & ( (\Equal1~6_combout\ & 
-- (!\B[4]~input_o\ & ((\ShiftRight0~29_combout\) # (\B[3]~input_o\)))) ) ) ) # ( !\ShiftRight0~28_combout\ & ( !\ShiftRight0~27_combout\ & ( (!\B[3]~input_o\ & (\Equal1~6_combout\ & (\ShiftRight0~29_combout\ & !\B[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000100110000000000000010001000100001001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_ShiftRight0~29_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_ShiftRight0~28_combout\,
	dataf => \ALT_INV_ShiftRight0~27_combout\,
	combout => \ShiftRight0~30_combout\);

-- Location: LABCELL_X27_Y5_N54
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \LessThan0~9_combout\ & ( \opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & ((\ShiftLeft0~27_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight1~59_combout\)) ) ) ) # ( !\LessThan0~9_combout\ & ( \opcode[0]~input_o\ & ( 
-- (!\opcode[1]~input_o\ & ((\ShiftLeft0~27_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight1~59_combout\)) ) ) ) # ( \LessThan0~9_combout\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\) # (\ShiftRight0~30_combout\) ) ) ) # ( !\LessThan0~9_combout\ & ( 
-- !\opcode[0]~input_o\ & ( (\opcode[1]~input_o\ & \ShiftRight0~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~59_combout\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_ShiftLeft0~27_combout\,
	datad => \ALT_INV_ShiftRight0~30_combout\,
	datae => \ALT_INV_LessThan0~9_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X33_Y4_N24
\Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \Mux21~0_combout\ & ( \B[10]~input_o\ & ( (!\Mux24~1_combout\ & (!\Mux21~1_combout\ & ((\Mux24~0_combout\)))) # (\Mux24~1_combout\ & (((\Mux24~0_combout\) # (\A[10]~input_o\)))) ) ) ) # ( !\Mux21~0_combout\ & ( \B[10]~input_o\ & ( 
-- (!\Mux24~1_combout\ & (!\Mux21~1_combout\ & ((\Mux24~0_combout\)))) # (\Mux24~1_combout\ & (((\A[10]~input_o\ & !\Mux24~0_combout\)))) ) ) ) # ( \Mux21~0_combout\ & ( !\B[10]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux21~1_combout\) # (\Mux24~1_combout\))) 
-- ) ) ) # ( !\Mux21~0_combout\ & ( !\B[10]~input_o\ & ( (!\Mux21~1_combout\ & (!\Mux24~1_combout\ & \Mux24~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001011101100000011100010000000001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux21~1_combout\,
	datab => \ALT_INV_Mux24~1_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_Mux24~0_combout\,
	datae => \ALT_INV_Mux21~0_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LABCELL_X30_Y5_N0
\ShiftLeft0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = ( \A[10]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[11]~input_o\ & 
-- ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[9]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[11]~input_o\))) # (\B[1]~input_o\ & (((\A[9]~input_o\ & !\B[0]~input_o\)))) ) 
-- ) ) # ( !\A[10]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \ShiftLeft0~28_combout\);

-- Location: LABCELL_X23_Y3_N6
\ShiftLeft0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = ( \ShiftLeft0~28_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\ShiftLeft0~16_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\ShiftLeft0~5_combout\))) ) ) # ( !\ShiftLeft0~28_combout\ & ( (!\B[3]~input_o\ & 
-- (\B[2]~input_o\ & ((\ShiftLeft0~16_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\ShiftLeft0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~5_combout\,
	datad => \ALT_INV_ShiftLeft0~16_combout\,
	dataf => \ALT_INV_ShiftLeft0~28_combout\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LABCELL_X22_Y3_N15
\ShiftLeft0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (\ShiftLeft0~29_combout\ & \ShiftRight0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~29_combout\,
	datad => \ALT_INV_ShiftRight0~0_combout\,
	combout => \ShiftLeft0~30_combout\);

-- Location: MLABCELL_X21_Y5_N45
\ShiftRight0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (!\B[2]~input_o\ & ((\ShiftRight1~41_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~40_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftRight1~41_combout\,
	combout => \ShiftRight0~33_combout\);

-- Location: LABCELL_X22_Y3_N9
\ShiftRight1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~61_combout\ = ( \A[31]~input_o\ & ( (!\Equal1~0_combout\) # (\ShiftRight1~39_combout\) ) ) # ( !\A[31]~input_o\ & ( (\ShiftRight1~39_combout\ & \Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~39_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~61_combout\);

-- Location: MLABCELL_X21_Y4_N18
\ShiftRight1~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~62_combout\ = ( \A[31]~input_o\ & ( \ShiftRight1~61_combout\ & ( (!\Equal1~6_combout\) # (((\B[3]~input_o\ & \ShiftRight0~33_combout\)) # (\B[4]~input_o\)) ) ) ) # ( !\A[31]~input_o\ & ( \ShiftRight1~61_combout\ & ( (\Equal1~6_combout\ & 
-- (((\B[3]~input_o\ & \ShiftRight0~33_combout\)) # (\B[4]~input_o\))) ) ) ) # ( \A[31]~input_o\ & ( !\ShiftRight1~61_combout\ & ( (!\Equal1~6_combout\) # ((!\B[4]~input_o\ & (\B[3]~input_o\ & \ShiftRight0~33_combout\))) ) ) ) # ( !\A[31]~input_o\ & ( 
-- !\ShiftRight1~61_combout\ & ( (\Equal1~6_combout\ & (!\B[4]~input_o\ & (\B[3]~input_o\ & \ShiftRight0~33_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100101010101010111000010001000101011011101110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_ShiftRight0~33_combout\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftRight1~61_combout\,
	combout => \ShiftRight1~62_combout\);

-- Location: MLABCELL_X21_Y5_N51
\ShiftRight1~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~60_combout\ = ( \ShiftRight1~37_combout\ & ( (\ShiftRight1~36_combout\) # (\B[2]~input_o\) ) ) # ( !\ShiftRight1~37_combout\ & ( (!\B[2]~input_o\ & \ShiftRight1~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftRight1~36_combout\,
	dataf => \ALT_INV_ShiftRight1~37_combout\,
	combout => \ShiftRight1~60_combout\);

-- Location: LABCELL_X22_Y4_N39
\ShiftRight1~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~63_combout\ = ( \B[3]~input_o\ & ( !\ShiftRight1~62_combout\ ) ) # ( !\B[3]~input_o\ & ( (!\ShiftRight1~62_combout\ & ((!\ShiftRight0~0_combout\) # (!\ShiftRight1~60_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight1~62_combout\,
	datad => \ALT_INV_ShiftRight1~60_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftRight1~63_combout\);

-- Location: MLABCELL_X21_Y5_N48
\ShiftRight0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = ( \ShiftRight1~39_combout\ & ( (!\B[2]~input_o\) # (\ShiftRight0~7_combout\) ) ) # ( !\ShiftRight1~39_combout\ & ( (\B[2]~input_o\ & \ShiftRight0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftRight0~7_combout\,
	dataf => \ALT_INV_ShiftRight1~39_combout\,
	combout => \ShiftRight0~32_combout\);

-- Location: LABCELL_X22_Y4_N0
\ShiftRight0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = ( \ShiftRight1~60_combout\ & ( \B[3]~input_o\ & ( (\Equal1~6_combout\ & (\ShiftRight0~33_combout\ & !\B[4]~input_o\)) ) ) ) # ( !\ShiftRight1~60_combout\ & ( \B[3]~input_o\ & ( (\Equal1~6_combout\ & (\ShiftRight0~33_combout\ & 
-- !\B[4]~input_o\)) ) ) ) # ( \ShiftRight1~60_combout\ & ( !\B[3]~input_o\ & ( (\Equal1~6_combout\ & ((!\B[4]~input_o\) # (\ShiftRight0~32_combout\))) ) ) ) # ( !\ShiftRight1~60_combout\ & ( !\B[3]~input_o\ & ( (\ShiftRight0~32_combout\ & 
-- (\Equal1~6_combout\ & \B[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001001100110001000100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~32_combout\,
	datab => \ALT_INV_Equal1~6_combout\,
	datac => \ALT_INV_ShiftRight0~33_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_ShiftRight1~60_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftRight0~34_combout\);

-- Location: MLABCELL_X28_Y1_N42
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( !\ShiftRight1~63_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( \ShiftLeft0~30_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( 
-- \ShiftRight0~34_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( \LessThan0~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~8_combout\,
	datab => \ALT_INV_ShiftLeft0~30_combout\,
	datac => \ALT_INV_ShiftRight1~63_combout\,
	datad => \ALT_INV_ShiftRight0~34_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X30_Y4_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\A[11]~input_o\ $ (\B[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\A[11]~input_o\ $ (\B[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~47\ = SHARE((\A[11]~input_o\ & !\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	cin => \Add1~42\,
	sharein => \Add1~43\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\,
	shareout => \Add1~47\);

-- Location: LABCELL_X31_Y4_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \B[11]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \B[11]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: MLABCELL_X34_Y4_N6
\Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \Add0~45_sumout\ & ( \A[11]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add1~45_sumout\ & \opcode[0]~input_o\)) ) ) ) # ( !\Add0~45_sumout\ & ( \A[11]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\Add1~45_sumout\) # (!\opcode[0]~input_o\))) ) 
-- ) ) # ( \Add0~45_sumout\ & ( !\A[11]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add1~45_sumout\ & (\opcode[0]~input_o\))) # (\opcode[1]~input_o\ & (((!\B[11]~input_o\)))) ) ) ) # ( !\Add0~45_sumout\ & ( !\A[11]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- ((!\Add1~45_sumout\) # ((!\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (((!\B[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110101000010111010000100010101000101010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_Add1~45_sumout\,
	datac => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LABCELL_X30_Y5_N6
\Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \B[11]~input_o\ & ( \Mux20~1_combout\ & ( (\Mux24~1_combout\ & ((!\Mux24~0_combout\ & (\A[11]~input_o\)) # (\Mux24~0_combout\ & ((\Mux20~0_combout\))))) ) ) ) # ( !\B[11]~input_o\ & ( \Mux20~1_combout\ & ( (\Mux24~0_combout\ & 
-- (\Mux24~1_combout\ & \Mux20~0_combout\)) ) ) ) # ( \B[11]~input_o\ & ( !\Mux20~1_combout\ & ( (!\Mux24~0_combout\ & (\Mux24~1_combout\ & (\A[11]~input_o\))) # (\Mux24~0_combout\ & ((!\Mux24~1_combout\) # ((\Mux20~0_combout\)))) ) ) ) # ( !\B[11]~input_o\ 
-- & ( !\Mux20~1_combout\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\) # (\Mux20~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001010101010001100101011100000000000100010000001000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux24~0_combout\,
	datab => \ALT_INV_Mux24~1_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_Mux20~0_combout\,
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LABCELL_X31_Y4_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \B[12]~input_o\ ) + ( \A[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \B[12]~input_o\ ) + ( \A[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X30_Y4_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !\B[12]~input_o\ $ (\A[12]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !\B[12]~input_o\ $ (\A[12]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~51\ = SHARE((!\B[12]~input_o\ & \A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	cin => \Add1~46\,
	sharein => \Add1~47\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\,
	shareout => \Add1~51\);

-- Location: LABCELL_X35_Y4_N0
\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \opcode[0]~input_o\ & ( \B[12]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add1~49_sumout\) ) ) ) # ( !\opcode[0]~input_o\ & ( \B[12]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add0~49_sumout\) ) ) ) # ( \opcode[0]~input_o\ & ( 
-- !\B[12]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add1~49_sumout\)) # (\opcode[1]~input_o\ & ((!\A[12]~input_o\))) ) ) ) # ( !\opcode[0]~input_o\ & ( !\B[12]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add0~49_sumout\)) # (\opcode[1]~input_o\ & 
-- ((!\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110110001000111101011010000010001000100010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_Add0~49_sumout\,
	datac => \ALT_INV_Add1~49_sumout\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LABCELL_X24_Y5_N18
\ShiftRight1~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~64_combout\ = ( \ShiftRight1~8_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\ShiftRight1~0_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~1_combout\))) ) ) ) # ( !\ShiftRight1~8_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\ShiftRight1~0_combout\)) # (\B[3]~input_o\ & ((\ShiftRight1~1_combout\))) ) ) ) # ( \ShiftRight1~8_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\ShiftRight1~2_combout\) ) ) ) # ( !\ShiftRight1~8_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\ 
-- & \ShiftRight1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftRight1~1_combout\,
	datad => \ALT_INV_ShiftRight1~2_combout\,
	datae => \ALT_INV_ShiftRight1~8_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \ShiftRight1~64_combout\);

-- Location: LABCELL_X24_Y5_N9
\ShiftRight0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = ( \ShiftRight1~3_combout\ & ( (\Equal1~6_combout\ & ((!\B[4]~input_o\ & (\ShiftRight1~64_combout\)) # (\B[4]~input_o\ & ((\Equal1~0_combout\))))) ) ) # ( !\ShiftRight1~3_combout\ & ( (\Equal1~6_combout\ & (!\B[4]~input_o\ & 
-- \ShiftRight1~64_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ShiftRight1~64_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_ShiftRight1~3_combout\,
	combout => \ShiftRight0~35_combout\);

-- Location: LABCELL_X30_Y5_N42
\ShiftLeft0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = ( \A[10]~input_o\ & ( \A[9]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[11]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \A[9]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\ 
-- & \A[12]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[11]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (((\A[12]~input_o\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[11]~input_o\ & (!\B[1]~input_o\))) ) 
-- ) ) # ( !\A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[12]~input_o\))) # (\B[0]~input_o\ & (\A[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \ShiftLeft0~31_combout\);

-- Location: LABCELL_X24_Y4_N30
\ShiftLeft0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = ( \ShiftLeft0~19_combout\ & ( \ShiftLeft0~31_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\ShiftLeft0~7_combout\)) # (\B[2]~input_o\ & ((\ShiftLeft0~0_combout\)))) ) ) ) # ( !\ShiftLeft0~19_combout\ & ( 
-- \ShiftLeft0~31_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\ShiftLeft0~7_combout\)) # (\B[2]~input_o\ & ((\ShiftLeft0~0_combout\))))) ) ) ) # ( \ShiftLeft0~19_combout\ & ( !\ShiftLeft0~31_combout\ & ( 
-- (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\ShiftLeft0~7_combout\)) # (\B[2]~input_o\ & ((\ShiftLeft0~0_combout\))))) ) ) ) # ( !\ShiftLeft0~19_combout\ & ( !\ShiftLeft0~31_combout\ & ( (\B[3]~input_o\ & 
-- ((!\B[2]~input_o\ & (\ShiftLeft0~7_combout\)) # (\B[2]~input_o\ & ((\ShiftLeft0~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~7_combout\,
	datab => \ALT_INV_ShiftLeft0~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_ShiftLeft0~19_combout\,
	dataf => \ALT_INV_ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LABCELL_X23_Y4_N0
\ShiftLeft0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = ( \ShiftLeft0~32_combout\ & ( \ShiftRight0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_ShiftLeft0~32_combout\,
	combout => \ShiftLeft0~33_combout\);

-- Location: LABCELL_X22_Y5_N21
\ShiftRight1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~65_combout\ = ( \ShiftRight1~3_combout\ & ( \ShiftRight1~64_combout\ & ( ((\Equal1~6_combout\ & ((!\B[4]~input_o\) # (\Equal1~0_combout\)))) # (\A[31]~input_o\) ) ) ) # ( !\ShiftRight1~3_combout\ & ( \ShiftRight1~64_combout\ & ( 
-- (!\Equal1~6_combout\ & (((\A[31]~input_o\)))) # (\Equal1~6_combout\ & ((!\B[4]~input_o\) # ((!\Equal1~0_combout\ & \A[31]~input_o\)))) ) ) ) # ( \ShiftRight1~3_combout\ & ( !\ShiftRight1~64_combout\ & ( (!\Equal1~6_combout\ & (((\A[31]~input_o\)))) # 
-- (\Equal1~6_combout\ & (\B[4]~input_o\ & ((\A[31]~input_o\) # (\Equal1~0_combout\)))) ) ) ) # ( !\ShiftRight1~3_combout\ & ( !\ShiftRight1~64_combout\ & ( (\A[31]~input_o\ & ((!\Equal1~6_combout\) # ((\B[4]~input_o\ & !\Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110100000000011111010100001010111111100000101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_ShiftRight1~3_combout\,
	dataf => \ALT_INV_ShiftRight1~64_combout\,
	combout => \ShiftRight1~65_combout\);

-- Location: LABCELL_X23_Y5_N36
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \ShiftRight1~65_combout\ & ( \opcode[1]~input_o\ & ( (\opcode[0]~input_o\) # (\ShiftRight0~35_combout\) ) ) ) # ( !\ShiftRight1~65_combout\ & ( \opcode[1]~input_o\ & ( (\ShiftRight0~35_combout\ & !\opcode[0]~input_o\) ) ) ) # ( 
-- \ShiftRight1~65_combout\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & (\LessThan0~17_combout\)) # (\opcode[0]~input_o\ & ((\ShiftLeft0~33_combout\))) ) ) ) # ( !\ShiftRight1~65_combout\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & 
-- (\LessThan0~17_combout\)) # (\opcode[0]~input_o\ & ((\ShiftLeft0~33_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~35_combout\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_LessThan0~17_combout\,
	datad => \ALT_INV_ShiftLeft0~33_combout\,
	datae => \ALT_INV_ShiftRight1~65_combout\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X35_Y4_N36
\Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \Mux19~0_combout\ & ( \B[12]~input_o\ & ( (!\Mux24~0_combout\ & (((\Mux24~1_combout\ & \A[12]~input_o\)))) # (\Mux24~0_combout\ & ((!\Mux19~1_combout\) # ((\Mux24~1_combout\)))) ) ) ) # ( !\Mux19~0_combout\ & ( \B[12]~input_o\ & ( 
-- (!\Mux24~0_combout\ & (((\Mux24~1_combout\ & \A[12]~input_o\)))) # (\Mux24~0_combout\ & (!\Mux19~1_combout\ & (!\Mux24~1_combout\))) ) ) ) # ( \Mux19~0_combout\ & ( !\B[12]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux19~1_combout\) # (\Mux24~1_combout\))) ) 
-- ) ) # ( !\Mux19~0_combout\ & ( !\B[12]~input_o\ & ( (!\Mux19~1_combout\ & (\Mux24~0_combout\ & !\Mux24~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000110010001100100000001011000010001100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~1_combout\,
	datab => \ALT_INV_Mux24~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: MLABCELL_X25_Y2_N54
\ShiftRight1~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~66_combout\ = ( \B[3]~input_o\ & ( \ShiftRight1~13_combout\ & ( (!\B[2]~input_o\ & ((\ShiftRight1~16_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~15_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \ShiftRight1~13_combout\ & ( (!\B[2]~input_o\) # 
-- (\ShiftRight1~17_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\ShiftRight1~13_combout\ & ( (!\B[2]~input_o\ & ((\ShiftRight1~16_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~15_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\ShiftRight1~13_combout\ & ( 
-- (\B[2]~input_o\ & \ShiftRight1~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~15_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftRight1~17_combout\,
	datad => \ALT_INV_ShiftRight1~16_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftRight1~13_combout\,
	combout => \ShiftRight1~66_combout\);

-- Location: LABCELL_X22_Y5_N0
\ShiftRight1~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~67_combout\ = ( \B[4]~input_o\ & ( \A[31]~input_o\ & ( (!\Equal1~0_combout\) # ((!\Equal1~6_combout\) # (\ShiftRight1~19_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( \A[31]~input_o\ & ( (!\Equal1~6_combout\) # (\ShiftRight1~66_combout\) ) ) ) # ( 
-- \B[4]~input_o\ & ( !\A[31]~input_o\ & ( (\Equal1~0_combout\ & (\ShiftRight1~19_combout\ & \Equal1~6_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( !\A[31]~input_o\ & ( (\ShiftRight1~66_combout\ & \Equal1~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000001111111111010101011111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~66_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ShiftRight1~19_combout\,
	datad => \ALT_INV_Equal1~6_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~67_combout\);

-- Location: LABCELL_X22_Y5_N54
\ShiftRight0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = ( \Equal1~6_combout\ & ( (!\B[4]~input_o\ & (((\ShiftRight1~66_combout\)))) # (\B[4]~input_o\ & (\Equal1~0_combout\ & (\ShiftRight0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ShiftRight0~1_combout\,
	datad => \ALT_INV_ShiftRight1~66_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \ShiftRight0~36_combout\);

-- Location: LABCELL_X30_Y5_N48
\ShiftLeft0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = ( \A[10]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[11]~input_o\))) # (\B[0]~input_o\ & (((\A[12]~input_o\) # (\B[1]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \A[13]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[11]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[12]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[11]~input_o\ & (\B[1]~input_o\))) # (\B[0]~input_o\ & 
-- (((\A[12]~input_o\) # (\B[1]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[11]~input_o\ & (\B[1]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \ShiftLeft0~34_combout\);

-- Location: LABCELL_X23_Y4_N48
\ShiftLeft0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \ShiftLeft0~1_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \ShiftLeft0~10_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \ShiftLeft0~22_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \ShiftLeft0~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~1_combout\,
	datab => \ALT_INV_ShiftLeft0~22_combout\,
	datac => \ALT_INV_ShiftLeft0~10_combout\,
	datad => \ALT_INV_ShiftLeft0~34_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftLeft0~35_combout\);

-- Location: LABCELL_X23_Y5_N12
\ShiftLeft0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = ( \ShiftLeft0~35_combout\ & ( \ShiftRight0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ShiftLeft0~35_combout\,
	dataf => \ALT_INV_ShiftRight0~0_combout\,
	combout => \ShiftLeft0~36_combout\);

-- Location: LABCELL_X23_Y5_N48
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \opcode[0]~input_o\ & ( \opcode[1]~input_o\ & ( \ShiftRight1~67_combout\ ) ) ) # ( !\opcode[0]~input_o\ & ( \opcode[1]~input_o\ & ( \ShiftRight0~36_combout\ ) ) ) # ( \opcode[0]~input_o\ & ( !\opcode[1]~input_o\ & ( 
-- \ShiftLeft0~36_combout\ ) ) ) # ( !\opcode[0]~input_o\ & ( !\opcode[1]~input_o\ & ( \LessThan0~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~16_combout\,
	datab => \ALT_INV_ShiftRight1~67_combout\,
	datac => \ALT_INV_ShiftRight0~36_combout\,
	datad => \ALT_INV_ShiftLeft0~36_combout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X30_Y4_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !\B[13]~input_o\ $ (\A[13]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !\B[13]~input_o\ $ (\A[13]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~55\ = SHARE((!\B[13]~input_o\ & \A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	cin => \Add1~50\,
	sharein => \Add1~51\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\,
	shareout => \Add1~55\);

-- Location: LABCELL_X31_Y4_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \B[13]~input_o\ ) + ( \A[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \B[13]~input_o\ ) + ( \A[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X35_Y4_N12
\Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \B[13]~input_o\ & ( \Add0~53_sumout\ & ( (!\opcode[1]~input_o\ & (!\Add1~53_sumout\ & \opcode[0]~input_o\)) ) ) ) # ( !\B[13]~input_o\ & ( \Add0~53_sumout\ & ( (!\opcode[1]~input_o\ & (!\Add1~53_sumout\ & (\opcode[0]~input_o\))) # 
-- (\opcode[1]~input_o\ & (((!\A[13]~input_o\)))) ) ) ) # ( \B[13]~input_o\ & ( !\Add0~53_sumout\ & ( (!\opcode[1]~input_o\ & ((!\Add1~53_sumout\) # (!\opcode[0]~input_o\))) ) ) ) # ( !\B[13]~input_o\ & ( !\Add0~53_sumout\ & ( (!\opcode[1]~input_o\ & 
-- ((!\Add1~53_sumout\) # ((!\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (((!\A[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110101000101010001010100001011101000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_Add1~53_sumout\,
	datac => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \Mux18~1_combout\);

-- Location: LABCELL_X35_Y4_N18
\Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \Mux24~1_combout\ & ( \A[13]~input_o\ & ( (!\Mux24~0_combout\ & (\B[13]~input_o\)) # (\Mux24~0_combout\ & ((\Mux18~0_combout\))) ) ) ) # ( !\Mux24~1_combout\ & ( \A[13]~input_o\ & ( (\Mux24~0_combout\ & !\Mux18~1_combout\) ) ) ) # ( 
-- \Mux24~1_combout\ & ( !\A[13]~input_o\ & ( (\Mux24~0_combout\ & \Mux18~0_combout\) ) ) ) # ( !\Mux24~1_combout\ & ( !\A[13]~input_o\ & ( (\Mux24~0_combout\ & !\Mux18~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000110000001100110011000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_Mux24~0_combout\,
	datac => \ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_Mux18~1_combout\,
	datae => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: LABCELL_X30_Y4_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !\B[14]~input_o\ $ (\A[14]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( !\B[14]~input_o\ $ (\A[14]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~59\ = SHARE((!\B[14]~input_o\ & \A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	cin => \Add1~54\,
	sharein => \Add1~55\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\,
	shareout => \Add1~59\);

-- Location: LABCELL_X31_Y4_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \B[14]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \B[14]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X35_Y4_N24
\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \opcode[0]~input_o\ & ( \B[14]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add1~57_sumout\) ) ) ) # ( !\opcode[0]~input_o\ & ( \B[14]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add0~57_sumout\) ) ) ) # ( \opcode[0]~input_o\ & ( 
-- !\B[14]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add1~57_sumout\)) # (\opcode[1]~input_o\ & ((!\A[14]~input_o\))) ) ) ) # ( !\opcode[0]~input_o\ & ( !\B[14]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add0~57_sumout\)) # (\opcode[1]~input_o\ & 
-- ((!\A[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010110100000110111011000100010100000101000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_Add1~57_sumout\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LABCELL_X30_Y5_N54
\ShiftLeft0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = ( \B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[12]~input_o\ & ( (\B[1]~input_o\) # (\A[14]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[12]~input_o\ & ( (\A[14]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \ShiftLeft0~37_combout\);

-- Location: LABCELL_X23_Y3_N18
\ShiftLeft0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = ( \ShiftLeft0~13_combout\ & ( \ShiftLeft0~37_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\ShiftLeft0~25_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~3_combout\))) ) ) ) # ( !\ShiftLeft0~13_combout\ & ( 
-- \ShiftLeft0~37_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\ShiftLeft0~25_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~3_combout\)))) ) ) ) # ( \ShiftLeft0~13_combout\ & ( !\ShiftLeft0~37_combout\ & ( 
-- (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\ShiftLeft0~25_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~3_combout\)))) ) ) ) # ( !\ShiftLeft0~13_combout\ & ( !\ShiftLeft0~37_combout\ & ( (\B[2]~input_o\ & 
-- ((!\B[3]~input_o\ & ((\ShiftLeft0~25_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~3_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_ShiftLeft0~25_combout\,
	datae => \ALT_INV_ShiftLeft0~13_combout\,
	dataf => \ALT_INV_ShiftLeft0~37_combout\,
	combout => \ShiftLeft0~38_combout\);

-- Location: LABCELL_X23_Y5_N24
\ShiftLeft0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\ShiftRight0~0_combout\ & \ShiftLeft0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftLeft0~38_combout\,
	combout => \ShiftLeft0~39_combout\);

-- Location: MLABCELL_X21_Y4_N24
\ShiftRight1~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~68_combout\ = ( \ShiftRight1~29_combout\ & ( \ShiftRight1~28_combout\ & ( (!\B[3]~input_o\ & (((\ShiftRight1~25_combout\) # (\B[2]~input_o\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\ShiftRight1~27_combout\))) ) ) ) # ( 
-- !\ShiftRight1~29_combout\ & ( \ShiftRight1~28_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\ & \ShiftRight1~25_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\ShiftRight1~27_combout\))) ) ) ) # ( \ShiftRight1~29_combout\ & ( 
-- !\ShiftRight1~28_combout\ & ( (!\B[3]~input_o\ & (((\ShiftRight1~25_combout\) # (\B[2]~input_o\)))) # (\B[3]~input_o\ & (\ShiftRight1~27_combout\ & (\B[2]~input_o\))) ) ) ) # ( !\ShiftRight1~29_combout\ & ( !\ShiftRight1~28_combout\ & ( (!\B[3]~input_o\ & 
-- (((!\B[2]~input_o\ & \ShiftRight1~25_combout\)))) # (\B[3]~input_o\ & (\ShiftRight1~27_combout\ & (\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftRight1~27_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftRight1~25_combout\,
	datae => \ALT_INV_ShiftRight1~29_combout\,
	dataf => \ALT_INV_ShiftRight1~28_combout\,
	combout => \ShiftRight1~68_combout\);

-- Location: LABCELL_X22_Y5_N18
\ShiftRight1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~69_combout\ = ( \ShiftRight1~31_combout\ & ( \ShiftRight1~68_combout\ & ( ((\Equal1~6_combout\ & ((!\B[4]~input_o\) # (\Equal1~0_combout\)))) # (\A[31]~input_o\) ) ) ) # ( !\ShiftRight1~31_combout\ & ( \ShiftRight1~68_combout\ & ( 
-- (!\Equal1~6_combout\ & (((\A[31]~input_o\)))) # (\Equal1~6_combout\ & ((!\B[4]~input_o\) # ((!\Equal1~0_combout\ & \A[31]~input_o\)))) ) ) ) # ( \ShiftRight1~31_combout\ & ( !\ShiftRight1~68_combout\ & ( (!\Equal1~6_combout\ & (((\A[31]~input_o\)))) # 
-- (\Equal1~6_combout\ & (\B[4]~input_o\ & ((\A[31]~input_o\) # (\Equal1~0_combout\)))) ) ) ) # ( !\ShiftRight1~31_combout\ & ( !\ShiftRight1~68_combout\ & ( (\A[31]~input_o\ & ((!\Equal1~6_combout\) # ((\B[4]~input_o\ & !\Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000100000011110001010100001111101011100000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_Equal1~6_combout\,
	datae => \ALT_INV_ShiftRight1~31_combout\,
	dataf => \ALT_INV_ShiftRight1~68_combout\,
	combout => \ShiftRight1~69_combout\);

-- Location: MLABCELL_X21_Y4_N15
\ShiftRight0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = ( \Equal1~6_combout\ & ( (!\B[4]~input_o\ & (((\ShiftRight1~68_combout\)))) # (\B[4]~input_o\ & (\ShiftRight0~4_combout\ & ((\Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001101010011000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~4_combout\,
	datab => \ALT_INV_ShiftRight1~68_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \ShiftRight0~37_combout\);

-- Location: LABCELL_X23_Y5_N30
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \LessThan0~15_combout\ & ( \opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & ((\ShiftRight0~37_combout\))) # (\opcode[0]~input_o\ & (\ShiftRight1~69_combout\)) ) ) ) # ( !\LessThan0~15_combout\ & ( \opcode[1]~input_o\ & ( 
-- (!\opcode[0]~input_o\ & ((\ShiftRight0~37_combout\))) # (\opcode[0]~input_o\ & (\ShiftRight1~69_combout\)) ) ) ) # ( \LessThan0~15_combout\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\) # (\ShiftLeft0~39_combout\) ) ) ) # ( !\LessThan0~15_combout\ & 
-- ( !\opcode[1]~input_o\ & ( (\ShiftLeft0~39_combout\ & \opcode[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~39_combout\,
	datab => \ALT_INV_ShiftRight1~69_combout\,
	datac => \ALT_INV_ShiftRight0~37_combout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_LessThan0~15_combout\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X35_Y4_N30
\Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \Mux17~0_combout\ & ( \B[14]~input_o\ & ( (!\Mux24~0_combout\ & (((\Mux24~1_combout\ & \A[14]~input_o\)))) # (\Mux24~0_combout\ & ((!\Mux17~1_combout\) # ((\Mux24~1_combout\)))) ) ) ) # ( !\Mux17~0_combout\ & ( \B[14]~input_o\ & ( 
-- (!\Mux24~0_combout\ & (((\Mux24~1_combout\ & \A[14]~input_o\)))) # (\Mux24~0_combout\ & (!\Mux17~1_combout\ & (!\Mux24~1_combout\))) ) ) ) # ( \Mux17~0_combout\ & ( !\B[14]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux17~1_combout\) # (\Mux24~1_combout\))) ) 
-- ) ) # ( !\Mux17~0_combout\ & ( !\B[14]~input_o\ & ( (!\Mux17~1_combout\ & (\Mux24~0_combout\ & !\Mux24~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000110010001100100000001011000010001100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~1_combout\,
	datab => \ALT_INV_Mux24~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_Mux17~0_combout\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: MLABCELL_X21_Y5_N24
\ShiftRight1~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~70_combout\ = ( \B[3]~input_o\ & ( \ShiftRight1~37_combout\ & ( (!\B[2]~input_o\ & ((\ShiftRight1~40_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~39_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \ShiftRight1~37_combout\ & ( (!\B[2]~input_o\) # 
-- (\ShiftRight1~41_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\ShiftRight1~37_combout\ & ( (!\B[2]~input_o\ & ((\ShiftRight1~40_combout\))) # (\B[2]~input_o\ & (\ShiftRight1~39_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\ShiftRight1~37_combout\ & ( 
-- (\ShiftRight1~41_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~41_combout\,
	datab => \ALT_INV_ShiftRight1~39_combout\,
	datac => \ALT_INV_ShiftRight1~40_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftRight1~37_combout\,
	combout => \ShiftRight1~70_combout\);

-- Location: MLABCELL_X21_Y5_N12
\ShiftRight1~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~71_combout\ = ( \A[31]~input_o\ & ( (!\ShiftRight0~0_combout\) # (\ShiftRight1~70_combout\) ) ) # ( !\A[31]~input_o\ & ( (\ShiftRight0~0_combout\ & \ShiftRight1~70_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight1~70_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~71_combout\);

-- Location: LABCELL_X33_Y3_N6
\ShiftLeft0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = ( \B[0]~input_o\ & ( \A[13]~input_o\ & ( (!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[12]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[13]~input_o\ & ( (\A[15]~input_o\) # (\B[1]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[12]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & \A[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \ShiftLeft0~40_combout\);

-- Location: LABCELL_X23_Y3_N24
\ShiftLeft0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = ( \ShiftLeft0~40_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\ShiftLeft0~28_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~5_combout\)) ) ) ) # ( !\ShiftLeft0~40_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\ShiftLeft0~28_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~5_combout\)) ) ) ) # ( \ShiftLeft0~40_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\ShiftLeft0~16_combout\) ) ) ) # ( !\ShiftLeft0~40_combout\ & ( !\B[2]~input_o\ & ( 
-- (\ShiftLeft0~16_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~5_combout\,
	datab => \ALT_INV_ShiftLeft0~16_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_ShiftLeft0~28_combout\,
	datae => \ALT_INV_ShiftLeft0~40_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \ShiftLeft0~41_combout\);

-- Location: LABCELL_X23_Y5_N27
\ShiftLeft0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (\ShiftRight0~0_combout\ & \ShiftLeft0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftLeft0~41_combout\,
	combout => \ShiftLeft0~42_combout\);

-- Location: LABCELL_X22_Y5_N57
\ShiftRight0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = ( \Equal1~6_combout\ & ( (!\B[4]~input_o\ & (((\ShiftRight1~70_combout\)))) # (\B[4]~input_o\ & (\Equal1~0_combout\ & ((\ShiftRight0~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ShiftRight1~70_combout\,
	datad => \ALT_INV_ShiftRight0~7_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \ShiftRight0~38_combout\);

-- Location: LABCELL_X23_Y5_N6
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \ShiftRight0~38_combout\ & ( \LessThan0~26_combout\ & ( (!\opcode[0]~input_o\) # ((!\opcode[1]~input_o\ & ((\ShiftLeft0~42_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight1~71_combout\))) ) ) ) # ( !\ShiftRight0~38_combout\ & ( 
-- \LessThan0~26_combout\ & ( (!\opcode[1]~input_o\ & (((!\opcode[0]~input_o\) # (\ShiftLeft0~42_combout\)))) # (\opcode[1]~input_o\ & (\ShiftRight1~71_combout\ & ((\opcode[0]~input_o\)))) ) ) ) # ( \ShiftRight0~38_combout\ & ( !\LessThan0~26_combout\ & ( 
-- (!\opcode[1]~input_o\ & (((\ShiftLeft0~42_combout\ & \opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)) # (\ShiftRight1~71_combout\))) ) ) ) # ( !\ShiftRight0~38_combout\ & ( !\LessThan0~26_combout\ & ( (\opcode[0]~input_o\ & 
-- ((!\opcode[1]~input_o\ & ((\ShiftLeft0~42_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight1~71_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_ShiftRight1~71_combout\,
	datac => \ALT_INV_ShiftLeft0~42_combout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_ShiftRight0~38_combout\,
	dataf => \ALT_INV_LessThan0~26_combout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X30_Y4_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( !\B[15]~input_o\ $ (\A[15]~input_o\) ) + ( \Add1~59\ ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( !\B[15]~input_o\ $ (\A[15]~input_o\) ) + ( \Add1~59\ ) + ( \Add1~58\ ))
-- \Add1~63\ = SHARE((!\B[15]~input_o\ & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	cin => \Add1~58\,
	sharein => \Add1~59\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\,
	shareout => \Add1~63\);

-- Location: LABCELL_X31_Y4_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \A[15]~input_o\ ) + ( \B[15]~input_o\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \A[15]~input_o\ ) + ( \B[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: MLABCELL_X34_Y4_N42
\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \Add1~61_sumout\ & ( \Add0~61_sumout\ & ( (\opcode[1]~input_o\ & (!\A[15]~input_o\ & !\B[15]~input_o\)) ) ) ) # ( !\Add1~61_sumout\ & ( \Add0~61_sumout\ & ( (!\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & 
-- (!\A[15]~input_o\ & ((!\B[15]~input_o\)))) ) ) ) # ( \Add1~61_sumout\ & ( !\Add0~61_sumout\ & ( (!\opcode[1]~input_o\ & (((!\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (!\A[15]~input_o\ & ((!\B[15]~input_o\)))) ) ) ) # ( !\Add1~61_sumout\ & ( 
-- !\Add0~61_sumout\ & ( (!\opcode[1]~input_o\) # ((!\A[15]~input_o\ & !\B[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010101010111001001010000001001110000010100100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_Add1~61_sumout\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \Mux16~1_combout\);

-- Location: MLABCELL_X34_Y4_N48
\Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = ( \Mux24~1_combout\ & ( \B[15]~input_o\ & ( (!\Mux24~0_combout\ & (\A[15]~input_o\)) # (\Mux24~0_combout\ & ((\Mux16~0_combout\))) ) ) ) # ( !\Mux24~1_combout\ & ( \B[15]~input_o\ & ( (\Mux24~0_combout\ & !\Mux16~1_combout\) ) ) ) # ( 
-- \Mux24~1_combout\ & ( !\B[15]~input_o\ & ( (\Mux16~0_combout\ & \Mux24~0_combout\) ) ) ) # ( !\Mux24~1_combout\ & ( !\B[15]~input_o\ & ( (\Mux24~0_combout\ & !\Mux16~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000110000001100001111000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_Mux16~0_combout\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_Mux16~1_combout\,
	datae => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LABCELL_X30_Y4_N48
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( !\B[16]~input_o\ $ (\A[16]~input_o\) ) + ( \Add1~63\ ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( !\B[16]~input_o\ $ (\A[16]~input_o\) ) + ( \Add1~63\ ) + ( \Add1~62\ ))
-- \Add1~67\ = SHARE((!\B[16]~input_o\ & \A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	cin => \Add1~62\,
	sharein => \Add1~63\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\,
	shareout => \Add1~67\);

-- Location: LABCELL_X31_Y4_N48
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \B[16]~input_o\ ) + ( \A[16]~input_o\ ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \B[16]~input_o\ ) + ( \A[16]~input_o\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X35_Y4_N6
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \opcode[0]~input_o\ & ( \A[16]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add1~65_sumout\) ) ) ) # ( !\opcode[0]~input_o\ & ( \A[16]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add0~65_sumout\) ) ) ) # ( \opcode[0]~input_o\ & ( 
-- !\A[16]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add1~65_sumout\)) # (\opcode[1]~input_o\ & ((!\B[16]~input_o\))) ) ) ) # ( !\opcode[0]~input_o\ & ( !\A[16]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add0~65_sumout\)) # (\opcode[1]~input_o\ & 
-- ((!\B[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010110100000110111011000100010100000101000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_Add1~65_sumout\,
	datac => \ALT_INV_Add0~65_sumout\,
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X24_Y3_N39
\ShiftLeft0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftLeft0~45_combout\);

-- Location: LABCELL_X24_Y3_N30
\ShiftLeft0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = ( \Equal1~1_combout\ & ( \Equal1~5_combout\ & ( (\Equal1~4_combout\ & (!\ShiftLeft0~45_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_ShiftLeft0~45_combout\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \ShiftLeft0~46_combout\);

-- Location: LABCELL_X24_Y3_N42
\ShiftLeft0~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = ( \B[2]~input_o\ & ( (\B[3]~input_o\ & !\B[4]~input_o\) ) ) # ( !\B[2]~input_o\ & ( !\B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \ShiftLeft0~43_combout\);

-- Location: LABCELL_X24_Y3_N57
\ShiftLeft0~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = ( \Equal1~1_combout\ & ( \Equal1~5_combout\ & ( (\Equal1~3_combout\ & (\Equal1~2_combout\ & (!\ShiftLeft0~43_combout\ & \Equal1~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~3_combout\,
	datab => \ALT_INV_Equal1~2_combout\,
	datac => \ALT_INV_ShiftLeft0~43_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \ShiftLeft0~44_combout\);

-- Location: LABCELL_X33_Y3_N12
\ShiftLeft0~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = ( \B[0]~input_o\ & ( \A[13]~input_o\ & ( (\A[15]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[13]~input_o\ & ( (!\B[1]~input_o\ & (\A[16]~input_o\)) # (\B[1]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & \A[15]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & (\A[16]~input_o\)) # (\B[1]~input_o\ & ((\A[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LABCELL_X24_Y4_N21
\ShiftLeft0~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = ( \ShiftLeft0~7_combout\ & ( ((!\B[3]~input_o\ & (\ShiftLeft0~47_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~19_combout\)))) # (\B[2]~input_o\) ) ) # ( !\ShiftLeft0~7_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- (\ShiftLeft0~47_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~47_combout\,
	datad => \ALT_INV_ShiftLeft0~19_combout\,
	dataf => \ALT_INV_ShiftLeft0~7_combout\,
	combout => \ShiftLeft0~48_combout\);

-- Location: LABCELL_X24_Y4_N6
\ShiftLeft0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = ( \ShiftLeft0~48_combout\ & ( \ShiftLeft0~31_combout\ & ( (!\ShiftLeft0~46_combout\ & (((\ShiftLeft0~44_combout\)))) # (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\) # ((\ShiftLeft0~0_combout\ & \Equal1~0_combout\)))) ) ) 
-- ) # ( !\ShiftLeft0~48_combout\ & ( \ShiftLeft0~31_combout\ & ( (\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~46_combout\) # ((\ShiftLeft0~0_combout\ & \Equal1~0_combout\)))) ) ) ) # ( \ShiftLeft0~48_combout\ & ( !\ShiftLeft0~31_combout\ & ( 
-- (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\) # ((\ShiftLeft0~0_combout\ & \Equal1~0_combout\)))) ) ) ) # ( !\ShiftLeft0~48_combout\ & ( !\ShiftLeft0~31_combout\ & ( (\ShiftLeft0~46_combout\ & (\ShiftLeft0~0_combout\ & (\Equal1~0_combout\ & 
-- \ShiftLeft0~44_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010101010000000100000000101010110101010110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~46_combout\,
	datab => \ALT_INV_ShiftLeft0~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_ShiftLeft0~44_combout\,
	datae => \ALT_INV_ShiftLeft0~48_combout\,
	dataf => \ALT_INV_ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~49_combout\);

-- Location: LABCELL_X27_Y2_N30
\Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( !\ShiftRight0~0_combout\ & ( (!\opcode[0]~input_o\ & (\LessThan0~25_combout\ & (((!\opcode[1]~input_o\))))) # (\opcode[0]~input_o\ & (((!\opcode[1]~input_o\ & ((\ShiftLeft0~49_combout\))) # (\opcode[1]~input_o\ & 
-- (\A[31]~input_o\))))) ) ) # ( \ShiftRight0~0_combout\ & ( (!\opcode[1]~input_o\ & ((!\opcode[0]~input_o\ & (\LessThan0~25_combout\)) # (\opcode[0]~input_o\ & (((\ShiftLeft0~49_combout\)))))) # (\opcode[1]~input_o\ & ((((\ShiftRight1~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000000101001000100000111101110111000001010111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_LessThan0~25_combout\,
	datac => \ALT_INV_ShiftRight1~4_combout\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_ShiftLeft0~49_combout\,
	datag => \ALT_INV_A[31]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LABCELL_X35_Y4_N42
\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \B[16]~input_o\ & ( \Mux15~2_combout\ & ( (!\Mux24~0_combout\ & (\A[16]~input_o\ & (\Mux24~1_combout\))) # (\Mux24~0_combout\ & (((!\Mux15~0_combout\) # (\Mux24~1_combout\)))) ) ) ) # ( !\B[16]~input_o\ & ( \Mux15~2_combout\ & ( 
-- (\Mux24~0_combout\ & ((!\Mux15~0_combout\) # (\Mux24~1_combout\))) ) ) ) # ( \B[16]~input_o\ & ( !\Mux15~2_combout\ & ( (!\Mux24~0_combout\ & (\A[16]~input_o\ & (\Mux24~1_combout\))) # (\Mux24~0_combout\ & (((!\Mux24~1_combout\ & !\Mux15~0_combout\)))) ) 
-- ) ) # ( !\B[16]~input_o\ & ( !\Mux15~2_combout\ & ( (\Mux24~0_combout\ & (!\Mux24~1_combout\ & !\Mux15~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001101000000010000110011000000110011011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_Mux24~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_Mux15~2_combout\,
	combout => \Mux15~1_combout\);

-- Location: LABCELL_X31_Y4_N51
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \A[17]~input_o\ ) + ( \B[17]~input_o\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \A[17]~input_o\ ) + ( \B[17]~input_o\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X30_Y4_N51
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( !\B[17]~input_o\ $ (\A[17]~input_o\) ) + ( \Add1~67\ ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( !\B[17]~input_o\ $ (\A[17]~input_o\) ) + ( \Add1~67\ ) + ( \Add1~66\ ))
-- \Add1~71\ = SHARE((!\B[17]~input_o\ & \A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	cin => \Add1~66\,
	sharein => \Add1~67\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\,
	shareout => \Add1~71\);

-- Location: MLABCELL_X34_Y4_N24
\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \Add1~69_sumout\ & ( \B[17]~input_o\ & ( (!\opcode[0]~input_o\ & (!\Add0~69_sumout\ & !\opcode[1]~input_o\)) ) ) ) # ( !\Add1~69_sumout\ & ( \B[17]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\Add0~69_sumout\) # (\opcode[0]~input_o\))) ) 
-- ) ) # ( \Add1~69_sumout\ & ( !\B[17]~input_o\ & ( (!\opcode[1]~input_o\ & (!\opcode[0]~input_o\ & (!\Add0~69_sumout\))) # (\opcode[1]~input_o\ & (((!\A[17]~input_o\)))) ) ) ) # ( !\Add1~69_sumout\ & ( !\B[17]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- (((!\Add0~69_sumout\)) # (\opcode[0]~input_o\))) # (\opcode[1]~input_o\ & (((!\A[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111010000100011111000000011010000110100001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_Add0~69_sumout\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_Add1~69_sumout\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: MLABCELL_X25_Y2_N21
\ShiftRight1~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~72_combout\ = ( \A[31]~input_o\ & ( (!\ShiftRight1~20_combout\ & (!\ShiftRight1~18_combout\ & \ShiftRight0~0_combout\)) ) ) # ( !\A[31]~input_o\ & ( (!\ShiftRight0~0_combout\) # ((!\ShiftRight1~20_combout\ & !\ShiftRight1~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~20_combout\,
	datac => \ALT_INV_ShiftRight1~18_combout\,
	datad => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~72_combout\);

-- Location: LABCELL_X33_Y3_N18
\ShiftLeft0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = ( \B[0]~input_o\ & ( \A[17]~input_o\ & ( (!\B[1]~input_o\ & (\A[16]~input_o\)) # (\B[1]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[17]~input_o\ & ( (!\B[1]~input_o\) # (\A[15]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[1]~input_o\ & (\A[16]~input_o\)) # (\B[1]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[17]~input_o\ & ( (\A[15]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \ShiftLeft0~50_combout\);

-- Location: LABCELL_X23_Y4_N15
\ShiftLeft0~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = ( \ShiftLeft0~50_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\ShiftLeft0~22_combout\)))) # (\B[2]~input_o\ & (\ShiftLeft0~10_combout\)) ) ) # ( !\ShiftLeft0~50_combout\ & ( (!\B[2]~input_o\ & (((\ShiftLeft0~22_combout\ 
-- & \B[3]~input_o\)))) # (\B[2]~input_o\ & (\ShiftLeft0~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010111110011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~10_combout\,
	datab => \ALT_INV_ShiftLeft0~22_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~50_combout\,
	combout => \ShiftLeft0~51_combout\);

-- Location: LABCELL_X23_Y4_N54
\ShiftLeft0~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = ( \ShiftLeft0~34_combout\ & ( \Equal1~0_combout\ & ( (!\ShiftLeft0~46_combout\ & (((\ShiftLeft0~44_combout\)))) # (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & ((\ShiftLeft0~51_combout\))) # (\ShiftLeft0~44_combout\ & 
-- (\ShiftLeft0~1_combout\)))) ) ) ) # ( !\ShiftLeft0~34_combout\ & ( \Equal1~0_combout\ & ( (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & ((\ShiftLeft0~51_combout\))) # (\ShiftLeft0~44_combout\ & (\ShiftLeft0~1_combout\)))) ) ) ) # ( 
-- \ShiftLeft0~34_combout\ & ( !\Equal1~0_combout\ & ( (!\ShiftLeft0~46_combout\ & ((\ShiftLeft0~44_combout\))) # (\ShiftLeft0~46_combout\ & (\ShiftLeft0~51_combout\ & !\ShiftLeft0~44_combout\)) ) ) ) # ( !\ShiftLeft0~34_combout\ & ( !\Equal1~0_combout\ & ( 
-- (\ShiftLeft0~51_combout\ & (\ShiftLeft0~46_combout\ & !\ShiftLeft0~44_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000111111000000000011000001010000001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~1_combout\,
	datab => \ALT_INV_ShiftLeft0~51_combout\,
	datac => \ALT_INV_ShiftLeft0~46_combout\,
	datad => \ALT_INV_ShiftLeft0~44_combout\,
	datae => \ALT_INV_ShiftLeft0~34_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \ShiftLeft0~52_combout\);

-- Location: MLABCELL_X28_Y2_N24
\ShiftRight0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = ( \ShiftRight0~0_combout\ & ( \ShiftRight0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~2_combout\,
	datae => \ALT_INV_ShiftRight0~0_combout\,
	combout => \ShiftRight0~39_combout\);

-- Location: MLABCELL_X28_Y2_N0
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \opcode[0]~input_o\ & ( \opcode[1]~input_o\ & ( !\ShiftRight1~72_combout\ ) ) ) # ( !\opcode[0]~input_o\ & ( \opcode[1]~input_o\ & ( \ShiftRight0~39_combout\ ) ) ) # ( \opcode[0]~input_o\ & ( !\opcode[1]~input_o\ & ( 
-- \ShiftLeft0~52_combout\ ) ) ) # ( !\opcode[0]~input_o\ & ( !\opcode[1]~input_o\ & ( \LessThan0~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~72_combout\,
	datab => \ALT_INV_ShiftLeft0~52_combout\,
	datac => \ALT_INV_LessThan0~24_combout\,
	datad => \ALT_INV_ShiftRight0~39_combout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X34_Y4_N0
\Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \Mux24~1_combout\ & ( \B[17]~input_o\ & ( (!\Mux24~0_combout\ & ((\A[17]~input_o\))) # (\Mux24~0_combout\ & (\Mux14~0_combout\)) ) ) ) # ( !\Mux24~1_combout\ & ( \B[17]~input_o\ & ( (!\Mux14~1_combout\ & \Mux24~0_combout\) ) ) ) # ( 
-- \Mux24~1_combout\ & ( !\B[17]~input_o\ & ( (\Mux14~0_combout\ & \Mux24~0_combout\) ) ) ) # ( !\Mux24~1_combout\ & ( !\B[17]~input_o\ & ( (!\Mux14~1_combout\ & \Mux24~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000110000001100001010000010100000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~1_combout\,
	datab => \ALT_INV_Mux14~0_combout\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LABCELL_X29_Y1_N0
\ShiftLeft0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = ( \B[1]~input_o\ & ( \A[16]~input_o\ & ( (!\B[0]~input_o\) # (\A[15]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[16]~input_o\ & ( (!\B[0]~input_o\ & ((\A[18]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[16]~input_o\ & ( (\A[15]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[0]~input_o\ & ((\A[18]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \ShiftLeft0~53_combout\);

-- Location: LABCELL_X23_Y3_N3
\ShiftLeft0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = ( \ShiftLeft0~25_combout\ & ( (!\B[2]~input_o\ & (((\ShiftLeft0~53_combout\)) # (\B[3]~input_o\))) # (\B[2]~input_o\ & (((\ShiftLeft0~13_combout\)))) ) ) # ( !\ShiftLeft0~25_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- (\ShiftLeft0~53_combout\))) # (\B[2]~input_o\ & (((\ShiftLeft0~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~53_combout\,
	datad => \ALT_INV_ShiftLeft0~13_combout\,
	dataf => \ALT_INV_ShiftLeft0~25_combout\,
	combout => \ShiftLeft0~54_combout\);

-- Location: LABCELL_X23_Y3_N36
\ShiftLeft0~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = ( \Equal1~0_combout\ & ( \ShiftLeft0~37_combout\ & ( (!\ShiftLeft0~44_combout\ & (\ShiftLeft0~54_combout\ & ((\ShiftLeft0~46_combout\)))) # (\ShiftLeft0~44_combout\ & (((!\ShiftLeft0~46_combout\) # (\ShiftLeft0~3_combout\)))) ) ) 
-- ) # ( !\Equal1~0_combout\ & ( \ShiftLeft0~37_combout\ & ( (!\ShiftLeft0~44_combout\ & (\ShiftLeft0~54_combout\ & \ShiftLeft0~46_combout\)) # (\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~46_combout\))) ) ) ) # ( \Equal1~0_combout\ & ( !\ShiftLeft0~37_combout\ 
-- & ( (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & (\ShiftLeft0~54_combout\)) # (\ShiftLeft0~44_combout\ & ((\ShiftLeft0~3_combout\))))) ) ) ) # ( !\Equal1~0_combout\ & ( !\ShiftLeft0~37_combout\ & ( (\ShiftLeft0~54_combout\ & 
-- (!\ShiftLeft0~44_combout\ & \ShiftLeft0~46_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100011100110011010001000011001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~54_combout\,
	datab => \ALT_INV_ShiftLeft0~44_combout\,
	datac => \ALT_INV_ShiftLeft0~3_combout\,
	datad => \ALT_INV_ShiftLeft0~46_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_ShiftLeft0~37_combout\,
	combout => \ShiftLeft0~55_combout\);

-- Location: LABCELL_X27_Y2_N39
\ShiftRight1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~73_combout\ = ( \ShiftRight0~0_combout\ & ( (!\ShiftRight1~32_combout\ & !\ShiftRight1~30_combout\) ) ) # ( !\ShiftRight0~0_combout\ & ( !\A[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101000001010000011111111000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~32_combout\,
	datac => \ALT_INV_ShiftRight1~30_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_ShiftRight0~0_combout\,
	combout => \ShiftRight1~73_combout\);

-- Location: LABCELL_X27_Y2_N3
\ShiftRight0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = ( \ShiftRight0~0_combout\ & ( \ShiftRight0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~5_combout\,
	combout => \ShiftRight0~40_combout\);

-- Location: MLABCELL_X28_Y2_N36
\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \opcode[0]~input_o\ & ( \LessThan0~23_combout\ & ( (!\opcode[1]~input_o\ & (\ShiftLeft0~55_combout\)) # (\opcode[1]~input_o\ & ((!\ShiftRight1~73_combout\))) ) ) ) # ( !\opcode[0]~input_o\ & ( \LessThan0~23_combout\ & ( 
-- (!\opcode[1]~input_o\) # (\ShiftRight0~40_combout\) ) ) ) # ( \opcode[0]~input_o\ & ( !\LessThan0~23_combout\ & ( (!\opcode[1]~input_o\ & (\ShiftLeft0~55_combout\)) # (\opcode[1]~input_o\ & ((!\ShiftRight1~73_combout\))) ) ) ) # ( !\opcode[0]~input_o\ & ( 
-- !\LessThan0~23_combout\ & ( (\opcode[1]~input_o\ & \ShiftRight0~40_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101011100100111001010101010111111110111001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_ShiftLeft0~55_combout\,
	datac => \ALT_INV_ShiftRight1~73_combout\,
	datad => \ALT_INV_ShiftRight0~40_combout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_LessThan0~23_combout\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X31_Y4_N54
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \B[18]~input_o\ ) + ( \A[18]~input_o\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \B[18]~input_o\ ) + ( \A[18]~input_o\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X30_Y4_N54
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( !\B[18]~input_o\ $ (\A[18]~input_o\) ) + ( \Add1~71\ ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( !\B[18]~input_o\ $ (\A[18]~input_o\) ) + ( \Add1~71\ ) + ( \Add1~70\ ))
-- \Add1~75\ = SHARE((!\B[18]~input_o\ & \A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	cin => \Add1~70\,
	sharein => \Add1~71\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\,
	shareout => \Add1~75\);

-- Location: MLABCELL_X34_Y4_N36
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Add1~73_sumout\ & ( \B[18]~input_o\ & ( (!\opcode[1]~input_o\ & (!\opcode[0]~input_o\ & !\Add0~73_sumout\)) ) ) ) # ( !\Add1~73_sumout\ & ( \B[18]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\Add0~73_sumout\) # (\opcode[0]~input_o\))) ) 
-- ) ) # ( \Add1~73_sumout\ & ( !\B[18]~input_o\ & ( (!\opcode[1]~input_o\ & (((!\opcode[0]~input_o\ & !\Add0~73_sumout\)))) # (\opcode[1]~input_o\ & (!\A[18]~input_o\)) ) ) ) # ( !\Add1~73_sumout\ & ( !\B[18]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- (((!\Add0~73_sumout\) # (\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (!\A[18]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001001110111001000100010010101010000010101010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_Add1~73_sumout\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X34_Y4_N12
\Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Mux13~0_combout\ & ( \B[18]~input_o\ & ( (\Mux24~1_combout\ & ((!\Mux24~0_combout\ & ((\A[18]~input_o\))) # (\Mux24~0_combout\ & (\Mux13~1_combout\)))) ) ) ) # ( !\Mux13~0_combout\ & ( \B[18]~input_o\ & ( (!\Mux24~0_combout\ & 
-- (((\A[18]~input_o\ & \Mux24~1_combout\)))) # (\Mux24~0_combout\ & (((!\Mux24~1_combout\)) # (\Mux13~1_combout\))) ) ) ) # ( \Mux13~0_combout\ & ( !\B[18]~input_o\ & ( (\Mux13~1_combout\ & (\Mux24~0_combout\ & \Mux24~1_combout\)) ) ) ) # ( 
-- !\Mux13~0_combout\ & ( !\B[18]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\) # (\Mux13~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000000000000010100001111001101010000000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~1_combout\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_Mux24~1_combout\,
	datae => \ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LABCELL_X22_Y4_N15
\ShiftRight1~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~74_combout\ = ( \A[31]~input_o\ & ( (!\ShiftRight0~0_combout\) # (\ShiftRight1~42_combout\) ) ) # ( !\A[31]~input_o\ & ( (\ShiftRight1~42_combout\ & \ShiftRight0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~42_combout\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~74_combout\);

-- Location: LABCELL_X27_Y2_N42
\ShiftRight0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = ( \ShiftRight0~0_combout\ & ( \ShiftRight0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~8_combout\,
	datae => \ALT_INV_ShiftRight0~0_combout\,
	combout => \ShiftRight0~41_combout\);

-- Location: LABCELL_X29_Y1_N6
\ShiftLeft0~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = ( \A[19]~input_o\ & ( \A[16]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[18]~input_o\)))) # (\B[1]~input_o\ & (((\A[17]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( !\A[19]~input_o\ & ( \A[16]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[18]~input_o\)))) # (\B[1]~input_o\ & (((\A[17]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( \A[19]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[18]~input_o\)))) # (\B[1]~input_o\ & 
-- (!\B[0]~input_o\ & (\A[17]~input_o\))) ) ) ) # ( !\A[19]~input_o\ & ( !\A[16]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[18]~input_o\)))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[17]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \ShiftLeft0~56_combout\);

-- Location: LABCELL_X23_Y3_N15
\ShiftLeft0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = ( \ShiftLeft0~28_combout\ & ( (!\B[2]~input_o\ & (((\ShiftLeft0~56_combout\)) # (\B[3]~input_o\))) # (\B[2]~input_o\ & (((\ShiftLeft0~16_combout\)))) ) ) # ( !\ShiftLeft0~28_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- ((\ShiftLeft0~56_combout\)))) # (\B[2]~input_o\ & (((\ShiftLeft0~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~16_combout\,
	datad => \ALT_INV_ShiftLeft0~56_combout\,
	dataf => \ALT_INV_ShiftLeft0~28_combout\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LABCELL_X23_Y3_N48
\ShiftLeft0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = ( \ShiftLeft0~46_combout\ & ( \ShiftLeft0~5_combout\ & ( (!\ShiftLeft0~44_combout\ & (\ShiftLeft0~57_combout\)) # (\ShiftLeft0~44_combout\ & ((\Equal1~0_combout\))) ) ) ) # ( !\ShiftLeft0~46_combout\ & ( \ShiftLeft0~5_combout\ & 
-- ( (\ShiftLeft0~40_combout\ & \ShiftLeft0~44_combout\) ) ) ) # ( \ShiftLeft0~46_combout\ & ( !\ShiftLeft0~5_combout\ & ( (\ShiftLeft0~57_combout\ & !\ShiftLeft0~44_combout\) ) ) ) # ( !\ShiftLeft0~46_combout\ & ( !\ShiftLeft0~5_combout\ & ( 
-- (\ShiftLeft0~40_combout\ & \ShiftLeft0~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000000000000000010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~40_combout\,
	datab => \ALT_INV_ShiftLeft0~57_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_ShiftLeft0~44_combout\,
	datae => \ALT_INV_ShiftLeft0~46_combout\,
	dataf => \ALT_INV_ShiftLeft0~5_combout\,
	combout => \ShiftLeft0~58_combout\);

-- Location: LABCELL_X30_Y2_N0
\Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\A[19]~input_o\ $ (((!\B[19]~input_o\)))))) # (\opcode[0]~input_o\ & ((((\ShiftLeft0~58_combout\))))) ) ) # ( \opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & 
-- (((\ShiftRight0~41_combout\)))) # (\opcode[0]~input_o\ & (\ShiftRight1~74_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101110100000111101010001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_ShiftRight1~74_combout\,
	datac => \ALT_INV_ShiftRight0~41_combout\,
	datad => \ALT_INV_ShiftLeft0~58_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	datag => \ALT_INV_A[19]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: LABCELL_X30_Y4_N57
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( !\B[19]~input_o\ $ (\A[19]~input_o\) ) + ( \Add1~75\ ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( !\B[19]~input_o\ $ (\A[19]~input_o\) ) + ( \Add1~75\ ) + ( \Add1~74\ ))
-- \Add1~79\ = SHARE((!\B[19]~input_o\ & \A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	cin => \Add1~74\,
	sharein => \Add1~75\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\,
	shareout => \Add1~79\);

-- Location: LABCELL_X31_Y4_N57
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \A[19]~input_o\ ) + ( \B[19]~input_o\ ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \A[19]~input_o\ ) + ( \B[19]~input_o\ ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X30_Y2_N30
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( !\opcode[1]~input_o\ & ( \A[19]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\Add0~77_sumout\))) # (\opcode[0]~input_o\ & (!\Add1~77_sumout\)) ) ) ) # ( \opcode[1]~input_o\ & ( !\A[19]~input_o\ & ( !\B[19]~input_o\ ) ) ) # ( 
-- !\opcode[1]~input_o\ & ( !\A[19]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\Add0~77_sumout\))) # (\opcode[0]~input_o\ & (!\Add1~77_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111111110000000011100100111001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_Add1~77_sumout\,
	datac => \ALT_INV_Add0~77_sumout\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X30_Y2_N6
\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \Mux24~0_combout\ & ( \A[19]~input_o\ & ( (!\Mux24~1_combout\ & ((!\Mux12~0_combout\))) # (\Mux24~1_combout\ & (\Mux12~2_combout\)) ) ) ) # ( !\Mux24~0_combout\ & ( \A[19]~input_o\ & ( (\Mux24~1_combout\ & \B[19]~input_o\) ) ) ) # ( 
-- \Mux24~0_combout\ & ( !\A[19]~input_o\ & ( (!\Mux24~1_combout\ & ((!\Mux12~0_combout\))) # (\Mux24~1_combout\ & (\Mux12~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001011100010100000000000011111100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~2_combout\,
	datab => \ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \ALT_INV_Mux24~0_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X30_Y3_N0
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( !\A[20]~input_o\ $ (\B[20]~input_o\) ) + ( \Add1~79\ ) + ( \Add1~78\ ))
-- \Add1~82\ = CARRY(( !\A[20]~input_o\ $ (\B[20]~input_o\) ) + ( \Add1~79\ ) + ( \Add1~78\ ))
-- \Add1~83\ = SHARE((\A[20]~input_o\ & !\B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[20]~input_o\,
	cin => \Add1~78\,
	sharein => \Add1~79\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\,
	shareout => \Add1~83\);

-- Location: LABCELL_X31_Y3_N0
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \B[20]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( \B[20]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X29_Y2_N18
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \A[20]~input_o\ & ( \Add0~81_sumout\ & ( (!\Add1~81_sumout\ & (!\opcode[1]~input_o\ & \opcode[0]~input_o\)) ) ) ) # ( !\A[20]~input_o\ & ( \Add0~81_sumout\ & ( (!\opcode[1]~input_o\ & (!\Add1~81_sumout\ & (\opcode[0]~input_o\))) # 
-- (\opcode[1]~input_o\ & (((!\B[20]~input_o\)))) ) ) ) # ( \A[20]~input_o\ & ( !\Add0~81_sumout\ & ( (!\opcode[1]~input_o\ & ((!\Add1~81_sumout\) # (!\opcode[0]~input_o\))) ) ) ) # ( !\A[20]~input_o\ & ( !\Add0~81_sumout\ & ( (!\opcode[1]~input_o\ & 
-- ((!\Add1~81_sumout\) # ((!\opcode[0]~input_o\)))) # (\opcode[1]~input_o\ & (((!\B[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111001000110010001100100000111011000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~81_sumout\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_B[20]~input_o\,
	datae => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X29_Y1_N42
\ShiftLeft0~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = ( \A[19]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[18]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)) ) ) ) # ( !\A[19]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[18]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[17]~input_o\)) ) ) ) # ( \A[19]~input_o\ & ( !\B[1]~input_o\ & ( (\A[20]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[19]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftLeft0~59_combout\);

-- Location: LABCELL_X24_Y4_N39
\ShiftLeft0~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = ( \ShiftLeft0~31_combout\ & ( (!\B[2]~input_o\ & (((\ShiftLeft0~59_combout\)) # (\B[3]~input_o\))) # (\B[2]~input_o\ & (((\ShiftLeft0~19_combout\)))) ) ) # ( !\ShiftLeft0~31_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- (\ShiftLeft0~59_combout\))) # (\B[2]~input_o\ & (((\ShiftLeft0~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~59_combout\,
	datad => \ALT_INV_ShiftLeft0~19_combout\,
	dataf => \ALT_INV_ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~60_combout\);

-- Location: LABCELL_X24_Y4_N42
\ShiftLeft0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = ( \ShiftLeft0~47_combout\ & ( (!\ShiftLeft0~46_combout\ & (\ShiftLeft0~44_combout\)) # (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & ((\ShiftLeft0~60_combout\))) # (\ShiftLeft0~44_combout\ & (\ShiftLeft0~8_combout\)))) 
-- ) ) # ( !\ShiftLeft0~47_combout\ & ( (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & ((\ShiftLeft0~60_combout\))) # (\ShiftLeft0~44_combout\ & (\ShiftLeft0~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~46_combout\,
	datab => \ALT_INV_ShiftLeft0~44_combout\,
	datac => \ALT_INV_ShiftLeft0~8_combout\,
	datad => \ALT_INV_ShiftLeft0~60_combout\,
	dataf => \ALT_INV_ShiftLeft0~47_combout\,
	combout => \ShiftLeft0~61_combout\);

-- Location: LABCELL_X29_Y2_N27
\ShiftRight0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\ShiftRight0~0_combout\ & \ShiftRight0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datad => \ALT_INV_ShiftRight0~10_combout\,
	combout => \ShiftRight0~42_combout\);

-- Location: LABCELL_X29_Y2_N24
\ShiftRight1~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~75_combout\ = (!\ShiftRight0~0_combout\ & ((\A[31]~input_o\))) # (\ShiftRight0~0_combout\ & (\ShiftRight1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight1~45_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~75_combout\);

-- Location: LABCELL_X29_Y2_N12
\Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\A[20]~input_o\ $ ((!\B[20]~input_o\))))) # (\opcode[0]~input_o\ & (\ShiftLeft0~61_combout\)) ) ) # ( \opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & (((\ShiftRight0~42_combout\)))) 
-- # (\opcode[0]~input_o\ & ((((\ShiftRight1~75_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101110110001000010100000101000011011101100010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_ShiftLeft0~61_combout\,
	datac => \ALT_INV_ShiftRight0~42_combout\,
	datad => \ALT_INV_B[20]~input_o\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_ShiftRight1~75_combout\,
	datag => \ALT_INV_A[20]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LABCELL_X29_Y2_N0
\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \B[20]~input_o\ & ( \Mux11~2_combout\ & ( (!\Mux24~0_combout\ & (((\Mux24~1_combout\ & \A[20]~input_o\)))) # (\Mux24~0_combout\ & ((!\Mux11~0_combout\) # ((\Mux24~1_combout\)))) ) ) ) # ( !\B[20]~input_o\ & ( \Mux11~2_combout\ & ( 
-- (\Mux24~0_combout\ & ((!\Mux11~0_combout\) # (\Mux24~1_combout\))) ) ) ) # ( \B[20]~input_o\ & ( !\Mux11~2_combout\ & ( (!\Mux24~0_combout\ & (((\Mux24~1_combout\ & \A[20]~input_o\)))) # (\Mux24~0_combout\ & (!\Mux11~0_combout\ & (!\Mux24~1_combout\))) ) 
-- ) ) # ( !\B[20]~input_o\ & ( !\Mux11~2_combout\ & ( (!\Mux11~0_combout\ & (\Mux24~0_combout\ & !\Mux24~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010110000100011001000110010001100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~0_combout\,
	datab => \ALT_INV_Mux24~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_Mux11~2_combout\,
	combout => \Mux11~1_combout\);

-- Location: LABCELL_X31_Y3_N3
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \B[21]~input_o\ ) + ( \A[21]~input_o\ ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \B[21]~input_o\ ) + ( \A[21]~input_o\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X30_Y3_N3
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( !\A[21]~input_o\ $ (\B[21]~input_o\) ) + ( \Add1~83\ ) + ( \Add1~82\ ))
-- \Add1~86\ = CARRY(( !\A[21]~input_o\ $ (\B[21]~input_o\) ) + ( \Add1~83\ ) + ( \Add1~82\ ))
-- \Add1~87\ = SHARE((\A[21]~input_o\ & !\B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	cin => \Add1~82\,
	sharein => \Add1~83\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\,
	shareout => \Add1~87\);

-- Location: LABCELL_X30_Y2_N42
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \opcode[0]~input_o\ & ( \Add1~85_sumout\ & ( (!\A[21]~input_o\ & (\opcode[1]~input_o\ & !\B[21]~input_o\)) ) ) ) # ( !\opcode[0]~input_o\ & ( \Add1~85_sumout\ & ( (!\opcode[1]~input_o\ & (((!\Add0~85_sumout\)))) # 
-- (\opcode[1]~input_o\ & (!\A[21]~input_o\ & ((!\B[21]~input_o\)))) ) ) ) # ( \opcode[0]~input_o\ & ( !\Add1~85_sumout\ & ( (!\opcode[1]~input_o\) # ((!\A[21]~input_o\ & !\B[21]~input_o\)) ) ) ) # ( !\opcode[0]~input_o\ & ( !\Add1~85_sumout\ & ( 
-- (!\opcode[1]~input_o\ & (((!\Add0~85_sumout\)))) # (\opcode[1]~input_o\ & (!\A[21]~input_o\ & ((!\B[21]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001011000000111011101100110011100010110000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_Add0~85_sumout\,
	datad => \ALT_INV_B[21]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_Add1~85_sumout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X29_Y1_N18
\ShiftLeft0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = ( \A[19]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[18]~input_o\) ) ) ) # ( !\A[19]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \A[18]~input_o\) ) ) ) # ( \A[19]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[21]~input_o\)) # (\B[0]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( !\A[19]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[21]~input_o\)) # (\B[0]~input_o\ & ((\A[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftLeft0~62_combout\);

-- Location: LABCELL_X23_Y4_N39
\ShiftLeft0~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = ( \ShiftLeft0~22_combout\ & ( ((!\B[3]~input_o\ & ((\ShiftLeft0~62_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~34_combout\))) # (\B[2]~input_o\) ) ) # ( !\ShiftLeft0~22_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- ((\ShiftLeft0~62_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~34_combout\,
	datad => \ALT_INV_ShiftLeft0~62_combout\,
	dataf => \ALT_INV_ShiftLeft0~22_combout\,
	combout => \ShiftLeft0~63_combout\);

-- Location: LABCELL_X23_Y4_N30
\ShiftLeft0~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = ( \ShiftLeft0~63_combout\ & ( (!\ShiftLeft0~46_combout\ & (\ShiftLeft0~44_combout\ & (\ShiftLeft0~50_combout\))) # (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\) # ((\ShiftLeft0~11_combout\)))) ) ) # ( 
-- !\ShiftLeft0~63_combout\ & ( (\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~46_combout\ & (\ShiftLeft0~50_combout\)) # (\ShiftLeft0~46_combout\ & ((\ShiftLeft0~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~46_combout\,
	datab => \ALT_INV_ShiftLeft0~44_combout\,
	datac => \ALT_INV_ShiftLeft0~50_combout\,
	datad => \ALT_INV_ShiftLeft0~11_combout\,
	dataf => \ALT_INV_ShiftLeft0~63_combout\,
	combout => \ShiftLeft0~64_combout\);

-- Location: LABCELL_X22_Y4_N12
\ShiftRight0~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = ( \ShiftRight0~12_combout\ & ( \ShiftRight0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~12_combout\,
	combout => \ShiftRight0~43_combout\);

-- Location: MLABCELL_X25_Y4_N15
\ShiftRight1~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~76_combout\ = ( \A[31]~input_o\ & ( (!\ShiftRight0~0_combout\) # (\ShiftRight1~48_combout\) ) ) # ( !\A[31]~input_o\ & ( (\ShiftRight0~0_combout\ & \ShiftRight1~48_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~0_combout\,
	datad => \ALT_INV_ShiftRight1~48_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~76_combout\);

-- Location: LABCELL_X29_Y2_N36
\Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\A[21]~input_o\ $ (((!\B[21]~input_o\)))))) # (\opcode[0]~input_o\ & (\ShiftLeft0~64_combout\)) ) ) # ( \opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & 
-- (((\ShiftRight0~43_combout\)))) # (\opcode[0]~input_o\ & ((((\ShiftRight1~76_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111110110001101100010000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_ShiftLeft0~64_combout\,
	datac => \ALT_INV_ShiftRight0~43_combout\,
	datad => \ALT_INV_ShiftRight1~76_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	datag => \ALT_INV_A[21]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X30_Y2_N48
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \B[21]~input_o\ & ( \Mux10~2_combout\ & ( (!\Mux24~1_combout\ & (!\Mux10~0_combout\ & ((\Mux24~0_combout\)))) # (\Mux24~1_combout\ & (((\Mux24~0_combout\) # (\A[21]~input_o\)))) ) ) ) # ( !\B[21]~input_o\ & ( \Mux10~2_combout\ & ( 
-- (\Mux24~0_combout\ & ((!\Mux10~0_combout\) # (\Mux24~1_combout\))) ) ) ) # ( \B[21]~input_o\ & ( !\Mux10~2_combout\ & ( (!\Mux24~1_combout\ & (!\Mux10~0_combout\ & ((\Mux24~0_combout\)))) # (\Mux24~1_combout\ & (((\A[21]~input_o\ & !\Mux24~0_combout\)))) 
-- ) ) ) # ( !\B[21]~input_o\ & ( !\Mux10~2_combout\ & ( (!\Mux24~1_combout\ & (!\Mux10~0_combout\ & \Mux24~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000001011000100000000000110111010000010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux24~1_combout\,
	datab => \ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_Mux24~0_combout\,
	datae => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_Mux10~2_combout\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X31_Y3_N6
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \B[22]~input_o\ ) + ( \A[22]~input_o\ ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( \B[22]~input_o\ ) + ( \A[22]~input_o\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X30_Y3_N6
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( !\A[22]~input_o\ $ (\B[22]~input_o\) ) + ( \Add1~87\ ) + ( \Add1~86\ ))
-- \Add1~90\ = CARRY(( !\A[22]~input_o\ $ (\B[22]~input_o\) ) + ( \Add1~87\ ) + ( \Add1~86\ ))
-- \Add1~91\ = SHARE((\A[22]~input_o\ & !\B[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	cin => \Add1~86\,
	sharein => \Add1~87\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\,
	shareout => \Add1~91\);

-- Location: LABCELL_X27_Y3_N24
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( !\opcode[1]~input_o\ & ( \A[22]~input_o\ & ( (!\opcode[0]~input_o\ & (!\Add0~89_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~89_sumout\))) ) ) ) # ( \opcode[1]~input_o\ & ( !\A[22]~input_o\ & ( !\B[22]~input_o\ ) ) ) # ( 
-- !\opcode[1]~input_o\ & ( !\A[22]~input_o\ & ( (!\opcode[0]~input_o\ & (!\Add0~89_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~89_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100011011000111111110000000011011000110110000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_Add0~89_sumout\,
	datac => \ALT_INV_Add1~89_sumout\,
	datad => \ALT_INV_B[22]~input_o\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X30_Y2_N24
\ShiftLeft0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = ( \A[21]~input_o\ & ( \A[19]~input_o\ & ( ((!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\ 
-- & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((\A[20]~input_o\) # (\B[0]~input_o\)))) ) ) ) # ( \A[21]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[22]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\ & 
-- \A[20]~input_o\)))) ) ) ) # ( !\A[21]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \ShiftLeft0~65_combout\);

-- Location: LABCELL_X23_Y3_N45
\ShiftLeft0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = ( \ShiftLeft0~65_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\ShiftLeft0~37_combout\)))) # (\B[2]~input_o\ & (((\ShiftLeft0~25_combout\)))) ) ) # ( !\ShiftLeft0~65_combout\ & ( (!\B[2]~input_o\ & (\B[3]~input_o\ & 
-- ((\ShiftLeft0~37_combout\)))) # (\B[2]~input_o\ & (((\ShiftLeft0~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001110101111001100111010111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftLeft0~25_combout\,
	datac => \ALT_INV_ShiftLeft0~37_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~65_combout\,
	combout => \ShiftLeft0~66_combout\);

-- Location: LABCELL_X23_Y3_N54
\ShiftLeft0~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = ( \ShiftLeft0~53_combout\ & ( (!\ShiftLeft0~44_combout\ & (\ShiftLeft0~46_combout\ & ((\ShiftLeft0~66_combout\)))) # (\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~46_combout\) # ((\ShiftLeft0~14_combout\)))) ) ) # ( 
-- !\ShiftLeft0~53_combout\ & ( (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & ((\ShiftLeft0~66_combout\))) # (\ShiftLeft0~44_combout\ & (\ShiftLeft0~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~44_combout\,
	datab => \ALT_INV_ShiftLeft0~46_combout\,
	datac => \ALT_INV_ShiftLeft0~14_combout\,
	datad => \ALT_INV_ShiftLeft0~66_combout\,
	dataf => \ALT_INV_ShiftLeft0~53_combout\,
	combout => \ShiftLeft0~67_combout\);

-- Location: LABCELL_X27_Y3_N42
\ShiftRight0~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (\ShiftRight0~0_combout\ & \ShiftRight0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight0~14_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: LABCELL_X27_Y3_N9
\ShiftRight1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~77_combout\ = ( \ShiftRight1~51_combout\ & ( (\A[31]~input_o\) # (\ShiftRight0~0_combout\) ) ) # ( !\ShiftRight1~51_combout\ & ( (!\ShiftRight0~0_combout\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftRight1~51_combout\,
	combout => \ShiftRight1~77_combout\);

-- Location: LABCELL_X27_Y3_N0
\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \opcode[1]~input_o\ & ( \LessThan0~32_combout\ & ( (!\opcode[0]~input_o\ & (\ShiftRight0~44_combout\)) # (\opcode[0]~input_o\ & ((\ShiftRight1~77_combout\))) ) ) ) # ( !\opcode[1]~input_o\ & ( \LessThan0~32_combout\ & ( 
-- (!\opcode[0]~input_o\) # (\ShiftLeft0~67_combout\) ) ) ) # ( \opcode[1]~input_o\ & ( !\LessThan0~32_combout\ & ( (!\opcode[0]~input_o\ & (\ShiftRight0~44_combout\)) # (\opcode[0]~input_o\ & ((\ShiftRight1~77_combout\))) ) ) ) # ( !\opcode[1]~input_o\ & ( 
-- !\LessThan0~32_combout\ & ( (\ShiftLeft0~67_combout\ & \opcode[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~67_combout\,
	datab => \ALT_INV_ShiftRight0~44_combout\,
	datac => \ALT_INV_opcode[0]~input_o\,
	datad => \ALT_INV_ShiftRight1~77_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_LessThan0~32_combout\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X27_Y3_N36
\Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \Mux24~1_combout\ & ( \A[22]~input_o\ & ( (!\Mux24~0_combout\ & ((\B[22]~input_o\))) # (\Mux24~0_combout\ & (\Mux9~1_combout\)) ) ) ) # ( !\Mux24~1_combout\ & ( \A[22]~input_o\ & ( (!\Mux9~0_combout\ & \Mux24~0_combout\) ) ) ) # ( 
-- \Mux24~1_combout\ & ( !\A[22]~input_o\ & ( (\Mux24~0_combout\ & \Mux9~1_combout\) ) ) ) # ( !\Mux24~1_combout\ & ( !\A[22]~input_o\ & ( (!\Mux9~0_combout\ & \Mux24~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000110000001100100010001000100000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datab => \ALT_INV_Mux24~0_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \ALT_INV_B[22]~input_o\,
	datae => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LABCELL_X27_Y3_N33
\ShiftRight1~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~78_combout\ = (!\ShiftRight0~0_combout\ & (\A[31]~input_o\)) # (\ShiftRight0~0_combout\ & ((\ShiftRight1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_ShiftRight1~54_combout\,
	combout => \ShiftRight1~78_combout\);

-- Location: LABCELL_X22_Y4_N48
\ShiftRight0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\ShiftRight0~0_combout\ & \ShiftRight0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight0~16_combout\,
	combout => \ShiftRight0~45_combout\);

-- Location: LABCELL_X29_Y3_N48
\ShiftLeft0~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = ( \B[0]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\) # (\A[21]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[23]~input_o\ & ( (\B[1]~input_o\ & \A[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \ShiftLeft0~68_combout\);

-- Location: LABCELL_X23_Y3_N0
\ShiftLeft0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = ( \ShiftLeft0~28_combout\ & ( ((!\B[3]~input_o\ & (\ShiftLeft0~68_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~40_combout\)))) # (\B[2]~input_o\) ) ) # ( !\ShiftLeft0~28_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- (\ShiftLeft0~68_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~40_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~68_combout\,
	datad => \ALT_INV_ShiftLeft0~40_combout\,
	dataf => \ALT_INV_ShiftLeft0~28_combout\,
	combout => \ShiftLeft0~69_combout\);

-- Location: LABCELL_X23_Y3_N57
\ShiftLeft0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = ( \ShiftLeft0~69_combout\ & ( (!\ShiftLeft0~44_combout\ & (\ShiftLeft0~46_combout\)) # (\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~46_combout\ & ((\ShiftLeft0~56_combout\))) # (\ShiftLeft0~46_combout\ & (\ShiftLeft0~17_combout\)))) 
-- ) ) # ( !\ShiftLeft0~69_combout\ & ( (\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~46_combout\ & ((\ShiftLeft0~56_combout\))) # (\ShiftLeft0~46_combout\ & (\ShiftLeft0~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~44_combout\,
	datab => \ALT_INV_ShiftLeft0~46_combout\,
	datac => \ALT_INV_ShiftLeft0~17_combout\,
	datad => \ALT_INV_ShiftLeft0~56_combout\,
	dataf => \ALT_INV_ShiftLeft0~69_combout\,
	combout => \ShiftLeft0~70_combout\);

-- Location: LABCELL_X27_Y3_N48
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \opcode[0]~input_o\ & ( \ShiftLeft0~70_combout\ & ( (!\opcode[1]~input_o\) # (\ShiftRight1~78_combout\) ) ) ) # ( !\opcode[0]~input_o\ & ( \ShiftLeft0~70_combout\ & ( (!\opcode[1]~input_o\ & ((\LessThan0~31_combout\))) # 
-- (\opcode[1]~input_o\ & (\ShiftRight0~45_combout\)) ) ) ) # ( \opcode[0]~input_o\ & ( !\ShiftLeft0~70_combout\ & ( (\ShiftRight1~78_combout\ & \opcode[1]~input_o\) ) ) ) # ( !\opcode[0]~input_o\ & ( !\ShiftLeft0~70_combout\ & ( (!\opcode[1]~input_o\ & 
-- ((\LessThan0~31_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight0~45_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~78_combout\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_ShiftRight0~45_combout\,
	datad => \ALT_INV_LessThan0~31_combout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~70_combout\,
	combout => \Mux8~1_combout\);

-- Location: LABCELL_X30_Y3_N9
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( !\B[23]~input_o\ $ (\A[23]~input_o\) ) + ( \Add1~91\ ) + ( \Add1~90\ ))
-- \Add1~94\ = CARRY(( !\B[23]~input_o\ $ (\A[23]~input_o\) ) + ( \Add1~91\ ) + ( \Add1~90\ ))
-- \Add1~95\ = SHARE((!\B[23]~input_o\ & \A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	cin => \Add1~90\,
	sharein => \Add1~91\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\,
	shareout => \Add1~95\);

-- Location: LABCELL_X31_Y3_N9
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \B[23]~input_o\ ) + ( \A[23]~input_o\ ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \B[23]~input_o\ ) + ( \A[23]~input_o\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X27_Y3_N12
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( !\opcode[1]~input_o\ & ( \B[23]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\Add0~93_sumout\))) # (\opcode[0]~input_o\ & (!\Add1~93_sumout\)) ) ) ) # ( \opcode[1]~input_o\ & ( !\B[23]~input_o\ & ( !\A[23]~input_o\ ) ) ) # ( 
-- !\opcode[1]~input_o\ & ( !\B[23]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\Add0~93_sumout\))) # (\opcode[0]~input_o\ & (!\Add1~93_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001000100111100001111000011101110010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_Add1~93_sumout\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_Add0~93_sumout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X27_Y3_N54
\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \Mux24~1_combout\ & ( \B[23]~input_o\ & ( (!\Mux24~0_combout\ & ((\A[23]~input_o\))) # (\Mux24~0_combout\ & (\Mux8~1_combout\)) ) ) ) # ( !\Mux24~1_combout\ & ( \B[23]~input_o\ & ( (\Mux24~0_combout\ & !\Mux8~0_combout\) ) ) ) # ( 
-- \Mux24~1_combout\ & ( !\B[23]~input_o\ & ( (\Mux8~1_combout\ & \Mux24~0_combout\) ) ) ) # ( !\Mux24~1_combout\ & ( !\B[23]~input_o\ & ( (\Mux24~0_combout\ & !\Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000100010001000100110011000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_Mux24~0_combout\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LABCELL_X29_Y3_N33
\ShiftRight0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\ShiftRight0~0_combout\ & \ShiftRight0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight0~18_combout\,
	combout => \ShiftRight0~46_combout\);

-- Location: LABCELL_X22_Y3_N21
\ShiftRight1~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~79_combout\ = ( \B[3]~input_o\ & ( (!\A[31]~input_o\ & ((!\ShiftRight0~18_combout\) # (!\ShiftRight0~0_combout\))) ) ) # ( !\B[3]~input_o\ & ( (!\ShiftRight0~0_combout\ & (!\A[31]~input_o\)) # (\ShiftRight0~0_combout\ & 
-- ((!\ShiftRight0~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011110000101010101111000010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_ShiftRight0~18_combout\,
	datad => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftRight1~79_combout\);

-- Location: MLABCELL_X25_Y4_N24
\ShiftLeft0~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = ( \A[21]~input_o\ & ( \B[0]~input_o\ & ( (\A[23]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[21]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[23]~input_o\) ) ) ) # ( \A[21]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[24]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) ) # ( !\A[21]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[24]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \ShiftLeft0~71_combout\);

-- Location: LABCELL_X24_Y4_N48
\ShiftLeft0~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = ( \ShiftLeft0~31_combout\ & ( ((!\B[3]~input_o\ & ((\ShiftLeft0~71_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~47_combout\))) # (\B[2]~input_o\) ) ) # ( !\ShiftLeft0~31_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- ((\ShiftLeft0~71_combout\))) # (\B[3]~input_o\ & (\ShiftLeft0~47_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011111111110001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftLeft0~47_combout\,
	datac => \ALT_INV_ShiftLeft0~71_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~72_combout\);

-- Location: LABCELL_X24_Y4_N45
\ShiftLeft0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = ( \ShiftLeft0~20_combout\ & ( (!\ShiftLeft0~46_combout\ & (\ShiftLeft0~44_combout\ & ((\ShiftLeft0~59_combout\)))) # (\ShiftLeft0~46_combout\ & (((\ShiftLeft0~72_combout\)) # (\ShiftLeft0~44_combout\))) ) ) # ( 
-- !\ShiftLeft0~20_combout\ & ( (!\ShiftLeft0~46_combout\ & (\ShiftLeft0~44_combout\ & ((\ShiftLeft0~59_combout\)))) # (\ShiftLeft0~46_combout\ & (!\ShiftLeft0~44_combout\ & (\ShiftLeft0~72_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~46_combout\,
	datab => \ALT_INV_ShiftLeft0~44_combout\,
	datac => \ALT_INV_ShiftLeft0~72_combout\,
	datad => \ALT_INV_ShiftLeft0~59_combout\,
	dataf => \ALT_INV_ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~73_combout\);

-- Location: LABCELL_X29_Y3_N0
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \opcode[0]~input_o\ & ( \opcode[1]~input_o\ & ( !\ShiftRight1~79_combout\ ) ) ) # ( !\opcode[0]~input_o\ & ( \opcode[1]~input_o\ & ( \ShiftRight0~46_combout\ ) ) ) # ( \opcode[0]~input_o\ & ( !\opcode[1]~input_o\ & ( 
-- \ShiftLeft0~73_combout\ ) ) ) # ( !\opcode[0]~input_o\ & ( !\opcode[1]~input_o\ & ( \LessThan0~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~46_combout\,
	datab => \ALT_INV_ShiftRight1~79_combout\,
	datac => \ALT_INV_ShiftLeft0~73_combout\,
	datad => \ALT_INV_LessThan0~30_combout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LABCELL_X30_Y3_N12
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( !\A[24]~input_o\ $ (\B[24]~input_o\) ) + ( \Add1~95\ ) + ( \Add1~94\ ))
-- \Add1~98\ = CARRY(( !\A[24]~input_o\ $ (\B[24]~input_o\) ) + ( \Add1~95\ ) + ( \Add1~94\ ))
-- \Add1~99\ = SHARE((\A[24]~input_o\ & !\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	cin => \Add1~94\,
	sharein => \Add1~95\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\,
	shareout => \Add1~99\);

-- Location: LABCELL_X31_Y3_N12
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \B[24]~input_o\ ) + ( \A[24]~input_o\ ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( \B[24]~input_o\ ) + ( \A[24]~input_o\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X29_Y3_N24
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Add0~97_sumout\ & ( \B[24]~input_o\ & ( (\opcode[0]~input_o\ & (!\Add1~97_sumout\ & !\opcode[1]~input_o\)) ) ) ) # ( !\Add0~97_sumout\ & ( \B[24]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\opcode[0]~input_o\) # (!\Add1~97_sumout\))) ) 
-- ) ) # ( \Add0~97_sumout\ & ( !\B[24]~input_o\ & ( (!\opcode[1]~input_o\ & (\opcode[0]~input_o\ & (!\Add1~97_sumout\))) # (\opcode[1]~input_o\ & (((!\A[24]~input_o\)))) ) ) ) # ( !\Add0~97_sumout\ & ( !\B[24]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- ((!\opcode[0]~input_o\) # ((!\Add1~97_sumout\)))) # (\opcode[1]~input_o\ & (((!\A[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111100000010011110100000011100000111000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_Add1~97_sumout\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_Add0~97_sumout\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X29_Y3_N36
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \Mux24~1_combout\ & ( \B[24]~input_o\ & ( (!\Mux24~0_combout\ & ((\A[24]~input_o\))) # (\Mux24~0_combout\ & (\Mux7~1_combout\)) ) ) ) # ( !\Mux24~1_combout\ & ( \B[24]~input_o\ & ( (!\Mux7~0_combout\ & \Mux24~0_combout\) ) ) ) # ( 
-- \Mux24~1_combout\ & ( !\B[24]~input_o\ & ( (\Mux7~1_combout\ & \Mux24~0_combout\) ) ) ) # ( !\Mux24~1_combout\ & ( !\B[24]~input_o\ & ( (!\Mux7~0_combout\ & \Mux24~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000101010100000000111100000011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~1_combout\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_Mux24~0_combout\,
	datae => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X31_Y3_N15
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \B[25]~input_o\ ) + ( \A[25]~input_o\ ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( \B[25]~input_o\ ) + ( \A[25]~input_o\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: LABCELL_X30_Y3_N15
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( !\A[25]~input_o\ $ (\B[25]~input_o\) ) + ( \Add1~99\ ) + ( \Add1~98\ ))
-- \Add1~102\ = CARRY(( !\A[25]~input_o\ $ (\B[25]~input_o\) ) + ( \Add1~99\ ) + ( \Add1~98\ ))
-- \Add1~103\ = SHARE((\A[25]~input_o\ & !\B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	cin => \Add1~98\,
	sharein => \Add1~99\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\,
	shareout => \Add1~103\);

-- Location: LABCELL_X29_Y3_N42
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \opcode[0]~input_o\ & ( \A[25]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add1~101_sumout\) ) ) ) # ( !\opcode[0]~input_o\ & ( \A[25]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add0~101_sumout\) ) ) ) # ( \opcode[0]~input_o\ & ( 
-- !\A[25]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add1~101_sumout\)) # (\opcode[1]~input_o\ & ((!\B[25]~input_o\))) ) ) ) # ( !\opcode[0]~input_o\ & ( !\A[25]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add0~101_sumout\)) # (\opcode[1]~input_o\ & 
-- ((!\B[25]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110110001000111101011010000010001000100010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_Add0~101_sumout\,
	datac => \ALT_INV_Add1~101_sumout\,
	datad => \ALT_INV_B[25]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X24_Y2_N24
\ShiftLeft0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = ( \A[24]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[23]~input_o\)) # (\B[0]~input_o\ & ((\A[22]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)) # (\A[23]~input_o\))) # (\B[0]~input_o\ & (((\A[22]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( \A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (\A[23]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # 
-- (\A[22]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[25]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[23]~input_o\)) # (\B[0]~input_o\ & ((\A[22]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \ShiftLeft0~74_combout\);

-- Location: LABCELL_X23_Y4_N6
\ShiftLeft0~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = ( \ShiftLeft0~50_combout\ & ( (!\B[2]~input_o\ & (((\ShiftLeft0~74_combout\)) # (\B[3]~input_o\))) # (\B[2]~input_o\ & (((\ShiftLeft0~34_combout\)))) ) ) # ( !\ShiftLeft0~50_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- (\ShiftLeft0~74_combout\))) # (\B[2]~input_o\ & (((\ShiftLeft0~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~74_combout\,
	datad => \ALT_INV_ShiftLeft0~34_combout\,
	dataf => \ALT_INV_ShiftLeft0~50_combout\,
	combout => \ShiftLeft0~75_combout\);

-- Location: LABCELL_X23_Y4_N33
\ShiftLeft0~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = ( \ShiftLeft0~75_combout\ & ( (!\ShiftLeft0~46_combout\ & (\ShiftLeft0~44_combout\ & ((\ShiftLeft0~62_combout\)))) # (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\) # ((\ShiftLeft0~23_combout\)))) ) ) # ( 
-- !\ShiftLeft0~75_combout\ & ( (\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~46_combout\ & ((\ShiftLeft0~62_combout\))) # (\ShiftLeft0~46_combout\ & (\ShiftLeft0~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~46_combout\,
	datab => \ALT_INV_ShiftLeft0~44_combout\,
	datac => \ALT_INV_ShiftLeft0~23_combout\,
	datad => \ALT_INV_ShiftLeft0~62_combout\,
	dataf => \ALT_INV_ShiftLeft0~75_combout\,
	combout => \ShiftLeft0~76_combout\);

-- Location: MLABCELL_X25_Y4_N0
\ShiftRight0~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = ( \ShiftRight0~0_combout\ & ( !\B[3]~input_o\ & ( \ShiftRight0~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~20_combout\,
	datae => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftRight0~47_combout\);

-- Location: LABCELL_X22_Y4_N51
\ShiftRight1~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~80_combout\ = ( \B[3]~input_o\ & ( \A[31]~input_o\ ) ) # ( !\B[3]~input_o\ & ( (!\ShiftRight0~0_combout\ & (\A[31]~input_o\)) # (\ShiftRight0~0_combout\ & ((\ShiftRight0~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftRight0~24_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftRight1~80_combout\);

-- Location: LABCELL_X29_Y3_N18
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \opcode[0]~input_o\ & ( \ShiftRight1~80_combout\ & ( (\ShiftLeft0~76_combout\) # (\opcode[1]~input_o\) ) ) ) # ( !\opcode[0]~input_o\ & ( \ShiftRight1~80_combout\ & ( (!\opcode[1]~input_o\ & ((\LessThan0~29_combout\))) # 
-- (\opcode[1]~input_o\ & (\ShiftRight0~47_combout\)) ) ) ) # ( \opcode[0]~input_o\ & ( !\ShiftRight1~80_combout\ & ( (!\opcode[1]~input_o\ & \ShiftLeft0~76_combout\) ) ) ) # ( !\opcode[0]~input_o\ & ( !\ShiftRight1~80_combout\ & ( (!\opcode[1]~input_o\ & 
-- ((\LessThan0~29_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight0~47_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_ShiftLeft0~76_combout\,
	datac => \ALT_INV_ShiftRight0~47_combout\,
	datad => \ALT_INV_LessThan0~29_combout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_ShiftRight1~80_combout\,
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X29_Y3_N54
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \Mux24~1_combout\ & ( \B[25]~input_o\ & ( (!\Mux24~0_combout\ & (\A[25]~input_o\)) # (\Mux24~0_combout\ & ((\Mux6~1_combout\))) ) ) ) # ( !\Mux24~1_combout\ & ( \B[25]~input_o\ & ( (!\Mux6~0_combout\ & \Mux24~0_combout\) ) ) ) # ( 
-- \Mux24~1_combout\ & ( !\B[25]~input_o\ & ( (\Mux6~1_combout\ & \Mux24~0_combout\) ) ) ) # ( !\Mux24~1_combout\ & ( !\B[25]~input_o\ & ( (!\Mux6~0_combout\ & \Mux24~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000111100000000110011000101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux24~0_combout\,
	datae => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X30_Y3_N18
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( !\B[26]~input_o\ $ (\A[26]~input_o\) ) + ( \Add1~103\ ) + ( \Add1~102\ ))
-- \Add1~106\ = CARRY(( !\B[26]~input_o\ $ (\A[26]~input_o\) ) + ( \Add1~103\ ) + ( \Add1~102\ ))
-- \Add1~107\ = SHARE((!\B[26]~input_o\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	cin => \Add1~102\,
	sharein => \Add1~103\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\,
	shareout => \Add1~107\);

-- Location: LABCELL_X31_Y3_N18
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \B[26]~input_o\ ) + ( \A[26]~input_o\ ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( \B[26]~input_o\ ) + ( \A[26]~input_o\ ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X29_Y2_N6
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\opcode[1]~input_o\ & ( \B[26]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\Add0~105_sumout\))) # (\opcode[0]~input_o\ & (!\Add1~105_sumout\)) ) ) ) # ( \opcode[1]~input_o\ & ( !\B[26]~input_o\ & ( !\A[26]~input_o\ ) ) ) # ( 
-- !\opcode[1]~input_o\ & ( !\B[26]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\Add0~105_sumout\))) # (\opcode[0]~input_o\ & (!\Add1~105_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000110011001100110011111010010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datac => \ALT_INV_Add1~105_sumout\,
	datad => \ALT_INV_Add0~105_sumout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X29_Y2_N42
\ShiftRight1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~81_combout\ = (!\B[3]~input_o\ & ((!\ShiftRight0~0_combout\ & ((\A[31]~input_o\))) # (\ShiftRight0~0_combout\ & (\ShiftRight0~31_combout\)))) # (\B[3]~input_o\ & (((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight0~31_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~81_combout\);

-- Location: LABCELL_X29_Y2_N45
\ShiftRight0~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (!\B[3]~input_o\ & (\ShiftRight0~0_combout\ & \ShiftRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight0~27_combout\,
	combout => \ShiftRight0~48_combout\);

-- Location: LABCELL_X24_Y2_N30
\ShiftLeft0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = ( \B[0]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\) # (\A[23]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\ & ((\A[26]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[25]~input_o\ & ( (\B[1]~input_o\ & \A[23]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & ((\A[26]~input_o\))) # (\B[1]~input_o\ & (\A[24]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000110000001100010001110111011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \ShiftLeft0~77_combout\);

-- Location: LABCELL_X23_Y3_N33
\ShiftLeft0~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = ( \ShiftLeft0~37_combout\ & ( ((!\B[3]~input_o\ & (\ShiftLeft0~77_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~53_combout\)))) # (\B[2]~input_o\) ) ) # ( !\ShiftLeft0~37_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- (\ShiftLeft0~77_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~53_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~77_combout\,
	datad => \ALT_INV_ShiftLeft0~53_combout\,
	dataf => \ALT_INV_ShiftLeft0~37_combout\,
	combout => \ShiftLeft0~78_combout\);

-- Location: LABCELL_X23_Y4_N45
\ShiftLeft0~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~79_combout\ = ( \ShiftLeft0~65_combout\ & ( (!\ShiftLeft0~46_combout\ & (\ShiftLeft0~44_combout\)) # (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & ((\ShiftLeft0~78_combout\))) # (\ShiftLeft0~44_combout\ & (\ShiftLeft0~26_combout\)))) 
-- ) ) # ( !\ShiftLeft0~65_combout\ & ( (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & ((\ShiftLeft0~78_combout\))) # (\ShiftLeft0~44_combout\ & (\ShiftLeft0~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~46_combout\,
	datab => \ALT_INV_ShiftLeft0~44_combout\,
	datac => \ALT_INV_ShiftLeft0~26_combout\,
	datad => \ALT_INV_ShiftLeft0~78_combout\,
	dataf => \ALT_INV_ShiftLeft0~65_combout\,
	combout => \ShiftLeft0~79_combout\);

-- Location: LABCELL_X29_Y2_N30
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & ((!\A[26]~input_o\ $ (((!\B[26]~input_o\)))))) # (\opcode[0]~input_o\ & ((((\ShiftLeft0~79_combout\))))) ) ) # ( \opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & 
-- (((\ShiftRight0~48_combout\)))) # (\opcode[0]~input_o\ & (\ShiftRight1~81_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101110100000111101010001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_ShiftRight1~81_combout\,
	datac => \ALT_INV_ShiftRight0~48_combout\,
	datad => \ALT_INV_ShiftLeft0~79_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	datag => \ALT_INV_A[26]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X29_Y2_N48
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Mux24~0_combout\ & ( \A[26]~input_o\ & ( (!\Mux24~1_combout\ & (!\Mux5~0_combout\)) # (\Mux24~1_combout\ & ((\Mux5~2_combout\))) ) ) ) # ( !\Mux24~0_combout\ & ( \A[26]~input_o\ & ( (\B[26]~input_o\ & \Mux24~1_combout\) ) ) ) # ( 
-- \Mux24~0_combout\ & ( !\A[26]~input_o\ & ( (!\Mux24~1_combout\ & (!\Mux5~0_combout\)) # (\Mux24~1_combout\ & ((\Mux5~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100111100000101000001011100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_Mux5~2_combout\,
	datae => \ALT_INV_Mux24~0_combout\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X22_Y3_N39
\ShiftRight1~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~82_combout\ = ( \A[31]~input_o\ & ( (!\ShiftRight0~0_combout\) # (\ShiftRight1~61_combout\) ) ) # ( !\A[31]~input_o\ & ( (\ShiftRight0~0_combout\ & \ShiftRight1~61_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight1~61_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~82_combout\);

-- Location: LABCELL_X22_Y3_N36
\ShiftRight0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = ( !\B[3]~input_o\ & ( (\ShiftRight0~0_combout\ & \ShiftRight0~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight0~32_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \ShiftRight0~49_combout\);

-- Location: LABCELL_X24_Y2_N6
\ShiftLeft0~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~80_combout\ = ( \A[24]~input_o\ & ( \A[26]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[24]~input_o\ & ( \A[26]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[24]~input_o\ & ( !\A[26]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[27]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[25]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[26]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \ShiftLeft0~80_combout\);

-- Location: LABCELL_X22_Y3_N30
\ShiftLeft0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~81_combout\ = ( \ShiftLeft0~40_combout\ & ( ((!\B[3]~input_o\ & (\ShiftLeft0~80_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~56_combout\)))) # (\B[2]~input_o\) ) ) # ( !\ShiftLeft0~40_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- (\ShiftLeft0~80_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~56_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~80_combout\,
	datad => \ALT_INV_ShiftLeft0~56_combout\,
	dataf => \ALT_INV_ShiftLeft0~40_combout\,
	combout => \ShiftLeft0~81_combout\);

-- Location: LABCELL_X22_Y3_N12
\ShiftLeft0~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~82_combout\ = ( \ShiftLeft0~68_combout\ & ( (!\ShiftLeft0~44_combout\ & (((\ShiftLeft0~81_combout\ & \ShiftLeft0~46_combout\)))) # (\ShiftLeft0~44_combout\ & (((!\ShiftLeft0~46_combout\)) # (\ShiftLeft0~29_combout\))) ) ) # ( 
-- !\ShiftLeft0~68_combout\ & ( (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & ((\ShiftLeft0~81_combout\))) # (\ShiftLeft0~44_combout\ & (\ShiftLeft0~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010100001111001101010000111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~29_combout\,
	datab => \ALT_INV_ShiftLeft0~81_combout\,
	datac => \ALT_INV_ShiftLeft0~44_combout\,
	datad => \ALT_INV_ShiftLeft0~46_combout\,
	dataf => \ALT_INV_ShiftLeft0~68_combout\,
	combout => \ShiftLeft0~82_combout\);

-- Location: LABCELL_X22_Y3_N0
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( !\opcode[1]~input_o\ & ( ((!\opcode[0]~input_o\ & (!\B[27]~input_o\ $ ((!\A[27]~input_o\)))) # (\opcode[0]~input_o\ & (((\ShiftLeft0~82_combout\))))) ) ) # ( \opcode[1]~input_o\ & ( (((!\opcode[0]~input_o\ & 
-- ((\ShiftRight0~49_combout\))) # (\opcode[0]~input_o\ & (\ShiftRight1~82_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101101001011010000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_ShiftRight1~82_combout\,
	datac => \ALT_INV_ShiftRight0~49_combout\,
	datad => \ALT_INV_ShiftLeft0~82_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	datag => \ALT_INV_A[27]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LABCELL_X30_Y3_N21
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( !\A[27]~input_o\ $ (\B[27]~input_o\) ) + ( \Add1~107\ ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( !\A[27]~input_o\ $ (\B[27]~input_o\) ) + ( \Add1~107\ ) + ( \Add1~106\ ))
-- \Add1~111\ = SHARE((\A[27]~input_o\ & !\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	cin => \Add1~106\,
	sharein => \Add1~107\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\,
	shareout => \Add1~111\);

-- Location: LABCELL_X31_Y3_N21
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \B[27]~input_o\ ) + ( \A[27]~input_o\ ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( \B[27]~input_o\ ) + ( \A[27]~input_o\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X22_Y3_N54
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( (!\A[27]~input_o\ & !\B[27]~input_o\) ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( !\Add1~109_sumout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( 
-- (!\A[27]~input_o\ & !\B[27]~input_o\) ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( !\Add0~109_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000110000001100000010101010101010101100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~109_sumout\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_Add0~109_sumout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X22_Y3_N42
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Mux24~1_combout\ & ( \Mux24~0_combout\ & ( \Mux4~2_combout\ ) ) ) # ( !\Mux24~1_combout\ & ( \Mux24~0_combout\ & ( !\Mux4~0_combout\ ) ) ) # ( \Mux24~1_combout\ & ( !\Mux24~0_combout\ & ( (\B[27]~input_o\ & \A[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000111111111000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_Mux4~2_combout\,
	datad => \ALT_INV_Mux4~0_combout\,
	datae => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_Mux24~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X24_Y2_N42
\ShiftLeft0~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~83_combout\ = ( \A[28]~input_o\ & ( \A[26]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\))) ) ) ) # ( !\A[28]~input_o\ & ( \A[26]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)))) ) ) ) # ( \A[28]~input_o\ & ( !\A[26]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)))) ) ) ) # ( !\A[28]~input_o\ & ( !\A[26]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[27]~input_o\))) # (\B[1]~input_o\ & (\A[25]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \ShiftLeft0~83_combout\);

-- Location: LABCELL_X24_Y4_N51
\ShiftLeft0~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~84_combout\ = ( \B[2]~input_o\ & ( \ShiftLeft0~47_combout\ ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\ShiftLeft0~83_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~59_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftLeft0~47_combout\,
	datac => \ALT_INV_ShiftLeft0~83_combout\,
	datad => \ALT_INV_ShiftLeft0~59_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \ShiftLeft0~84_combout\);

-- Location: MLABCELL_X25_Y4_N9
\ShiftLeft0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~85_combout\ = ( \ShiftLeft0~44_combout\ & ( \ShiftLeft0~71_combout\ & ( (!\ShiftLeft0~46_combout\) # (\ShiftLeft0~32_combout\) ) ) ) # ( !\ShiftLeft0~44_combout\ & ( \ShiftLeft0~71_combout\ & ( (\ShiftLeft0~46_combout\ & 
-- \ShiftLeft0~84_combout\) ) ) ) # ( \ShiftLeft0~44_combout\ & ( !\ShiftLeft0~71_combout\ & ( (\ShiftLeft0~46_combout\ & \ShiftLeft0~32_combout\) ) ) ) # ( !\ShiftLeft0~44_combout\ & ( !\ShiftLeft0~71_combout\ & ( (\ShiftLeft0~46_combout\ & 
-- \ShiftLeft0~84_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000001010000010100000000010101011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~46_combout\,
	datac => \ALT_INV_ShiftLeft0~32_combout\,
	datad => \ALT_INV_ShiftLeft0~84_combout\,
	datae => \ALT_INV_ShiftLeft0~44_combout\,
	dataf => \ALT_INV_ShiftLeft0~71_combout\,
	combout => \ShiftLeft0~85_combout\);

-- Location: LABCELL_X22_Y5_N9
\ShiftRight1~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~83_combout\ = ( \A[31]~input_o\ & ( (!\ShiftRight0~0_combout\) # ((!\Equal1~0_combout\) # (\ShiftRight1~3_combout\)) ) ) # ( !\A[31]~input_o\ & ( (\ShiftRight0~0_combout\ & (\Equal1~0_combout\ & \ShiftRight1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ShiftRight1~3_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \ShiftRight1~83_combout\);

-- Location: MLABCELL_X25_Y3_N48
\ShiftRight0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\Equal1~0_combout\ & (\ShiftRight0~0_combout\ & \ShiftRight1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datad => \ALT_INV_ShiftRight1~3_combout\,
	combout => \ShiftRight0~50_combout\);

-- Location: MLABCELL_X28_Y4_N0
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( !\opcode[1]~input_o\ & ( ((!\opcode[0]~input_o\ & ((!\A[28]~input_o\ $ (!\B[28]~input_o\)))) # (\opcode[0]~input_o\ & (\ShiftLeft0~85_combout\))) ) ) # ( \opcode[1]~input_o\ & ( (((!\opcode[0]~input_o\ & ((\ShiftRight0~50_combout\))) 
-- # (\opcode[0]~input_o\ & (\ShiftRight1~83_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111110000000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~85_combout\,
	datab => \ALT_INV_ShiftRight1~83_combout\,
	datac => \ALT_INV_ShiftRight0~50_combout\,
	datad => \ALT_INV_B[28]~input_o\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	datag => \ALT_INV_A[28]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LABCELL_X31_Y3_N24
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \A[28]~input_o\ ) + ( \B[28]~input_o\ ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( \A[28]~input_o\ ) + ( \B[28]~input_o\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X30_Y3_N24
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( !\A[28]~input_o\ $ (\B[28]~input_o\) ) + ( \Add1~111\ ) + ( \Add1~110\ ))
-- \Add1~114\ = CARRY(( !\A[28]~input_o\ $ (\B[28]~input_o\) ) + ( \Add1~111\ ) + ( \Add1~110\ ))
-- \Add1~115\ = SHARE((\A[28]~input_o\ & !\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_B[28]~input_o\,
	cin => \Add1~110\,
	sharein => \Add1~111\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\,
	shareout => \Add1~115\);

-- Location: MLABCELL_X28_Y4_N12
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \A[28]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & !\Add1~113_sumout\) ) ) ) # ( !\A[28]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add1~113_sumout\)) # (\opcode[1]~input_o\ & 
-- ((!\B[28]~input_o\))) ) ) ) # ( \A[28]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\Add0~113_sumout\ & !\opcode[1]~input_o\) ) ) ) # ( !\A[28]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & (!\Add0~113_sumout\)) # (\opcode[1]~input_o\ & 
-- ((!\B[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110001000100010001000100011110011110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~113_sumout\,
	datab => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_Add1~113_sumout\,
	datad => \ALT_INV_B[28]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X28_Y4_N18
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \A[28]~input_o\ & ( \B[28]~input_o\ & ( (!\Mux24~0_combout\ & (((\Mux24~1_combout\)))) # (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & ((!\Mux3~0_combout\))) # (\Mux24~1_combout\ & (\Mux3~2_combout\)))) ) ) ) # ( !\A[28]~input_o\ & ( 
-- \B[28]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & ((!\Mux3~0_combout\))) # (\Mux24~1_combout\ & (\Mux3~2_combout\)))) ) ) ) # ( \A[28]~input_o\ & ( !\B[28]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & ((!\Mux3~0_combout\))) # 
-- (\Mux24~1_combout\ & (\Mux3~2_combout\)))) ) ) ) # ( !\A[28]~input_o\ & ( !\B[28]~input_o\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\ & ((!\Mux3~0_combout\))) # (\Mux24~1_combout\ & (\Mux3~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000001001100010000000100110001000000010011110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~2_combout\,
	datab => \ALT_INV_Mux24~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X24_Y2_N48
\ShiftLeft0~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~86_combout\ = ( \B[1]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[27]~input_o\))) # (\B[0]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[28]~input_o\ & ( (\A[29]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & ((\A[27]~input_o\))) # (\B[0]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & \A[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[26]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \ShiftLeft0~86_combout\);

-- Location: LABCELL_X23_Y4_N9
\ShiftLeft0~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~87_combout\ = ( \ShiftLeft0~50_combout\ & ( ((!\B[3]~input_o\ & (\ShiftLeft0~86_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~62_combout\)))) # (\B[2]~input_o\) ) ) # ( !\ShiftLeft0~50_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- (\ShiftLeft0~86_combout\)) # (\B[3]~input_o\ & ((\ShiftLeft0~62_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~86_combout\,
	datad => \ALT_INV_ShiftLeft0~62_combout\,
	dataf => \ALT_INV_ShiftLeft0~50_combout\,
	combout => \ShiftLeft0~87_combout\);

-- Location: LABCELL_X23_Y4_N42
\ShiftLeft0~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~88_combout\ = ( \ShiftLeft0~87_combout\ & ( (!\ShiftLeft0~46_combout\ & (\ShiftLeft0~44_combout\ & ((\ShiftLeft0~74_combout\)))) # (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\) # ((\ShiftLeft0~35_combout\)))) ) ) # ( 
-- !\ShiftLeft0~87_combout\ & ( (\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~46_combout\ & ((\ShiftLeft0~74_combout\))) # (\ShiftLeft0~46_combout\ & (\ShiftLeft0~35_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~46_combout\,
	datab => \ALT_INV_ShiftLeft0~44_combout\,
	datac => \ALT_INV_ShiftLeft0~35_combout\,
	datad => \ALT_INV_ShiftLeft0~74_combout\,
	dataf => \ALT_INV_ShiftLeft0~87_combout\,
	combout => \ShiftLeft0~88_combout\);

-- Location: LABCELL_X22_Y5_N6
\ShiftRight0~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\ShiftRight0~0_combout\ & (\Equal1~0_combout\ & \ShiftRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ShiftRight0~1_combout\,
	combout => \ShiftRight0~51_combout\);

-- Location: MLABCELL_X21_Y3_N6
\ShiftRight1~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~84_combout\ = ( \ShiftRight1~19_combout\ & ( ((\ShiftRight0~0_combout\ & \Equal1~0_combout\)) # (\A[31]~input_o\) ) ) # ( !\ShiftRight1~19_combout\ & ( (\A[31]~input_o\ & ((!\ShiftRight0~0_combout\) # (!\Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_ShiftRight1~19_combout\,
	combout => \ShiftRight1~84_combout\);

-- Location: MLABCELL_X25_Y3_N30
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \ShiftRight1~84_combout\ & ( \opcode[0]~input_o\ & ( (\ShiftLeft0~88_combout\) # (\opcode[1]~input_o\) ) ) ) # ( !\ShiftRight1~84_combout\ & ( \opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & \ShiftLeft0~88_combout\) ) ) ) # ( 
-- \ShiftRight1~84_combout\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & ((\LessThan0~1_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight0~51_combout\)) ) ) ) # ( !\ShiftRight1~84_combout\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & 
-- ((\LessThan0~1_combout\))) # (\opcode[1]~input_o\ & (\ShiftRight0~51_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_ShiftLeft0~88_combout\,
	datac => \ALT_INV_ShiftRight0~51_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_ShiftRight1~84_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X31_Y3_N27
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \B[29]~input_o\ ) + ( \A[29]~input_o\ ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \B[29]~input_o\ ) + ( \A[29]~input_o\ ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: LABCELL_X30_Y3_N27
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( !\A[29]~input_o\ $ (\B[29]~input_o\) ) + ( \Add1~115\ ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( !\A[29]~input_o\ $ (\B[29]~input_o\) ) + ( \Add1~115\ ) + ( \Add1~114\ ))
-- \Add1~119\ = SHARE((\A[29]~input_o\ & !\B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	cin => \Add1~114\,
	sharein => \Add1~115\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\,
	shareout => \Add1~119\);

-- Location: MLABCELL_X25_Y3_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \A[29]~input_o\ & ( \B[29]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\opcode[0]~input_o\ & (!\Add0~117_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~117_sumout\))))) ) ) ) # ( !\A[29]~input_o\ & ( \B[29]~input_o\ & ( (!\opcode[1]~input_o\ 
-- & ((!\opcode[0]~input_o\ & (!\Add0~117_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~117_sumout\))))) ) ) ) # ( \A[29]~input_o\ & ( !\B[29]~input_o\ & ( (!\opcode[1]~input_o\ & ((!\opcode[0]~input_o\ & (!\Add0~117_sumout\)) # (\opcode[0]~input_o\ & 
-- ((!\Add1~117_sumout\))))) ) ) ) # ( !\A[29]~input_o\ & ( !\B[29]~input_o\ & ( ((!\opcode[0]~input_o\ & (!\Add0~117_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~117_sumout\)))) # (\opcode[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111110101100010001010000010001000101000001000100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_Add0~117_sumout\,
	datac => \ALT_INV_Add1~117_sumout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X25_Y3_N36
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \A[29]~input_o\ & ( \Mux24~0_combout\ & ( (!\Mux24~1_combout\ & ((!\Mux2~0_combout\))) # (\Mux24~1_combout\ & (\Mux2~1_combout\)) ) ) ) # ( !\A[29]~input_o\ & ( \Mux24~0_combout\ & ( (!\Mux24~1_combout\ & ((!\Mux2~0_combout\))) # 
-- (\Mux24~1_combout\ & (\Mux2~1_combout\)) ) ) ) # ( \A[29]~input_o\ & ( !\Mux24~0_combout\ & ( (\B[29]~input_o\ & \Mux24~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010111110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datab => \ALT_INV_Mux2~1_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_Mux24~1_combout\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_Mux24~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X25_Y3_N51
\ShiftRight0~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\Equal1~0_combout\ & (\ShiftRight0~0_combout\ & \ShiftRight0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight0~4_combout\,
	combout => \ShiftRight0~52_combout\);

-- Location: MLABCELL_X21_Y3_N9
\ShiftRight1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight1~85_combout\ = ( \Equal1~0_combout\ & ( (!\ShiftRight0~0_combout\ & (\A[31]~input_o\)) # (\ShiftRight0~0_combout\ & ((\ShiftRight1~31_combout\))) ) ) # ( !\Equal1~0_combout\ & ( \A[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftRight1~31_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \ShiftRight1~85_combout\);

-- Location: MLABCELL_X21_Y3_N12
\ShiftLeft0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~89_combout\ = ( \A[29]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[28]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\)) ) ) ) # ( !\A[29]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[28]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[27]~input_o\)) ) ) ) # ( \A[29]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[30]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( !\B[1]~input_o\ & ( (\A[30]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftLeft0~89_combout\);

-- Location: LABCELL_X23_Y3_N12
\ShiftLeft0~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~90_combout\ = ( \ShiftLeft0~65_combout\ & ( (!\B[2]~input_o\ & (((\ShiftLeft0~89_combout\)) # (\B[3]~input_o\))) # (\B[2]~input_o\ & (((\ShiftLeft0~53_combout\)))) ) ) # ( !\ShiftLeft0~65_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- (\ShiftLeft0~89_combout\))) # (\B[2]~input_o\ & (((\ShiftLeft0~53_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~89_combout\,
	datad => \ALT_INV_ShiftLeft0~53_combout\,
	dataf => \ALT_INV_ShiftLeft0~65_combout\,
	combout => \ShiftLeft0~90_combout\);

-- Location: LABCELL_X24_Y3_N6
\ShiftLeft0~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~91_combout\ = ( \ShiftLeft0~77_combout\ & ( (!\ShiftLeft0~44_combout\ & (\ShiftLeft0~46_combout\ & ((\ShiftLeft0~90_combout\)))) # (\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~46_combout\) # ((\ShiftLeft0~38_combout\)))) ) ) # ( 
-- !\ShiftLeft0~77_combout\ & ( (\ShiftLeft0~46_combout\ & ((!\ShiftLeft0~44_combout\ & ((\ShiftLeft0~90_combout\))) # (\ShiftLeft0~44_combout\ & (\ShiftLeft0~38_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~44_combout\,
	datab => \ALT_INV_ShiftLeft0~46_combout\,
	datac => \ALT_INV_ShiftLeft0~38_combout\,
	datad => \ALT_INV_ShiftLeft0~90_combout\,
	dataf => \ALT_INV_ShiftLeft0~77_combout\,
	combout => \ShiftLeft0~91_combout\);

-- Location: MLABCELL_X25_Y3_N18
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \opcode[1]~input_o\ & ( \ShiftLeft0~91_combout\ & ( (!\opcode[0]~input_o\ & (\ShiftRight0~52_combout\)) # (\opcode[0]~input_o\ & ((\ShiftRight1~85_combout\))) ) ) ) # ( !\opcode[1]~input_o\ & ( \ShiftLeft0~91_combout\ & ( 
-- (\opcode[0]~input_o\) # (\LessThan0~0_combout\) ) ) ) # ( \opcode[1]~input_o\ & ( !\ShiftLeft0~91_combout\ & ( (!\opcode[0]~input_o\ & (\ShiftRight0~52_combout\)) # (\opcode[0]~input_o\ & ((\ShiftRight1~85_combout\))) ) ) ) # ( !\opcode[1]~input_o\ & ( 
-- !\ShiftLeft0~91_combout\ & ( (\LessThan0~0_combout\ & !\opcode[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~52_combout\,
	datab => \ALT_INV_ShiftRight1~85_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~91_combout\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X31_Y3_N30
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \B[30]~input_o\ ) + ( \A[30]~input_o\ ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( \B[30]~input_o\ ) + ( \A[30]~input_o\ ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: LABCELL_X30_Y3_N30
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( !\A[30]~input_o\ $ (\B[30]~input_o\) ) + ( \Add1~119\ ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( !\A[30]~input_o\ $ (\B[30]~input_o\) ) + ( \Add1~119\ ) + ( \Add1~118\ ))
-- \Add1~123\ = SHARE((\A[30]~input_o\ & !\B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	cin => \Add1~118\,
	sharein => \Add1~119\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\,
	shareout => \Add1~123\);

-- Location: MLABCELL_X25_Y3_N12
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( (!\A[30]~input_o\ & !\B[30]~input_o\) ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[0]~input_o\ & ( !\Add1~121_sumout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( 
-- (!\A[30]~input_o\ & !\B[30]~input_o\) ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[0]~input_o\ & ( !\Add0~121_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111100000000000011001100110011001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add1~121_sumout\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X25_Y3_N54
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \B[30]~input_o\ & ( \Mux24~0_combout\ & ( (!\Mux24~1_combout\ & ((!\Mux1~0_combout\))) # (\Mux24~1_combout\ & (\Mux1~1_combout\)) ) ) ) # ( !\B[30]~input_o\ & ( \Mux24~0_combout\ & ( (!\Mux24~1_combout\ & ((!\Mux1~0_combout\))) # 
-- (\Mux24~1_combout\ & (\Mux1~1_combout\)) ) ) ) # ( \B[30]~input_o\ & ( !\Mux24~0_combout\ & ( (\A[30]~input_o\ & \Mux24~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111001100010101011100110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~1_combout\,
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_Mux24~1_combout\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_Mux24~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: MLABCELL_X21_Y3_N18
\ShiftLeft0~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~92_combout\ = ( \A[29]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[28]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \A[28]~input_o\) ) ) ) # ( \A[29]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((\A[31]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( !\A[29]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[31]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \ShiftLeft0~92_combout\);

-- Location: LABCELL_X22_Y3_N33
\ShiftLeft0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~93_combout\ = ( \ShiftLeft0~68_combout\ & ( (!\B[2]~input_o\ & (((\ShiftLeft0~92_combout\)) # (\B[3]~input_o\))) # (\B[2]~input_o\ & (((\ShiftLeft0~56_combout\)))) ) ) # ( !\ShiftLeft0~68_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & 
-- (\ShiftLeft0~92_combout\))) # (\B[2]~input_o\ & (((\ShiftLeft0~56_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~92_combout\,
	datad => \ALT_INV_ShiftLeft0~56_combout\,
	dataf => \ALT_INV_ShiftLeft0~68_combout\,
	combout => \ShiftLeft0~93_combout\);

-- Location: LABCELL_X24_Y3_N9
\ShiftLeft0~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~94_combout\ = ( \ShiftLeft0~41_combout\ & ( (!\ShiftLeft0~44_combout\ & (\ShiftLeft0~46_combout\ & (\ShiftLeft0~93_combout\))) # (\ShiftLeft0~44_combout\ & (((\ShiftLeft0~80_combout\)) # (\ShiftLeft0~46_combout\))) ) ) # ( 
-- !\ShiftLeft0~41_combout\ & ( (!\ShiftLeft0~44_combout\ & (\ShiftLeft0~46_combout\ & (\ShiftLeft0~93_combout\))) # (\ShiftLeft0~44_combout\ & (!\ShiftLeft0~46_combout\ & ((\ShiftLeft0~80_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~44_combout\,
	datab => \ALT_INV_ShiftLeft0~46_combout\,
	datac => \ALT_INV_ShiftLeft0~93_combout\,
	datad => \ALT_INV_ShiftLeft0~80_combout\,
	dataf => \ALT_INV_ShiftLeft0~41_combout\,
	combout => \ShiftLeft0~94_combout\);

-- Location: LABCELL_X22_Y5_N30
\ShiftRight0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\ShiftRight0~0_combout\ & (\Equal1~0_combout\ & \ShiftRight0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ShiftRight0~7_combout\,
	combout => \ShiftRight0~53_combout\);

-- Location: MLABCELL_X28_Y3_N6
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \B[31]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & ((\ShiftRight0~53_combout\))) # (\opcode[0]~input_o\ & (\A[31]~input_o\)) ) ) ) # ( !\B[31]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & 
-- ((\ShiftRight0~53_combout\))) # (\opcode[0]~input_o\ & (\A[31]~input_o\)) ) ) ) # ( \B[31]~input_o\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & (!\A[31]~input_o\)) # (\opcode[0]~input_o\ & ((\ShiftLeft0~94_combout\))) ) ) ) # ( !\B[31]~input_o\ & 
-- ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & (\A[31]~input_o\)) # (\opcode[0]~input_o\ & ((\ShiftLeft0~94_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011101010100011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftLeft0~94_combout\,
	datac => \ALT_INV_ShiftRight0~53_combout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LABCELL_X31_Y3_N33
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( \B[31]~input_o\ ) + ( \A[31]~input_o\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\);

-- Location: LABCELL_X30_Y3_N33
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( !\A[31]~input_o\ $ (\B[31]~input_o\) ) + ( \Add1~123\ ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	cin => \Add1~122\,
	sharein => \Add1~123\,
	sumout => \Add1~125_sumout\);

-- Location: MLABCELL_X28_Y3_N30
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\B[31]~input_o\ & ( \opcode[1]~input_o\ & ( !\A[31]~input_o\ ) ) ) # ( \B[31]~input_o\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & (!\Add0~125_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~125_sumout\))) ) ) ) # ( 
-- !\B[31]~input_o\ & ( !\opcode[1]~input_o\ & ( (!\opcode[0]~input_o\ & (!\Add0~125_sumout\)) # (\opcode[0]~input_o\ & ((!\Add1~125_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011001100101010101100110011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~125_sumout\,
	datab => \ALT_INV_Add1~125_sumout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X28_Y3_N42
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \B[31]~input_o\ & ( \Mux0~0_combout\ & ( (\Mux24~1_combout\ & ((!\Mux24~0_combout\ & ((\A[31]~input_o\))) # (\Mux24~0_combout\ & (\Mux0~1_combout\)))) ) ) ) # ( !\B[31]~input_o\ & ( \Mux0~0_combout\ & ( (\Mux24~1_combout\ & 
-- (\Mux0~1_combout\ & \Mux24~0_combout\)) ) ) ) # ( \B[31]~input_o\ & ( !\Mux0~0_combout\ & ( (!\Mux24~1_combout\ & (((\Mux24~0_combout\)))) # (\Mux24~1_combout\ & ((!\Mux24~0_combout\ & ((\A[31]~input_o\))) # (\Mux24~0_combout\ & (\Mux0~1_combout\)))) ) ) 
-- ) # ( !\B[31]~input_o\ & ( !\Mux0~0_combout\ & ( (\Mux24~0_combout\ & ((!\Mux24~1_combout\) # (\Mux0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000001011011101100000000000100010000010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux24~1_combout\,
	datab => \ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_Mux24~0_combout\,
	datae => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LABCELL_X29_Y5_N0
\Mux31~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~12_combout\ = ( !\A[7]~input_o\ & ( (!\A[8]~input_o\ & (!\A[9]~input_o\ & (!\A[6]~input_o\ & !\A[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Mux31~12_combout\);

-- Location: MLABCELL_X21_Y3_N57
\Mux31~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~14_combout\ = ( !\B[1]~input_o\ & ( (!\A[30]~input_o\ & (!\B[0]~input_o\ & (!\B[31]~input_o\ & !\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux31~14_combout\);

-- Location: LABCELL_X27_Y4_N57
\Mux31~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~13_combout\ = ( !\A[3]~input_o\ & ( (!\A[1]~input_o\ & (!\A[2]~input_o\ & (!\A[0]~input_o\ & !\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Mux31~13_combout\);

-- Location: LABCELL_X30_Y5_N30
\Mux31~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~15_combout\ = ( \Mux31~13_combout\ & ( (\Mux31~12_combout\ & (\Mux31~14_combout\ & (!\A[11]~input_o\ & !\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux31~12_combout\,
	datab => \ALT_INV_Mux31~14_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_Mux31~13_combout\,
	combout => \Mux31~15_combout\);

-- Location: LABCELL_X29_Y1_N24
\Mux31~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~10_combout\ = ( !\A[21]~input_o\ & ( !\A[23]~input_o\ & ( (!\A[20]~input_o\ & (!\A[18]~input_o\ & (!\A[22]~input_o\ & !\A[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Mux31~10_combout\);

-- Location: LABCELL_X24_Y2_N54
\Mux31~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = ( !\A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\A[28]~input_o\ & (!\A[27]~input_o\ & (!\A[26]~input_o\ & !\A[29]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Mux31~9_combout\);

-- Location: LABCELL_X33_Y3_N24
\Mux31~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~11_combout\ = ( !\A[14]~input_o\ & ( !\A[12]~input_o\ & ( (!\A[16]~input_o\ & (!\A[17]~input_o\ & (!\A[15]~input_o\ & !\A[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Mux31~11_combout\);

-- Location: LABCELL_X24_Y3_N12
\Mux31~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~16_combout\ = ( \Mux31~9_combout\ & ( \Mux31~11_combout\ & ( (\Mux31~15_combout\ & (\Equal1~0_combout\ & (\Mux31~10_combout\ & \ShiftRight0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux31~15_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Mux31~10_combout\,
	datad => \ALT_INV_ShiftRight0~0_combout\,
	datae => \ALT_INV_Mux31~9_combout\,
	dataf => \ALT_INV_Mux31~11_combout\,
	combout => \Mux31~16_combout\);

-- Location: LABCELL_X22_Y3_N18
\zero~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~13_combout\ = ( \B[4]~input_o\ & ( (!\A[31]~input_o\ & ((!\Equal1~6_combout\) # (!\ShiftRight1~45_combout\))) ) ) # ( !\B[4]~input_o\ & ( (!\Equal1~6_combout\ & (!\A[31]~input_o\)) # (\Equal1~6_combout\ & (((!\ShiftRight1~44_combout\ & 
-- !\ShiftRight1~45_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110010100000101011001010000010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftRight1~44_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_ShiftRight1~45_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \zero~13_combout\);

-- Location: MLABCELL_X21_Y3_N24
\zero~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~15_combout\ = ( \ShiftRight1~31_combout\ & ( \opcode[0]~input_o\ & ( (!\A[31]~input_o\ & ((!\ShiftRight0~0_combout\) # (!\Equal1~0_combout\))) ) ) ) # ( !\ShiftRight1~31_combout\ & ( \opcode[0]~input_o\ & ( (!\A[31]~input_o\ & 
-- ((!\ShiftRight0~0_combout\) # ((!\ShiftRight1~19_combout\) # (!\Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_ShiftRight1~19_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_ShiftRight1~31_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \zero~15_combout\);

-- Location: LABCELL_X22_Y3_N48
\zero~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~14_combout\ = ( !\ShiftRight1~38_combout\ & ( \A[31]~input_o\ & ( (\Equal1~6_combout\ & (!\ShiftRight1~61_combout\ & (!\ShiftRight1~42_combout\ & !\B[4]~input_o\))) ) ) ) # ( \ShiftRight1~38_combout\ & ( !\A[31]~input_o\ & ( (!\Equal1~6_combout\) # 
-- ((!\ShiftRight1~42_combout\ & \B[4]~input_o\)) ) ) ) # ( !\ShiftRight1~38_combout\ & ( !\A[31]~input_o\ & ( (!\Equal1~6_combout\) # ((!\ShiftRight1~42_combout\ & ((!\ShiftRight1~61_combout\) # (\B[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011111010101010101111101001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_ShiftRight1~61_combout\,
	datac => \ALT_INV_ShiftRight1~42_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_ShiftRight1~38_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \zero~14_combout\);

-- Location: MLABCELL_X25_Y4_N45
\zero~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~16_combout\ = ( \ShiftRight0~0_combout\ & ( \A[31]~input_o\ & ( (!\ShiftRight0~24_combout\ & (!\ShiftRight0~31_combout\ & !\B[3]~input_o\)) ) ) ) # ( \ShiftRight0~0_combout\ & ( !\A[31]~input_o\ & ( ((!\ShiftRight0~24_combout\ & 
-- !\ShiftRight0~31_combout\)) # (\B[3]~input_o\) ) ) ) # ( !\ShiftRight0~0_combout\ & ( !\A[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111100010001111111100000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~24_combout\,
	datab => \ALT_INV_ShiftRight0~31_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \zero~16_combout\);

-- Location: LABCELL_X22_Y3_N24
\zero~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~17_combout\ = ( \ShiftRight1~79_combout\ & ( \zero~16_combout\ & ( (\zero~13_combout\ & (\zero~15_combout\ & (\zero~14_combout\ & !\ShiftRight1~83_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zero~13_combout\,
	datab => \ALT_INV_zero~15_combout\,
	datac => \ALT_INV_zero~14_combout\,
	datad => \ALT_INV_ShiftRight1~83_combout\,
	datae => \ALT_INV_ShiftRight1~79_combout\,
	dataf => \ALT_INV_zero~16_combout\,
	combout => \zero~17_combout\);

-- Location: MLABCELL_X28_Y3_N12
\zero~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~7_combout\ = ( \B[4]~input_o\ & ( (\ShiftRight1~4_combout\ & \Equal1~6_combout\) ) ) # ( !\B[4]~input_o\ & ( (\Equal1~6_combout\ & ((\ShiftRight1~9_combout\) # (\ShiftRight1~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~4_combout\,
	datab => \ALT_INV_ShiftRight1~9_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \zero~7_combout\);

-- Location: MLABCELL_X28_Y2_N18
\zero~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~18_combout\ = ( \ShiftRight1~33_combout\ & ( !\zero~7_combout\ & ( (\ShiftRight1~73_combout\ & (\ShiftRight1~21_combout\ & (\ShiftRight1~72_combout\ & !\ShiftRight1~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~73_combout\,
	datab => \ALT_INV_ShiftRight1~21_combout\,
	datac => \ALT_INV_ShiftRight1~72_combout\,
	datad => \ALT_INV_ShiftRight1~58_combout\,
	datae => \ALT_INV_ShiftRight1~33_combout\,
	dataf => \ALT_INV_zero~7_combout\,
	combout => \zero~18_combout\);

-- Location: LABCELL_X22_Y5_N24
\zero~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~12_combout\ = ( \B[4]~input_o\ & ( \Equal1~6_combout\ & ( (!\ShiftRight1~48_combout\ & !\A[31]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \Equal1~6_combout\ & ( (!\ShiftRight1~48_combout\ & (!\ShiftRight1~47_combout\ & !\ShiftRight1~54_combout\)) ) ) ) 
-- # ( \B[4]~input_o\ & ( !\Equal1~6_combout\ & ( !\A[31]~input_o\ ) ) ) # ( !\B[4]~input_o\ & ( !\Equal1~6_combout\ & ( !\A[31]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010001000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~48_combout\,
	datab => \ALT_INV_ShiftRight1~47_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftRight1~54_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \zero~12_combout\);

-- Location: LABCELL_X22_Y5_N48
\zero~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~11_combout\ = ( \B[4]~input_o\ & ( \Equal1~6_combout\ & ( (!\A[31]~input_o\ & !\ShiftRight1~51_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \Equal1~6_combout\ & ( (!\ShiftRight1~70_combout\ & (!\ShiftRight1~51_combout\ & !\ShiftRight1~50_combout\)) ) ) ) 
-- # ( \B[4]~input_o\ & ( !\Equal1~6_combout\ & ( !\A[31]~input_o\ ) ) ) # ( !\B[4]~input_o\ & ( !\Equal1~6_combout\ & ( !\A[31]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftRight1~70_combout\,
	datac => \ALT_INV_ShiftRight1~51_combout\,
	datad => \ALT_INV_ShiftRight1~50_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \zero~11_combout\);

-- Location: LABCELL_X23_Y5_N18
\zero~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~19_combout\ = ( \zero~11_combout\ & ( !\ShiftRight1~67_combout\ & ( (!\ShiftRight1~65_combout\ & (\zero~17_combout\ & (\zero~18_combout\ & \zero~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight1~65_combout\,
	datab => \ALT_INV_zero~17_combout\,
	datac => \ALT_INV_zero~18_combout\,
	datad => \ALT_INV_zero~12_combout\,
	datae => \ALT_INV_zero~11_combout\,
	dataf => \ALT_INV_ShiftRight1~67_combout\,
	combout => \zero~19_combout\);

-- Location: LABCELL_X23_Y5_N42
\zero~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~0_combout\ = ( !\ShiftRight0~53_combout\ & ( !\ShiftRight0~52_combout\ & ( (!\ShiftRight0~36_combout\ & (!\ShiftRight0~38_combout\ & !\ShiftRight0~37_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~36_combout\,
	datab => \ALT_INV_ShiftRight0~38_combout\,
	datac => \ALT_INV_ShiftRight0~37_combout\,
	datae => \ALT_INV_ShiftRight0~53_combout\,
	dataf => \ALT_INV_ShiftRight0~52_combout\,
	combout => \zero~0_combout\);

-- Location: LABCELL_X23_Y5_N0
\zero~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~10_combout\ = ( \ShiftRight1~57_combout\ & ( (!\ShiftRight1~69_combout\ & (!\ShiftRight1~55_combout\ & !\ShiftRight1~59_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight1~69_combout\,
	datac => \ALT_INV_ShiftRight1~55_combout\,
	datad => \ALT_INV_ShiftRight1~59_combout\,
	dataf => \ALT_INV_ShiftRight1~57_combout\,
	combout => \zero~10_combout\);

-- Location: MLABCELL_X28_Y2_N42
\zero~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~8_combout\ = ( !\ShiftRight0~13_combout\ & ( !\zero~7_combout\ & ( (!\ShiftRight0~6_combout\ & (!\ShiftRight0~15_combout\ & (!\ShiftRight0~11_combout\ & !\ShiftRight0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~6_combout\,
	datab => \ALT_INV_ShiftRight0~15_combout\,
	datac => \ALT_INV_ShiftRight0~11_combout\,
	datad => \ALT_INV_ShiftRight0~3_combout\,
	datae => \ALT_INV_ShiftRight0~13_combout\,
	dataf => \ALT_INV_zero~7_combout\,
	combout => \zero~8_combout\);

-- Location: LABCELL_X22_Y5_N42
\zero~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~5_combout\ = ( \B[4]~input_o\ & ( \ShiftRight1~3_combout\ & ( (\Equal1~6_combout\ & \Equal1~0_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \ShiftRight1~3_combout\ & ( (\Equal1~6_combout\ & (((\Equal1~0_combout\ & \ShiftRight0~1_combout\)) # 
-- (\ShiftRight1~64_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( !\ShiftRight1~3_combout\ & ( (\Equal1~6_combout\ & (((\Equal1~0_combout\ & \ShiftRight0~1_combout\)) # (\ShiftRight1~64_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000000000000000000001010101010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ShiftRight0~1_combout\,
	datad => \ALT_INV_ShiftRight1~64_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftRight1~3_combout\,
	combout => \zero~5_combout\);

-- Location: LABCELL_X22_Y4_N33
\zero~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~1_combout\ = ( !\B[3]~input_o\ & ( (\ShiftRight0~0_combout\ & (((\ShiftRight0~20_combout\) # (\ShiftRight0~27_combout\)) # (\ShiftRight0~32_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~32_combout\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight0~27_combout\,
	datad => \ALT_INV_ShiftRight0~20_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \zero~1_combout\);

-- Location: LABCELL_X22_Y4_N36
\zero~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~3_combout\ = ( \ShiftRight0~12_combout\ & ( \ShiftRight0~0_combout\ ) ) # ( !\ShiftRight0~12_combout\ & ( (\ShiftRight0~0_combout\ & (((\ShiftRight0~14_combout\) # (\ShiftRight0~16_combout\)) # (\ShiftRight0~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~18_combout\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftRight0~16_combout\,
	datad => \ALT_INV_ShiftRight0~14_combout\,
	dataf => \ALT_INV_ShiftRight0~12_combout\,
	combout => \zero~3_combout\);

-- Location: LABCELL_X27_Y2_N18
\zero~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~2_combout\ = ( !\opcode[0]~input_o\ & ( \ShiftRight0~10_combout\ & ( !\ShiftRight0~0_combout\ ) ) ) # ( !\opcode[0]~input_o\ & ( !\ShiftRight0~10_combout\ & ( (!\ShiftRight0~0_combout\) # ((!\ShiftRight0~5_combout\ & (!\ShiftRight0~2_combout\ & 
-- !\ShiftRight0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_ShiftRight0~5_combout\,
	datac => \ALT_INV_ShiftRight0~2_combout\,
	datad => \ALT_INV_ShiftRight0~8_combout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_ShiftRight0~10_combout\,
	combout => \zero~2_combout\);

-- Location: LABCELL_X22_Y4_N54
\zero~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~4_combout\ = ( !\zero~3_combout\ & ( \zero~2_combout\ & ( (!\ShiftRight0~34_combout\ & (!\ShiftRight0~30_combout\ & (!\zero~1_combout\ & !\ShiftRight0~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~34_combout\,
	datab => \ALT_INV_ShiftRight0~30_combout\,
	datac => \ALT_INV_zero~1_combout\,
	datad => \ALT_INV_ShiftRight0~23_combout\,
	datae => \ALT_INV_zero~3_combout\,
	dataf => \ALT_INV_zero~2_combout\,
	combout => \zero~4_combout\);

-- Location: LABCELL_X24_Y5_N24
\zero~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~6_combout\ = ( \B[4]~input_o\ & ( \ShiftRight0~18_combout\ & ( \Equal1~6_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \ShiftRight0~18_combout\ & ( (\Equal1~6_combout\ & (((\Equal1~0_combout\ & \ShiftRight1~3_combout\)) # (\ShiftRight1~56_combout\))) ) ) ) 
-- # ( !\B[4]~input_o\ & ( !\ShiftRight0~18_combout\ & ( (\Equal1~6_combout\ & (((\Equal1~0_combout\ & \ShiftRight1~3_combout\)) # (\ShiftRight1~56_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000000000000000000001010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~6_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_ShiftRight1~3_combout\,
	datad => \ALT_INV_ShiftRight1~56_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_ShiftRight0~18_combout\,
	combout => \zero~6_combout\);

-- Location: MLABCELL_X28_Y5_N54
\zero~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero~9_combout\ = ( !\zero~6_combout\ & ( !\ShiftRight0~9_combout\ & ( (\zero~8_combout\ & (!\zero~5_combout\ & (!\ShiftRight0~17_combout\ & \zero~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zero~8_combout\,
	datab => \ALT_INV_zero~5_combout\,
	datac => \ALT_INV_ShiftRight0~17_combout\,
	datad => \ALT_INV_zero~4_combout\,
	datae => \ALT_INV_zero~6_combout\,
	dataf => \ALT_INV_ShiftRight0~9_combout\,
	combout => \zero~9_combout\);

-- Location: LABCELL_X23_Y5_N54
\Mux31~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~24_combout\ = ( \ShiftRight1~63_combout\ & ( \Mux31~16_combout\ & ( (!\zero~19_combout\ & ((!\zero~0_combout\) # ((!\zero~9_combout\)))) # (\zero~19_combout\ & (!\zero~10_combout\ & ((!\zero~0_combout\) # (!\zero~9_combout\)))) ) ) ) # ( 
-- !\ShiftRight1~63_combout\ & ( \Mux31~16_combout\ & ( (!\zero~0_combout\) # (!\zero~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110011001111101011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zero~19_combout\,
	datab => \ALT_INV_zero~0_combout\,
	datac => \ALT_INV_zero~10_combout\,
	datad => \ALT_INV_zero~9_combout\,
	datae => \ALT_INV_ShiftRight1~63_combout\,
	dataf => \ALT_INV_Mux31~16_combout\,
	combout => \Mux31~24_combout\);

-- Location: LABCELL_X24_Y3_N48
\Mux31~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~17_combout\ = ( \ShiftLeft0~3_combout\ & ( \Equal1~0_combout\ & ( \ShiftRight0~0_combout\ ) ) ) # ( !\ShiftLeft0~3_combout\ & ( \Equal1~0_combout\ & ( (\ShiftRight0~0_combout\ & (((\ShiftLeft0~38_combout\) # (\ShiftLeft0~41_combout\)) # 
-- (\ShiftLeft0~35_combout\))) ) ) ) # ( \ShiftLeft0~3_combout\ & ( !\Equal1~0_combout\ & ( (\ShiftRight0~0_combout\ & (((\ShiftLeft0~38_combout\) # (\ShiftLeft0~41_combout\)) # (\ShiftLeft0~35_combout\))) ) ) ) # ( !\ShiftLeft0~3_combout\ & ( 
-- !\Equal1~0_combout\ & ( (\ShiftRight0~0_combout\ & (((\ShiftLeft0~38_combout\) # (\ShiftLeft0~41_combout\)) # (\ShiftLeft0~35_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~35_combout\,
	datab => \ALT_INV_ShiftLeft0~41_combout\,
	datac => \ALT_INV_ShiftLeft0~38_combout\,
	datad => \ALT_INV_ShiftRight0~0_combout\,
	datae => \ALT_INV_ShiftLeft0~3_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Mux31~17_combout\);

-- Location: LABCELL_X24_Y3_N24
\Mux31~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~18_combout\ = ( !\ShiftLeft0~58_combout\ & ( !\ShiftLeft0~85_combout\ & ( (!\Mux31~17_combout\ & (!\ShiftLeft0~91_combout\ & (!\ShiftLeft0~55_combout\ & !\ShiftLeft0~94_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux31~17_combout\,
	datab => \ALT_INV_ShiftLeft0~91_combout\,
	datac => \ALT_INV_ShiftLeft0~55_combout\,
	datad => \ALT_INV_ShiftLeft0~94_combout\,
	datae => \ALT_INV_ShiftLeft0~58_combout\,
	dataf => \ALT_INV_ShiftLeft0~85_combout\,
	combout => \Mux31~18_combout\);

-- Location: LABCELL_X24_Y4_N54
\Mux31~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~19_combout\ = ( \ShiftLeft0~11_combout\ & ( \opcode[0]~input_o\ & ( !\ShiftRight0~0_combout\ ) ) ) # ( !\ShiftLeft0~11_combout\ & ( \opcode[0]~input_o\ & ( (!\ShiftRight0~0_combout\) # ((!\ShiftLeft0~8_combout\ & (!\ShiftLeft0~14_combout\ & 
-- !\ShiftLeft0~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~8_combout\,
	datab => \ALT_INV_ShiftLeft0~14_combout\,
	datac => \ALT_INV_ShiftLeft0~20_combout\,
	datad => \ALT_INV_ShiftRight0~0_combout\,
	datae => \ALT_INV_ShiftLeft0~11_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux31~19_combout\);

-- Location: LABCELL_X29_Y2_N54
\Mux31~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~20_combout\ = ( !\ShiftLeft0~67_combout\ & ( !\ShiftLeft0~61_combout\ & ( (!\ShiftLeft0~73_combout\ & (!\ShiftLeft0~70_combout\ & (\Mux31~19_combout\ & !\ShiftLeft0~64_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~73_combout\,
	datab => \ALT_INV_ShiftLeft0~70_combout\,
	datac => \ALT_INV_Mux31~19_combout\,
	datad => \ALT_INV_ShiftLeft0~64_combout\,
	datae => \ALT_INV_ShiftLeft0~67_combout\,
	dataf => \ALT_INV_ShiftLeft0~61_combout\,
	combout => \Mux31~20_combout\);

-- Location: LABCELL_X23_Y4_N18
\Mux31~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~21_combout\ = ( \ShiftLeft0~26_combout\ & ( \ShiftLeft0~32_combout\ & ( \ShiftRight0~0_combout\ ) ) ) # ( !\ShiftLeft0~26_combout\ & ( \ShiftLeft0~32_combout\ & ( \ShiftRight0~0_combout\ ) ) ) # ( \ShiftLeft0~26_combout\ & ( 
-- !\ShiftLeft0~32_combout\ & ( \ShiftRight0~0_combout\ ) ) ) # ( !\ShiftLeft0~26_combout\ & ( !\ShiftLeft0~32_combout\ & ( (\ShiftRight0~0_combout\ & (((\ShiftLeft0~23_combout\) # (\ShiftLeft0~29_combout\)) # (\ShiftLeft0~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_ShiftLeft0~17_combout\,
	datac => \ALT_INV_ShiftLeft0~29_combout\,
	datad => \ALT_INV_ShiftLeft0~23_combout\,
	datae => \ALT_INV_ShiftLeft0~26_combout\,
	dataf => \ALT_INV_ShiftLeft0~32_combout\,
	combout => \Mux31~21_combout\);

-- Location: LABCELL_X23_Y4_N24
\Mux31~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~22_combout\ = ( !\ShiftLeft0~52_combout\ & ( !\Mux31~21_combout\ & ( (!\ShiftLeft0~76_combout\ & (!\ShiftLeft0~79_combout\ & (!\ShiftLeft0~82_combout\ & !\ShiftLeft0~49_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~76_combout\,
	datab => \ALT_INV_ShiftLeft0~79_combout\,
	datac => \ALT_INV_ShiftLeft0~82_combout\,
	datad => \ALT_INV_ShiftLeft0~49_combout\,
	datae => \ALT_INV_ShiftLeft0~52_combout\,
	dataf => \ALT_INV_Mux31~21_combout\,
	combout => \Mux31~22_combout\);

-- Location: MLABCELL_X28_Y3_N24
\Mux31~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~23_combout\ = ( \Mux31~16_combout\ & ( \Mux31~22_combout\ & ( ((!\Mux31~18_combout\) # ((!\Mux31~20_combout\) # (\ShiftLeft0~6_combout\))) # (\ShiftLeft0~88_combout\) ) ) ) # ( \Mux31~16_combout\ & ( !\Mux31~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~88_combout\,
	datab => \ALT_INV_Mux31~18_combout\,
	datac => \ALT_INV_ShiftLeft0~6_combout\,
	datad => \ALT_INV_Mux31~20_combout\,
	datae => \ALT_INV_Mux31~16_combout\,
	dataf => \ALT_INV_Mux31~22_combout\,
	combout => \Mux31~23_combout\);

-- Location: LABCELL_X33_Y4_N36
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !\Add1~25_sumout\ & ( (!\Add1~37_sumout\ & (!\Add1~41_sumout\ & (!\Add1~29_sumout\ & !\Add1~33_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~37_sumout\,
	datab => \ALT_INV_Add1~41_sumout\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_Add1~33_sumout\,
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \Equal3~0_combout\);

-- Location: MLABCELL_X34_Y4_N18
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( !\Add1~61_sumout\ & ( \Equal3~0_combout\ & ( (!\Add1~69_sumout\ & (!\Add1~81_sumout\ & (!\Add1~73_sumout\ & !\Add1~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~69_sumout\,
	datab => \ALT_INV_Add1~81_sumout\,
	datac => \ALT_INV_Add1~73_sumout\,
	datad => \ALT_INV_Add1~77_sumout\,
	datae => \ALT_INV_Add1~61_sumout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X30_Y3_N48
\Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( !\Add1~117_sumout\ & ( \Equal3~1_combout\ & ( (!\Add1~109_sumout\ & (!\Add1~121_sumout\ & (!\Add1~113_sumout\ & !\Add1~101_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~109_sumout\,
	datab => \ALT_INV_Add1~121_sumout\,
	datac => \ALT_INV_Add1~113_sumout\,
	datad => \ALT_INV_Add1~101_sumout\,
	datae => \ALT_INV_Add1~117_sumout\,
	dataf => \ALT_INV_Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: LABCELL_X29_Y4_N48
\Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ( !\Add1~21_sumout\ & ( !\Add1~1_sumout\ & ( (!\Add1~9_sumout\ & (!\Add1~17_sumout\ & (!\Add1~13_sumout\ & !\Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Add1~17_sumout\,
	datac => \ALT_INV_Add1~13_sumout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_Add1~1_sumout\,
	combout => \Equal3~3_combout\);

-- Location: LABCELL_X35_Y4_N48
\Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = ( !\Add1~65_sumout\ & ( !\Add1~49_sumout\ & ( (!\Add1~57_sumout\ & (\Equal3~3_combout\ & (!\Add1~45_sumout\ & !\Add1~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~57_sumout\,
	datab => \ALT_INV_Equal3~3_combout\,
	datac => \ALT_INV_Add1~45_sumout\,
	datad => \ALT_INV_Add1~53_sumout\,
	datae => \ALT_INV_Add1~65_sumout\,
	dataf => \ALT_INV_Add1~49_sumout\,
	combout => \Equal3~4_combout\);

-- Location: LABCELL_X30_Y3_N54
\Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = ( !\Add1~85_sumout\ & ( !\Add1~97_sumout\ & ( (\Equal3~4_combout\ & (!\Add1~89_sumout\ & (!\Add1~105_sumout\ & !\Add1~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~4_combout\,
	datab => \ALT_INV_Add1~89_sumout\,
	datac => \ALT_INV_Add1~105_sumout\,
	datad => \ALT_INV_Add1~93_sumout\,
	datae => \ALT_INV_Add1~85_sumout\,
	dataf => \ALT_INV_Add1~97_sumout\,
	combout => \Equal3~5_combout\);

-- Location: MLABCELL_X28_Y4_N24
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( !\Add0~1_sumout\ & ( !\Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_Add0~1_sumout\,
	combout => \Equal2~3_combout\);

-- Location: LABCELL_X29_Y4_N54
\Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( !\Add0~17_sumout\ & ( !\Add0~9_sumout\ & ( (!\Add0~21_sumout\ & (!\Add0~13_sumout\ & (!\Add0~45_sumout\ & \Equal2~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~21_sumout\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_Equal2~3_combout\,
	datae => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \Equal2~4_combout\);

-- Location: LABCELL_X35_Y4_N54
\Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = ( !\Add0~85_sumout\ & ( !\Add0~53_sumout\ & ( (!\Add0~57_sumout\ & (\Equal2~4_combout\ & (!\Add0~65_sumout\ & !\Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~57_sumout\,
	datab => \ALT_INV_Equal2~4_combout\,
	datac => \ALT_INV_Add0~65_sumout\,
	datad => \ALT_INV_Add0~49_sumout\,
	datae => \ALT_INV_Add0~85_sumout\,
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \Equal2~5_combout\);

-- Location: LABCELL_X31_Y3_N54
\Equal2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = ( !\Add0~89_sumout\ & ( \Equal2~5_combout\ & ( (!\Add0~105_sumout\ & (!\Add0~97_sumout\ & (!\Add0~125_sumout\ & !\Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~105_sumout\,
	datab => \ALT_INV_Add0~97_sumout\,
	datac => \ALT_INV_Add0~125_sumout\,
	datad => \ALT_INV_Add0~93_sumout\,
	datae => \ALT_INV_Add0~89_sumout\,
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \Equal2~6_combout\);

-- Location: LABCELL_X33_Y4_N45
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\Add0~25_sumout\ & ( (!\Add0~29_sumout\ & (!\Add0~37_sumout\ & (!\Add0~41_sumout\ & !\Add0~33_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_Add0~37_sumout\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X34_Y4_N54
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !\Add0~81_sumout\ & ( \Equal2~0_combout\ & ( (!\Add0~61_sumout\ & (!\Add0~69_sumout\ & (!\Add0~77_sumout\ & !\Add0~73_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~61_sumout\,
	datab => \ALT_INV_Add0~69_sumout\,
	datac => \ALT_INV_Add0~77_sumout\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_Add0~81_sumout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X31_Y3_N48
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( \Equal2~1_combout\ & ( !\Add0~113_sumout\ & ( (!\Add0~109_sumout\ & (!\Add0~121_sumout\ & (!\Add0~117_sumout\ & !\Add0~101_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~109_sumout\,
	datab => \ALT_INV_Add0~121_sumout\,
	datac => \ALT_INV_Add0~117_sumout\,
	datad => \ALT_INV_Add0~101_sumout\,
	datae => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_Add0~113_sumout\,
	combout => \Equal2~2_combout\);

-- Location: MLABCELL_X28_Y3_N48
\Mux31~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = ( \Add1~125_sumout\ & ( \opcode[0]~input_o\ ) ) # ( !\Add1~125_sumout\ & ( \opcode[0]~input_o\ & ( (!\Equal3~2_combout\) # (!\Equal3~5_combout\) ) ) ) # ( \Add1~125_sumout\ & ( !\opcode[0]~input_o\ & ( (!\Equal2~6_combout\) # 
-- (!\Equal2~2_combout\) ) ) ) # ( !\Add1~125_sumout\ & ( !\opcode[0]~input_o\ & ( (!\Equal2~6_combout\) # (!\Equal2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011101110111011101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~2_combout\,
	datab => \ALT_INV_Equal3~5_combout\,
	datac => \ALT_INV_Equal2~6_combout\,
	datad => \ALT_INV_Equal2~2_combout\,
	datae => \ALT_INV_Add1~125_sumout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux31~8_combout\);

-- Location: MLABCELL_X28_Y3_N0
\Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = ( !\opcode[2]~input_o\ & ( ((!\opcode[1]~input_o\ & (((\Mux31~8_combout\)))) # (\opcode[1]~input_o\ & (\Mux31~16_combout\ & (\opcode[0]~input_o\)))) ) ) # ( \opcode[2]~input_o\ & ( (((!\opcode[1]~input_o\ & ((\Mux31~23_combout\))) # 
-- (\opcode[1]~input_o\ & (\Mux31~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000011110000111100000101000001010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux31~16_combout\,
	datab => \ALT_INV_Mux31~24_combout\,
	datac => \ALT_INV_Mux31~23_combout\,
	datad => \ALT_INV_Mux31~8_combout\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	datag => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux32~1_combout\);

-- Location: MLABCELL_X25_Y4_N18
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \opcode[3]~input_o\ & ( !\Mux31~1_combout\ ) ) # ( !\opcode[3]~input_o\ & ( \Mux32~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux31~1_combout\,
	datac => \ALT_INV_Mux32~1_combout\,
	dataf => \ALT_INV_opcode[3]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: MLABCELL_X65_Y38_N3
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


