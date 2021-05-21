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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/11/2021 15:02:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mem_rv
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mem_rv_vhd_vec_tst IS
END mem_rv_vhd_vec_tst;
ARCHITECTURE mem_rv_arch OF mem_rv_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL datain : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dataout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT mem_rv
	PORT (
	address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clock : IN STD_LOGIC;
	datain : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	dataout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mem_rv
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clock => clock,
	datain => datain,
	dataout => dataout,
	we => we
	);
-- address[7]
t_prcs_address_7: PROCESS
BEGIN
	address(7) <= '0';
WAIT;
END PROCESS t_prcs_address_7;
-- address[6]
t_prcs_address_6: PROCESS
BEGIN
	address(6) <= '0';
WAIT;
END PROCESS t_prcs_address_6;
-- address[5]
t_prcs_address_5: PROCESS
BEGIN
	address(5) <= '0';
WAIT;
END PROCESS t_prcs_address_5;
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	address(4) <= '0';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
	WAIT FOR 160000 ps;
	address(3) <= '1';
	WAIT FOR 60000 ps;
	address(3) <= '0';
	WAIT FOR 160000 ps;
	address(3) <= '1';
	WAIT FOR 120000 ps;
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 80000 ps;
	address(2) <= '1';
	WAIT FOR 80000 ps;
	address(2) <= '0';
	WAIT FOR 140000 ps;
	address(2) <= '1';
	WAIT FOR 80000 ps;
	address(2) <= '0';
	WAIT FOR 80000 ps;
	address(2) <= '1';
	WAIT FOR 40000 ps;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		address(1) <= '0';
		WAIT FOR 40000 ps;
		address(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 3
	LOOP
		address(1) <= '0';
		WAIT FOR 40000 ps;
		address(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		address(0) <= '0';
		WAIT FOR 20000 ps;
		address(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 6
	LOOP
		address(0) <= '0';
		WAIT FOR 20000 ps;
		address(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;
-- datain[31]
t_prcs_datain_31: PROCESS
BEGIN
	datain(31) <= '0';
WAIT;
END PROCESS t_prcs_datain_31;
-- datain[30]
t_prcs_datain_30: PROCESS
BEGIN
	datain(30) <= '0';
WAIT;
END PROCESS t_prcs_datain_30;
-- datain[29]
t_prcs_datain_29: PROCESS
BEGIN
	datain(29) <= '0';
WAIT;
END PROCESS t_prcs_datain_29;
-- datain[28]
t_prcs_datain_28: PROCESS
BEGIN
	datain(28) <= '0';
WAIT;
END PROCESS t_prcs_datain_28;
-- datain[27]
t_prcs_datain_27: PROCESS
BEGIN
	datain(27) <= '0';
WAIT;
END PROCESS t_prcs_datain_27;
-- datain[26]
t_prcs_datain_26: PROCESS
BEGIN
	datain(26) <= '0';
WAIT;
END PROCESS t_prcs_datain_26;
-- datain[25]
t_prcs_datain_25: PROCESS
BEGIN
	datain(25) <= '0';
WAIT;
END PROCESS t_prcs_datain_25;
-- datain[24]
t_prcs_datain_24: PROCESS
BEGIN
	datain(24) <= '0';
WAIT;
END PROCESS t_prcs_datain_24;
-- datain[23]
t_prcs_datain_23: PROCESS
BEGIN
	datain(23) <= '0';
WAIT;
END PROCESS t_prcs_datain_23;
-- datain[22]
t_prcs_datain_22: PROCESS
BEGIN
	datain(22) <= '0';
WAIT;
END PROCESS t_prcs_datain_22;
-- datain[21]
t_prcs_datain_21: PROCESS
BEGIN
	datain(21) <= '0';
WAIT;
END PROCESS t_prcs_datain_21;
-- datain[20]
t_prcs_datain_20: PROCESS
BEGIN
	datain(20) <= '0';
WAIT;
END PROCESS t_prcs_datain_20;
-- datain[19]
t_prcs_datain_19: PROCESS
BEGIN
	datain(19) <= '0';
WAIT;
END PROCESS t_prcs_datain_19;
-- datain[18]
t_prcs_datain_18: PROCESS
BEGIN
	datain(18) <= '0';
WAIT;
END PROCESS t_prcs_datain_18;
-- datain[17]
t_prcs_datain_17: PROCESS
BEGIN
	datain(17) <= '0';
WAIT;
END PROCESS t_prcs_datain_17;
-- datain[16]
t_prcs_datain_16: PROCESS
BEGIN
	datain(16) <= '0';
WAIT;
END PROCESS t_prcs_datain_16;
-- datain[15]
t_prcs_datain_15: PROCESS
BEGIN
	datain(15) <= '0';
WAIT;
END PROCESS t_prcs_datain_15;
-- datain[14]
t_prcs_datain_14: PROCESS
BEGIN
	datain(14) <= '0';
WAIT;
END PROCESS t_prcs_datain_14;
-- datain[13]
t_prcs_datain_13: PROCESS
BEGIN
	datain(13) <= '0';
WAIT;
END PROCESS t_prcs_datain_13;
-- datain[12]
t_prcs_datain_12: PROCESS
BEGIN
	datain(12) <= '0';
WAIT;
END PROCESS t_prcs_datain_12;
-- datain[11]
t_prcs_datain_11: PROCESS
BEGIN
	datain(11) <= '0';
WAIT;
END PROCESS t_prcs_datain_11;
-- datain[10]
t_prcs_datain_10: PROCESS
BEGIN
	datain(10) <= '0';
WAIT;
END PROCESS t_prcs_datain_10;
-- datain[9]
t_prcs_datain_9: PROCESS
BEGIN
	datain(9) <= '0';
WAIT;
END PROCESS t_prcs_datain_9;
-- datain[8]
t_prcs_datain_8: PROCESS
BEGIN
	datain(8) <= '0';
WAIT;
END PROCESS t_prcs_datain_8;
-- datain[7]
t_prcs_datain_7: PROCESS
BEGIN
	datain(7) <= '0';
WAIT;
END PROCESS t_prcs_datain_7;
-- datain[6]
t_prcs_datain_6: PROCESS
BEGIN
	datain(6) <= '0';
WAIT;
END PROCESS t_prcs_datain_6;
-- datain[5]
t_prcs_datain_5: PROCESS
BEGIN
	datain(5) <= '0';
WAIT;
END PROCESS t_prcs_datain_5;
-- datain[4]
t_prcs_datain_4: PROCESS
BEGIN
	datain(4) <= '0';
WAIT;
END PROCESS t_prcs_datain_4;
-- datain[3]
t_prcs_datain_3: PROCESS
BEGIN
	datain(3) <= '0';
	WAIT FOR 160000 ps;
	datain(3) <= '1';
	WAIT FOR 60000 ps;
	datain(3) <= '0';
	WAIT FOR 160000 ps;
	datain(3) <= '1';
	WAIT FOR 120000 ps;
	datain(3) <= '0';
WAIT;
END PROCESS t_prcs_datain_3;
-- datain[2]
t_prcs_datain_2: PROCESS
BEGIN
	datain(2) <= '0';
	WAIT FOR 80000 ps;
	datain(2) <= '1';
	WAIT FOR 80000 ps;
	datain(2) <= '0';
	WAIT FOR 140000 ps;
	datain(2) <= '1';
	WAIT FOR 80000 ps;
	datain(2) <= '0';
	WAIT FOR 80000 ps;
	datain(2) <= '1';
	WAIT FOR 40000 ps;
	datain(2) <= '0';
WAIT;
END PROCESS t_prcs_datain_2;
-- datain[1]
t_prcs_datain_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		datain(1) <= '0';
		WAIT FOR 40000 ps;
		datain(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	datain(1) <= '0';
	WAIT FOR 40000 ps;
	datain(1) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 3
	LOOP
		datain(1) <= '0';
		WAIT FOR 40000 ps;
		datain(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	datain(1) <= '0';
WAIT;
END PROCESS t_prcs_datain_1;
-- datain[0]
t_prcs_datain_0: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		datain(0) <= '0';
		WAIT FOR 20000 ps;
		datain(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	datain(0) <= '0';
	WAIT FOR 40000 ps;
	datain(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 6
	LOOP
		datain(0) <= '0';
		WAIT FOR 20000 ps;
		datain(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	datain(0) <= '0';
WAIT;
END PROCESS t_prcs_datain_0;

-- we
t_prcs_we: PROCESS
BEGIN
	we <= '1';
	WAIT FOR 220000 ps;
	we <= '0';
WAIT;
END PROCESS t_prcs_we;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END mem_rv_arch;
