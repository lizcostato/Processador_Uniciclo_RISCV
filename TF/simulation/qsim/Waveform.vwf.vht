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
-- Generated on "05/22/2021 14:50:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mem_ROM_rv
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mem_ROM_rv_vhd_vec_tst IS
END mem_ROM_rv_vhd_vec_tst;
ARCHITECTURE mem_ROM_rv_arch OF mem_ROM_rv_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataout : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT mem_ROM_rv
	PORT (
	address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mem_ROM_rv
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	dataout => dataout
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
	WAIT FOR 960000 ps;
	address(5) <= '1';
WAIT;
END PROCESS t_prcs_address_5;
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	address(4) <= '0';
	WAIT FOR 480000 ps;
	address(4) <= '1';
	WAIT FOR 480000 ps;
	address(4) <= '0';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		address(3) <= '0';
		WAIT FOR 240000 ps;
		address(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		address(2) <= '0';
		WAIT FOR 120000 ps;
		address(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		address(1) <= '0';
		WAIT FOR 60000 ps;
		address(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		address(0) <= '0';
		WAIT FOR 30000 ps;
		address(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	address(0) <= '0';
	WAIT FOR 30000 ps;
	address(0) <= '1';
WAIT;
END PROCESS t_prcs_address_0;
END mem_ROM_rv_arch;
