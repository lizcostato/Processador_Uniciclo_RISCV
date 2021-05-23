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

-- DATE "05/23/2021 15:45:09"

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

ENTITY 	top_level IS
    PORT (
	clock_in : IN std_logic;
	intruc_out : BUFFER std_logic_vector(31 DOWNTO 0);
	r1_address_out : BUFFER std_logic_vector(4 DOWNTO 0);
	r2_address_out : BUFFER std_logic_vector(4 DOWNTO 0);
	immed_out : BUFFER std_logic_vector(31 DOWNTO 0);
	ula_z_out : BUFFER std_logic_vector(31 DOWNTO 0);
	pc_out : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- intruc_out[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[6]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[9]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[11]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[13]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[14]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[15]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[16]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[17]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[18]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[19]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[20]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[21]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[22]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[23]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[24]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[25]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[26]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[27]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[28]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[29]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[30]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intruc_out[31]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_address_out[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_address_out[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_address_out[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_address_out[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_address_out[4]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_address_out[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_address_out[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_address_out[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_address_out[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_address_out[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[4]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[8]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[9]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[10]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[11]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[12]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[13]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[14]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[15]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[16]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[17]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[18]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[19]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[20]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[21]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[22]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[23]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[24]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[25]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[26]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[27]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[28]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[29]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[30]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immed_out[31]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[7]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[9]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[11]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[12]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[13]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[14]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[15]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[16]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[17]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[18]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[19]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[20]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[21]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[22]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[23]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[24]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[25]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[26]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[27]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[28]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[29]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[30]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_z_out[31]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[1]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[9]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[10]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[11]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[12]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[13]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[15]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[16]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[17]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[18]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[19]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[20]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[21]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[22]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[23]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[24]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[25]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[26]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[27]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[28]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[29]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[30]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[31]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_in	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_in : std_logic;
SIGNAL ww_intruc_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_r1_address_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_r2_address_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_immed_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ula_z_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pc_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_in~input_o\ : std_logic;
SIGNAL \clock_in~inputCLKENA0_outclk\ : std_logic;
SIGNAL \comp_PC|dataout[0]~0_combout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~1_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[1]~feeder_combout\ : std_logic;
SIGNAL \comp_PC|dataout[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~2\ : std_logic;
SIGNAL \comp_somador_PC|Add0~5_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[2]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~6\ : std_logic;
SIGNAL \comp_somador_PC|Add0~9_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~10\ : std_logic;
SIGNAL \comp_somador_PC|Add0~13_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~14\ : std_logic;
SIGNAL \comp_somador_PC|Add0~17_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~18\ : std_logic;
SIGNAL \comp_somador_PC|Add0~21_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[6]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~22\ : std_logic;
SIGNAL \comp_somador_PC|Add0~25_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~26\ : std_logic;
SIGNAL \comp_somador_PC|Add0~29_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[8]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~30\ : std_logic;
SIGNAL \comp_somador_PC|Add0~33_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[9]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~34\ : std_logic;
SIGNAL \comp_somador_PC|Add0~37_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~38\ : std_logic;
SIGNAL \comp_somador_PC|Add0~41_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~42\ : std_logic;
SIGNAL \comp_somador_PC|Add0~45_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[12]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~46\ : std_logic;
SIGNAL \comp_somador_PC|Add0~49_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~50\ : std_logic;
SIGNAL \comp_somador_PC|Add0~53_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~54\ : std_logic;
SIGNAL \comp_somador_PC|Add0~57_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~58\ : std_logic;
SIGNAL \comp_somador_PC|Add0~61_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[17]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~62\ : std_logic;
SIGNAL \comp_somador_PC|Add0~65_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~66\ : std_logic;
SIGNAL \comp_somador_PC|Add0~69_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[19]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~70\ : std_logic;
SIGNAL \comp_somador_PC|Add0~73_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~74\ : std_logic;
SIGNAL \comp_somador_PC|Add0~77_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~78\ : std_logic;
SIGNAL \comp_somador_PC|Add0~81_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[22]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~82\ : std_logic;
SIGNAL \comp_somador_PC|Add0~85_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~86\ : std_logic;
SIGNAL \comp_somador_PC|Add0~89_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~90\ : std_logic;
SIGNAL \comp_somador_PC|Add0~93_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~94\ : std_logic;
SIGNAL \comp_somador_PC|Add0~97_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[26]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~98\ : std_logic;
SIGNAL \comp_somador_PC|Add0~101_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[27]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~102\ : std_logic;
SIGNAL \comp_somador_PC|Add0~105_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[28]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~106\ : std_logic;
SIGNAL \comp_somador_PC|Add0~109_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~110\ : std_logic;
SIGNAL \comp_somador_PC|Add0~113_sumout\ : std_logic;
SIGNAL \comp_PC|dataout[30]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_somador_PC|Add0~114\ : std_logic;
SIGNAL \comp_somador_PC|Add0~117_sumout\ : std_logic;
SIGNAL \comp_somador_PC|Add0~118\ : std_logic;
SIGNAL \comp_somador_PC|Add0~121_sumout\ : std_logic;
SIGNAL \comp_PC|dataout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comp_PC|ALT_INV_dataout[30]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_PC|ALT_INV_dataout[28]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_PC|ALT_INV_dataout[27]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_PC|ALT_INV_dataout[26]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_PC|ALT_INV_dataout[22]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_PC|ALT_INV_dataout[19]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_PC|ALT_INV_dataout[17]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_PC|ALT_INV_dataout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comp_somador_PC|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clock_in <= clock_in;
intruc_out <= ww_intruc_out;
r1_address_out <= ww_r1_address_out;
r2_address_out <= ww_r2_address_out;
immed_out <= ww_immed_out;
ula_z_out <= ww_ula_z_out;
pc_out <= ww_pc_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\comp_PC|ALT_INV_dataout[30]~DUPLICATE_q\ <= NOT \comp_PC|dataout[30]~DUPLICATE_q\;
\comp_PC|ALT_INV_dataout[28]~DUPLICATE_q\ <= NOT \comp_PC|dataout[28]~DUPLICATE_q\;
\comp_PC|ALT_INV_dataout[27]~DUPLICATE_q\ <= NOT \comp_PC|dataout[27]~DUPLICATE_q\;
\comp_PC|ALT_INV_dataout[26]~DUPLICATE_q\ <= NOT \comp_PC|dataout[26]~DUPLICATE_q\;
\comp_PC|ALT_INV_dataout[22]~DUPLICATE_q\ <= NOT \comp_PC|dataout[22]~DUPLICATE_q\;
\comp_PC|ALT_INV_dataout[19]~DUPLICATE_q\ <= NOT \comp_PC|dataout[19]~DUPLICATE_q\;
\comp_PC|ALT_INV_dataout[17]~DUPLICATE_q\ <= NOT \comp_PC|dataout[17]~DUPLICATE_q\;
\comp_PC|ALT_INV_dataout\(31) <= NOT \comp_PC|dataout\(31);
\comp_PC|ALT_INV_dataout\(29) <= NOT \comp_PC|dataout\(29);
\comp_PC|ALT_INV_dataout\(25) <= NOT \comp_PC|dataout\(25);
\comp_PC|ALT_INV_dataout\(24) <= NOT \comp_PC|dataout\(24);
\comp_PC|ALT_INV_dataout\(23) <= NOT \comp_PC|dataout\(23);
\comp_PC|ALT_INV_dataout\(21) <= NOT \comp_PC|dataout\(21);
\comp_PC|ALT_INV_dataout\(20) <= NOT \comp_PC|dataout\(20);
\comp_PC|ALT_INV_dataout\(18) <= NOT \comp_PC|dataout\(18);
\comp_PC|ALT_INV_dataout\(16) <= NOT \comp_PC|dataout\(16);
\comp_PC|ALT_INV_dataout\(15) <= NOT \comp_PC|dataout\(15);
\comp_PC|ALT_INV_dataout\(14) <= NOT \comp_PC|dataout\(14);
\comp_PC|ALT_INV_dataout\(13) <= NOT \comp_PC|dataout\(13);
\comp_PC|ALT_INV_dataout\(12) <= NOT \comp_PC|dataout\(12);
\comp_PC|ALT_INV_dataout\(11) <= NOT \comp_PC|dataout\(11);
\comp_PC|ALT_INV_dataout\(10) <= NOT \comp_PC|dataout\(10);
\comp_PC|ALT_INV_dataout\(9) <= NOT \comp_PC|dataout\(9);
\comp_PC|ALT_INV_dataout\(8) <= NOT \comp_PC|dataout\(8);
\comp_PC|ALT_INV_dataout\(7) <= NOT \comp_PC|dataout\(7);
\comp_PC|ALT_INV_dataout\(6) <= NOT \comp_PC|dataout\(6);
\comp_PC|ALT_INV_dataout\(5) <= NOT \comp_PC|dataout\(5);
\comp_PC|ALT_INV_dataout\(4) <= NOT \comp_PC|dataout\(4);
\comp_PC|ALT_INV_dataout\(3) <= NOT \comp_PC|dataout\(3);
\comp_PC|ALT_INV_dataout\(2) <= NOT \comp_PC|dataout\(2);
\comp_PC|ALT_INV_dataout\(1) <= NOT \comp_PC|dataout\(1);
\comp_PC|ALT_INV_dataout\(0) <= NOT \comp_PC|dataout\(0);
\comp_somador_PC|ALT_INV_Add0~1_sumout\ <= NOT \comp_somador_PC|Add0~1_sumout\;

-- Location: IOOBUF_X88_Y81_N3
\intruc_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(0));

-- Location: IOOBUF_X54_Y81_N2
\intruc_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(1));

-- Location: IOOBUF_X36_Y0_N19
\intruc_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(2));

-- Location: IOOBUF_X66_Y0_N59
\intruc_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(3));

-- Location: IOOBUF_X66_Y0_N42
\intruc_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(4));

-- Location: IOOBUF_X30_Y81_N36
\intruc_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(5));

-- Location: IOOBUF_X84_Y81_N19
\intruc_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(6));

-- Location: IOOBUF_X38_Y0_N2
\intruc_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(7));

-- Location: IOOBUF_X28_Y81_N53
\intruc_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(8));

-- Location: IOOBUF_X64_Y81_N53
\intruc_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(9));

-- Location: IOOBUF_X60_Y81_N19
\intruc_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(10));

-- Location: IOOBUF_X28_Y81_N36
\intruc_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(11));

-- Location: IOOBUF_X6_Y0_N36
\intruc_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(12));

-- Location: IOOBUF_X32_Y0_N19
\intruc_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(13));

-- Location: IOOBUF_X32_Y0_N53
\intruc_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(14));

-- Location: IOOBUF_X70_Y81_N36
\intruc_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(15));

-- Location: IOOBUF_X36_Y0_N53
\intruc_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(16));

-- Location: IOOBUF_X82_Y81_N59
\intruc_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(17));

-- Location: IOOBUF_X26_Y0_N76
\intruc_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(18));

-- Location: IOOBUF_X52_Y0_N2
\intruc_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(19));

-- Location: IOOBUF_X28_Y0_N53
\intruc_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(20));

-- Location: IOOBUF_X72_Y0_N2
\intruc_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(21));

-- Location: IOOBUF_X62_Y81_N2
\intruc_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(22));

-- Location: IOOBUF_X70_Y81_N2
\intruc_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(23));

-- Location: IOOBUF_X66_Y0_N76
\intruc_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(24));

-- Location: IOOBUF_X62_Y0_N53
\intruc_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(25));

-- Location: IOOBUF_X62_Y81_N36
\intruc_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(26));

-- Location: IOOBUF_X86_Y81_N2
\intruc_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(27));

-- Location: IOOBUF_X68_Y0_N19
\intruc_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(28));

-- Location: IOOBUF_X26_Y0_N93
\intruc_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(29));

-- Location: IOOBUF_X60_Y0_N2
\intruc_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(30));

-- Location: IOOBUF_X50_Y0_N59
\intruc_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_intruc_out(31));

-- Location: IOOBUF_X66_Y0_N93
\r1_address_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r1_address_out(0));

-- Location: IOOBUF_X89_Y4_N96
\r1_address_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r1_address_out(1));

-- Location: IOOBUF_X86_Y81_N36
\r1_address_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r1_address_out(2));

-- Location: IOOBUF_X89_Y4_N62
\r1_address_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r1_address_out(3));

-- Location: IOOBUF_X72_Y81_N2
\r1_address_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r1_address_out(4));

-- Location: IOOBUF_X8_Y0_N53
\r2_address_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r2_address_out(0));

-- Location: IOOBUF_X4_Y0_N53
\r2_address_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r2_address_out(1));

-- Location: IOOBUF_X58_Y0_N76
\r2_address_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r2_address_out(2));

-- Location: IOOBUF_X4_Y0_N2
\r2_address_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r2_address_out(3));

-- Location: IOOBUF_X66_Y81_N93
\r2_address_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r2_address_out(4));

-- Location: IOOBUF_X89_Y9_N22
\immed_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(0));

-- Location: IOOBUF_X89_Y36_N5
\immed_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(1));

-- Location: IOOBUF_X6_Y0_N53
\immed_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(2));

-- Location: IOOBUF_X72_Y0_N53
\immed_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(3));

-- Location: IOOBUF_X89_Y37_N5
\immed_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(4));

-- Location: IOOBUF_X84_Y81_N36
\immed_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(5));

-- Location: IOOBUF_X89_Y35_N45
\immed_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(6));

-- Location: IOOBUF_X82_Y81_N76
\immed_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(7));

-- Location: IOOBUF_X60_Y81_N36
\immed_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(8));

-- Location: IOOBUF_X62_Y0_N36
\immed_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(9));

-- Location: IOOBUF_X58_Y81_N42
\immed_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(10));

-- Location: IOOBUF_X68_Y81_N36
\immed_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(11));

-- Location: IOOBUF_X89_Y6_N56
\immed_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(12));

-- Location: IOOBUF_X80_Y81_N36
\immed_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(13));

-- Location: IOOBUF_X34_Y0_N59
\immed_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(14));

-- Location: IOOBUF_X89_Y6_N22
\immed_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(15));

-- Location: IOOBUF_X72_Y81_N36
\immed_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(16));

-- Location: IOOBUF_X89_Y8_N39
\immed_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(17));

-- Location: IOOBUF_X34_Y0_N93
\immed_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(18));

-- Location: IOOBUF_X2_Y0_N76
\immed_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(19));

-- Location: IOOBUF_X88_Y81_N37
\immed_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(20));

-- Location: IOOBUF_X30_Y0_N19
\immed_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(21));

-- Location: IOOBUF_X89_Y37_N56
\immed_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(22));

-- Location: IOOBUF_X72_Y81_N19
\immed_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(23));

-- Location: IOOBUF_X72_Y81_N53
\immed_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(24));

-- Location: IOOBUF_X78_Y81_N36
\immed_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(25));

-- Location: IOOBUF_X89_Y9_N56
\immed_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(26));

-- Location: IOOBUF_X89_Y9_N5
\immed_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(27));

-- Location: IOOBUF_X58_Y0_N93
\immed_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(28));

-- Location: IOOBUF_X64_Y81_N19
\immed_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(29));

-- Location: IOOBUF_X52_Y81_N2
\immed_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(30));

-- Location: IOOBUF_X4_Y0_N36
\immed_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_immed_out(31));

-- Location: IOOBUF_X54_Y0_N19
\ula_z_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(0));

-- Location: IOOBUF_X89_Y8_N56
\ula_z_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(1));

-- Location: IOOBUF_X40_Y0_N53
\ula_z_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(2));

-- Location: IOOBUF_X56_Y0_N36
\ula_z_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(3));

-- Location: IOOBUF_X50_Y0_N93
\ula_z_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(4));

-- Location: IOOBUF_X58_Y81_N76
\ula_z_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(5));

-- Location: IOOBUF_X26_Y81_N76
\ula_z_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(6));

-- Location: IOOBUF_X70_Y0_N2
\ula_z_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(7));

-- Location: IOOBUF_X68_Y0_N53
\ula_z_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(8));

-- Location: IOOBUF_X68_Y81_N19
\ula_z_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(9));

-- Location: IOOBUF_X30_Y0_N36
\ula_z_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(10));

-- Location: IOOBUF_X6_Y0_N2
\ula_z_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(11));

-- Location: IOOBUF_X64_Y0_N19
\ula_z_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(12));

-- Location: IOOBUF_X88_Y81_N54
\ula_z_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(13));

-- Location: IOOBUF_X89_Y35_N79
\ula_z_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(14));

-- Location: IOOBUF_X70_Y0_N19
\ula_z_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(15));

-- Location: IOOBUF_X50_Y0_N42
\ula_z_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(16));

-- Location: IOOBUF_X60_Y0_N36
\ula_z_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(17));

-- Location: IOOBUF_X30_Y0_N53
\ula_z_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(18));

-- Location: IOOBUF_X6_Y0_N19
\ula_z_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(19));

-- Location: IOOBUF_X56_Y0_N19
\ula_z_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(20));

-- Location: IOOBUF_X62_Y0_N2
\ula_z_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(21));

-- Location: IOOBUF_X89_Y8_N22
\ula_z_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(22));

-- Location: IOOBUF_X64_Y0_N2
\ula_z_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(23));

-- Location: IOOBUF_X4_Y0_N19
\ula_z_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(24));

-- Location: IOOBUF_X86_Y81_N53
\ula_z_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(25));

-- Location: IOOBUF_X50_Y0_N76
\ula_z_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(26));

-- Location: IOOBUF_X8_Y0_N19
\ula_z_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(27));

-- Location: IOOBUF_X52_Y0_N19
\ula_z_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(28));

-- Location: IOOBUF_X34_Y0_N42
\ula_z_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(29));

-- Location: IOOBUF_X56_Y0_N53
\ula_z_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(30));

-- Location: IOOBUF_X28_Y81_N2
\ula_z_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_z_out(31));

-- Location: IOOBUF_X38_Y81_N2
\pc_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(0),
	devoe => ww_devoe,
	o => ww_pc_out(0));

-- Location: IOOBUF_X38_Y81_N19
\pc_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(1));

-- Location: IOOBUF_X34_Y81_N93
\pc_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(2));

-- Location: IOOBUF_X40_Y0_N19
\pc_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(3));

-- Location: IOOBUF_X40_Y81_N36
\pc_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(4),
	devoe => ww_devoe,
	o => ww_pc_out(4));

-- Location: IOOBUF_X32_Y81_N19
\pc_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(5),
	devoe => ww_devoe,
	o => ww_pc_out(5));

-- Location: IOOBUF_X50_Y81_N59
\pc_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(6));

-- Location: IOOBUF_X36_Y81_N36
\pc_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(7),
	devoe => ww_devoe,
	o => ww_pc_out(7));

-- Location: IOOBUF_X34_Y81_N59
\pc_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(8));

-- Location: IOOBUF_X34_Y81_N76
\pc_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(9));

-- Location: IOOBUF_X36_Y81_N2
\pc_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(10),
	devoe => ww_devoe,
	o => ww_pc_out(10));

-- Location: IOOBUF_X36_Y81_N53
\pc_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(11),
	devoe => ww_devoe,
	o => ww_pc_out(11));

-- Location: IOOBUF_X38_Y81_N53
\pc_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(12));

-- Location: IOOBUF_X40_Y81_N2
\pc_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(13),
	devoe => ww_devoe,
	o => ww_pc_out(13));

-- Location: IOOBUF_X40_Y81_N19
\pc_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(14),
	devoe => ww_devoe,
	o => ww_pc_out(14));

-- Location: IOOBUF_X36_Y81_N19
\pc_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(15),
	devoe => ww_devoe,
	o => ww_pc_out(15));

-- Location: IOOBUF_X34_Y81_N42
\pc_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(16),
	devoe => ww_devoe,
	o => ww_pc_out(16));

-- Location: IOOBUF_X32_Y81_N36
\pc_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(17),
	devoe => ww_devoe,
	o => ww_pc_out(17));

-- Location: IOOBUF_X40_Y0_N36
\pc_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(18),
	devoe => ww_devoe,
	o => ww_pc_out(18));

-- Location: IOOBUF_X38_Y81_N36
\pc_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(19),
	devoe => ww_devoe,
	o => ww_pc_out(19));

-- Location: IOOBUF_X40_Y81_N53
\pc_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(20),
	devoe => ww_devoe,
	o => ww_pc_out(20));

-- Location: IOOBUF_X30_Y81_N19
\pc_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(21),
	devoe => ww_devoe,
	o => ww_pc_out(21));

-- Location: IOOBUF_X50_Y81_N93
\pc_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(22),
	devoe => ww_devoe,
	o => ww_pc_out(22));

-- Location: IOOBUF_X50_Y81_N42
\pc_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(23),
	devoe => ww_devoe,
	o => ww_pc_out(23));

-- Location: IOOBUF_X32_Y81_N2
\pc_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(24),
	devoe => ww_devoe,
	o => ww_pc_out(24));

-- Location: IOOBUF_X52_Y81_N36
\pc_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(25),
	devoe => ww_devoe,
	o => ww_pc_out(25));

-- Location: IOOBUF_X30_Y81_N53
\pc_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(26),
	devoe => ww_devoe,
	o => ww_pc_out(26));

-- Location: IOOBUF_X50_Y81_N76
\pc_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(27),
	devoe => ww_devoe,
	o => ww_pc_out(27));

-- Location: IOOBUF_X32_Y81_N53
\pc_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(28),
	devoe => ww_devoe,
	o => ww_pc_out(28));

-- Location: IOOBUF_X52_Y81_N19
\pc_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(29),
	devoe => ww_devoe,
	o => ww_pc_out(29));

-- Location: IOOBUF_X52_Y81_N53
\pc_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(30),
	devoe => ww_devoe,
	o => ww_pc_out(30));

-- Location: IOOBUF_X30_Y81_N2
\pc_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_PC|dataout\(31),
	devoe => ww_devoe,
	o => ww_pc_out(31));

-- Location: IOIBUF_X89_Y35_N61
\clock_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_in,
	o => \clock_in~input_o\);

-- Location: CLKCTRL_G10
\clock_in~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_in~input_o\,
	outclk => \clock_in~inputCLKENA0_outclk\);

-- Location: MLABCELL_X39_Y80_N3
\comp_PC|dataout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_PC|dataout[0]~0_combout\ = ( !\comp_PC|dataout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \comp_PC|ALT_INV_dataout\(0),
	combout => \comp_PC|dataout[0]~0_combout\);

-- Location: FF_X40_Y80_N2
\comp_PC|dataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	asdata => \comp_PC|dataout[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(0));

-- Location: FF_X39_Y80_N7
\comp_PC|dataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_PC|dataout[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(1));

-- Location: LABCELL_X40_Y80_N0
\comp_somador_PC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~1_sumout\ = SUM(( \comp_PC|dataout\(1) ) + ( \comp_PC|dataout\(0) ) + ( !VCC ))
-- \comp_somador_PC|Add0~2\ = CARRY(( \comp_PC|dataout\(1) ) + ( \comp_PC|dataout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(0),
	datad => \comp_PC|ALT_INV_dataout\(1),
	cin => GND,
	sumout => \comp_somador_PC|Add0~1_sumout\,
	cout => \comp_somador_PC|Add0~2\);

-- Location: MLABCELL_X39_Y80_N6
\comp_PC|dataout[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_PC|dataout[1]~feeder_combout\ = ( \comp_somador_PC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comp_somador_PC|ALT_INV_Add0~1_sumout\,
	combout => \comp_PC|dataout[1]~feeder_combout\);

-- Location: FF_X39_Y80_N8
\comp_PC|dataout[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_PC|dataout[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[1]~DUPLICATE_q\);

-- Location: FF_X40_Y80_N5
\comp_PC|dataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(2));

-- Location: LABCELL_X40_Y80_N3
\comp_somador_PC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~5_sumout\ = SUM(( \comp_PC|dataout\(2) ) + ( GND ) + ( \comp_somador_PC|Add0~2\ ))
-- \comp_somador_PC|Add0~6\ = CARRY(( \comp_PC|dataout\(2) ) + ( GND ) + ( \comp_somador_PC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout\(2),
	cin => \comp_somador_PC|Add0~2\,
	sumout => \comp_somador_PC|Add0~5_sumout\,
	cout => \comp_somador_PC|Add0~6\);

-- Location: FF_X40_Y80_N4
\comp_PC|dataout[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[2]~DUPLICATE_q\);

-- Location: FF_X40_Y80_N7
\comp_PC|dataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(3));

-- Location: LABCELL_X40_Y80_N6
\comp_somador_PC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~9_sumout\ = SUM(( \comp_PC|dataout\(3) ) + ( GND ) + ( \comp_somador_PC|Add0~6\ ))
-- \comp_somador_PC|Add0~10\ = CARRY(( \comp_PC|dataout\(3) ) + ( GND ) + ( \comp_somador_PC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout\(3),
	cin => \comp_somador_PC|Add0~6\,
	sumout => \comp_somador_PC|Add0~9_sumout\,
	cout => \comp_somador_PC|Add0~10\);

-- Location: FF_X40_Y80_N8
\comp_PC|dataout[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y80_N9
\comp_somador_PC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~13_sumout\ = SUM(( \comp_PC|dataout\(4) ) + ( GND ) + ( \comp_somador_PC|Add0~10\ ))
-- \comp_somador_PC|Add0~14\ = CARRY(( \comp_PC|dataout\(4) ) + ( GND ) + ( \comp_somador_PC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(4),
	cin => \comp_somador_PC|Add0~10\,
	sumout => \comp_somador_PC|Add0~13_sumout\,
	cout => \comp_somador_PC|Add0~14\);

-- Location: FF_X40_Y80_N11
\comp_PC|dataout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(4));

-- Location: LABCELL_X40_Y80_N12
\comp_somador_PC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~17_sumout\ = SUM(( \comp_PC|dataout\(5) ) + ( GND ) + ( \comp_somador_PC|Add0~14\ ))
-- \comp_somador_PC|Add0~18\ = CARRY(( \comp_PC|dataout\(5) ) + ( GND ) + ( \comp_somador_PC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_PC|ALT_INV_dataout\(5),
	cin => \comp_somador_PC|Add0~14\,
	sumout => \comp_somador_PC|Add0~17_sumout\,
	cout => \comp_somador_PC|Add0~18\);

-- Location: FF_X40_Y80_N14
\comp_PC|dataout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(5));

-- Location: FF_X40_Y80_N17
\comp_PC|dataout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(6));

-- Location: LABCELL_X40_Y80_N15
\comp_somador_PC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~21_sumout\ = SUM(( \comp_PC|dataout\(6) ) + ( GND ) + ( \comp_somador_PC|Add0~18\ ))
-- \comp_somador_PC|Add0~22\ = CARRY(( \comp_PC|dataout\(6) ) + ( GND ) + ( \comp_somador_PC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(6),
	cin => \comp_somador_PC|Add0~18\,
	sumout => \comp_somador_PC|Add0~21_sumout\,
	cout => \comp_somador_PC|Add0~22\);

-- Location: FF_X40_Y80_N16
\comp_PC|dataout[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[6]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y80_N18
\comp_somador_PC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~25_sumout\ = SUM(( \comp_PC|dataout\(7) ) + ( GND ) + ( \comp_somador_PC|Add0~22\ ))
-- \comp_somador_PC|Add0~26\ = CARRY(( \comp_PC|dataout\(7) ) + ( GND ) + ( \comp_somador_PC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(7),
	cin => \comp_somador_PC|Add0~22\,
	sumout => \comp_somador_PC|Add0~25_sumout\,
	cout => \comp_somador_PC|Add0~26\);

-- Location: FF_X40_Y80_N20
\comp_PC|dataout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(7));

-- Location: FF_X40_Y80_N23
\comp_PC|dataout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(8));

-- Location: LABCELL_X40_Y80_N21
\comp_somador_PC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~29_sumout\ = SUM(( \comp_PC|dataout\(8) ) + ( GND ) + ( \comp_somador_PC|Add0~26\ ))
-- \comp_somador_PC|Add0~30\ = CARRY(( \comp_PC|dataout\(8) ) + ( GND ) + ( \comp_somador_PC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout\(8),
	cin => \comp_somador_PC|Add0~26\,
	sumout => \comp_somador_PC|Add0~29_sumout\,
	cout => \comp_somador_PC|Add0~30\);

-- Location: FF_X40_Y80_N22
\comp_PC|dataout[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[8]~DUPLICATE_q\);

-- Location: FF_X40_Y80_N26
\comp_PC|dataout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(9));

-- Location: LABCELL_X40_Y80_N24
\comp_somador_PC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~33_sumout\ = SUM(( \comp_PC|dataout\(9) ) + ( GND ) + ( \comp_somador_PC|Add0~30\ ))
-- \comp_somador_PC|Add0~34\ = CARRY(( \comp_PC|dataout\(9) ) + ( GND ) + ( \comp_somador_PC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(9),
	cin => \comp_somador_PC|Add0~30\,
	sumout => \comp_somador_PC|Add0~33_sumout\,
	cout => \comp_somador_PC|Add0~34\);

-- Location: FF_X40_Y80_N25
\comp_PC|dataout[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[9]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y80_N27
\comp_somador_PC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~37_sumout\ = SUM(( \comp_PC|dataout\(10) ) + ( GND ) + ( \comp_somador_PC|Add0~34\ ))
-- \comp_somador_PC|Add0~38\ = CARRY(( \comp_PC|dataout\(10) ) + ( GND ) + ( \comp_somador_PC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout\(10),
	cin => \comp_somador_PC|Add0~34\,
	sumout => \comp_somador_PC|Add0~37_sumout\,
	cout => \comp_somador_PC|Add0~38\);

-- Location: FF_X40_Y80_N29
\comp_PC|dataout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(10));

-- Location: LABCELL_X40_Y80_N30
\comp_somador_PC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~41_sumout\ = SUM(( \comp_PC|dataout\(11) ) + ( GND ) + ( \comp_somador_PC|Add0~38\ ))
-- \comp_somador_PC|Add0~42\ = CARRY(( \comp_PC|dataout\(11) ) + ( GND ) + ( \comp_somador_PC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(11),
	cin => \comp_somador_PC|Add0~38\,
	sumout => \comp_somador_PC|Add0~41_sumout\,
	cout => \comp_somador_PC|Add0~42\);

-- Location: FF_X40_Y80_N31
\comp_PC|dataout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(11));

-- Location: FF_X40_Y80_N35
\comp_PC|dataout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(12));

-- Location: LABCELL_X40_Y80_N33
\comp_somador_PC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~45_sumout\ = SUM(( \comp_PC|dataout\(12) ) + ( GND ) + ( \comp_somador_PC|Add0~42\ ))
-- \comp_somador_PC|Add0~46\ = CARRY(( \comp_PC|dataout\(12) ) + ( GND ) + ( \comp_somador_PC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_PC|ALT_INV_dataout\(12),
	cin => \comp_somador_PC|Add0~42\,
	sumout => \comp_somador_PC|Add0~45_sumout\,
	cout => \comp_somador_PC|Add0~46\);

-- Location: FF_X40_Y80_N34
\comp_PC|dataout[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[12]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y80_N36
\comp_somador_PC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~49_sumout\ = SUM(( \comp_PC|dataout\(13) ) + ( GND ) + ( \comp_somador_PC|Add0~46\ ))
-- \comp_somador_PC|Add0~50\ = CARRY(( \comp_PC|dataout\(13) ) + ( GND ) + ( \comp_somador_PC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout\(13),
	cin => \comp_somador_PC|Add0~46\,
	sumout => \comp_somador_PC|Add0~49_sumout\,
	cout => \comp_somador_PC|Add0~50\);

-- Location: FF_X40_Y80_N38
\comp_PC|dataout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(13));

-- Location: LABCELL_X40_Y80_N39
\comp_somador_PC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~53_sumout\ = SUM(( \comp_PC|dataout\(14) ) + ( GND ) + ( \comp_somador_PC|Add0~50\ ))
-- \comp_somador_PC|Add0~54\ = CARRY(( \comp_PC|dataout\(14) ) + ( GND ) + ( \comp_somador_PC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(14),
	cin => \comp_somador_PC|Add0~50\,
	sumout => \comp_somador_PC|Add0~53_sumout\,
	cout => \comp_somador_PC|Add0~54\);

-- Location: FF_X40_Y80_N41
\comp_PC|dataout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(14));

-- Location: LABCELL_X40_Y80_N42
\comp_somador_PC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~57_sumout\ = SUM(( \comp_PC|dataout\(15) ) + ( GND ) + ( \comp_somador_PC|Add0~54\ ))
-- \comp_somador_PC|Add0~58\ = CARRY(( \comp_PC|dataout\(15) ) + ( GND ) + ( \comp_somador_PC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout\(15),
	cin => \comp_somador_PC|Add0~54\,
	sumout => \comp_somador_PC|Add0~57_sumout\,
	cout => \comp_somador_PC|Add0~58\);

-- Location: FF_X40_Y80_N43
\comp_PC|dataout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(15));

-- Location: LABCELL_X40_Y80_N45
\comp_somador_PC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~61_sumout\ = SUM(( \comp_PC|dataout\(16) ) + ( GND ) + ( \comp_somador_PC|Add0~58\ ))
-- \comp_somador_PC|Add0~62\ = CARRY(( \comp_PC|dataout\(16) ) + ( GND ) + ( \comp_somador_PC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout\(16),
	cin => \comp_somador_PC|Add0~58\,
	sumout => \comp_somador_PC|Add0~61_sumout\,
	cout => \comp_somador_PC|Add0~62\);

-- Location: FF_X40_Y80_N47
\comp_PC|dataout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(16));

-- Location: FF_X40_Y80_N50
\comp_PC|dataout[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[17]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y80_N48
\comp_somador_PC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~65_sumout\ = SUM(( \comp_PC|dataout[17]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~62\ ))
-- \comp_somador_PC|Add0~66\ = CARRY(( \comp_PC|dataout[17]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout[17]~DUPLICATE_q\,
	cin => \comp_somador_PC|Add0~62\,
	sumout => \comp_somador_PC|Add0~65_sumout\,
	cout => \comp_somador_PC|Add0~66\);

-- Location: FF_X40_Y80_N49
\comp_PC|dataout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(17));

-- Location: LABCELL_X40_Y80_N51
\comp_somador_PC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~69_sumout\ = SUM(( \comp_PC|dataout\(18) ) + ( GND ) + ( \comp_somador_PC|Add0~66\ ))
-- \comp_somador_PC|Add0~70\ = CARRY(( \comp_PC|dataout\(18) ) + ( GND ) + ( \comp_somador_PC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout\(18),
	cin => \comp_somador_PC|Add0~66\,
	sumout => \comp_somador_PC|Add0~69_sumout\,
	cout => \comp_somador_PC|Add0~70\);

-- Location: FF_X40_Y80_N52
\comp_PC|dataout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(18));

-- Location: FF_X40_Y80_N56
\comp_PC|dataout[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[19]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y80_N54
\comp_somador_PC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~73_sumout\ = SUM(( \comp_PC|dataout[19]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~70\ ))
-- \comp_somador_PC|Add0~74\ = CARRY(( \comp_PC|dataout[19]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout[19]~DUPLICATE_q\,
	cin => \comp_somador_PC|Add0~70\,
	sumout => \comp_somador_PC|Add0~73_sumout\,
	cout => \comp_somador_PC|Add0~74\);

-- Location: FF_X40_Y80_N55
\comp_PC|dataout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(19));

-- Location: LABCELL_X40_Y80_N57
\comp_somador_PC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~77_sumout\ = SUM(( \comp_PC|dataout\(20) ) + ( GND ) + ( \comp_somador_PC|Add0~74\ ))
-- \comp_somador_PC|Add0~78\ = CARRY(( \comp_PC|dataout\(20) ) + ( GND ) + ( \comp_somador_PC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout\(20),
	cin => \comp_somador_PC|Add0~74\,
	sumout => \comp_somador_PC|Add0~77_sumout\,
	cout => \comp_somador_PC|Add0~78\);

-- Location: FF_X40_Y80_N59
\comp_PC|dataout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(20));

-- Location: LABCELL_X40_Y79_N0
\comp_somador_PC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~81_sumout\ = SUM(( \comp_PC|dataout\(21) ) + ( GND ) + ( \comp_somador_PC|Add0~78\ ))
-- \comp_somador_PC|Add0~82\ = CARRY(( \comp_PC|dataout\(21) ) + ( GND ) + ( \comp_somador_PC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(21),
	cin => \comp_somador_PC|Add0~78\,
	sumout => \comp_somador_PC|Add0~81_sumout\,
	cout => \comp_somador_PC|Add0~82\);

-- Location: FF_X40_Y79_N2
\comp_PC|dataout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(21));

-- Location: FF_X40_Y79_N5
\comp_PC|dataout[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[22]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y79_N3
\comp_somador_PC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~85_sumout\ = SUM(( \comp_PC|dataout[22]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~82\ ))
-- \comp_somador_PC|Add0~86\ = CARRY(( \comp_PC|dataout[22]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout[22]~DUPLICATE_q\,
	cin => \comp_somador_PC|Add0~82\,
	sumout => \comp_somador_PC|Add0~85_sumout\,
	cout => \comp_somador_PC|Add0~86\);

-- Location: FF_X40_Y79_N4
\comp_PC|dataout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(22));

-- Location: LABCELL_X40_Y79_N6
\comp_somador_PC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~89_sumout\ = SUM(( \comp_PC|dataout\(23) ) + ( GND ) + ( \comp_somador_PC|Add0~86\ ))
-- \comp_somador_PC|Add0~90\ = CARRY(( \comp_PC|dataout\(23) ) + ( GND ) + ( \comp_somador_PC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(23),
	cin => \comp_somador_PC|Add0~86\,
	sumout => \comp_somador_PC|Add0~89_sumout\,
	cout => \comp_somador_PC|Add0~90\);

-- Location: FF_X40_Y79_N7
\comp_PC|dataout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(23));

-- Location: LABCELL_X40_Y79_N9
\comp_somador_PC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~93_sumout\ = SUM(( \comp_PC|dataout\(24) ) + ( GND ) + ( \comp_somador_PC|Add0~90\ ))
-- \comp_somador_PC|Add0~94\ = CARRY(( \comp_PC|dataout\(24) ) + ( GND ) + ( \comp_somador_PC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(24),
	cin => \comp_somador_PC|Add0~90\,
	sumout => \comp_somador_PC|Add0~93_sumout\,
	cout => \comp_somador_PC|Add0~94\);

-- Location: FF_X40_Y79_N11
\comp_PC|dataout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(24));

-- Location: LABCELL_X40_Y79_N12
\comp_somador_PC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~97_sumout\ = SUM(( \comp_PC|dataout\(25) ) + ( GND ) + ( \comp_somador_PC|Add0~94\ ))
-- \comp_somador_PC|Add0~98\ = CARRY(( \comp_PC|dataout\(25) ) + ( GND ) + ( \comp_somador_PC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_PC|ALT_INV_dataout\(25),
	cin => \comp_somador_PC|Add0~94\,
	sumout => \comp_somador_PC|Add0~97_sumout\,
	cout => \comp_somador_PC|Add0~98\);

-- Location: FF_X40_Y79_N14
\comp_PC|dataout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(25));

-- Location: FF_X40_Y79_N17
\comp_PC|dataout[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[26]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y79_N15
\comp_somador_PC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~101_sumout\ = SUM(( \comp_PC|dataout[26]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~98\ ))
-- \comp_somador_PC|Add0~102\ = CARRY(( \comp_PC|dataout[26]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout[26]~DUPLICATE_q\,
	cin => \comp_somador_PC|Add0~98\,
	sumout => \comp_somador_PC|Add0~101_sumout\,
	cout => \comp_somador_PC|Add0~102\);

-- Location: FF_X40_Y79_N16
\comp_PC|dataout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(26));

-- Location: FF_X40_Y79_N20
\comp_PC|dataout[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[27]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y79_N18
\comp_somador_PC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~105_sumout\ = SUM(( \comp_PC|dataout[27]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~102\ ))
-- \comp_somador_PC|Add0~106\ = CARRY(( \comp_PC|dataout[27]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout[27]~DUPLICATE_q\,
	cin => \comp_somador_PC|Add0~102\,
	sumout => \comp_somador_PC|Add0~105_sumout\,
	cout => \comp_somador_PC|Add0~106\);

-- Location: FF_X40_Y79_N19
\comp_PC|dataout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(27));

-- Location: FF_X40_Y79_N23
\comp_PC|dataout[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[28]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y79_N21
\comp_somador_PC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~109_sumout\ = SUM(( \comp_PC|dataout[28]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~106\ ))
-- \comp_somador_PC|Add0~110\ = CARRY(( \comp_PC|dataout[28]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout[28]~DUPLICATE_q\,
	cin => \comp_somador_PC|Add0~106\,
	sumout => \comp_somador_PC|Add0~109_sumout\,
	cout => \comp_somador_PC|Add0~110\);

-- Location: FF_X40_Y79_N22
\comp_PC|dataout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(28));

-- Location: LABCELL_X40_Y79_N24
\comp_somador_PC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~113_sumout\ = SUM(( \comp_PC|dataout\(29) ) + ( GND ) + ( \comp_somador_PC|Add0~110\ ))
-- \comp_somador_PC|Add0~114\ = CARRY(( \comp_PC|dataout\(29) ) + ( GND ) + ( \comp_somador_PC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(29),
	cin => \comp_somador_PC|Add0~110\,
	sumout => \comp_somador_PC|Add0~113_sumout\,
	cout => \comp_somador_PC|Add0~114\);

-- Location: FF_X40_Y79_N26
\comp_PC|dataout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(29));

-- Location: FF_X40_Y79_N29
\comp_PC|dataout[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout[30]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y79_N27
\comp_somador_PC|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~117_sumout\ = SUM(( \comp_PC|dataout[30]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~114\ ))
-- \comp_somador_PC|Add0~118\ = CARRY(( \comp_PC|dataout[30]~DUPLICATE_q\ ) + ( GND ) + ( \comp_somador_PC|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comp_PC|ALT_INV_dataout[30]~DUPLICATE_q\,
	cin => \comp_somador_PC|Add0~114\,
	sumout => \comp_somador_PC|Add0~117_sumout\,
	cout => \comp_somador_PC|Add0~118\);

-- Location: FF_X40_Y79_N28
\comp_PC|dataout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(30));

-- Location: LABCELL_X40_Y79_N30
\comp_somador_PC|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_somador_PC|Add0~121_sumout\ = SUM(( \comp_PC|dataout\(31) ) + ( GND ) + ( \comp_somador_PC|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comp_PC|ALT_INV_dataout\(31),
	cin => \comp_somador_PC|Add0~118\,
	sumout => \comp_somador_PC|Add0~121_sumout\);

-- Location: FF_X40_Y79_N31
\comp_PC|dataout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputCLKENA0_outclk\,
	d => \comp_somador_PC|Add0~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_PC|dataout\(31));

-- Location: LABCELL_X10_Y31_N0
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


