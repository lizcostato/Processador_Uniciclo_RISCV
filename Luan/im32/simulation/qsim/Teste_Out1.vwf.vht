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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/18/2021 22:00:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Im32
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Im32_vhd_vec_tst IS
END Im32_vhd_vec_tst;
ARCHITECTURE Im32_arch OF Im32_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL imm32 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL instr : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Im32
	PORT (
	imm32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	instr : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Im32
	PORT MAP (
-- list connections between master ports and signals
	imm32 => imm32,
	instr => instr
	);
-- instr[31]
t_prcs_instr_31: PROCESS
BEGIN
	instr(31) <= '0';
	WAIT FOR 170000 ps;
	instr(31) <= '1';
	WAIT FOR 70000 ps;
	instr(31) <= '0';
WAIT;
END PROCESS t_prcs_instr_31;
-- instr[30]
t_prcs_instr_30: PROCESS
BEGIN
	instr(30) <= '0';
	WAIT FOR 170000 ps;
	instr(30) <= '1';
	WAIT FOR 70000 ps;
	instr(30) <= '0';
WAIT;
END PROCESS t_prcs_instr_30;
-- instr[29]
t_prcs_instr_29: PROCESS
BEGIN
	instr(29) <= '0';
	WAIT FOR 170000 ps;
	instr(29) <= '1';
	WAIT FOR 70000 ps;
	instr(29) <= '0';
WAIT;
END PROCESS t_prcs_instr_29;
-- instr[28]
t_prcs_instr_28: PROCESS
BEGIN
	instr(28) <= '0';
	WAIT FOR 170000 ps;
	instr(28) <= '1';
	WAIT FOR 70000 ps;
	instr(28) <= '0';
WAIT;
END PROCESS t_prcs_instr_28;
-- instr[27]
t_prcs_instr_27: PROCESS
BEGIN
	instr(27) <= '0';
	WAIT FOR 170000 ps;
	instr(27) <= '1';
	WAIT FOR 70000 ps;
	instr(27) <= '0';
WAIT;
END PROCESS t_prcs_instr_27;
-- instr[26]
t_prcs_instr_26: PROCESS
BEGIN
	instr(26) <= '0';
WAIT;
END PROCESS t_prcs_instr_26;
-- instr[25]
t_prcs_instr_25: PROCESS
BEGIN
	instr(25) <= '0';
WAIT;
END PROCESS t_prcs_instr_25;
-- instr[24]
t_prcs_instr_24: PROCESS
BEGIN
	instr(24) <= '0';
	WAIT FOR 90000 ps;
	instr(24) <= '1';
	WAIT FOR 150000 ps;
	instr(24) <= '0';
WAIT;
END PROCESS t_prcs_instr_24;
-- instr[23]
t_prcs_instr_23: PROCESS
BEGIN
	instr(23) <= '0';
	WAIT FOR 170000 ps;
	instr(23) <= '1';
	WAIT FOR 70000 ps;
	instr(23) <= '0';
WAIT;
END PROCESS t_prcs_instr_23;
-- instr[22]
t_prcs_instr_22: PROCESS
BEGIN
	instr(22) <= '0';
	WAIT FOR 170000 ps;
	instr(22) <= '1';
	WAIT FOR 70000 ps;
	instr(22) <= '0';
WAIT;
END PROCESS t_prcs_instr_22;
-- instr[21]
t_prcs_instr_21: PROCESS
BEGIN
	instr(21) <= '0';
WAIT;
END PROCESS t_prcs_instr_21;
-- instr[20]
t_prcs_instr_20: PROCESS
BEGIN
	instr(20) <= '0';
WAIT;
END PROCESS t_prcs_instr_20;
-- instr[19]
t_prcs_instr_19: PROCESS
BEGIN
	instr(19) <= '0';
WAIT;
END PROCESS t_prcs_instr_19;
-- instr[18]
t_prcs_instr_18: PROCESS
BEGIN
	instr(18) <= '0';
WAIT;
END PROCESS t_prcs_instr_18;
-- instr[17]
t_prcs_instr_17: PROCESS
BEGIN
	instr(17) <= '0';
WAIT;
END PROCESS t_prcs_instr_17;
-- instr[16]
t_prcs_instr_16: PROCESS
BEGIN
	instr(16) <= '0';
WAIT;
END PROCESS t_prcs_instr_16;
-- instr[15]
t_prcs_instr_15: PROCESS
BEGIN
	instr(15) <= '0';
WAIT;
END PROCESS t_prcs_instr_15;
-- instr[14]
t_prcs_instr_14: PROCESS
BEGIN
	instr(14) <= '0';
WAIT;
END PROCESS t_prcs_instr_14;
-- instr[13]
t_prcs_instr_13: PROCESS
BEGIN
	instr(13) <= '0';
	WAIT FOR 90000 ps;
	instr(13) <= '1';
	WAIT FOR 80000 ps;
	instr(13) <= '0';
WAIT;
END PROCESS t_prcs_instr_13;
-- instr[12]
t_prcs_instr_12: PROCESS
BEGIN
	instr(12) <= '0';
WAIT;
END PROCESS t_prcs_instr_12;
-- instr[11]
t_prcs_instr_11: PROCESS
BEGIN
	instr(11) <= '0';
WAIT;
END PROCESS t_prcs_instr_11;
-- instr[10]
t_prcs_instr_10: PROCESS
BEGIN
	instr(10) <= '0';
WAIT;
END PROCESS t_prcs_instr_10;
-- instr[9]
t_prcs_instr_9: PROCESS
BEGIN
	instr(9) <= '1';
	WAIT FOR 240000 ps;
	instr(9) <= '0';
WAIT;
END PROCESS t_prcs_instr_9;
-- instr[8]
t_prcs_instr_8: PROCESS
BEGIN
	instr(8) <= '0';
	WAIT FOR 170000 ps;
	instr(8) <= '1';
	WAIT FOR 70000 ps;
	instr(8) <= '0';
WAIT;
END PROCESS t_prcs_instr_8;
-- instr[7]
t_prcs_instr_7: PROCESS
BEGIN
	instr(7) <= '1';
	WAIT FOR 170000 ps;
	instr(7) <= '0';
WAIT;
END PROCESS t_prcs_instr_7;
-- instr[6]
t_prcs_instr_6: PROCESS
BEGIN
	instr(6) <= '0';
WAIT;
END PROCESS t_prcs_instr_6;
-- instr[5]
t_prcs_instr_5: PROCESS
BEGIN
	instr(5) <= '1';
	WAIT FOR 90000 ps;
	instr(5) <= '0';
WAIT;
END PROCESS t_prcs_instr_5;
-- instr[4]
t_prcs_instr_4: PROCESS
BEGIN
	instr(4) <= '1';
	WAIT FOR 90000 ps;
	instr(4) <= '0';
	WAIT FOR 80000 ps;
	instr(4) <= '1';
	WAIT FOR 70000 ps;
	instr(4) <= '0';
WAIT;
END PROCESS t_prcs_instr_4;
-- instr[3]
t_prcs_instr_3: PROCESS
BEGIN
	instr(3) <= '0';
WAIT;
END PROCESS t_prcs_instr_3;
-- instr[2]
t_prcs_instr_2: PROCESS
BEGIN
	instr(2) <= '0';
WAIT;
END PROCESS t_prcs_instr_2;
-- instr[1]
t_prcs_instr_1: PROCESS
BEGIN
	instr(1) <= '1';
	WAIT FOR 240000 ps;
	instr(1) <= '0';
WAIT;
END PROCESS t_prcs_instr_1;
-- instr[0]
t_prcs_instr_0: PROCESS
BEGIN
	instr(0) <= '1';
	WAIT FOR 240000 ps;
	instr(0) <= '0';
WAIT;
END PROCESS t_prcs_instr_0;
END Im32_arch;
