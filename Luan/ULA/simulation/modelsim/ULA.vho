-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/27/2021 18:51:55"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	opcode : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Z : BUFFER std_logic_vector(31 DOWNTO 0);
	zero : BUFFER std_logic
	);
END ULA;

ARCHITECTURE structure OF ULA IS
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
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[4]~output_o\ : std_logic;
SIGNAL \Z[5]~output_o\ : std_logic;
SIGNAL \Z[6]~output_o\ : std_logic;
SIGNAL \Z[7]~output_o\ : std_logic;
SIGNAL \Z[8]~output_o\ : std_logic;
SIGNAL \Z[9]~output_o\ : std_logic;
SIGNAL \Z[10]~output_o\ : std_logic;
SIGNAL \Z[11]~output_o\ : std_logic;
SIGNAL \Z[12]~output_o\ : std_logic;
SIGNAL \Z[13]~output_o\ : std_logic;
SIGNAL \Z[14]~output_o\ : std_logic;
SIGNAL \Z[15]~output_o\ : std_logic;
SIGNAL \Z[16]~output_o\ : std_logic;
SIGNAL \Z[17]~output_o\ : std_logic;
SIGNAL \Z[18]~output_o\ : std_logic;
SIGNAL \Z[19]~output_o\ : std_logic;
SIGNAL \Z[20]~output_o\ : std_logic;
SIGNAL \Z[21]~output_o\ : std_logic;
SIGNAL \Z[22]~output_o\ : std_logic;
SIGNAL \Z[23]~output_o\ : std_logic;
SIGNAL \Z[24]~output_o\ : std_logic;
SIGNAL \Z[25]~output_o\ : std_logic;
SIGNAL \Z[26]~output_o\ : std_logic;
SIGNAL \Z[27]~output_o\ : std_logic;
SIGNAL \Z[28]~output_o\ : std_logic;
SIGNAL \Z[29]~output_o\ : std_logic;
SIGNAL \Z[30]~output_o\ : std_logic;
SIGNAL \Z[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Equal2~11_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Equal2~12_combout\ : std_logic;
SIGNAL \Equal2~13_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Equal2~14_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Equal2~15_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Equal2~16_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Equal2~17_combout\ : std_logic;
SIGNAL \Equal2~18_combout\ : std_logic;
SIGNAL \Equal2~19_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Equal2~20_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Equal2~21_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Equal2~22_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Equal2~23_combout\ : std_logic;
SIGNAL \Equal2~24_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Equal2~25_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Equal2~26_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Equal2~27_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Equal2~28_combout\ : std_logic;
SIGNAL \Equal2~29_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Equal2~30_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Equal2~31_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Equal2~32_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Equal2~33_combout\ : std_logic;
SIGNAL \Equal2~34_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Equal2~35_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Equal2~36_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Equal2~37_combout\ : std_logic;
SIGNAL \Equal2~38_combout\ : std_logic;
SIGNAL \Equal2~39_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Mux31~13_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \Mux31~10_combout\ : std_logic;
SIGNAL \Mux31~11_combout\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \Mux31~12_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~109_combout\ : std_logic;
SIGNAL \Mux28~19_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \ShiftRight1~41_combout\ : std_logic;
SIGNAL \ShiftRight1~42_combout\ : std_logic;
SIGNAL \ShiftRight1~43_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftRight1~44_combout\ : std_logic;
SIGNAL \ShiftRight1~45_combout\ : std_logic;
SIGNAL \ShiftRight1~46_combout\ : std_logic;
SIGNAL \ShiftRight1~47_combout\ : std_logic;
SIGNAL \ShiftRight1~48_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight1~49_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \ShiftRight1~50_combout\ : std_logic;
SIGNAL \ShiftRight1~51_combout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \ShiftRight1~52_combout\ : std_logic;
SIGNAL \ShiftRight1~53_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \Mux28~14_combout\ : std_logic;
SIGNAL \Mux28~15_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux28~16_combout\ : std_logic;
SIGNAL \Mux28~17_combout\ : std_logic;
SIGNAL \Mux28~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \ShiftRight1~54_combout\ : std_logic;
SIGNAL \ShiftRight1~55_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \ShiftRight1~56_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \ShiftRight1~57_combout\ : std_logic;
SIGNAL \ShiftRight0~84_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \ShiftRight1~58_combout\ : std_logic;
SIGNAL \ShiftRight1~59_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \ShiftRight1~65_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \Mux24~9_combout\ : std_logic;
SIGNAL \Mux24~10_combout\ : std_logic;
SIGNAL \Mux24~11_combout\ : std_logic;
SIGNAL \Mux24~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \Mux24~13_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \ShiftRight1~66_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \ShiftRight1~67_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \ShiftRight1~68_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \ShiftRight1~69_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \ShiftRight1~70_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \ShiftRight1~60_combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \ShiftRight1~61_combout\ : std_logic;
SIGNAL \ShiftRight0~85_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \ShiftRight0~78_combout\ : std_logic;
SIGNAL \ShiftRight0~79_combout\ : std_logic;
SIGNAL \ShiftRight0~80_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \ShiftRight1~62_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \ShiftRight1~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ShiftRight0~81_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \ShiftRight0~82_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux11~15_combout\ : std_logic;
SIGNAL \Mux11~16_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Mux11~10_combout\ : std_logic;
SIGNAL \Mux11~11_combout\ : std_logic;
SIGNAL \Mux11~12_combout\ : std_logic;
SIGNAL \Mux11~13_combout\ : std_logic;
SIGNAL \Mux11~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ShiftLeft0~82_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ShiftLeft0~86_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ShiftLeft0~88_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~90_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ShiftLeft0~92_combout\ : std_logic;
SIGNAL \ShiftLeft0~93_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ShiftLeft0~95_combout\ : std_logic;
SIGNAL \ShiftLeft0~96_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~97_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~98_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \ShiftRight0~83_combout\ : std_logic;
SIGNAL \ShiftLeft0~99_combout\ : std_logic;
SIGNAL \ShiftLeft0~100_combout\ : std_logic;
SIGNAL \ShiftLeft0~101_combout\ : std_logic;
SIGNAL \ShiftLeft0~102_combout\ : std_logic;
SIGNAL \ShiftLeft0~103_combout\ : std_logic;
SIGNAL \Equal2~40_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \ShiftRight1~64_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~104_combout\ : std_logic;
SIGNAL \ShiftLeft0~105_combout\ : std_logic;
SIGNAL \ShiftLeft0~106_combout\ : std_logic;
SIGNAL \ShiftLeft0~107_combout\ : std_logic;
SIGNAL \ShiftLeft0~108_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Add0~97_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~101_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \process_0~21_combout\ : std_logic;
SIGNAL \process_0~22_combout\ : std_logic;
SIGNAL \process_0~23_combout\ : std_logic;
SIGNAL \process_0~24_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;

BEGIN

ww_opcode <= opcode;
ww_A <= A;
ww_B <= B;
Z <= ww_Z;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~12_combout\,
	devoe => ww_devoe,
	o => \Z[0]~output_o\);

\Z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~4_combout\,
	devoe => ww_devoe,
	o => \Z[1]~output_o\);

\Z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~7_combout\,
	devoe => ww_devoe,
	o => \Z[2]~output_o\);

\Z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~18_combout\,
	devoe => ww_devoe,
	o => \Z[3]~output_o\);

\Z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~8_combout\,
	devoe => ww_devoe,
	o => \Z[4]~output_o\);

\Z[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~6_combout\,
	devoe => ww_devoe,
	o => \Z[5]~output_o\);

\Z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~6_combout\,
	devoe => ww_devoe,
	o => \Z[6]~output_o\);

\Z[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~13_combout\,
	devoe => ww_devoe,
	o => \Z[7]~output_o\);

\Z[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~6_combout\,
	devoe => ww_devoe,
	o => \Z[8]~output_o\);

\Z[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~6_combout\,
	devoe => ww_devoe,
	o => \Z[9]~output_o\);

\Z[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~8_combout\,
	devoe => ww_devoe,
	o => \Z[10]~output_o\);

\Z[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~6_combout\,
	devoe => ww_devoe,
	o => \Z[11]~output_o\);

\Z[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~6_combout\,
	devoe => ww_devoe,
	o => \Z[12]~output_o\);

\Z[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~6_combout\,
	devoe => ww_devoe,
	o => \Z[13]~output_o\);

\Z[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~6_combout\,
	devoe => ww_devoe,
	o => \Z[14]~output_o\);

\Z[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	devoe => ww_devoe,
	o => \Z[15]~output_o\);

\Z[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	devoe => ww_devoe,
	o => \Z[16]~output_o\);

\Z[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~6_combout\,
	devoe => ww_devoe,
	o => \Z[17]~output_o\);

\Z[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~6_combout\,
	devoe => ww_devoe,
	o => \Z[18]~output_o\);

\Z[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~6_combout\,
	devoe => ww_devoe,
	o => \Z[19]~output_o\);

\Z[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~14_combout\,
	devoe => ww_devoe,
	o => \Z[20]~output_o\);

\Z[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~6_combout\,
	devoe => ww_devoe,
	o => \Z[21]~output_o\);

\Z[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~6_combout\,
	devoe => ww_devoe,
	o => \Z[22]~output_o\);

\Z[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~6_combout\,
	devoe => ww_devoe,
	o => \Z[23]~output_o\);

\Z[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~8_combout\,
	devoe => ww_devoe,
	o => \Z[24]~output_o\);

\Z[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~7_combout\,
	devoe => ww_devoe,
	o => \Z[25]~output_o\);

\Z[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~7_combout\,
	devoe => ww_devoe,
	o => \Z[26]~output_o\);

\Z[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~6_combout\,
	devoe => ww_devoe,
	o => \Z[27]~output_o\);

\Z[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~8_combout\,
	devoe => ww_devoe,
	o => \Z[28]~output_o\);

\Z[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~8_combout\,
	devoe => ww_devoe,
	o => \Z[29]~output_o\);

\Z[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \Z[30]~output_o\);

\Z[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Z[31]~output_o\);

\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~2_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

\opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

\opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Z~0_combout\);

\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Equal2~0_combout\);

\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Equal2~1_combout\);

\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Equal2~2_combout\);

\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\Z~0_combout\ & (!\Equal2~0_combout\ & (!\Equal2~1_combout\ & !\Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~3_combout\);

\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Equal2~4_combout\);

\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Equal2~5_combout\);

\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Equal2~6_combout\);

\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Equal2~7_combout\);

\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!\Equal2~4_combout\ & (!\Equal2~5_combout\ & (!\Equal2~6_combout\ & !\Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~6_combout\,
	datad => \Equal2~7_combout\,
	combout => \Equal2~8_combout\);

\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Equal2~9_combout\);

\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Equal2~10_combout\);

\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\Equal2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~11_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Equal2~11_combout\);

\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\Equal2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~12_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Equal2~12_combout\);

\Equal2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~13_combout\ = (!\Equal2~9_combout\ & (!\Equal2~10_combout\ & (!\Equal2~11_combout\ & !\Equal2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \Equal2~10_combout\,
	datac => \Equal2~11_combout\,
	datad => \Equal2~12_combout\,
	combout => \Equal2~13_combout\);

\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\Equal2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~14_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Equal2~14_combout\);

\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\Equal2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~15_combout\ = \A[13]~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Equal2~15_combout\);

\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\Equal2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~16_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Equal2~16_combout\);

\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\Equal2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~17_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Equal2~17_combout\);

\Equal2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~18_combout\ = (!\Equal2~14_combout\ & (!\Equal2~15_combout\ & (!\Equal2~16_combout\ & !\Equal2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~14_combout\,
	datab => \Equal2~15_combout\,
	datac => \Equal2~16_combout\,
	datad => \Equal2~17_combout\,
	combout => \Equal2~18_combout\);

\Equal2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~19_combout\ = (\Equal2~3_combout\ & (\Equal2~8_combout\ & (\Equal2~13_combout\ & \Equal2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~8_combout\,
	datac => \Equal2~13_combout\,
	datad => \Equal2~18_combout\,
	combout => \Equal2~19_combout\);

\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

\Equal2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~20_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Equal2~20_combout\);

\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

\Equal2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~21_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Equal2~21_combout\);

\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

\Equal2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~22_combout\ = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Equal2~22_combout\);

\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

\Equal2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~23_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Equal2~23_combout\);

\Equal2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~24_combout\ = (!\Equal2~20_combout\ & (!\Equal2~21_combout\ & (!\Equal2~22_combout\ & !\Equal2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datab => \Equal2~21_combout\,
	datac => \Equal2~22_combout\,
	datad => \Equal2~23_combout\,
	combout => \Equal2~24_combout\);

\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

\Equal2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~25_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Equal2~25_combout\);

\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

\Equal2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~26_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Equal2~26_combout\);

\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

\Equal2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~27_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Equal2~27_combout\);

\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

\Equal2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~28_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Equal2~28_combout\);

\Equal2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~29_combout\ = (!\Equal2~25_combout\ & (!\Equal2~26_combout\ & (!\Equal2~27_combout\ & !\Equal2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~25_combout\,
	datab => \Equal2~26_combout\,
	datac => \Equal2~27_combout\,
	datad => \Equal2~28_combout\,
	combout => \Equal2~29_combout\);

\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

\Equal2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~30_combout\ = \A[24]~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Equal2~30_combout\);

\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

\Equal2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~31_combout\ = \A[25]~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Equal2~31_combout\);

\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

\Equal2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~32_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Equal2~32_combout\);

\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

\Equal2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~33_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Equal2~33_combout\);

\Equal2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~34_combout\ = (!\Equal2~30_combout\ & (!\Equal2~31_combout\ & (!\Equal2~32_combout\ & !\Equal2~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~30_combout\,
	datab => \Equal2~31_combout\,
	datac => \Equal2~32_combout\,
	datad => \Equal2~33_combout\,
	combout => \Equal2~34_combout\);

\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

\Equal2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~35_combout\ = (\A[31]~input_o\ & (\B[31]~input_o\ & (\A[30]~input_o\ $ (!\B[30]~input_o\)))) # (!\A[31]~input_o\ & (!\B[31]~input_o\ & (\A[30]~input_o\ $ (!\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Equal2~35_combout\);

\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

\Equal2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~36_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Equal2~36_combout\);

\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

\Equal2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~37_combout\ = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \Equal2~37_combout\);

\Equal2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~38_combout\ = (\Equal2~34_combout\ & (\Equal2~35_combout\ & (!\Equal2~36_combout\ & !\Equal2~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~34_combout\,
	datab => \Equal2~35_combout\,
	datac => \Equal2~36_combout\,
	datad => \Equal2~37_combout\,
	combout => \Equal2~38_combout\);

\Equal2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~39_combout\ = (\Equal2~19_combout\ & (\Equal2~24_combout\ & (\Equal2~29_combout\ & \Equal2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~19_combout\,
	datab => \Equal2~24_combout\,
	datac => \Equal2~29_combout\,
	datad => \Equal2~38_combout\,
	combout => \Equal2~39_combout\);

\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\opcode[2]~input_o\ & (\opcode[0]~input_o\ $ (\Equal2~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \Equal2~39_combout\,
	combout => \Mux31~2_combout\);

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\A[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\LessThan0~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\A[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (!\B[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\LessThan0~7_cout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\A[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\LessThan0~11_cout\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\A[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & (!\B[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\A[8]~input_o\ & (\B[8]~input_o\ & !\LessThan0~15_cout\)) # (!\A[8]~input_o\ & ((\B[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\A[9]~input_o\ & ((!\LessThan0~17_cout\) # (!\B[9]~input_o\))) # (!\A[9]~input_o\ & (!\B[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\A[10]~input_o\ & (\B[10]~input_o\ & !\LessThan0~19_cout\)) # (!\A[10]~input_o\ & ((\B[10]~input_o\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\A[11]~input_o\ & ((!\LessThan0~21_cout\) # (!\B[11]~input_o\))) # (!\A[11]~input_o\ & (!\B[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\A[12]~input_o\ & (\B[12]~input_o\ & !\LessThan0~23_cout\)) # (!\A[12]~input_o\ & ((\B[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\A[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\B[13]~input_o\))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\A[14]~input_o\ & (\B[14]~input_o\ & !\LessThan0~27_cout\)) # (!\A[14]~input_o\ & ((\B[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

\LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\A[15]~input_o\ & ((!\LessThan0~29_cout\) # (!\B[15]~input_o\))) # (!\A[15]~input_o\ & (!\B[15]~input_o\ & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

\LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\A[16]~input_o\ & (\B[16]~input_o\ & !\LessThan0~31_cout\)) # (!\A[16]~input_o\ & ((\B[16]~input_o\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

\LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\A[17]~input_o\ & ((!\LessThan0~33_cout\) # (!\B[17]~input_o\))) # (!\A[17]~input_o\ & (!\B[17]~input_o\ & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

\LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\A[18]~input_o\ & (\B[18]~input_o\ & !\LessThan0~35_cout\)) # (!\A[18]~input_o\ & ((\B[18]~input_o\) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

\LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\A[19]~input_o\ & ((!\LessThan0~37_cout\) # (!\B[19]~input_o\))) # (!\A[19]~input_o\ & (!\B[19]~input_o\ & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

\LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\A[20]~input_o\ & (\B[20]~input_o\ & !\LessThan0~39_cout\)) # (!\A[20]~input_o\ & ((\B[20]~input_o\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

\LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\A[21]~input_o\ & ((!\LessThan0~41_cout\) # (!\B[21]~input_o\))) # (!\A[21]~input_o\ & (!\B[21]~input_o\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

\LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\A[22]~input_o\ & (\B[22]~input_o\ & !\LessThan0~43_cout\)) # (!\A[22]~input_o\ & ((\B[22]~input_o\) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

\LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\A[23]~input_o\ & ((!\LessThan0~45_cout\) # (!\B[23]~input_o\))) # (!\A[23]~input_o\ & (!\B[23]~input_o\ & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

\LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\A[24]~input_o\ & (\B[24]~input_o\ & !\LessThan0~47_cout\)) # (!\A[24]~input_o\ & ((\B[24]~input_o\) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

\LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\A[25]~input_o\ & ((!\LessThan0~49_cout\) # (!\B[25]~input_o\))) # (!\A[25]~input_o\ & (!\B[25]~input_o\ & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

\LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\A[26]~input_o\ & (\B[26]~input_o\ & !\LessThan0~51_cout\)) # (!\A[26]~input_o\ & ((\B[26]~input_o\) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

\LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\A[27]~input_o\ & ((!\LessThan0~53_cout\) # (!\B[27]~input_o\))) # (!\A[27]~input_o\ & (!\B[27]~input_o\ & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

\LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\A[28]~input_o\ & (\B[28]~input_o\ & !\LessThan0~55_cout\)) # (!\A[28]~input_o\ & ((\B[28]~input_o\) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

\LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\A[29]~input_o\ & ((!\LessThan0~57_cout\) # (!\B[29]~input_o\))) # (!\A[29]~input_o\ & (!\B[29]~input_o\ & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

\LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\A[30]~input_o\ & (\B[30]~input_o\ & !\LessThan0~59_cout\)) # (!\A[30]~input_o\ & ((\B[30]~input_o\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

\LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\A[31]~input_o\ & (\B[31]~input_o\ & \LessThan0~61_cout\)) # (!\A[31]~input_o\ & ((\B[31]~input_o\) # (\LessThan0~61_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

\opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\opcode[1]~input_o\ & (((!\LessThan0~62_combout\ & !\opcode[2]~input_o\)))) # (!\opcode[1]~input_o\ & ((\Mux31~2_combout\) # ((\LessThan0~62_combout\ & !\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \LessThan0~62_combout\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux31~3_combout\);

\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\B[5]~input_o\ & (!\B[6]~input_o\ & (!\B[7]~input_o\ & !\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[8]~input_o\,
	combout => \process_0~0_combout\);

\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\B[9]~input_o\ & (!\B[10]~input_o\ & (!\B[11]~input_o\ & !\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[10]~input_o\,
	datac => \B[11]~input_o\,
	datad => \B[12]~input_o\,
	combout => \process_0~1_combout\);

\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\B[13]~input_o\ & (!\B[14]~input_o\ & (!\B[15]~input_o\ & !\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[15]~input_o\,
	datad => \B[16]~input_o\,
	combout => \process_0~2_combout\);

\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!\B[17]~input_o\ & (!\B[18]~input_o\ & (!\B[19]~input_o\ & !\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \B[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \B[20]~input_o\,
	combout => \process_0~3_combout\);

\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~0_combout\ & (\process_0~1_combout\ & (\process_0~2_combout\ & \process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \process_0~1_combout\,
	datac => \process_0~2_combout\,
	datad => \process_0~3_combout\,
	combout => \process_0~4_combout\);

\process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!\B[21]~input_o\ & (!\B[22]~input_o\ & (!\B[23]~input_o\ & !\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \B[22]~input_o\,
	datac => \B[23]~input_o\,
	datad => \B[24]~input_o\,
	combout => \process_0~5_combout\);

\process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (!\B[25]~input_o\ & (!\B[26]~input_o\ & (!\B[27]~input_o\ & !\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \B[26]~input_o\,
	datac => \B[27]~input_o\,
	datad => \B[28]~input_o\,
	combout => \process_0~6_combout\);

\process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (!\B[29]~input_o\ & !\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \B[30]~input_o\,
	combout => \process_0~7_combout\);

\process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\process_0~4_combout\ & (\process_0~5_combout\ & (\process_0~6_combout\ & \process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~5_combout\,
	datac => \process_0~6_combout\,
	datad => \process_0~7_combout\,
	combout => \process_0~8_combout\);

\ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[29]~input_o\)) # (!\B[0]~input_o\ & ((\A[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~4_combout\);

\ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = (\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~12_combout\);

\ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\ShiftRight0~4_combout\) # ((\B[1]~input_o\ & \ShiftRight1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~4_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftRight1~12_combout\,
	combout => \ShiftRight0~5_combout\);

\ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\B[1]~input_o\ & (\A[27]~input_o\)) # (!\B[1]~input_o\ & ((\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[25]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~6_combout\);

\ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~7_combout\);

\ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\B[0]~input_o\ & (\ShiftRight0~6_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~6_combout\,
	datab => \ShiftRight0~7_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~8_combout\);

\ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (\B[2]~input_o\ & (\ShiftRight0~5_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \ShiftRight0~8_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~9_combout\);

\ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (\B[1]~input_o\ & (\A[23]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \A[21]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~10_combout\);

\ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (\B[1]~input_o\ & (\A[22]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~11_combout\);

\ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (\B[0]~input_o\ & (\ShiftRight0~10_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \ShiftRight0~11_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~12_combout\);

\ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[17]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~13_combout\);

\ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~14_combout\);

\ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\B[0]~input_o\ & (\ShiftRight0~13_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~13_combout\,
	datab => \ShiftRight0~14_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~15_combout\);

\ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\B[2]~input_o\ & (\ShiftRight0~12_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \ShiftRight0~15_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~16_combout\);

\ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\ShiftRight0~9_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftRight0~9_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~17_combout\);

\ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[1]~input_o\)) # (!\B[0]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~18_combout\);

\ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~13_combout\);

\ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (!\B[2]~input_o\ & ((\ShiftRight0~18_combout\) # ((\B[1]~input_o\ & \ShiftRight1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~18_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftRight1~13_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~19_combout\);

\ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[7]~input_o\)) # (!\B[0]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~20_combout\);

\ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~14_combout\);

\ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\ShiftRight0~20_combout\) # ((\ShiftRight1~14_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datab => \ShiftRight1~14_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~21_combout\);

\ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (!\B[3]~input_o\ & ((\ShiftRight0~19_combout\) # ((\B[2]~input_o\ & \ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~19_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftRight0~21_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~22_combout\);

\ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[13]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~23_combout\);

\ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[12]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~24_combout\);

\ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\B[0]~input_o\ & (\ShiftRight0~23_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \ShiftRight0~24_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~25_combout\);

\ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[9]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~26_combout\);

\ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[8]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~27_combout\);

\ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\B[0]~input_o\ & (\ShiftRight0~26_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~26_combout\,
	datab => \ShiftRight0~27_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~28_combout\);

\ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (\B[2]~input_o\ & (\ShiftRight0~25_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \ShiftRight0~28_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~29_combout\);

\ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (!\B[4]~input_o\ & ((\ShiftRight0~22_combout\) # ((\B[3]~input_o\ & \ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~22_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftRight0~29_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftRight0~30_combout\);

\ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\process_0~8_combout\ & ((\ShiftRight0~17_combout\) # (\ShiftRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \ShiftRight0~30_combout\,
	combout => \ShiftRight0~31_combout\);

\Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\opcode[2]~input_o\ & (\ShiftRight0~31_combout\)) # (!\opcode[2]~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~31_combout\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux31~4_combout\);

\process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~5_combout\ & (\process_0~6_combout\ & (!\B[29]~input_o\ & !\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \process_0~6_combout\,
	datac => \B[29]~input_o\,
	datad => \B[30]~input_o\,
	combout => \process_0~9_combout\);

\Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\process_0~4_combout\ & (\process_0~9_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~9_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux31~5_combout\);

\ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\B[2]~input_o\) # ((\B[0]~input_o\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \ShiftLeft0~2_combout\);

\Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux31~5_combout\ & (!\B[3]~input_o\ & !\ShiftLeft0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftLeft0~2_combout\,
	combout => \Mux31~6_combout\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \B[0]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~0_combout\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\A[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\A[0]~input_o\ & (!\Add0~2_cout\)) # (!\A[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\A[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

\Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\opcode[2]~input_o\ & (\A[0]~input_o\ & (\Mux31~6_combout\))) # (!\opcode[2]~input_o\ & (((\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Mux31~6_combout\,
	datac => \Add0~3_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Mux31~7_combout\);

\Mux31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~13_combout\ = (\opcode[2]~input_o\ & (\B[0]~input_o\ $ ((\A[0]~input_o\)))) # (!\opcode[2]~input_o\ & (((\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Add0~3_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Mux31~13_combout\);

\Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & (\Mux31~7_combout\)) # (!\opcode[0]~input_o\ & ((\Mux31~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Mux31~7_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mux31~13_combout\,
	combout => \Mux31~8_combout\);

\Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\process_0~8_combout\ & ((\ShiftRight0~17_combout\) # ((\ShiftRight0~30_combout\)))) # (!\process_0~8_combout\ & (((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \A[31]~input_o\,
	datad => \ShiftRight0~30_combout\,
	combout => \Mux31~9_combout\);

\Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~10_combout\ = (\opcode[2]~input_o\ & (((\Mux31~9_combout\)))) # (!\opcode[2]~input_o\ & ((\B[0]~input_o\) # ((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Mux31~9_combout\,
	combout => \Mux31~10_combout\);

\Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~11_combout\ = (\opcode[1]~input_o\ & ((\Mux31~8_combout\ & ((\Mux31~10_combout\))) # (!\Mux31~8_combout\ & (\Mux31~4_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \opcode[1]~input_o\,
	datac => \Mux31~8_combout\,
	datad => \Mux31~10_combout\,
	combout => \Mux31~11_combout\);

\opcode[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

\Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~12_combout\ = (\opcode[3]~input_o\ & (\Mux31~3_combout\)) # (!\opcode[3]~input_o\ & ((\Mux31~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~11_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux31~12_combout\);

\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\opcode[1]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\) # (\opcode[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & \opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux30~0_combout\);

\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \B[1]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~5_combout\);

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\A[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & ((\A[1]~input_o\) # (!\Add0~4\))) # (!\Add0~5_combout\ & (\A[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (!\opcode[2]~input_o\ & ((\Mux30~0_combout\) # ((\Add0~6_combout\ & !\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Add0~6_combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux30~1_combout\);

\ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[14]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~15_combout\);

\ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\B[0]~input_o\ & (\ShiftRight1~15_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~15_combout\,
	datab => \ShiftRight0~23_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~32_combout\);

\ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[10]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~16_combout\);

\ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\B[0]~input_o\ & (\ShiftRight1~16_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~16_combout\,
	datab => \ShiftRight0~26_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~33_combout\);

\ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (\B[2]~input_o\ & (\ShiftRight0~32_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \ShiftRight0~33_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~34_combout\);

\ShiftRight0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~35_combout\);

\ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~17_combout\);

\ShiftRight0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\ShiftRight0~35_combout\) # ((\ShiftRight1~17_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~35_combout\,
	datab => \ShiftRight1~17_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~36_combout\);

\ShiftRight0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~37_combout\);

\ShiftRight0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~38_combout\);

\ShiftRight0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (\B[2]~input_o\ & (\ShiftRight0~36_combout\)) # (!\B[2]~input_o\ & (((\ShiftRight0~37_combout\) # (\ShiftRight0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~36_combout\,
	datab => \ShiftRight0~37_combout\,
	datac => \ShiftRight0~38_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~39_combout\);

\ShiftRight0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & (\ShiftRight0~34_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~34_combout\,
	datab => \ShiftRight0~39_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ShiftRight0~40_combout\);

\ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (\B[1]~input_o\ & (\A[24]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \A[22]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~18_combout\);

\ShiftRight0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\B[0]~input_o\ & (\ShiftRight1~18_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~18_combout\,
	datab => \ShiftRight0~10_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~41_combout\);

\ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[18]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~19_combout\);

\ShiftRight0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\B[0]~input_o\ & (\ShiftRight1~19_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \ShiftRight0~13_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~42_combout\);

\ShiftRight0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (\B[2]~input_o\ & (\ShiftRight0~41_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~41_combout\,
	datab => \ShiftRight0~42_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~43_combout\);

\ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[26]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~20_combout\);

\ShiftRight0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & (\ShiftRight1~20_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~20_combout\,
	datab => \ShiftRight0~6_combout\,
	datac => \B[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~44_combout\);

\ShiftRight0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\A[31]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~45_combout\);

\ShiftRight1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (\B[0]~input_o\ & (\A[30]~input_o\)) # (!\B[0]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[29]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~21_combout\);

\ShiftRight0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\ShiftRight0~45_combout\)) # (!\B[1]~input_o\ & ((\ShiftRight1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftRight0~45_combout\,
	datac => \ShiftRight1~21_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~46_combout\);

\ShiftRight0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (\B[3]~input_o\ & (((\ShiftRight0~44_combout\) # (\ShiftRight0~46_combout\)))) # (!\B[3]~input_o\ & (\ShiftRight0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftRight0~44_combout\,
	datad => \ShiftRight0~46_combout\,
	combout => \ShiftRight0~47_combout\);

\ShiftRight0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\process_0~8_combout\ & ((\ShiftRight0~40_combout\) # ((\B[4]~input_o\ & \ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \ShiftRight0~40_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftRight0~47_combout\,
	combout => \ShiftRight0~48_combout\);

\process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (!\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \process_0~10_combout\);

\ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~3_combout\);

\ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\process_0~10_combout\ & (\Mux31~5_combout\ & (\ShiftLeft0~3_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \Mux31~5_combout\,
	datac => \ShiftLeft0~3_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~4_combout\);

\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & (\ShiftLeft0~4_combout\)) # (!\opcode[0]~input_o\ & ((\Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \ShiftLeft0~4_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Mux30~2_combout\);

\ShiftRight1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\A[31]~input_o\)) # (!\B[1]~input_o\ & ((\ShiftRight1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[31]~input_o\,
	datac => \ShiftRight1~21_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~22_combout\);

\ShiftRight1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\B[3]~input_o\ & (((\ShiftRight0~44_combout\) # (\ShiftRight1~22_combout\)))) # (!\B[3]~input_o\ & (\ShiftRight0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftRight0~44_combout\,
	datad => \ShiftRight1~22_combout\,
	combout => \ShiftRight1~23_combout\);

\ShiftRight1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (\process_0~8_combout\ & ((\ShiftRight0~40_combout\) # ((\B[4]~input_o\ & \ShiftRight1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \ShiftRight0~40_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftRight1~23_combout\,
	combout => \ShiftRight1~24_combout\);

\ShiftRight1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\ShiftRight1~24_combout\) # ((\A[31]~input_o\ & !\process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~24_combout\,
	datab => \A[31]~input_o\,
	datad => \process_0~8_combout\,
	combout => \ShiftRight1~25_combout\);

\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\opcode[1]~input_o\ & ((\Mux30~2_combout\ & ((\ShiftRight1~25_combout\))) # (!\Mux30~2_combout\ & (\ShiftRight0~48_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~48_combout\,
	datab => \opcode[1]~input_o\,
	datac => \Mux30~2_combout\,
	datad => \ShiftRight1~25_combout\,
	combout => \Mux30~3_combout\);

\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!\opcode[3]~input_o\ & ((\Mux30~1_combout\) # ((\opcode[2]~input_o\ & \Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \opcode[2]~input_o\,
	datac => \Mux30~3_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux30~4_combout\);

\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\opcode[0]~input_o\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Mux29~0_combout\);

\ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~5_combout\);

\ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\ShiftLeft0~5_combout\) # ((\B[0]~input_o\ & (\A[1]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~6_combout\);

\ShiftLeft0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~109_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & \ShiftLeft0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~109_combout\);

\Mux28~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~19_combout\ = (\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & ((\Mux31~5_combout\) # (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux28~19_combout\);

\ShiftRight1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[31]~input_o\)) # (!\B[1]~input_o\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~27_combout\);

\ShiftRight1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[29]~input_o\)) # (!\B[1]~input_o\ & ((\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[29]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~28_combout\);

\ShiftRight1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~29_combout\);

\ShiftRight1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\B[2]~input_o\ & (\ShiftRight1~27_combout\)) # (!\B[2]~input_o\ & (((\ShiftRight1~28_combout\) # (\ShiftRight1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~27_combout\,
	datab => \ShiftRight1~28_combout\,
	datac => \ShiftRight1~29_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~30_combout\);

\ShiftRight1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~31_combout\);

\ShiftRight1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (\B[0]~input_o\ & (\ShiftRight1~31_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datab => \ShiftRight1~18_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~32_combout\);

\ShiftRight1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \A[19]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~33_combout\);

\ShiftRight1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = (\B[0]~input_o\ & (\ShiftRight1~33_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~33_combout\,
	datab => \ShiftRight1~19_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~34_combout\);

\ShiftRight0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\B[2]~input_o\ & (\ShiftRight1~32_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~32_combout\,
	datab => \ShiftRight1~34_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~49_combout\);

\ShiftRight1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = (\B[3]~input_o\ & (\ShiftRight1~30_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~30_combout\,
	datab => \ShiftRight0~49_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight1~35_combout\);

\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\opcode[0]~input_o\ & ((\B[4]~input_o\) # ((!\process_0~9_combout\) # (!\process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \process_0~4_combout\,
	datad => \process_0~9_combout\,
	combout => \Mux28~6_combout\);

\ShiftRight1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (!\B[2]~input_o\ & ((\ShiftRight1~28_combout\) # ((\ShiftRight1~20_combout\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~28_combout\,
	datab => \ShiftRight1~20_combout\,
	datac => \B[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~36_combout\);

\ShiftRight0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\ShiftRight1~36_combout\) # ((\B[2]~input_o\ & (\ShiftRight1~12_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~36_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftRight1~12_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~50_combout\);

\ShiftRight0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\B[3]~input_o\ & (\ShiftRight0~50_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~50_combout\,
	datab => \ShiftRight0~49_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~51_combout\);

\Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux28~7_combout\);

\ShiftRight1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~37_combout\);

\ShiftRight1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~38_combout\);

\ShiftRight1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = (\ShiftRight1~37_combout\) # ((\B[0]~input_o\ & \ShiftRight1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~37_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftRight1~38_combout\,
	combout => \ShiftRight1~39_combout\);

\ShiftRight1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~26_combout\);

\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux28~7_combout\ & (((!\ShiftRight1~26_combout\)))) # (!\Mux28~7_combout\ & ((\ShiftRight1~26_combout\ & ((\ShiftRight1~13_combout\))) # (!\ShiftRight1~26_combout\ & (\ShiftRight1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \ShiftRight1~39_combout\,
	datac => \ShiftRight1~26_combout\,
	datad => \ShiftRight1~13_combout\,
	combout => \Mux29~1_combout\);

\ShiftRight1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[15]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~40_combout\);

\ShiftRight1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~41_combout\ = (\B[0]~input_o\ & (\ShiftRight1~40_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~40_combout\,
	datab => \ShiftRight1~15_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~41_combout\);

\ShiftRight1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~42_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~42_combout\);

\ShiftRight1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~43_combout\ = (\B[0]~input_o\ & (\ShiftRight1~42_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~42_combout\,
	datab => \ShiftRight1~16_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~43_combout\);

\ShiftRight0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\B[2]~input_o\ & (\ShiftRight1~41_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~41_combout\,
	datab => \ShiftRight1~43_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~52_combout\);

\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux28~7_combout\ & ((\Mux29~1_combout\ & ((\ShiftRight0~52_combout\))) # (!\Mux29~1_combout\ & (\ShiftRight1~14_combout\)))) # (!\Mux28~7_combout\ & (((\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \Mux28~7_combout\,
	datac => \Mux29~1_combout\,
	datad => \ShiftRight0~52_combout\,
	combout => \Mux29~2_combout\);

\Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\process_0~4_combout\ & (\process_0~9_combout\ & ((!\opcode[0]~input_o\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~9_combout\,
	datac => \B[4]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux28~8_combout\);

\Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\process_0~4_combout\ & ((\process_0~9_combout\ & ((!\B[4]~input_o\))) # (!\process_0~9_combout\ & (\opcode[0]~input_o\)))) # (!\process_0~4_combout\ & (\opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \process_0~4_combout\,
	datac => \process_0~9_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux28~9_combout\);

\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux28~8_combout\ & ((\Mux28~9_combout\ & ((\Mux29~2_combout\))) # (!\Mux28~9_combout\ & (\ShiftRight0~51_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => \Mux29~2_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux29~3_combout\);

\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux28~6_combout\ & ((\Mux29~3_combout\ & ((\A[31]~input_o\))) # (!\Mux29~3_combout\ & (\ShiftRight1~35_combout\)))) # (!\Mux28~6_combout\ & (((\Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~35_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux28~6_combout\,
	datad => \Mux29~3_combout\,
	combout => \Mux29~4_combout\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \B[2]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~8_combout\);

\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\A[2]~input_o\ & (\Add0~7\ & VCC)) # (!\A[2]~input_o\ & (!\Add0~7\)))) # (!\Add0~8_combout\ & ((\A[2]~input_o\ & (!\Add0~7\)) # (!\A[2]~input_o\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & (!\A[2]~input_o\ & !\Add0~7\)) # (!\Add0~8_combout\ & ((!\Add0~7\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\opcode[1]~input_o\) # (!\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux28~5_combout\);

\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\opcode[2]~input_o\ & ((\opcode[1]~input_o\) # (\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Mux28~4_combout\);

\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux28~5_combout\ & ((\Mux28~4_combout\ & (\Mux29~4_combout\)) # (!\Mux28~4_combout\ & ((\Add0~9_combout\))))) # (!\Mux28~5_combout\ & (((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~4_combout\,
	datab => \Add0~9_combout\,
	datac => \Mux28~5_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux29~5_combout\);

\Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\Mux28~19_combout\ & ((\Mux29~5_combout\ & ((\Equal2~1_combout\))) # (!\Mux29~5_combout\ & (\ShiftLeft0~109_combout\)))) # (!\Mux28~19_combout\ & (((\Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~109_combout\,
	datab => \Equal2~1_combout\,
	datac => \Mux28~19_combout\,
	datad => \Mux29~5_combout\,
	combout => \Mux29~6_combout\);

\Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\opcode[1]~input_o\ & !\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux28~10_combout\);

\Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (!\opcode[3]~input_o\ & ((\Mux28~10_combout\ & (\Mux29~0_combout\)) # (!\Mux28~10_combout\ & ((\Mux29~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux29~6_combout\,
	datac => \Mux28~10_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux29~7_combout\);

\Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # (\opcode[0]~input_o\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & \opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Mux28~11_combout\);

\ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~7_combout\);

\ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\ShiftRight1~26_combout\ & ((\ShiftLeft0~7_combout\) # ((\B[1]~input_o\ & \ShiftLeft0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~26_combout\,
	datab => \ShiftLeft0~7_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftLeft0~3_combout\,
	combout => \ShiftLeft0~8_combout\);

\ShiftRight1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~44_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[28]~input_o\)) # (!\B[0]~input_o\ & ((\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[27]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~44_combout\);

\ShiftRight1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~45_combout\ = (\ShiftRight1~44_combout\) # ((\B[1]~input_o\ & \ShiftRight1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~44_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftRight1~21_combout\,
	combout => \ShiftRight1~45_combout\);

\ShiftRight1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~46_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\A[31]~input_o\)) # (!\B[2]~input_o\ & ((\ShiftRight1~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[31]~input_o\,
	datac => \ShiftRight1~45_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~46_combout\);

\ShiftRight1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~47_combout\ = (\B[0]~input_o\ & (\ShiftRight0~7_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight1~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~7_combout\,
	datab => \ShiftRight1~31_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~47_combout\);

\ShiftRight1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~48_combout\ = (\B[0]~input_o\ & (\ShiftRight0~11_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~11_combout\,
	datab => \ShiftRight1~33_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~48_combout\);

\ShiftRight0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\B[2]~input_o\ & (\ShiftRight1~47_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~47_combout\,
	datab => \ShiftRight1~48_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~53_combout\);

\ShiftRight1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~49_combout\ = (\ShiftRight1~46_combout\) # ((\ShiftRight0~53_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~46_combout\,
	datab => \ShiftRight0~53_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight1~49_combout\);

\ShiftRight0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\B[2]~input_o\ & (((\ShiftRight0~45_combout\ & !\B[1]~input_o\)))) # (!\B[2]~input_o\ & (\ShiftRight1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~45_combout\,
	datab => \ShiftRight0~45_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~54_combout\);

\ShiftRight0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\B[3]~input_o\ & (\ShiftRight0~54_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~54_combout\,
	datab => \ShiftRight0~53_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~55_combout\);

\ShiftRight1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~50_combout\ = (\B[0]~input_o\ & (\ShiftRight0~27_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \ShiftRight1~38_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~50_combout\);

\ShiftRight1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~51_combout\ = (\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~51_combout\);

\Mux28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = (\Mux28~7_combout\ & (((!\ShiftRight1~26_combout\)))) # (!\Mux28~7_combout\ & ((\ShiftRight1~26_combout\ & ((\ShiftRight1~51_combout\))) # (!\ShiftRight1~26_combout\ & (\ShiftRight1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \ShiftRight1~50_combout\,
	datac => \ShiftRight1~26_combout\,
	datad => \ShiftRight1~51_combout\,
	combout => \Mux28~12_combout\);

\ShiftRight1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~52_combout\ = (\B[0]~input_o\ & (\ShiftRight0~14_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~14_combout\,
	datab => \ShiftRight1~40_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~52_combout\);

\ShiftRight1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~53_combout\ = (\B[0]~input_o\ & (\ShiftRight0~24_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~24_combout\,
	datab => \ShiftRight1~42_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~53_combout\);

\ShiftRight0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (\B[2]~input_o\ & (\ShiftRight1~52_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight1~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~52_combout\,
	datab => \ShiftRight1~53_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~56_combout\);

\Mux28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = (\Mux28~7_combout\ & ((\Mux28~12_combout\ & ((\ShiftRight0~56_combout\))) # (!\Mux28~12_combout\ & (\ShiftRight1~17_combout\)))) # (!\Mux28~7_combout\ & (((\Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~17_combout\,
	datab => \Mux28~7_combout\,
	datac => \Mux28~12_combout\,
	datad => \ShiftRight0~56_combout\,
	combout => \Mux28~13_combout\);

\Mux28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~14_combout\ = (\Mux28~8_combout\ & ((\Mux28~9_combout\ & ((\Mux28~13_combout\))) # (!\Mux28~9_combout\ & (\ShiftRight0~55_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~55_combout\,
	datab => \Mux28~13_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux28~14_combout\);

\Mux28~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~15_combout\ = (\Mux28~6_combout\ & ((\Mux28~14_combout\ & ((\A[31]~input_o\))) # (!\Mux28~14_combout\ & (\ShiftRight1~49_combout\)))) # (!\Mux28~6_combout\ & (((\Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~49_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux28~6_combout\,
	datad => \Mux28~14_combout\,
	combout => \Mux28~15_combout\);

\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \B[3]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~11_combout\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (\A[3]~input_o\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & ((\A[3]~input_o\) # (!\Add0~10\))) # (!\Add0~11_combout\ & (\A[3]~input_o\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\Mux28~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~16_combout\ = (\Mux28~5_combout\ & ((\Mux28~4_combout\ & (\Mux28~15_combout\)) # (!\Mux28~4_combout\ & ((\Add0~12_combout\))))) # (!\Mux28~5_combout\ & (((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~15_combout\,
	datab => \Add0~12_combout\,
	datac => \Mux28~5_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux28~16_combout\);

\Mux28~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~17_combout\ = (\Mux28~19_combout\ & ((\Mux28~16_combout\ & ((\Equal2~2_combout\))) # (!\Mux28~16_combout\ & (\ShiftLeft0~8_combout\)))) # (!\Mux28~19_combout\ & (((\Mux28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \Equal2~2_combout\,
	datac => \Mux28~19_combout\,
	datad => \Mux28~16_combout\,
	combout => \Mux28~17_combout\);

\Mux28~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~18_combout\ = (!\opcode[3]~input_o\ & ((\Mux28~10_combout\ & (\Mux28~11_combout\)) # (!\Mux28~10_combout\ & ((\Mux28~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~11_combout\,
	datab => \Mux28~17_combout\,
	datac => \Mux28~10_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux28~18_combout\);

\ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\B[2]~input_o\ & (\A[0]~input_o\ & (!\B[0]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~9_combout\);

\ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[1]~input_o\)) # (!\B[1]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~10_combout\);

\ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~11_combout\);

\ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\ShiftLeft0~10_combout\) # ((\ShiftLeft0~11_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \ShiftLeft0~11_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~12_combout\);

\ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\ShiftLeft0~9_combout\) # ((\ShiftLeft0~12_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~9_combout\,
	datab => \ShiftLeft0~12_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~13_combout\);

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \B[4]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~14_combout\);

\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14_combout\ & ((\A[4]~input_o\ & (\Add0~13\ & VCC)) # (!\A[4]~input_o\ & (!\Add0~13\)))) # (!\Add0~14_combout\ & ((\A[4]~input_o\ & (!\Add0~13\)) # (!\A[4]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\Add0~14_combout\ & (!\A[4]~input_o\ & !\Add0~13\)) # (!\Add0~14_combout\ & ((!\Add0~13\) # (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\B[4]~input_o\) # ((\B[3]~input_o\) # ((!\process_0~9_combout\) # (!\process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \process_0~4_combout\,
	datad => \process_0~9_combout\,
	combout => \Mux24~0_combout\);

\ShiftRight0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = (\B[2]~input_o\ & (\ShiftRight0~8_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~8_combout\,
	datab => \ShiftRight0~12_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~57_combout\);

\ShiftRight0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (\B[3]~input_o\ & (((\ShiftRight0~5_combout\ & !\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\ShiftRight0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \ShiftRight0~5_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~58_combout\);

\ShiftRight0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\B[2]~input_o\ & (\ShiftRight0~15_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \ShiftRight0~25_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~59_combout\);

\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\process_0~8_combout\ & ((\B[4]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Mux24~1_combout\);

\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\process_0~8_combout\ & (!\B[4]~input_o\ & ((\B[3]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux24~2_combout\);

\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux24~1_combout\ & ((\Mux24~2_combout\ & ((\ShiftRight0~59_combout\))) # (!\Mux24~2_combout\ & (\ShiftRight0~58_combout\)))) # (!\Mux24~1_combout\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~58_combout\,
	datab => \ShiftRight0~59_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux27~0_combout\);

\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux24~0_combout\ & (((\Mux27~0_combout\)))) # (!\Mux24~0_combout\ & ((\Mux27~0_combout\ & ((\ShiftRight0~28_combout\))) # (!\Mux27~0_combout\ & (\ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \ShiftRight0~28_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\opcode[1]~input_o\ & (((!\opcode[0]~input_o\) # (!\process_0~8_combout\)) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \process_0~8_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux24~3_combout\);

\ShiftRight1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~54_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\A[31]~input_o\)) # (!\B[2]~input_o\ & ((\ShiftRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[31]~input_o\,
	datac => \ShiftRight0~5_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight1~54_combout\);

\ShiftRight1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~55_combout\ = (\ShiftRight1~54_combout\) # ((\ShiftRight0~57_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~54_combout\,
	datab => \ShiftRight0~57_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight1~55_combout\);

\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\opcode[1]~input_o\ & \Mux28~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Mux28~6_combout\,
	combout => \Mux24~4_combout\);

\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux24~3_combout\ & (((\Mux24~4_combout\)))) # (!\Mux24~3_combout\ & ((\Mux24~4_combout\ & (\ShiftRight1~55_combout\)) # (!\Mux24~4_combout\ & ((\Equal2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \ShiftRight1~55_combout\,
	datac => \Mux24~4_combout\,
	datad => \Equal2~4_combout\,
	combout => \Mux27~2_combout\);

\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux24~3_combout\ & ((\Mux27~2_combout\ & ((\A[31]~input_o\))) # (!\Mux27~2_combout\ & (\Mux27~1_combout\)))) # (!\Mux24~3_combout\ & (((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux27~2_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux27~3_combout\);

\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\opcode[2]~input_o\) # ((\opcode[1]~input_o\ & \opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \Mux24~5_combout\);

\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\B[4]~input_o\ & ((\Mux24~5_combout\) # ((\A[4]~input_o\ & \Mux28~10_combout\)))) # (!\B[4]~input_o\ & (\Mux24~5_combout\ & ((\A[4]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \Mux24~5_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux27~4_combout\);

\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux28~10_combout\ & (((\Mux27~4_combout\)))) # (!\Mux28~10_combout\ & ((\Mux27~4_combout\ & ((\Mux27~3_combout\))) # (!\Mux27~4_combout\ & (\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Mux27~3_combout\,
	datac => \Mux28~10_combout\,
	datad => \Mux27~4_combout\,
	combout => \Mux27~5_combout\);

\Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (!\opcode[3]~input_o\ & ((\opcode[1]~input_o\) # ((!\opcode[0]~input_o\) # (!\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \Mux27~6_combout\);

\Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\opcode[2]~input_o\ & (\opcode[0]~input_o\ & !\opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux24~6_combout\);

\Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\Mux24~6_combout\ & (!\opcode[3]~input_o\ & !\Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~6_combout\,
	datac => \opcode[3]~input_o\,
	datad => \Mux24~0_combout\,
	combout => \Mux27~7_combout\);

\Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\ShiftLeft0~13_combout\ & ((\Mux27~7_combout\) # ((\Mux27~5_combout\ & \Mux27~6_combout\)))) # (!\ShiftLeft0~13_combout\ & (\Mux27~5_combout\ & (\Mux27~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \Mux27~5_combout\,
	datac => \Mux27~6_combout\,
	datad => \Mux27~7_combout\,
	combout => \Mux27~8_combout\);

\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \B[5]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~17_combout\);

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Add0~17_combout\ $ (\A[5]~input_o\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\Add0~17_combout\ & ((\A[5]~input_o\) # (!\Add0~16\))) # (!\Add0~17_combout\ & (\A[5]~input_o\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\ShiftRight1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~56_combout\ = (\B[3]~input_o\ & ((\process_0~10_combout\ & (\ShiftRight1~21_combout\)) # (!\process_0~10_combout\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftRight1~21_combout\,
	datac => \A[31]~input_o\,
	datad => \process_0~10_combout\,
	combout => \ShiftRight1~56_combout\);

\ShiftRight0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\B[2]~input_o\ & ((\B[0]~input_o\ & (\ShiftRight1~20_combout\)) # (!\B[0]~input_o\ & ((\ShiftRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftRight1~20_combout\,
	datac => \ShiftRight0~6_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~60_combout\);

\ShiftRight0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (\ShiftRight0~60_combout\) # ((\ShiftRight0~41_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~60_combout\,
	datab => \ShiftRight0~41_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~61_combout\);

\ShiftRight1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~57_combout\ = (\ShiftRight1~56_combout\) # ((\ShiftRight0~61_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~56_combout\,
	datab => \ShiftRight0~61_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight1~57_combout\);

\ShiftRight0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~84_combout\ = (\B[1]~input_o\ & (\A[31]~input_o\ & (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\ShiftRight1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[0]~input_o\,
	datac => \ShiftRight1~21_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~84_combout\);

\ShiftRight0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\B[3]~input_o\ & (((\ShiftRight0~84_combout\ & !\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\ShiftRight0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~61_combout\,
	datab => \ShiftRight0~84_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~62_combout\);

\ShiftRight0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (\B[2]~input_o\ & (\ShiftRight0~42_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~42_combout\,
	datab => \ShiftRight0~32_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~63_combout\);

\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux24~1_combout\ & ((\Mux24~2_combout\ & ((\ShiftRight0~63_combout\))) # (!\Mux24~2_combout\ & (\ShiftRight0~62_combout\)))) # (!\Mux24~1_combout\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~62_combout\,
	datab => \ShiftRight0~63_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux26~0_combout\);

\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux24~0_combout\ & (((\Mux26~0_combout\)))) # (!\Mux24~0_combout\ & ((\Mux26~0_combout\ & ((\ShiftRight0~33_combout\))) # (!\Mux26~0_combout\ & (\ShiftRight0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~36_combout\,
	datab => \ShiftRight0~33_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux24~4_combout\ & (((\Mux24~3_combout\)))) # (!\Mux24~4_combout\ & ((\Mux24~3_combout\ & (\Mux26~1_combout\)) # (!\Mux24~3_combout\ & ((\Equal2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux24~3_combout\,
	datad => \Equal2~5_combout\,
	combout => \Mux26~2_combout\);

\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux24~4_combout\ & ((\Mux26~2_combout\ & ((\A[31]~input_o\))) # (!\Mux26~2_combout\ & (\ShiftRight1~57_combout\)))) # (!\Mux24~4_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~57_combout\,
	datab => \Mux24~4_combout\,
	datac => \Mux26~2_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux26~3_combout\);

\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\A[5]~input_o\ & ((\Mux24~5_combout\) # ((\B[5]~input_o\ & \Mux28~10_combout\)))) # (!\A[5]~input_o\ & (\Mux24~5_combout\ & ((\B[5]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Mux24~5_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux26~4_combout\);

\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux28~10_combout\ & (((\Mux26~4_combout\)))) # (!\Mux28~10_combout\ & ((\Mux26~4_combout\ & ((\Mux26~3_combout\))) # (!\Mux26~4_combout\ & (\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Mux26~3_combout\,
	datac => \Mux28~10_combout\,
	datad => \Mux26~4_combout\,
	combout => \Mux26~5_combout\);

\ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[5]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~14_combout\);

\ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~11_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~11_combout\,
	datab => \ShiftLeft0~14_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~15_combout\);

\ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\B[2]~input_o\ & (((\ShiftLeft0~3_combout\ & !\B[1]~input_o\)))) # (!\B[2]~input_o\ & (\ShiftLeft0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~15_combout\,
	datab => \ShiftLeft0~3_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~16_combout\);

\Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux27~7_combout\ & ((\ShiftLeft0~16_combout\) # ((\Mux27~6_combout\ & \Mux26~5_combout\)))) # (!\Mux27~7_combout\ & (\Mux27~6_combout\ & (\Mux26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~7_combout\,
	datab => \Mux27~6_combout\,
	datac => \Mux26~5_combout\,
	datad => \ShiftLeft0~16_combout\,
	combout => \Mux26~6_combout\);

\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \B[6]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~20_combout\);

\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\ & ((\A[6]~input_o\ & (\Add0~19\ & VCC)) # (!\A[6]~input_o\ & (!\Add0~19\)))) # (!\Add0~20_combout\ & ((\A[6]~input_o\ & (!\Add0~19\)) # (!\A[6]~input_o\ & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\Add0~20_combout\ & (!\A[6]~input_o\ & !\Add0~19\)) # (!\Add0~20_combout\ & ((!\Add0~19\) # (!\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

\ShiftRight0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (\B[2]~input_o\ & (((\ShiftRight1~28_combout\) # (\ShiftRight1~29_combout\)))) # (!\B[2]~input_o\ & (\ShiftRight1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~32_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftRight1~28_combout\,
	datad => \ShiftRight1~29_combout\,
	combout => \ShiftRight0~64_combout\);

\ShiftRight0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\B[3]~input_o\ & (\ShiftRight1~12_combout\ & (\process_0~10_combout\))) # (!\B[3]~input_o\ & (((\ShiftRight0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~12_combout\,
	datab => \process_0~10_combout\,
	datac => \ShiftRight0~64_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~65_combout\);

\ShiftRight0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (\B[2]~input_o\ & (\ShiftRight1~34_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~34_combout\,
	datab => \ShiftRight1~41_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~66_combout\);

\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux24~1_combout\ & ((\Mux24~2_combout\ & ((\ShiftRight0~66_combout\))) # (!\Mux24~2_combout\ & (\ShiftRight0~65_combout\)))) # (!\Mux24~1_combout\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~65_combout\,
	datab => \ShiftRight0~66_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux25~0_combout\);

\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux24~0_combout\ & (((\Mux25~0_combout\)))) # (!\Mux24~0_combout\ & ((\Mux25~0_combout\ & ((\ShiftRight1~43_combout\))) # (!\Mux25~0_combout\ & (\ShiftRight1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~39_combout\,
	datab => \ShiftRight1~43_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

\ShiftRight1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~58_combout\ = (\B[3]~input_o\ & ((\ShiftLeft0~2_combout\ & (\A[31]~input_o\)) # (!\ShiftLeft0~2_combout\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[30]~input_o\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftRight1~58_combout\);

\ShiftRight1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~59_combout\ = (\ShiftRight1~58_combout\) # ((\ShiftRight0~64_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~58_combout\,
	datab => \ShiftRight0~64_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight1~59_combout\);

\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux24~3_combout\ & (((\Mux24~4_combout\)))) # (!\Mux24~3_combout\ & ((\Mux24~4_combout\ & (\ShiftRight1~59_combout\)) # (!\Mux24~4_combout\ & ((\Equal2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \ShiftRight1~59_combout\,
	datac => \Mux24~4_combout\,
	datad => \Equal2~6_combout\,
	combout => \Mux25~2_combout\);

\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux24~3_combout\ & ((\Mux25~2_combout\ & ((\A[31]~input_o\))) # (!\Mux25~2_combout\ & (\Mux25~1_combout\)))) # (!\Mux24~3_combout\ & (((\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux25~2_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux25~3_combout\);

\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\A[6]~input_o\ & ((\Mux24~5_combout\) # ((\B[6]~input_o\ & \Mux28~10_combout\)))) # (!\A[6]~input_o\ & (\Mux24~5_combout\ & ((\B[6]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \Mux24~5_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux25~4_combout\);

\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux28~10_combout\ & (((\Mux25~4_combout\)))) # (!\Mux28~10_combout\ & ((\Mux25~4_combout\ & ((\Mux25~3_combout\))) # (!\Mux25~4_combout\ & (\Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \Mux25~3_combout\,
	datac => \Mux28~10_combout\,
	datad => \Mux25~4_combout\,
	combout => \Mux25~5_combout\);

\ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~17_combout\);

\ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~14_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~14_combout\,
	datab => \ShiftLeft0~17_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~18_combout\);

\ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~6_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~6_combout\,
	datab => \ShiftLeft0~18_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~19_combout\);

\Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux27~7_combout\ & ((\ShiftLeft0~19_combout\) # ((\Mux27~6_combout\ & \Mux25~5_combout\)))) # (!\Mux27~7_combout\ & (\Mux27~6_combout\ & (\Mux25~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~7_combout\,
	datab => \Mux27~6_combout\,
	datac => \Mux25~5_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \Mux25~6_combout\);

\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \B[7]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~23_combout\);

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Add0~23_combout\ $ (\A[7]~input_o\ $ (!\Add0~22\)))) # (GND)
-- \Add0~25\ = CARRY((\Add0~23_combout\ & ((\A[7]~input_o\) # (!\Add0~22\))) # (!\Add0~23_combout\ & (\A[7]~input_o\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

\ShiftRight0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (\B[2]~input_o\ & (\ShiftRight1~45_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~45_combout\,
	datab => \ShiftRight1~47_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~68_combout\);

\ShiftRight1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~65_combout\ = (\B[3]~input_o\ & (\A[31]~input_o\)) # (!\B[3]~input_o\ & ((\ShiftRight0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[31]~input_o\,
	datac => \ShiftRight0~68_combout\,
	combout => \ShiftRight1~65_combout\);

\ShiftRight0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (\B[3]~input_o\ & \A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[31]~input_o\,
	combout => \ShiftRight0~67_combout\);

\ShiftRight0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (\ShiftRight1~26_combout\ & ((\ShiftRight1~47_combout\) # ((\ShiftRight0~67_combout\ & !\ShiftLeft0~2_combout\)))) # (!\ShiftRight1~26_combout\ & (((\ShiftRight0~67_combout\ & !\ShiftLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~26_combout\,
	datab => \ShiftRight1~47_combout\,
	datac => \ShiftRight0~67_combout\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftRight0~69_combout\);

\ShiftRight0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (\ShiftRight0~69_combout\) # ((\B[2]~input_o\ & (\ShiftRight1~45_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~69_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftRight1~45_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~70_combout\);

\ShiftRight0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (\B[2]~input_o\ & (\ShiftRight1~48_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~48_combout\,
	datab => \ShiftRight1~52_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftRight0~71_combout\);

\Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux24~1_combout\ & ((\Mux24~2_combout\ & ((\ShiftRight0~71_combout\))) # (!\Mux24~2_combout\ & (\ShiftRight0~70_combout\)))) # (!\Mux24~1_combout\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~70_combout\,
	datab => \ShiftRight0~71_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~7_combout\);

\Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\Mux24~0_combout\ & (((\Mux24~7_combout\)))) # (!\Mux24~0_combout\ & ((\Mux24~7_combout\ & ((\ShiftRight1~53_combout\))) # (!\Mux24~7_combout\ & (\ShiftRight1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~50_combout\,
	datab => \ShiftRight1~53_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux24~7_combout\,
	combout => \Mux24~8_combout\);

\Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~9_combout\ = (\Mux24~4_combout\ & (((\Mux24~3_combout\)))) # (!\Mux24~4_combout\ & ((\Mux24~3_combout\ & (\Mux24~8_combout\)) # (!\Mux24~3_combout\ & ((\Equal2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \Mux24~8_combout\,
	datac => \Mux24~3_combout\,
	datad => \Equal2~7_combout\,
	combout => \Mux24~9_combout\);

\Mux24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~10_combout\ = (\Mux24~4_combout\ & ((\Mux24~9_combout\ & ((\A[31]~input_o\))) # (!\Mux24~9_combout\ & (\ShiftRight1~65_combout\)))) # (!\Mux24~4_combout\ & (((\Mux24~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~65_combout\,
	datab => \Mux24~4_combout\,
	datac => \Mux24~9_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux24~10_combout\);

\Mux24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~11_combout\ = (\A[7]~input_o\ & ((\Mux24~5_combout\) # ((\B[7]~input_o\ & \Mux28~10_combout\)))) # (!\A[7]~input_o\ & (\Mux24~5_combout\ & ((\B[7]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \Mux24~5_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux24~11_combout\);

\Mux24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~12_combout\ = (\Mux28~10_combout\ & (((\Mux24~11_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~11_combout\ & ((\Mux24~10_combout\))) # (!\Mux24~11_combout\ & (\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Mux24~10_combout\,
	datac => \Mux28~10_combout\,
	datad => \Mux24~11_combout\,
	combout => \Mux24~12_combout\);

\ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (\ShiftLeft0~7_combout\) # ((\B[1]~input_o\ & \ShiftLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~7_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftLeft0~3_combout\,
	combout => \ShiftLeft0~20_combout\);

\ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~21_combout\);

\ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~17_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~17_combout\,
	datab => \ShiftLeft0~21_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~22_combout\);

\ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~20_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~20_combout\,
	datab => \ShiftLeft0~22_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~23_combout\);

\Mux24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~13_combout\ = (\Mux27~7_combout\ & ((\ShiftLeft0~23_combout\) # ((\Mux27~6_combout\ & \Mux24~12_combout\)))) # (!\Mux27~7_combout\ & (\Mux27~6_combout\ & (\Mux24~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~7_combout\,
	datab => \Mux27~6_combout\,
	datac => \Mux24~12_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \Mux24~13_combout\);

\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\A[8]~input_o\ & ((\B[8]~input_o\) # (\Mux24~5_combout\))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & \Mux24~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \Mux24~5_combout\,
	combout => \Mux23~0_combout\);

\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \B[8]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[8]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~26_combout\);

\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26_combout\ & ((\A[8]~input_o\ & (\Add0~25\ & VCC)) # (!\A[8]~input_o\ & (!\Add0~25\)))) # (!\Add0~26_combout\ & ((\A[8]~input_o\ & (!\Add0~25\)) # (!\A[8]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~28\ = CARRY((\Add0~26_combout\ & (!\A[8]~input_o\ & !\Add0~25\)) # (!\Add0~26_combout\ & ((!\Add0~25\) # (!\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

\ShiftRight0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftRight0~5_combout\)) # (!\B[2]~input_o\ & ((\ShiftRight0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \ShiftRight0~8_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~72_combout\);

\ShiftRight1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~66_combout\ = (\ShiftRight0~72_combout\) # ((\B[3]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[31]~input_o\,
	datac => \ShiftRight0~72_combout\,
	combout => \ShiftRight1~66_combout\);

\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux28~8_combout\ & ((\Mux28~9_combout\ & ((\ShiftRight0~29_combout\))) # (!\Mux28~9_combout\ & (\ShiftRight0~72_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \ShiftRight0~29_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux23~1_combout\);

\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux28~6_combout\ & ((\Mux23~1_combout\ & ((\A[31]~input_o\))) # (!\Mux23~1_combout\ & (\ShiftRight1~66_combout\)))) # (!\Mux28~6_combout\ & (((\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~66_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux28~6_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~2_combout\);

\ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[8]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~24_combout\);

\ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~21_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~21_combout\,
	datab => \ShiftLeft0~24_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~25_combout\);

\ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~12_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datab => \ShiftLeft0~25_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~26_combout\);

\ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (\B[3]~input_o\ & (((\A[0]~input_o\ & !\ShiftLeft0~2_combout\)))) # (!\B[3]~input_o\ & (\ShiftLeft0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~26_combout\,
	datab => \A[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftLeft0~27_combout\);

\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\opcode[1]~input_o\ & ((\Mux31~5_combout\) # (!\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux21~0_combout\);

\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\opcode[1]~input_o\ & (\B[3]~input_o\ & (\Mux31~5_combout\))) # (!\opcode[1]~input_o\ & (((\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mux31~5_combout\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux21~1_combout\);

\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux21~0_combout\ & ((\Mux21~1_combout\ & (\ShiftLeft0~27_combout\)) # (!\Mux21~1_combout\ & ((\Equal2~9_combout\))))) # (!\Mux21~0_combout\ & (((!\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~27_combout\,
	datab => \Equal2~9_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux23~3_combout\);

\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\opcode[1]~input_o\ & ((\Mux23~3_combout\ & ((\Mux23~2_combout\))) # (!\Mux23~3_combout\ & (\ShiftRight0~16_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datab => \Mux23~2_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux23~3_combout\,
	combout => \Mux23~4_combout\);

\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux24~5_combout\ & ((\Mux23~4_combout\))) # (!\Mux24~5_combout\ & (\Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \Mux23~4_combout\,
	datac => \Mux24~5_combout\,
	combout => \Mux23~5_combout\);

\Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (!\opcode[3]~input_o\ & ((\Mux28~10_combout\ & (\Mux23~0_combout\)) # (!\Mux28~10_combout\ & ((\Mux23~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \opcode[3]~input_o\,
	datac => \Mux23~0_combout\,
	datad => \Mux23~5_combout\,
	combout => \Mux23~6_combout\);

\ShiftRight1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~67_combout\ = (\B[3]~input_o\ & (\A[31]~input_o\)) # (!\B[3]~input_o\ & (((\ShiftRight0~44_combout\) # (\ShiftRight1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[31]~input_o\,
	datac => \ShiftRight0~44_combout\,
	datad => \ShiftRight1~22_combout\,
	combout => \ShiftRight1~67_combout\);

\ShiftRight0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (!\B[3]~input_o\ & ((\ShiftRight0~44_combout\) # ((\B[2]~input_o\ & \ShiftRight0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~44_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftRight0~84_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~73_combout\);

\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux28~8_combout\ & ((\Mux28~9_combout\ & ((\ShiftRight0~34_combout\))) # (!\Mux28~9_combout\ & (\ShiftRight0~73_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~73_combout\,
	datab => \ShiftRight0~34_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux22~0_combout\);

\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux28~6_combout\ & ((\Mux22~0_combout\ & ((\A[31]~input_o\))) # (!\Mux22~0_combout\ & (\ShiftRight1~67_combout\)))) # (!\Mux28~6_combout\ & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~67_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux28~6_combout\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

\ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[9]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~28_combout\);

\ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~24_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~24_combout\,
	datab => \ShiftLeft0~28_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~29_combout\);

\ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~15_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~15_combout\,
	datab => \ShiftLeft0~29_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~30_combout\);

\ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (\B[3]~input_o\ & (\process_0~10_combout\ & (\ShiftLeft0~3_combout\))) # (!\B[3]~input_o\ & (((\ShiftLeft0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \ShiftLeft0~3_combout\,
	datac => \ShiftLeft0~30_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~31_combout\);

\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux21~0_combout\ & ((\Mux21~1_combout\ & (\ShiftLeft0~31_combout\)) # (!\Mux21~1_combout\ & ((\Equal2~10_combout\))))) # (!\Mux21~0_combout\ & (((!\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~31_combout\,
	datab => \Equal2~10_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux22~2_combout\);

\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\opcode[1]~input_o\ & ((\Mux22~2_combout\ & ((\Mux22~1_combout\))) # (!\Mux22~2_combout\ & (\ShiftRight0~43_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datab => \Mux22~1_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux22~2_combout\,
	combout => \Mux22~3_combout\);

\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \B[9]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[9]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~29_combout\);

\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = ((\Add0~29_combout\ $ (\A[9]~input_o\ $ (!\Add0~28\)))) # (GND)
-- \Add0~31\ = CARRY((\Add0~29_combout\ & ((\A[9]~input_o\) # (!\Add0~28\))) # (!\Add0~29_combout\ & (\A[9]~input_o\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux28~10_combout\ & (((\Mux24~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~5_combout\ & (\Mux22~3_combout\)) # (!\Mux24~5_combout\ & ((\Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux22~3_combout\,
	datac => \Mux24~5_combout\,
	datad => \Add0~30_combout\,
	combout => \Mux22~4_combout\);

\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\B[9]~input_o\ & ((\Mux22~4_combout\) # ((\A[9]~input_o\ & \Mux28~10_combout\)))) # (!\B[9]~input_o\ & (\Mux22~4_combout\ & ((\A[9]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \Mux22~4_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux22~5_combout\);

\Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux22~5_combout\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~5_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux22~6_combout\);

\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # (\Mux24~5_combout\))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & \Mux24~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datac => \Mux24~5_combout\,
	combout => \Mux21~2_combout\);

\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \B[10]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~32_combout\);

\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32_combout\ & ((\A[10]~input_o\ & (\Add0~31\ & VCC)) # (!\A[10]~input_o\ & (!\Add0~31\)))) # (!\Add0~32_combout\ & ((\A[10]~input_o\ & (!\Add0~31\)) # (!\A[10]~input_o\ & ((\Add0~31\) # (GND)))))
-- \Add0~34\ = CARRY((\Add0~32_combout\ & (!\A[10]~input_o\ & !\Add0~31\)) # (!\Add0~32_combout\ & ((!\Add0~31\) # (!\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \A[10]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

\ShiftRight1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~68_combout\ = (\B[3]~input_o\ & (\A[31]~input_o\)) # (!\B[3]~input_o\ & ((\ShiftRight1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[31]~input_o\,
	datac => \ShiftRight1~30_combout\,
	combout => \ShiftRight1~68_combout\);

\ShiftRight0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (\ShiftRight0~50_combout\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~50_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~74_combout\);

\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux28~8_combout\ & ((\Mux28~9_combout\ & ((\ShiftRight0~52_combout\))) # (!\Mux28~9_combout\ & (\ShiftRight0~74_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \ShiftRight0~52_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux21~3_combout\);

\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux28~6_combout\ & ((\Mux21~3_combout\ & ((\A[31]~input_o\))) # (!\Mux21~3_combout\ & (\ShiftRight1~68_combout\)))) # (!\Mux28~6_combout\ & (((\Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~68_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux28~6_combout\,
	datad => \Mux21~3_combout\,
	combout => \Mux21~4_combout\);

\ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[10]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~32_combout\);

\ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~28_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~28_combout\,
	datab => \ShiftLeft0~32_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~33_combout\);

\ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~18_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datab => \ShiftLeft0~33_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~34_combout\);

\ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (\B[3]~input_o\ & (((\ShiftLeft0~6_combout\ & !\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\ShiftLeft0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \ShiftLeft0~6_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~35_combout\);

\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~0_combout\ & ((\Mux21~1_combout\ & (\ShiftLeft0~35_combout\)) # (!\Mux21~1_combout\ & ((\Equal2~11_combout\))))) # (!\Mux21~0_combout\ & (((!\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datab => \Equal2~11_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux21~5_combout\);

\Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\opcode[1]~input_o\ & ((\Mux21~5_combout\ & ((\Mux21~4_combout\))) # (!\Mux21~5_combout\ & (\ShiftRight0~49_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~49_combout\,
	datab => \Mux21~4_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux21~5_combout\,
	combout => \Mux21~6_combout\);

\Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux24~5_combout\ & ((\Mux21~6_combout\))) # (!\Mux24~5_combout\ & (\Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datab => \Mux21~6_combout\,
	datac => \Mux24~5_combout\,
	combout => \Mux21~7_combout\);

\Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (!\opcode[3]~input_o\ & ((\Mux28~10_combout\ & (\Mux21~2_combout\)) # (!\Mux28~10_combout\ & ((\Mux21~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \opcode[3]~input_o\,
	datac => \Mux21~2_combout\,
	datad => \Mux21~7_combout\,
	combout => \Mux21~8_combout\);

\ShiftRight1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~69_combout\ = (\B[3]~input_o\ & (((\A[31]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\A[31]~input_o\))) # (!\B[2]~input_o\ & (\ShiftRight1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftRight1~45_combout\,
	datad => \A[31]~input_o\,
	combout => \ShiftRight1~69_combout\);

\ShiftRight0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (\ShiftRight0~54_combout\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~54_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~75_combout\);

\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux28~8_combout\ & ((\Mux28~9_combout\ & ((\ShiftRight0~56_combout\))) # (!\Mux28~9_combout\ & (\ShiftRight0~75_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~75_combout\,
	datab => \ShiftRight0~56_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux20~0_combout\);

\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux28~6_combout\ & ((\Mux20~0_combout\ & ((\A[31]~input_o\))) # (!\Mux20~0_combout\ & (\ShiftRight1~69_combout\)))) # (!\Mux28~6_combout\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~69_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux28~6_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

\ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~36_combout\);

\ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~32_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~32_combout\,
	datab => \ShiftLeft0~36_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~37_combout\);

\ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~22_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~22_combout\,
	datab => \ShiftLeft0~37_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~38_combout\);

\ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\B[3]~input_o\ & (((\ShiftLeft0~20_combout\ & !\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~38_combout\,
	datab => \ShiftLeft0~20_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~39_combout\);

\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux21~0_combout\ & ((\Mux21~1_combout\ & (\ShiftLeft0~39_combout\)) # (!\Mux21~1_combout\ & ((\Equal2~12_combout\))))) # (!\Mux21~0_combout\ & (((!\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~39_combout\,
	datab => \Equal2~12_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux20~2_combout\);

\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\opcode[1]~input_o\ & ((\Mux20~2_combout\ & ((\Mux20~1_combout\))) # (!\Mux20~2_combout\ & (\ShiftRight0~53_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~53_combout\,
	datab => \Mux20~1_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \B[11]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[11]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~35_combout\);

\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Add0~35_combout\ $ (\A[11]~input_o\ $ (!\Add0~34\)))) # (GND)
-- \Add0~37\ = CARRY((\Add0~35_combout\ & ((\A[11]~input_o\) # (!\Add0~34\))) # (!\Add0~35_combout\ & (\A[11]~input_o\ & !\Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux28~10_combout\ & (((\Mux24~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~5_combout\ & (\Mux20~3_combout\)) # (!\Mux24~5_combout\ & ((\Add0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux20~3_combout\,
	datac => \Mux24~5_combout\,
	datad => \Add0~36_combout\,
	combout => \Mux20~4_combout\);

\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\B[11]~input_o\ & ((\Mux20~4_combout\) # ((\A[11]~input_o\ & \Mux28~10_combout\)))) # (!\B[11]~input_o\ & (\Mux20~4_combout\ & ((\A[11]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \Mux20~4_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux20~5_combout\);

\Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux20~5_combout\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~5_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux20~6_combout\);

\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\A[12]~input_o\ & ((\B[12]~input_o\) # (\Mux24~5_combout\))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & \Mux24~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datac => \Mux24~5_combout\,
	combout => \Mux19~0_combout\);

\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \B[12]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[12]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~38_combout\);

\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38_combout\ & ((\A[12]~input_o\ & (\Add0~37\ & VCC)) # (!\A[12]~input_o\ & (!\Add0~37\)))) # (!\Add0~38_combout\ & ((\A[12]~input_o\ & (!\Add0~37\)) # (!\A[12]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~40\ = CARRY((\Add0~38_combout\ & (!\A[12]~input_o\ & !\Add0~37\)) # (!\Add0~38_combout\ & ((!\Add0~37\) # (!\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

\ShiftRight0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = (\ShiftRight1~26_combout\ & ((\ShiftRight0~4_combout\) # ((\B[1]~input_o\ & \ShiftRight1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~26_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftRight1~12_combout\,
	combout => \ShiftRight0~76_combout\);

\ShiftRight1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~70_combout\ = (\ShiftRight0~76_combout\) # ((\A[31]~input_o\ & ((\B[3]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftRight0~76_combout\,
	datad => \A[31]~input_o\,
	combout => \ShiftRight1~70_combout\);

\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux28~8_combout\ & ((\Mux28~9_combout\ & ((\ShiftRight0~59_combout\))) # (!\Mux28~9_combout\ & (\ShiftRight0~76_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~76_combout\,
	datab => \ShiftRight0~59_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux19~1_combout\);

\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux28~6_combout\ & ((\Mux19~1_combout\ & ((\A[31]~input_o\))) # (!\Mux19~1_combout\ & (\ShiftRight1~70_combout\)))) # (!\Mux28~6_combout\ & (((\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~70_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux28~6_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux19~2_combout\);

\ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[12]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~40_combout\);

\ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~36_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~36_combout\,
	datab => \ShiftLeft0~40_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~41_combout\);

\ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~25_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~25_combout\,
	datab => \ShiftLeft0~41_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~42_combout\);

\ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (\B[3]~input_o\ & (\ShiftLeft0~13_combout\)) # (!\B[3]~input_o\ & ((\ShiftLeft0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \ShiftLeft0~42_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~43_combout\);

\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux21~0_combout\ & ((\Mux21~1_combout\ & (\ShiftLeft0~43_combout\)) # (!\Mux21~1_combout\ & ((\Equal2~14_combout\))))) # (!\Mux21~0_combout\ & (((!\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~43_combout\,
	datab => \Equal2~14_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux19~3_combout\);

\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\opcode[1]~input_o\ & ((\Mux19~3_combout\ & ((\Mux19~2_combout\))) # (!\Mux19~3_combout\ & (\ShiftRight0~57_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \Mux19~2_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~4_combout\);

\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux24~5_combout\ & ((\Mux19~4_combout\))) # (!\Mux24~5_combout\ & (\Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \Mux19~4_combout\,
	datac => \Mux24~5_combout\,
	combout => \Mux19~5_combout\);

\Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (!\opcode[3]~input_o\ & ((\Mux28~10_combout\ & (\Mux19~0_combout\)) # (!\Mux28~10_combout\ & ((\Mux19~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \opcode[3]~input_o\,
	datac => \Mux19~0_combout\,
	datad => \Mux19~5_combout\,
	combout => \Mux19~6_combout\);

\ShiftRight1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~60_combout\ = (\process_0~10_combout\ & ((\B[3]~input_o\ & (\A[31]~input_o\)) # (!\B[3]~input_o\ & ((\ShiftRight1~21_combout\))))) # (!\process_0~10_combout\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~21_combout\,
	datac => \process_0~10_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight1~60_combout\);

\ShiftRight0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = (\ShiftRight1~26_combout\ & ((\B[1]~input_o\ & (\ShiftRight0~45_combout\)) # (!\B[1]~input_o\ & ((\ShiftRight1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~26_combout\,
	datab => \ShiftRight0~45_combout\,
	datac => \ShiftRight1~21_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~77_combout\);

\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux28~8_combout\ & ((\Mux28~9_combout\ & ((\ShiftRight0~63_combout\))) # (!\Mux28~9_combout\ & (\ShiftRight0~77_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~77_combout\,
	datab => \ShiftRight0~63_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux18~0_combout\);

\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux28~6_combout\ & ((\Mux18~0_combout\ & ((\A[31]~input_o\))) # (!\Mux18~0_combout\ & (\ShiftRight1~60_combout\)))) # (!\Mux28~6_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~60_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux28~6_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

\ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[13]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~44_combout\);

\ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~40_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~40_combout\,
	datab => \ShiftLeft0~44_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~45_combout\);

\ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~29_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~29_combout\,
	datab => \ShiftLeft0~45_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~46_combout\);

\ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (\B[3]~input_o\ & (\ShiftLeft0~16_combout\)) # (!\B[3]~input_o\ & ((\ShiftLeft0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datab => \ShiftLeft0~46_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~47_combout\);

\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux21~0_combout\ & ((\Mux21~1_combout\ & (\ShiftLeft0~47_combout\)) # (!\Mux21~1_combout\ & ((\Equal2~15_combout\))))) # (!\Mux21~0_combout\ & (((!\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~47_combout\,
	datab => \Equal2~15_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux18~2_combout\);

\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\opcode[1]~input_o\ & ((\Mux18~2_combout\ & ((\Mux18~1_combout\))) # (!\Mux18~2_combout\ & (\ShiftRight0~61_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~61_combout\,
	datab => \Mux18~1_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = \B[13]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[13]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~41_combout\);

\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = ((\Add0~41_combout\ $ (\A[13]~input_o\ $ (!\Add0~40\)))) # (GND)
-- \Add0~43\ = CARRY((\Add0~41_combout\ & ((\A[13]~input_o\) # (!\Add0~40\))) # (!\Add0~41_combout\ & (\A[13]~input_o\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux28~10_combout\ & (((\Mux24~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~5_combout\ & (\Mux18~3_combout\)) # (!\Mux24~5_combout\ & ((\Add0~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux18~3_combout\,
	datac => \Mux24~5_combout\,
	datad => \Add0~42_combout\,
	combout => \Mux18~4_combout\);

\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\B[13]~input_o\ & ((\Mux18~4_combout\) # ((\A[13]~input_o\ & \Mux28~10_combout\)))) # (!\B[13]~input_o\ & (\Mux18~4_combout\ & ((\A[13]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \Mux18~4_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux18~5_combout\);

\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux18~5_combout\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~5_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux18~6_combout\);

\Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~1_combout\ = (\A[14]~input_o\ & \B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	combout => \Z~1_combout\);

\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \B[14]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[14]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~44_combout\);

\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44_combout\ & ((\A[14]~input_o\ & (\Add0~43\ & VCC)) # (!\A[14]~input_o\ & (!\Add0~43\)))) # (!\Add0~44_combout\ & ((\A[14]~input_o\ & (!\Add0~43\)) # (!\A[14]~input_o\ & ((\Add0~43\) # (GND)))))
-- \Add0~46\ = CARRY((\Add0~44_combout\ & (!\A[14]~input_o\ & !\Add0~43\)) # (!\Add0~44_combout\ & ((!\Add0~43\) # (!\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux24~5_combout\ & (((\Mux28~10_combout\)))) # (!\Mux24~5_combout\ & ((\Mux28~10_combout\ & (\Z~1_combout\)) # (!\Mux28~10_combout\ & ((\Add0~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \Z~1_combout\,
	datac => \Mux28~10_combout\,
	datad => \Add0~45_combout\,
	combout => \Mux17~4_combout\);

\ShiftRight1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~61_combout\ = (\B[3]~input_o\ & (\A[31]~input_o\)) # (!\B[3]~input_o\ & ((\ShiftLeft0~2_combout\ & (\A[31]~input_o\)) # (!\ShiftLeft0~2_combout\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftRight1~61_combout\);

\ShiftRight0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~85_combout\ = (!\B[2]~input_o\ & (!\B[1]~input_o\ & (\ShiftRight1~12_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftRight1~12_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~85_combout\);

\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux28~8_combout\ & ((\Mux28~9_combout\ & ((\ShiftRight0~66_combout\))) # (!\Mux28~9_combout\ & (\ShiftRight0~85_combout\)))) # (!\Mux28~8_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~85_combout\,
	datab => \ShiftRight0~66_combout\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux17~0_combout\);

\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux28~6_combout\ & ((\Mux17~0_combout\ & ((\A[31]~input_o\))) # (!\Mux17~0_combout\ & (\ShiftRight1~61_combout\)))) # (!\Mux28~6_combout\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~61_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux28~6_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

\ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[14]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~48_combout\);

\ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~44_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~44_combout\,
	datab => \ShiftLeft0~48_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~49_combout\);

\ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~33_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~33_combout\,
	datab => \ShiftLeft0~49_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~50_combout\);

\ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = (\B[3]~input_o\ & (\ShiftLeft0~19_combout\)) # (!\B[3]~input_o\ & ((\ShiftLeft0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \ShiftLeft0~50_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~51_combout\);

\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux21~0_combout\ & ((\Mux21~1_combout\ & (\ShiftLeft0~51_combout\)) # (!\Mux21~1_combout\ & ((\Equal2~16_combout\))))) # (!\Mux21~0_combout\ & (((!\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~51_combout\,
	datab => \Equal2~16_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux17~2_combout\);

\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\opcode[1]~input_o\ & ((\Mux17~2_combout\ & ((\Mux17~1_combout\))) # (!\Mux17~2_combout\ & (\ShiftRight0~64_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~64_combout\,
	datab => \Mux17~1_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~4_combout\ & ((\A[14]~input_o\) # ((!\Mux24~5_combout\)))) # (!\Mux17~4_combout\ & (((\Mux24~5_combout\ & \Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \A[14]~input_o\,
	datac => \Mux24~5_combout\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~5_combout\);

\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (!\opcode[3]~input_o\ & ((\Mux17~5_combout\) # ((\Mux17~4_combout\ & \B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux17~5_combout\,
	datac => \B[14]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \Mux17~6_combout\);

\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\opcode[1]~input_o\ & ((\A[15]~input_o\ & ((\B[15]~input_o\) # (\opcode[0]~input_o\))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & \opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux16~0_combout\);

\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = \B[15]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[15]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~47_combout\);

\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\Add0~47_combout\ $ (\A[15]~input_o\ $ (!\Add0~46\)))) # (GND)
-- \Add0~49\ = CARRY((\Add0~47_combout\ & ((\A[15]~input_o\) # (!\Add0~46\))) # (!\Add0~47_combout\ & (\A[15]~input_o\ & !\Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \A[15]~input_o\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (!\opcode[2]~input_o\ & ((\Mux16~0_combout\) # ((\Add0~48_combout\ & !\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Add0~48_combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux16~1_combout\);

\ShiftRight0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~78_combout\ = (\B[4]~input_o\ & (\A[31]~input_o\ & (!\B[3]~input_o\ & !\ShiftLeft0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftRight0~78_combout\);

\ShiftRight0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~79_combout\ = (\B[3]~input_o\ & (\ShiftRight0~68_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~68_combout\,
	datab => \ShiftRight0~71_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~79_combout\);

\ShiftRight0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~80_combout\ = (\process_0~8_combout\ & ((\ShiftRight0~78_combout\) # ((\ShiftRight0~79_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \ShiftRight0~78_combout\,
	datac => \ShiftRight0~79_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftRight0~80_combout\);

\ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[15]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~52_combout\);

\ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~48_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datab => \ShiftLeft0~52_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~53_combout\);

\ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~37_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~37_combout\,
	datab => \ShiftLeft0~53_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~54_combout\);

\ShiftLeft0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = (\Mux31~5_combout\ & ((\B[3]~input_o\ & (\ShiftLeft0~23_combout\)) # (!\B[3]~input_o\ & ((\ShiftLeft0~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \ShiftLeft0~23_combout\,
	datac => \ShiftLeft0~54_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~55_combout\);

\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & (\ShiftLeft0~55_combout\)) # (!\opcode[0]~input_o\ & ((\Equal2~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \ShiftLeft0~55_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Equal2~17_combout\,
	combout => \Mux16~2_combout\);

\ShiftRight1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~62_combout\ = (\Mux31~5_combout\ & (\ShiftRight0~79_combout\)) # (!\Mux31~5_combout\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~79_combout\,
	datab => \A[31]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \ShiftRight1~62_combout\);

\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\opcode[1]~input_o\ & ((\Mux16~2_combout\ & ((\ShiftRight1~62_combout\))) # (!\Mux16~2_combout\ & (\ShiftRight0~80_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~80_combout\,
	datab => \opcode[1]~input_o\,
	datac => \Mux16~2_combout\,
	datad => \ShiftRight1~62_combout\,
	combout => \Mux16~3_combout\);

\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (!\opcode[3]~input_o\ & ((\Mux16~1_combout\) # ((\opcode[2]~input_o\ & \Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \opcode[2]~input_o\,
	datac => \Mux16~3_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux16~4_combout\);

\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\opcode[1]~input_o\ & ((\A[16]~input_o\ & ((\B[16]~input_o\) # (\opcode[0]~input_o\))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & \opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux15~0_combout\);

\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \B[16]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[16]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~50_combout\);

\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\Add0~50_combout\ & ((\A[16]~input_o\ & (\Add0~49\ & VCC)) # (!\A[16]~input_o\ & (!\Add0~49\)))) # (!\Add0~50_combout\ & ((\A[16]~input_o\ & (!\Add0~49\)) # (!\A[16]~input_o\ & ((\Add0~49\) # (GND)))))
-- \Add0~52\ = CARRY((\Add0~50_combout\ & (!\A[16]~input_o\ & !\Add0~49\)) # (!\Add0~50_combout\ & ((!\Add0~49\) # (!\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \A[16]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (!\opcode[2]~input_o\ & ((\Mux15~0_combout\) # ((\Add0~51_combout\ & !\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Add0~51_combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux15~1_combout\);

\ShiftRight1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~63_combout\ = (\A[31]~input_o\ & ((\B[4]~input_o\) # ((!\process_0~9_combout\) # (!\process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[4]~input_o\,
	datac => \process_0~4_combout\,
	datad => \process_0~9_combout\,
	combout => \ShiftRight1~63_combout\);

\ShiftLeft0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~56_combout\);

\ShiftLeft0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~52_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~52_combout\,
	datab => \ShiftLeft0~56_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~57_combout\);

\ShiftLeft0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~41_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datab => \ShiftLeft0~57_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~58_combout\);

\ShiftLeft0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & (\ShiftLeft0~26_combout\)) # (!\B[3]~input_o\ & ((\ShiftLeft0~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~26_combout\,
	datab => \ShiftLeft0~58_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ShiftLeft0~59_combout\);

\ShiftRight0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~81_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & !\ShiftLeft0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ShiftLeft0~2_combout\,
	combout => \ShiftRight0~81_combout\);

\ShiftLeft0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = (\process_0~8_combout\ & ((\ShiftLeft0~59_combout\) # ((\A[0]~input_o\ & \ShiftRight0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \ShiftLeft0~59_combout\,
	datac => \A[0]~input_o\,
	datad => \ShiftRight0~81_combout\,
	combout => \ShiftLeft0~60_combout\);

\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & (\ShiftLeft0~60_combout\)) # (!\opcode[0]~input_o\ & ((\Equal2~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \ShiftLeft0~60_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Equal2~20_combout\,
	combout => \Mux15~2_combout\);

\ShiftRight0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~82_combout\ = (\Mux31~5_combout\ & ((\B[3]~input_o\ & (\ShiftRight0~9_combout\)) # (!\B[3]~input_o\ & ((\ShiftRight0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \ShiftRight0~9_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~82_combout\);

\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\opcode[1]~input_o\ & ((\ShiftRight0~82_combout\) # ((\ShiftRight1~63_combout\ & \Mux15~2_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~63_combout\,
	datab => \Mux15~2_combout\,
	datac => \opcode[1]~input_o\,
	datad => \ShiftRight0~82_combout\,
	combout => \Mux15~3_combout\);

\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (!\opcode[3]~input_o\ & ((\Mux15~1_combout\) # ((\opcode[2]~input_o\ & \Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \opcode[2]~input_o\,
	datac => \Mux15~3_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux15~4_combout\);

\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\opcode[1]~input_o\ & \opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	combout => \Mux11~4_combout\);

\ShiftLeft0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[17]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~61_combout\);

\ShiftLeft0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~56_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~56_combout\,
	datab => \ShiftLeft0~61_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~62_combout\);

\ShiftLeft0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~45_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~45_combout\,
	datab => \ShiftLeft0~62_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~63_combout\);

\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\B[4]~input_o\) # (((!\opcode[0]~input_o\) # (!\process_0~9_combout\)) # (!\process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \process_0~4_combout\,
	datac => \process_0~9_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux11~5_combout\);

\ShiftLeft0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = (\ShiftLeft0~3_combout\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~3_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~64_combout\);

\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = ((\B[4]~input_o\ & \process_0~8_combout\)) # (!\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \process_0~8_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux11~6_combout\);

\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\opcode[0]~input_o\ & ((\B[4]~input_o\) # ((\B[3]~input_o\) # (!\process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \process_0~8_combout\,
	combout => \Mux11~7_combout\);

\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux11~6_combout\ & ((\Mux11~7_combout\ & (\ShiftLeft0~64_combout\)) # (!\Mux11~7_combout\ & ((\Equal2~21_combout\))))) # (!\Mux11~6_combout\ & (((!\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~64_combout\,
	datab => \Equal2~21_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux14~0_combout\);

\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux11~5_combout\ & (((\Mux14~0_combout\)))) # (!\Mux11~5_combout\ & ((\Mux14~0_combout\ & ((\ShiftLeft0~63_combout\))) # (!\Mux14~0_combout\ & (\ShiftLeft0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~30_combout\,
	datab => \ShiftLeft0~63_combout\,
	datac => \Mux11~5_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

\Mux11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~15_combout\ = ((!\opcode[0]~input_o\ & \Mux31~5_combout\)) # (!\opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \Mux31~5_combout\,
	combout => \Mux11~15_combout\);

\Mux11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~16_combout\ = (\opcode[1]~input_o\ & ((!\Mux31~5_combout\) # (!\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \Mux31~5_combout\,
	combout => \Mux11~16_combout\);

\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~47_combout\)) # (!\Mux11~16_combout\ & ((\Mux14~1_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~47_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux14~2_combout\);

\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux11~4_combout\ & ((\Mux14~2_combout\ & ((\ShiftRight1~23_combout\))) # (!\Mux14~2_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~23_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = \B[17]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[17]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~53_combout\);

\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = ((\Add0~53_combout\ $ (\A[17]~input_o\ $ (!\Add0~52\)))) # (GND)
-- \Add0~55\ = CARRY((\Add0~53_combout\ & ((\A[17]~input_o\) # (!\Add0~52\))) # (!\Add0~53_combout\ & (\A[17]~input_o\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux28~10_combout\ & (((\Mux24~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~5_combout\ & (\Mux14~3_combout\)) # (!\Mux24~5_combout\ & ((\Add0~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux14~3_combout\,
	datac => \Mux24~5_combout\,
	datad => \Add0~54_combout\,
	combout => \Mux14~4_combout\);

\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\B[17]~input_o\ & ((\Mux14~4_combout\) # ((\A[17]~input_o\ & \Mux28~10_combout\)))) # (!\B[17]~input_o\ & (\Mux14~4_combout\ & ((\A[17]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \Mux14~4_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux14~5_combout\);

\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux14~5_combout\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux14~6_combout\);

\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # (\Mux24~5_combout\))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & \Mux24~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \Mux24~5_combout\,
	combout => \Mux13~0_combout\);

\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = \B[18]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~56_combout\);

\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56_combout\ & ((\A[18]~input_o\ & (\Add0~55\ & VCC)) # (!\A[18]~input_o\ & (!\Add0~55\)))) # (!\Add0~56_combout\ & ((\A[18]~input_o\ & (!\Add0~55\)) # (!\A[18]~input_o\ & ((\Add0~55\) # (GND)))))
-- \Add0~58\ = CARRY((\Add0~56_combout\ & (!\A[18]~input_o\ & !\Add0~55\)) # (!\Add0~56_combout\ & ((!\Add0~55\) # (!\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

\ShiftLeft0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[18]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~65_combout\);

\ShiftLeft0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~61_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~61_combout\,
	datab => \ShiftLeft0~65_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~66_combout\);

\ShiftLeft0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~49_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~49_combout\,
	datab => \ShiftLeft0~66_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~67_combout\);

\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux11~6_combout\ & ((\Mux11~7_combout\ & (\ShiftLeft0~109_combout\)) # (!\Mux11~7_combout\ & ((\Equal2~22_combout\))))) # (!\Mux11~6_combout\ & (((!\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~109_combout\,
	datab => \Equal2~22_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux13~1_combout\);

\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux11~5_combout\ & (((\Mux13~1_combout\)))) # (!\Mux11~5_combout\ & ((\Mux13~1_combout\ & ((\ShiftLeft0~67_combout\))) # (!\Mux13~1_combout\ & (\ShiftLeft0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \ShiftLeft0~67_combout\,
	datac => \Mux11~5_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~51_combout\)) # (!\Mux11~16_combout\ & ((\Mux13~2_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => \Mux13~2_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux13~3_combout\);

\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux11~4_combout\ & ((\Mux13~3_combout\ & ((\ShiftRight1~35_combout\))) # (!\Mux13~3_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~35_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux24~5_combout\ & ((\Mux13~4_combout\))) # (!\Mux24~5_combout\ & (\Add0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datab => \Mux13~4_combout\,
	datac => \Mux24~5_combout\,
	combout => \Mux13~5_combout\);

\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (!\opcode[3]~input_o\ & ((\Mux28~10_combout\ & (\Mux13~0_combout\)) # (!\Mux28~10_combout\ & ((\Mux13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \opcode[3]~input_o\,
	datac => \Mux13~0_combout\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~6_combout\);

\ShiftLeft0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[19]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~68_combout\);

\ShiftLeft0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~65_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~65_combout\,
	datab => \ShiftLeft0~68_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~69_combout\);

\ShiftLeft0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~53_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~53_combout\,
	datab => \ShiftLeft0~69_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~70_combout\);

\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux11~6_combout\ & ((\Mux11~7_combout\ & (\ShiftLeft0~8_combout\)) # (!\Mux11~7_combout\ & ((\Equal2~23_combout\))))) # (!\Mux11~6_combout\ & (((!\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \Equal2~23_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux12~0_combout\);

\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux11~5_combout\ & (((\Mux12~0_combout\)))) # (!\Mux11~5_combout\ & ((\Mux12~0_combout\ & ((\ShiftLeft0~70_combout\))) # (!\Mux12~0_combout\ & (\ShiftLeft0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~38_combout\,
	datab => \ShiftLeft0~70_combout\,
	datac => \Mux11~5_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~55_combout\)) # (!\Mux11~16_combout\ & ((\Mux12~1_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~55_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux12~2_combout\);

\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux11~4_combout\ & ((\Mux12~2_combout\ & ((\ShiftRight1~49_combout\))) # (!\Mux12~2_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~49_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = \B[19]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[19]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~59_combout\);

\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\Add0~59_combout\ $ (\A[19]~input_o\ $ (!\Add0~58\)))) # (GND)
-- \Add0~61\ = CARRY((\Add0~59_combout\ & ((\A[19]~input_o\) # (!\Add0~58\))) # (!\Add0~59_combout\ & (\A[19]~input_o\ & !\Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux28~10_combout\ & (((\Mux24~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~5_combout\ & (\Mux12~3_combout\)) # (!\Mux24~5_combout\ & ((\Add0~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux24~5_combout\,
	datad => \Add0~60_combout\,
	combout => \Mux12~4_combout\);

\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\B[19]~input_o\ & ((\Mux12~4_combout\) # ((\A[19]~input_o\ & \Mux28~10_combout\)))) # (!\B[19]~input_o\ & (\Mux12~4_combout\ & ((\A[19]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datac => \Mux12~4_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux12~5_combout\);

\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~5_combout\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~5_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux12~6_combout\);

\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # (\Mux24~5_combout\))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & \Mux24~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \Mux24~5_combout\,
	combout => \Mux11~8_combout\);

\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \B[20]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[20]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~62_combout\);

\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\Add0~62_combout\ & ((\A[20]~input_o\ & (\Add0~61\ & VCC)) # (!\A[20]~input_o\ & (!\Add0~61\)))) # (!\Add0~62_combout\ & ((\A[20]~input_o\ & (!\Add0~61\)) # (!\A[20]~input_o\ & ((\Add0~61\) # (GND)))))
-- \Add0~64\ = CARRY((\Add0~62_combout\ & (!\A[20]~input_o\ & !\Add0~61\)) # (!\Add0~62_combout\ & ((!\Add0~61\) # (!\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

\ShiftLeft0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[20]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~71_combout\);

\ShiftLeft0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~68_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~68_combout\,
	datab => \ShiftLeft0~71_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~72_combout\);

\ShiftLeft0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~57_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~57_combout\,
	datab => \ShiftLeft0~72_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~73_combout\);

\ShiftLeft0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = (!\B[3]~input_o\ & ((\ShiftLeft0~9_combout\) # ((\ShiftLeft0~12_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~9_combout\,
	datab => \ShiftLeft0~12_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~74_combout\);

\Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\Mux11~6_combout\ & ((\Mux11~7_combout\ & (\ShiftLeft0~74_combout\)) # (!\Mux11~7_combout\ & ((\Equal2~25_combout\))))) # (!\Mux11~6_combout\ & (((!\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~74_combout\,
	datab => \Equal2~25_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~9_combout\);

\Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~10_combout\ = (\Mux11~5_combout\ & (((\Mux11~9_combout\)))) # (!\Mux11~5_combout\ & ((\Mux11~9_combout\ & ((\ShiftLeft0~73_combout\))) # (!\Mux11~9_combout\ & (\ShiftLeft0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~42_combout\,
	datab => \ShiftLeft0~73_combout\,
	datac => \Mux11~5_combout\,
	datad => \Mux11~9_combout\,
	combout => \Mux11~10_combout\);

\Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~11_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~58_combout\)) # (!\Mux11~16_combout\ & ((\Mux11~10_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~58_combout\,
	datab => \Mux11~10_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux11~11_combout\);

\Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~12_combout\ = (\Mux11~4_combout\ & ((\Mux11~11_combout\ & ((\ShiftRight1~55_combout\))) # (!\Mux11~11_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux11~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~55_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux11~11_combout\,
	combout => \Mux11~12_combout\);

\Mux11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~13_combout\ = (\Mux24~5_combout\ & ((\Mux11~12_combout\))) # (!\Mux24~5_combout\ & (\Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~63_combout\,
	datab => \Mux11~12_combout\,
	datac => \Mux24~5_combout\,
	combout => \Mux11~13_combout\);

\Mux11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~14_combout\ = (!\opcode[3]~input_o\ & ((\Mux28~10_combout\ & (\Mux11~8_combout\)) # (!\Mux28~10_combout\ & ((\Mux11~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \opcode[3]~input_o\,
	datac => \Mux11~8_combout\,
	datad => \Mux11~13_combout\,
	combout => \Mux11~14_combout\);

\ShiftLeft0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[21]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~75_combout\);

\ShiftLeft0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~71_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~71_combout\,
	datab => \ShiftLeft0~75_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~76_combout\);

\ShiftLeft0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~62_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~62_combout\,
	datab => \ShiftLeft0~76_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~77_combout\);

\ShiftLeft0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = (\ShiftLeft0~16_combout\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~78_combout\);

\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux11~6_combout\ & ((\Mux11~7_combout\ & (\ShiftLeft0~78_combout\)) # (!\Mux11~7_combout\ & ((\Equal2~26_combout\))))) # (!\Mux11~6_combout\ & (((!\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~78_combout\,
	datab => \Equal2~26_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux10~0_combout\);

\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux11~5_combout\ & (((\Mux10~0_combout\)))) # (!\Mux11~5_combout\ & ((\Mux10~0_combout\ & ((\ShiftLeft0~77_combout\))) # (!\Mux10~0_combout\ & (\ShiftLeft0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~46_combout\,
	datab => \ShiftLeft0~77_combout\,
	datac => \Mux11~5_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~62_combout\)) # (!\Mux11~16_combout\ & ((\Mux10~1_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~62_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux10~2_combout\);

\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux11~4_combout\ & ((\Mux10~2_combout\ & ((\ShiftRight1~57_combout\))) # (!\Mux10~2_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~57_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = \B[21]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[21]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~65_combout\);

\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = ((\Add0~65_combout\ $ (\A[21]~input_o\ $ (!\Add0~64\)))) # (GND)
-- \Add0~67\ = CARRY((\Add0~65_combout\ & ((\A[21]~input_o\) # (!\Add0~64\))) # (!\Add0~65_combout\ & (\A[21]~input_o\ & !\Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux28~10_combout\ & (((\Mux24~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~5_combout\ & (\Mux10~3_combout\)) # (!\Mux24~5_combout\ & ((\Add0~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux10~3_combout\,
	datac => \Mux24~5_combout\,
	datad => \Add0~66_combout\,
	combout => \Mux10~4_combout\);

\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\B[21]~input_o\ & ((\Mux10~4_combout\) # ((\A[21]~input_o\ & \Mux28~10_combout\)))) # (!\B[21]~input_o\ & (\Mux10~4_combout\ & ((\A[21]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \Mux10~4_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux10~5_combout\);

\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~5_combout\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~5_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux10~6_combout\);

\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # (\Mux24~5_combout\))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & \Mux24~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \Mux24~5_combout\,
	combout => \Mux9~0_combout\);

\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = \B[22]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~68_combout\);

\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\Add0~68_combout\ & ((\A[22]~input_o\ & (\Add0~67\ & VCC)) # (!\A[22]~input_o\ & (!\Add0~67\)))) # (!\Add0~68_combout\ & ((\A[22]~input_o\ & (!\Add0~67\)) # (!\A[22]~input_o\ & ((\Add0~67\) # (GND)))))
-- \Add0~70\ = CARRY((\Add0~68_combout\ & (!\A[22]~input_o\ & !\Add0~67\)) # (!\Add0~68_combout\ & ((!\Add0~67\) # (!\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~68_combout\,
	datab => \A[22]~input_o\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

\ShiftLeft0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~79_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[22]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~79_combout\);

\ShiftLeft0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~80_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~75_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~75_combout\,
	datab => \ShiftLeft0~79_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~80_combout\);

\ShiftLeft0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~81_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~66_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~66_combout\,
	datab => \ShiftLeft0~80_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~81_combout\);

\ShiftLeft0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~82_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftLeft0~6_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~6_combout\,
	datab => \ShiftLeft0~18_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~82_combout\);

\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux11~6_combout\ & ((\Mux11~7_combout\ & (\ShiftLeft0~82_combout\)) # (!\Mux11~7_combout\ & ((\Equal2~27_combout\))))) # (!\Mux11~6_combout\ & (((!\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~82_combout\,
	datab => \Equal2~27_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux9~1_combout\);

\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux11~5_combout\ & (((\Mux9~1_combout\)))) # (!\Mux11~5_combout\ & ((\Mux9~1_combout\ & ((\ShiftLeft0~81_combout\))) # (!\Mux9~1_combout\ & (\ShiftLeft0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~50_combout\,
	datab => \ShiftLeft0~81_combout\,
	datac => \Mux11~5_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~65_combout\)) # (!\Mux11~16_combout\ & ((\Mux9~2_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~65_combout\,
	datab => \Mux9~2_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux9~3_combout\);

\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux11~4_combout\ & ((\Mux9~3_combout\ & ((\ShiftRight1~59_combout\))) # (!\Mux9~3_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~59_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux24~5_combout\ & ((\Mux9~4_combout\))) # (!\Mux24~5_combout\ & (\Add0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~69_combout\,
	datab => \Mux9~4_combout\,
	datac => \Mux24~5_combout\,
	combout => \Mux9~5_combout\);

\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (!\opcode[3]~input_o\ & ((\Mux28~10_combout\ & (\Mux9~0_combout\)) # (!\Mux28~10_combout\ & ((\Mux9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \opcode[3]~input_o\,
	datac => \Mux9~0_combout\,
	datad => \Mux9~5_combout\,
	combout => \Mux9~6_combout\);

\ShiftLeft0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~83_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~83_combout\);

\ShiftLeft0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~84_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~79_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~79_combout\,
	datab => \ShiftLeft0~83_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~84_combout\);

\ShiftLeft0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~85_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~69_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~69_combout\,
	datab => \ShiftLeft0~84_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~85_combout\);

\ShiftLeft0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~86_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftLeft0~20_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~20_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~86_combout\);

\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux11~6_combout\ & ((\Mux11~7_combout\ & (\ShiftLeft0~86_combout\)) # (!\Mux11~7_combout\ & ((\Equal2~28_combout\))))) # (!\Mux11~6_combout\ & (((!\Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~86_combout\,
	datab => \Equal2~28_combout\,
	datac => \Mux11~6_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux8~0_combout\);

\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux11~5_combout\ & (((\Mux8~0_combout\)))) # (!\Mux11~5_combout\ & ((\Mux8~0_combout\ & ((\ShiftLeft0~85_combout\))) # (!\Mux8~0_combout\ & (\ShiftLeft0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datab => \ShiftLeft0~85_combout\,
	datac => \Mux11~5_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~70_combout\)) # (!\Mux11~16_combout\ & ((\Mux8~1_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~70_combout\,
	datab => \Mux8~1_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux8~2_combout\);

\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux11~4_combout\ & ((\Mux8~2_combout\ & ((\ShiftRight1~65_combout\))) # (!\Mux8~2_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~65_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = \B[23]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[23]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~71_combout\);

\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = ((\Add0~71_combout\ $ (\A[23]~input_o\ $ (!\Add0~70\)))) # (GND)
-- \Add0~73\ = CARRY((\Add0~71_combout\ & ((\A[23]~input_o\) # (!\Add0~70\))) # (!\Add0~71_combout\ & (\A[23]~input_o\ & !\Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~71_combout\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux28~10_combout\ & (((\Mux24~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~5_combout\ & (\Mux8~3_combout\)) # (!\Mux24~5_combout\ & ((\Add0~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux8~3_combout\,
	datac => \Mux24~5_combout\,
	datad => \Add0~72_combout\,
	combout => \Mux8~4_combout\);

\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\B[23]~input_o\ & ((\Mux8~4_combout\) # ((\A[23]~input_o\ & \Mux28~10_combout\)))) # (!\B[23]~input_o\ & (\Mux8~4_combout\ & ((\A[23]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \Mux8~4_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux8~5_combout\);

\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~5_combout\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux8~6_combout\);

\process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (!\B[4]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \process_0~11_combout\);

\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\B[4]~input_o\) # ((\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux7~0_combout\);

\ShiftLeft0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~87_combout\ = (\B[1]~input_o\ & (\A[22]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~87_combout\);

\ShiftLeft0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~88_combout\ = (\B[0]~input_o\ & (\ShiftLeft0~83_combout\)) # (!\B[0]~input_o\ & ((\ShiftLeft0~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~83_combout\,
	datab => \ShiftLeft0~87_combout\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~88_combout\);

\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\process_0~11_combout\ & ((\Mux7~0_combout\ & (\ShiftLeft0~72_combout\)) # (!\Mux7~0_combout\ & ((\ShiftLeft0~88_combout\))))) # (!\process_0~11_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \ShiftLeft0~72_combout\,
	datac => \Mux7~0_combout\,
	datad => \ShiftLeft0~88_combout\,
	combout => \Mux7~1_combout\);

\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\process_0~11_combout\ & (((\Mux7~1_combout\)))) # (!\process_0~11_combout\ & ((\Mux7~1_combout\ & ((\ShiftLeft0~27_combout\))) # (!\Mux7~1_combout\ & (\ShiftLeft0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~58_combout\,
	datab => \process_0~11_combout\,
	datac => \Mux7~1_combout\,
	datad => \ShiftLeft0~27_combout\,
	combout => \Mux7~2_combout\);

\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\process_0~8_combout\ & (\Mux24~6_combout\ & \Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \Mux24~6_combout\,
	datac => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = \B[24]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[24]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~74_combout\);

\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~74_combout\ & ((\A[24]~input_o\ & (\Add0~73\ & VCC)) # (!\A[24]~input_o\ & (!\Add0~73\)))) # (!\Add0~74_combout\ & ((\A[24]~input_o\ & (!\Add0~73\)) # (!\A[24]~input_o\ & ((\Add0~73\) # (GND)))))
-- \Add0~76\ = CARRY((\Add0~74_combout\ & (!\A[24]~input_o\ & !\Add0~73\)) # (!\Add0~74_combout\ & ((!\Add0~73\) # (!\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~74_combout\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~72_combout\)) # (!\Mux11~16_combout\ & ((\Equal2~30_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~72_combout\,
	datab => \Equal2~30_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux7~4_combout\);

\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux11~4_combout\ & ((\Mux7~4_combout\ & ((\ShiftRight1~66_combout\))) # (!\Mux7~4_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~66_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\A[24]~input_o\ & ((\Mux24~5_combout\) # ((\B[24]~input_o\ & \Mux28~10_combout\)))) # (!\A[24]~input_o\ & (\Mux24~5_combout\ & ((\B[24]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \Mux24~5_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux7~6_combout\);

\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux28~10_combout\ & (((\Mux7~6_combout\)))) # (!\Mux28~10_combout\ & ((\Mux7~6_combout\ & ((\Mux7~5_combout\))) # (!\Mux7~6_combout\ & (\Add0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~75_combout\,
	datab => \Mux7~5_combout\,
	datac => \Mux28~10_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~7_combout\);

\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (!\opcode[3]~input_o\ & ((\Mux7~3_combout\) # ((\Mux7~7_combout\ & !\Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux7~7_combout\,
	datac => \Mux24~6_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux7~8_combout\);

\ShiftLeft0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~89_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[23]~input_o\)) # (!\B[1]~input_o\ & ((\A[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \A[25]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~89_combout\);

\ShiftLeft0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~90_combout\ = (\ShiftLeft0~89_combout\) # ((\B[0]~input_o\ & \ShiftLeft0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~89_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftLeft0~87_combout\,
	combout => \ShiftLeft0~90_combout\);

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux7~0_combout\ & (((!\process_0~11_combout\)))) # (!\Mux7~0_combout\ & ((\process_0~11_combout\ & ((\ShiftLeft0~90_combout\))) # (!\process_0~11_combout\ & (\ShiftLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \ShiftLeft0~63_combout\,
	datac => \process_0~11_combout\,
	datad => \ShiftLeft0~90_combout\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux7~0_combout\ & ((\Mux6~0_combout\ & ((\ShiftLeft0~31_combout\))) # (!\Mux6~0_combout\ & (\ShiftLeft0~76_combout\)))) # (!\Mux7~0_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~76_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux6~0_combout\,
	datad => \ShiftLeft0~31_combout\,
	combout => \Mux6~1_combout\);

\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\process_0~4_combout\ & (\process_0~9_combout\ & (\Mux24~6_combout\ & !\opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~9_combout\,
	datac => \Mux24~6_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux6~2_combout\);

\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~73_combout\)) # (!\Mux11~16_combout\ & ((\Equal2~31_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~73_combout\,
	datab => \Equal2~31_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux6~3_combout\);

\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux11~4_combout\ & ((\Mux6~3_combout\ & ((\ShiftRight1~67_combout\))) # (!\Mux6~3_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~67_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = \B[25]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[25]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~77_combout\);

\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = ((\Add0~77_combout\ $ (\A[25]~input_o\ $ (!\Add0~76\)))) # (GND)
-- \Add0~79\ = CARRY((\Add0~77_combout\ & ((\A[25]~input_o\) # (!\Add0~76\))) # (!\Add0~77_combout\ & (\A[25]~input_o\ & !\Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~77_combout\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux28~10_combout\ & (((\Mux24~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~5_combout\ & (\Mux6~4_combout\)) # (!\Mux24~5_combout\ & ((\Add0~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux6~4_combout\,
	datac => \Mux24~5_combout\,
	datad => \Add0~78_combout\,
	combout => \Mux6~5_combout\);

\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\B[25]~input_o\ & ((\Mux6~5_combout\) # ((\A[25]~input_o\ & \Mux28~10_combout\)))) # (!\B[25]~input_o\ & (\Mux6~5_combout\ & ((\A[25]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \Mux6~5_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux6~6_combout\);

\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux27~6_combout\ & ((\Mux6~6_combout\) # ((\Mux6~1_combout\ & \Mux6~2_combout\)))) # (!\Mux27~6_combout\ & (\Mux6~1_combout\ & (\Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~6_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~7_combout\);

\ShiftLeft0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~91_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[23]~input_o\)) # (!\B[0]~input_o\ & ((\A[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[23]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~91_combout\);

\ShiftLeft0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~92_combout\ = (\B[0]~input_o\ & (\A[25]~input_o\)) # (!\B[0]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[26]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~92_combout\);

\ShiftLeft0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~93_combout\ = (\ShiftLeft0~91_combout\) # ((\ShiftLeft0~92_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~91_combout\,
	datab => \ShiftLeft0~92_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~93_combout\);

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\process_0~11_combout\ & ((\Mux7~0_combout\ & (\ShiftLeft0~80_combout\)) # (!\Mux7~0_combout\ & ((\ShiftLeft0~93_combout\))))) # (!\process_0~11_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \ShiftLeft0~80_combout\,
	datac => \Mux7~0_combout\,
	datad => \ShiftLeft0~93_combout\,
	combout => \Mux5~0_combout\);

\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\process_0~11_combout\ & (((\Mux5~0_combout\)))) # (!\process_0~11_combout\ & ((\Mux5~0_combout\ & ((\ShiftLeft0~35_combout\))) # (!\Mux5~0_combout\ & (\ShiftLeft0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~67_combout\,
	datab => \process_0~11_combout\,
	datac => \Mux5~0_combout\,
	datad => \ShiftLeft0~35_combout\,
	combout => \Mux5~1_combout\);

\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\process_0~8_combout\ & (\Mux24~6_combout\ & \Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \Mux24~6_combout\,
	datac => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = \B[26]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[26]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~80_combout\);

\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~80_combout\ & ((\A[26]~input_o\ & (\Add0~79\ & VCC)) # (!\A[26]~input_o\ & (!\Add0~79\)))) # (!\Add0~80_combout\ & ((\A[26]~input_o\ & (!\Add0~79\)) # (!\A[26]~input_o\ & ((\Add0~79\) # (GND)))))
-- \Add0~82\ = CARRY((\Add0~80_combout\ & (!\A[26]~input_o\ & !\Add0~79\)) # (!\Add0~80_combout\ & ((!\Add0~79\) # (!\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~74_combout\)) # (!\Mux11~16_combout\ & ((\Equal2~32_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \Equal2~32_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux5~3_combout\);

\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux11~4_combout\ & ((\Mux5~3_combout\ & ((\ShiftRight1~68_combout\))) # (!\Mux5~3_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~68_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\A[26]~input_o\ & ((\Mux24~5_combout\) # ((\B[26]~input_o\ & \Mux28~10_combout\)))) # (!\A[26]~input_o\ & (\Mux24~5_combout\ & ((\B[26]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \Mux24~5_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux5~5_combout\);

\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux28~10_combout\ & (((\Mux5~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux5~5_combout\ & ((\Mux5~4_combout\))) # (!\Mux5~5_combout\ & (\Add0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~81_combout\,
	datab => \Mux5~4_combout\,
	datac => \Mux28~10_combout\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (!\opcode[3]~input_o\ & ((\Mux5~2_combout\) # ((\Mux5~6_combout\ & !\Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux5~6_combout\,
	datac => \Mux24~6_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux5~7_combout\);

\ShiftLeft0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~94_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[24]~input_o\)) # (!\B[0]~input_o\ & ((\A[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[24]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~94_combout\);

\ShiftLeft0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~95_combout\ = (\B[0]~input_o\ & (\A[26]~input_o\)) # (!\B[0]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \A[27]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~95_combout\);

\ShiftLeft0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~96_combout\ = (\ShiftLeft0~94_combout\) # ((\ShiftLeft0~95_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~94_combout\,
	datab => \ShiftLeft0~95_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~96_combout\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux7~0_combout\ & (((!\process_0~11_combout\)))) # (!\Mux7~0_combout\ & ((\process_0~11_combout\ & ((\ShiftLeft0~96_combout\))) # (!\process_0~11_combout\ & (\ShiftLeft0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \ShiftLeft0~70_combout\,
	datac => \process_0~11_combout\,
	datad => \ShiftLeft0~96_combout\,
	combout => \Mux4~0_combout\);

\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux7~0_combout\ & ((\Mux4~0_combout\ & ((\ShiftLeft0~39_combout\))) # (!\Mux4~0_combout\ & (\ShiftLeft0~84_combout\)))) # (!\Mux7~0_combout\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~84_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux4~0_combout\,
	datad => \ShiftLeft0~39_combout\,
	combout => \Mux4~1_combout\);

\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~75_combout\)) # (!\Mux11~16_combout\ & ((\Equal2~33_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~75_combout\,
	datab => \Equal2~33_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux4~2_combout\);

\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux11~4_combout\ & ((\Mux4~2_combout\ & ((\ShiftRight1~69_combout\))) # (!\Mux4~2_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~69_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = \B[27]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[27]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~83_combout\);

\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = ((\Add0~83_combout\ $ (\A[27]~input_o\ $ (!\Add0~82\)))) # (GND)
-- \Add0~85\ = CARRY((\Add0~83_combout\ & ((\A[27]~input_o\) # (!\Add0~82\))) # (!\Add0~83_combout\ & (\A[27]~input_o\ & !\Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~83_combout\,
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux28~10_combout\ & (((\Mux24~5_combout\)))) # (!\Mux28~10_combout\ & ((\Mux24~5_combout\ & (\Mux4~3_combout\)) # (!\Mux24~5_combout\ & ((\Add0~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux4~3_combout\,
	datac => \Mux24~5_combout\,
	datad => \Add0~84_combout\,
	combout => \Mux4~4_combout\);

\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\B[27]~input_o\ & ((\Mux4~4_combout\) # ((\A[27]~input_o\ & \Mux28~10_combout\)))) # (!\B[27]~input_o\ & (\Mux4~4_combout\ & ((\A[27]~input_o\) # (!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \Mux4~4_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux4~5_combout\);

\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux27~6_combout\ & ((\Mux4~5_combout\) # ((\Mux6~2_combout\ & \Mux4~1_combout\)))) # (!\Mux27~6_combout\ & (\Mux6~2_combout\ & (\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~6_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~6_combout\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux28~10_combout\ & ((\A[28]~input_o\ & ((\B[28]~input_o\) # (\opcode[0]~input_o\))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & \opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux3~0_combout\);

\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~76_combout\)) # (!\Mux11~16_combout\ & ((\Equal2~36_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~76_combout\,
	datab => \Equal2~36_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux3~1_combout\);

\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux11~4_combout\ & ((\Mux3~1_combout\ & ((\ShiftRight1~70_combout\))) # (!\Mux3~1_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~70_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\opcode[2]~input_o\ & ((\B[4]~input_o\) # ((\opcode[1]~input_o\) # (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux2~0_combout\);

\ShiftLeft0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~97_combout\ = (\B[0]~input_o\ & (\A[27]~input_o\)) # (!\B[0]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[28]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~97_combout\);

\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux28~7_combout\ & (((!\ShiftRight1~26_combout\)))) # (!\Mux28~7_combout\ & ((\ShiftRight1~26_combout\ & ((\ShiftLeft0~97_combout\))) # (!\ShiftRight1~26_combout\ & (\ShiftLeft0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \ShiftLeft0~88_combout\,
	datac => \ShiftRight1~26_combout\,
	datad => \ShiftLeft0~97_combout\,
	combout => \Mux3~3_combout\);

\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux28~7_combout\ & ((\Mux3~3_combout\ & ((\ShiftLeft0~73_combout\))) # (!\Mux3~3_combout\ & (\ShiftLeft0~92_combout\)))) # (!\Mux28~7_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~92_combout\,
	datab => \Mux28~7_combout\,
	datac => \Mux3~3_combout\,
	datad => \ShiftLeft0~73_combout\,
	combout => \Mux3~4_combout\);

\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = \B[28]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~86_combout\);

\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~86_combout\ & ((\A[28]~input_o\ & (\Add0~85\ & VCC)) # (!\A[28]~input_o\ & (!\Add0~85\)))) # (!\Add0~86_combout\ & ((\A[28]~input_o\ & (!\Add0~85\)) # (!\A[28]~input_o\ & ((\Add0~85\) # (GND)))))
-- \Add0~88\ = CARRY((\Add0~86_combout\ & (!\A[28]~input_o\ & !\Add0~85\)) # (!\Add0~86_combout\ & ((!\Add0~85\) # (!\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~86_combout\,
	datab => \A[28]~input_o\,
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux2~0_combout\ & (((\Mux24~6_combout\)))) # (!\Mux2~0_combout\ & ((\Mux24~6_combout\ & (\Mux3~4_combout\)) # (!\Mux24~6_combout\ & ((\Add0~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mux24~6_combout\,
	datad => \Add0~87_combout\,
	combout => \Mux3~5_combout\);

\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux2~0_combout\ & ((\Mux3~5_combout\ & ((\ShiftLeft0~43_combout\))) # (!\Mux3~5_combout\ & (\Mux3~2_combout\)))) # (!\Mux2~0_combout\ & (((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux3~5_combout\,
	datad => \ShiftLeft0~43_combout\,
	combout => \Mux3~6_combout\);

\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (!\Mux28~10_combout\ & (((\process_0~4_combout\ & \process_0~9_combout\)) # (!\Mux24~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~9_combout\,
	datac => \Mux24~6_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux3~7_combout\);

\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (!\opcode[3]~input_o\ & ((\Mux3~0_combout\) # ((\Mux3~6_combout\ & \Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~6_combout\,
	datac => \Mux3~7_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux3~8_combout\);

\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux28~10_combout\ & ((\A[29]~input_o\ & ((\B[29]~input_o\) # (\opcode[0]~input_o\))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & \opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux2~1_combout\);

\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux11~15_combout\ & ((\Mux11~16_combout\ & (\ShiftRight0~77_combout\)) # (!\Mux11~16_combout\ & ((\Equal2~37_combout\))))) # (!\Mux11~15_combout\ & (((!\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~77_combout\,
	datab => \Equal2~37_combout\,
	datac => \Mux11~15_combout\,
	datad => \Mux11~16_combout\,
	combout => \Mux2~2_combout\);

\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux11~4_combout\ & ((\Mux2~2_combout\ & ((\ShiftRight1~60_combout\))) # (!\Mux2~2_combout\ & (\A[31]~input_o\)))) # (!\Mux11~4_combout\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftRight1~60_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

\ShiftLeft0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~98_combout\ = (\B[0]~input_o\ & (\A[28]~input_o\)) # (!\B[0]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[29]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~98_combout\);

\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux28~7_combout\ & (((!\ShiftRight1~26_combout\)))) # (!\Mux28~7_combout\ & ((\ShiftRight1~26_combout\ & ((\ShiftLeft0~98_combout\))) # (!\ShiftRight1~26_combout\ & (\ShiftLeft0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \ShiftLeft0~90_combout\,
	datac => \ShiftRight1~26_combout\,
	datad => \ShiftLeft0~98_combout\,
	combout => \Mux2~4_combout\);

\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux28~7_combout\ & ((\Mux2~4_combout\ & ((\ShiftLeft0~77_combout\))) # (!\Mux2~4_combout\ & (\ShiftLeft0~95_combout\)))) # (!\Mux28~7_combout\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~95_combout\,
	datab => \Mux28~7_combout\,
	datac => \Mux2~4_combout\,
	datad => \ShiftLeft0~77_combout\,
	combout => \Mux2~5_combout\);

\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = \B[29]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~89_combout\);

\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = ((\Add0~89_combout\ $ (\A[29]~input_o\ $ (!\Add0~88\)))) # (GND)
-- \Add0~91\ = CARRY((\Add0~89_combout\ & ((\A[29]~input_o\) # (!\Add0~88\))) # (!\Add0~89_combout\ & (\A[29]~input_o\ & !\Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~89_combout\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~0_combout\ & (((\Mux24~6_combout\)))) # (!\Mux2~0_combout\ & ((\Mux24~6_combout\ & (\Mux2~5_combout\)) # (!\Mux24~6_combout\ & ((\Add0~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux2~5_combout\,
	datac => \Mux24~6_combout\,
	datad => \Add0~90_combout\,
	combout => \Mux2~6_combout\);

\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~0_combout\ & ((\Mux2~6_combout\ & ((\ShiftLeft0~47_combout\))) # (!\Mux2~6_combout\ & (\Mux2~3_combout\)))) # (!\Mux2~0_combout\ & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux2~6_combout\,
	datad => \ShiftLeft0~47_combout\,
	combout => \Mux2~7_combout\);

\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (!\opcode[3]~input_o\ & ((\Mux2~1_combout\) # ((\Mux3~7_combout\ & \Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~7_combout\,
	datac => \Mux2~7_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux2~8_combout\);

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\opcode[1]~input_o\ & ((\A[30]~input_o\ & ((\B[30]~input_o\) # (\opcode[0]~input_o\))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & \opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux1~0_combout\);

\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = \B[30]~input_o\ $ (\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Add0~92_combout\);

\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~92_combout\ & ((\A[30]~input_o\ & (\Add0~91\ & VCC)) # (!\A[30]~input_o\ & (!\Add0~91\)))) # (!\Add0~92_combout\ & ((\A[30]~input_o\ & (!\Add0~91\)) # (!\A[30]~input_o\ & ((\Add0~91\) # (GND)))))
-- \Add0~94\ = CARRY((\Add0~92_combout\ & (!\A[30]~input_o\ & !\Add0~91\)) # (!\Add0~92_combout\ & ((!\Add0~91\) # (!\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~92_combout\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~93_combout\,
	cout => \Add0~94\);

\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\opcode[2]~input_o\ & ((\Mux1~0_combout\) # ((\Add0~93_combout\ & !\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Add0~93_combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux1~1_combout\);

\ShiftRight0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~83_combout\ = (\ShiftRight1~12_combout\ & (\process_0~10_combout\ & (\Mux31~5_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~12_combout\,
	datab => \process_0~10_combout\,
	datac => \Mux31~5_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftRight0~83_combout\);

\ShiftLeft0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~99_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[29]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~99_combout\);

\ShiftLeft0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~100_combout\ = (!\B[2]~input_o\ & ((\ShiftLeft0~99_combout\) # ((\B[1]~input_o\ & \ShiftLeft0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~99_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftLeft0~97_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~100_combout\);

\ShiftLeft0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~101_combout\ = (!\B[3]~input_o\ & ((\ShiftLeft0~100_combout\) # ((\B[2]~input_o\ & \ShiftLeft0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~100_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftLeft0~93_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~101_combout\);

\ShiftLeft0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~102_combout\ = (!\B[4]~input_o\ & ((\ShiftLeft0~101_combout\) # ((\B[3]~input_o\ & \ShiftLeft0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~101_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftLeft0~81_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftLeft0~102_combout\);

\ShiftLeft0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~103_combout\ = (\process_0~8_combout\ & ((\ShiftLeft0~102_combout\) # ((\B[4]~input_o\ & \ShiftLeft0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \ShiftLeft0~102_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftLeft0~51_combout\,
	combout => \ShiftLeft0~103_combout\);

\Equal2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~40_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Equal2~40_combout\);

\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & (\ShiftLeft0~103_combout\)) # (!\opcode[0]~input_o\ & ((\Equal2~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \ShiftLeft0~103_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Equal2~40_combout\,
	combout => \Mux1~2_combout\);

\ShiftRight1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~64_combout\ = (\Mux31~6_combout\ & (\A[30]~input_o\)) # (!\Mux31~6_combout\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[31]~input_o\,
	datad => \Mux31~6_combout\,
	combout => \ShiftRight1~64_combout\);

\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\opcode[1]~input_o\ & ((\Mux1~2_combout\ & ((\ShiftRight1~64_combout\))) # (!\Mux1~2_combout\ & (\ShiftRight0~83_combout\)))) # (!\opcode[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~83_combout\,
	datab => \opcode[1]~input_o\,
	datac => \Mux1~2_combout\,
	datad => \ShiftRight1~64_combout\,
	combout => \Mux1~3_combout\);

\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (!\opcode[3]~input_o\ & ((\Mux1~1_combout\) # ((\opcode[2]~input_o\ & \Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \opcode[2]~input_o\,
	datac => \Mux1~3_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux1~4_combout\);

\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\opcode[2]~input_o\ & (\A[31]~input_o\ & ((\Mux31~6_combout\)))) # (!\opcode[2]~input_o\ & (((\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \B[31]~input_o\,
	datad => \Mux31~6_combout\,
	combout => \Mux0~2_combout\);

\ShiftLeft0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~104_combout\ = (\B[3]~input_o\ & ((\B[4]~input_o\ & (\ShiftLeft0~23_combout\)) # (!\B[4]~input_o\ & ((\ShiftLeft0~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftLeft0~23_combout\,
	datac => \ShiftLeft0~85_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftLeft0~104_combout\);

\ShiftLeft0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~105_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[30]~input_o\)) # (!\B[0]~input_o\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~105_combout\);

\ShiftLeft0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~106_combout\ = (!\B[2]~input_o\ & ((\ShiftLeft0~105_combout\) # ((\B[1]~input_o\ & \ShiftLeft0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~105_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftLeft0~98_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~106_combout\);

\ShiftLeft0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~107_combout\ = (!\B[4]~input_o\ & ((\ShiftLeft0~106_combout\) # ((\B[2]~input_o\ & \ShiftLeft0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~106_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftLeft0~96_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftLeft0~107_combout\);

\ShiftLeft0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~108_combout\ = (!\B[3]~input_o\ & ((\ShiftLeft0~107_combout\) # ((\B[4]~input_o\ & \ShiftLeft0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~107_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftLeft0~54_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftLeft0~108_combout\);

\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\opcode[2]~input_o\ & (\process_0~8_combout\ & ((\ShiftLeft0~104_combout\) # (\ShiftLeft0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \process_0~8_combout\,
	datac => \ShiftLeft0~104_combout\,
	datad => \ShiftLeft0~108_combout\,
	combout => \Add0~95_combout\);

\Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (\A[31]~input_o\ & (!\opcode[3]~input_o\ & (!\opcode[2]~input_o\ & !\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Add0~96_combout\);

\Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~97_combout\ = \opcode[0]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Add0~97_combout\);

\Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = \Add0~96_combout\ $ (\Add0~97_combout\ $ (!\Add0~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~96_combout\,
	datab => \Add0~97_combout\,
	cin => \Add0~94\,
	combout => \Add0~98_combout\);

\Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = (\Add0~95_combout\) # ((\Add0~98_combout\ & !\opcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~95_combout\,
	datab => \Add0~98_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Add0~100_combout\);

\Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~101_combout\ = (\opcode[2]~input_o\ & ((\A[31]~input_o\ $ (\B[31]~input_o\)))) # (!\opcode[2]~input_o\ & (\Add0~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~98_combout\,
	datab => \opcode[2]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Add0~101_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\opcode[1]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & ((\opcode[0]~input_o\ & (\Add0~100_combout\)) # (!\opcode[0]~input_o\ & ((\Add0~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Add0~100_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Add0~101_combout\,
	combout => \Mux0~0_combout\);

\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\A[31]~input_o\ & ((\Mux0~0_combout\) # ((\Mux0~2_combout\ & \opcode[1]~input_o\)))) # (!\A[31]~input_o\ & (\Mux0~0_combout\ & ((\Mux0~2_combout\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux0~2_combout\,
	datac => \Mux0~0_combout\,
	datad => \opcode[1]~input_o\,
	combout => \Mux0~3_combout\);

\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~3_combout\ & !\opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux0~1_combout\);

\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\opcode[2]~input_o\ & (\opcode[0]~input_o\ $ ((!\Equal2~39_combout\)))) # (!\opcode[2]~input_o\ & (((!\LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \Equal2~39_combout\,
	datad => \LessThan0~62_combout\,
	combout => \Mux32~0_combout\);

\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\opcode[1]~input_o\ & (((\opcode[2]~input_o\) # (\LessThan0~62_combout\)))) # (!\opcode[1]~input_o\ & (\Mux32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~0_combout\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \LessThan0~62_combout\,
	combout => \Mux32~1_combout\);

\process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (!\A[30]~input_o\ & (!\A[28]~input_o\ & (!\A[29]~input_o\ & !\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[27]~input_o\,
	combout => \process_0~12_combout\);

\process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (!\A[31]~input_o\ & !\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \process_0~13_combout\);

\process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (!\B[2]~input_o\ & (!\B[0]~input_o\ & (!\B[1]~input_o\ & !\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \process_0~14_combout\);

\process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (\process_0~11_combout\ & (\process_0~14_combout\ & (!\A[2]~input_o\ & !\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \process_0~14_combout\,
	datac => \A[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \process_0~15_combout\);

\process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (!\A[5]~input_o\ & (!\A[4]~input_o\ & (!\A[6]~input_o\ & !\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[3]~input_o\,
	combout => \process_0~16_combout\);

\process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (!\A[9]~input_o\ & (!\A[8]~input_o\ & (!\A[10]~input_o\ & !\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[7]~input_o\,
	combout => \process_0~17_combout\);

\process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (!\A[13]~input_o\ & (!\A[12]~input_o\ & (!\A[14]~input_o\ & !\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[11]~input_o\,
	combout => \process_0~18_combout\);

\process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (!\A[17]~input_o\ & (!\A[16]~input_o\ & (!\A[18]~input_o\ & !\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[16]~input_o\,
	datac => \A[18]~input_o\,
	datad => \A[15]~input_o\,
	combout => \process_0~19_combout\);

\process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (!\A[21]~input_o\ & (!\A[20]~input_o\ & (!\A[22]~input_o\ & !\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \A[20]~input_o\,
	datac => \A[22]~input_o\,
	datad => \A[19]~input_o\,
	combout => \process_0~20_combout\);

\process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~21_combout\ = (!\A[23]~input_o\ & (!\A[25]~input_o\ & (!\A[24]~input_o\ & !\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \A[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[26]~input_o\,
	combout => \process_0~21_combout\);

\process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~22_combout\ = (\process_0~18_combout\ & (\process_0~19_combout\ & (\process_0~20_combout\ & \process_0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~18_combout\,
	datab => \process_0~19_combout\,
	datac => \process_0~20_combout\,
	datad => \process_0~21_combout\,
	combout => \process_0~22_combout\);

\process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~23_combout\ = (\process_0~15_combout\ & (\process_0~16_combout\ & (\process_0~17_combout\ & \process_0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \process_0~16_combout\,
	datac => \process_0~17_combout\,
	datad => \process_0~22_combout\,
	combout => \process_0~23_combout\);

\process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~24_combout\ = (\process_0~8_combout\ & (\process_0~12_combout\ & (\process_0~13_combout\ & \process_0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \process_0~12_combout\,
	datac => \process_0~13_combout\,
	datad => \process_0~23_combout\,
	combout => \process_0~24_combout\);

\Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\opcode[3]~input_o\ & (\Mux32~1_combout\)) # (!\opcode[3]~input_o\ & ((!\process_0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~1_combout\,
	datab => \opcode[3]~input_o\,
	datad => \process_0~24_combout\,
	combout => \Mux32~2_combout\);

ww_Z(0) <= \Z[0]~output_o\;

ww_Z(1) <= \Z[1]~output_o\;

ww_Z(2) <= \Z[2]~output_o\;

ww_Z(3) <= \Z[3]~output_o\;

ww_Z(4) <= \Z[4]~output_o\;

ww_Z(5) <= \Z[5]~output_o\;

ww_Z(6) <= \Z[6]~output_o\;

ww_Z(7) <= \Z[7]~output_o\;

ww_Z(8) <= \Z[8]~output_o\;

ww_Z(9) <= \Z[9]~output_o\;

ww_Z(10) <= \Z[10]~output_o\;

ww_Z(11) <= \Z[11]~output_o\;

ww_Z(12) <= \Z[12]~output_o\;

ww_Z(13) <= \Z[13]~output_o\;

ww_Z(14) <= \Z[14]~output_o\;

ww_Z(15) <= \Z[15]~output_o\;

ww_Z(16) <= \Z[16]~output_o\;

ww_Z(17) <= \Z[17]~output_o\;

ww_Z(18) <= \Z[18]~output_o\;

ww_Z(19) <= \Z[19]~output_o\;

ww_Z(20) <= \Z[20]~output_o\;

ww_Z(21) <= \Z[21]~output_o\;

ww_Z(22) <= \Z[22]~output_o\;

ww_Z(23) <= \Z[23]~output_o\;

ww_Z(24) <= \Z[24]~output_o\;

ww_Z(25) <= \Z[25]~output_o\;

ww_Z(26) <= \Z[26]~output_o\;

ww_Z(27) <= \Z[27]~output_o\;

ww_Z(28) <= \Z[28]~output_o\;

ww_Z(29) <= \Z[29]~output_o\;

ww_Z(30) <= \Z[30]~output_o\;

ww_Z(31) <= \Z[31]~output_o\;

ww_zero <= \zero~output_o\;
END structure;


