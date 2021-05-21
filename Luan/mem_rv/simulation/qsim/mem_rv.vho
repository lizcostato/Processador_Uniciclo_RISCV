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

-- DATE "05/11/2021 15:02:27"

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

ENTITY 	mem_rv IS
    PORT (
	clock : IN std_logic;
	we : IN std_logic;
	address : IN std_logic_vector(7 DOWNTO 0);
	datain : IN std_logic_vector(31 DOWNTO 0);
	dataout : OUT std_logic_vector(31 DOWNTO 0)
	);
END mem_rv;

-- Design Ports Information
-- dataout[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[6]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[8]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[11]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[13]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[14]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[15]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[16]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[17]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[18]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[19]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[20]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[21]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[22]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[23]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[24]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[25]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[26]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[27]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[28]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[29]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[30]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[31]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[8]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[9]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[12]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[14]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[15]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[16]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[17]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[18]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[19]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[20]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[21]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[22]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[23]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[24]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[25]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[26]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[27]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[28]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[29]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[30]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[31]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mem_rv IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_we : std_logic;
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_datain : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dataout : std_logic_vector(31 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \datain[4]~input_o\ : std_logic;
SIGNAL \datain[5]~input_o\ : std_logic;
SIGNAL \datain[6]~input_o\ : std_logic;
SIGNAL \datain[7]~input_o\ : std_logic;
SIGNAL \datain[8]~input_o\ : std_logic;
SIGNAL \datain[9]~input_o\ : std_logic;
SIGNAL \datain[10]~input_o\ : std_logic;
SIGNAL \datain[11]~input_o\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \datain[12]~input_o\ : std_logic;
SIGNAL \datain[13]~input_o\ : std_logic;
SIGNAL \datain[14]~input_o\ : std_logic;
SIGNAL \datain[15]~input_o\ : std_logic;
SIGNAL \datain[16]~input_o\ : std_logic;
SIGNAL \datain[17]~input_o\ : std_logic;
SIGNAL \datain[18]~input_o\ : std_logic;
SIGNAL \datain[19]~input_o\ : std_logic;
SIGNAL \datain[20]~input_o\ : std_logic;
SIGNAL \datain[21]~input_o\ : std_logic;
SIGNAL \datain[22]~input_o\ : std_logic;
SIGNAL \datain[23]~input_o\ : std_logic;
SIGNAL \datain[24]~input_o\ : std_logic;
SIGNAL \datain[25]~input_o\ : std_logic;
SIGNAL \datain[26]~input_o\ : std_logic;
SIGNAL \datain[27]~input_o\ : std_logic;
SIGNAL \datain[28]~input_o\ : std_logic;
SIGNAL \datain[29]~input_o\ : std_logic;
SIGNAL \datain[30]~input_o\ : std_logic;
SIGNAL \datain[31]~input_o\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a31\ : std_logic;

BEGIN

ww_clock <= clock;
ww_we <= we;
ww_address <= address;
ww_datain <= datain;
dataout <= ww_dataout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \datain[11]~input_o\ & \datain[10]~input_o\ & \datain[9]~input_o\ & \datain[8]~input_o\ & \datain[7]~input_o\ & \datain[6]~input_o\ & 
\datain[5]~input_o\ & \datain[4]~input_o\ & \datain[3]~input_o\ & \datain[2]~input_o\ & \datain[1]~input_o\ & \datain[0]~input_o\);

\mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem_rtl_0|auto_generated|ram_block1a1\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem_rtl_0|auto_generated|ram_block1a2\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem_rtl_0|auto_generated|ram_block1a3\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem_rtl_0|auto_generated|ram_block1a4\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem_rtl_0|auto_generated|ram_block1a5\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem_rtl_0|auto_generated|ram_block1a6\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem_rtl_0|auto_generated|ram_block1a7\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mem_rtl_0|auto_generated|ram_block1a8\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\mem_rtl_0|auto_generated|ram_block1a9\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\mem_rtl_0|auto_generated|ram_block1a10\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\mem_rtl_0|auto_generated|ram_block1a11\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\mem_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\datain[31]~input_o\ & \datain[30]~input_o\ & \datain[29]~input_o\ & \datain[28]~input_o\ & \datain[27]~input_o\ & \datain[26]~input_o\ & \datain[25]~input_o\ & \datain[24]~input_o\ & 
\datain[23]~input_o\ & \datain[22]~input_o\ & \datain[21]~input_o\ & \datain[20]~input_o\ & \datain[19]~input_o\ & \datain[18]~input_o\ & \datain[17]~input_o\ & \datain[16]~input_o\ & \datain[15]~input_o\ & \datain[14]~input_o\ & \datain[13]~input_o\ & 
\datain[12]~input_o\);

\mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\mem_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\mem_rtl_0|auto_generated|ram_block1a13\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\mem_rtl_0|auto_generated|ram_block1a14\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\mem_rtl_0|auto_generated|ram_block1a15\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);
\mem_rtl_0|auto_generated|ram_block1a16\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(4);
\mem_rtl_0|auto_generated|ram_block1a17\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(5);
\mem_rtl_0|auto_generated|ram_block1a18\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(6);
\mem_rtl_0|auto_generated|ram_block1a19\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(7);
\mem_rtl_0|auto_generated|ram_block1a20\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(8);
\mem_rtl_0|auto_generated|ram_block1a21\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(9);
\mem_rtl_0|auto_generated|ram_block1a22\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(10);
\mem_rtl_0|auto_generated|ram_block1a23\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(11);
\mem_rtl_0|auto_generated|ram_block1a24\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(12);
\mem_rtl_0|auto_generated|ram_block1a25\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(13);
\mem_rtl_0|auto_generated|ram_block1a26\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(14);
\mem_rtl_0|auto_generated|ram_block1a27\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(15);
\mem_rtl_0|auto_generated|ram_block1a28\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(16);
\mem_rtl_0|auto_generated|ram_block1a29\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(17);
\mem_rtl_0|auto_generated|ram_block1a30\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(18);
\mem_rtl_0|auto_generated|ram_block1a31\ <= \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(19);

-- Location: IOOBUF_X60_Y0_N19
\dataout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => ww_dataout(0));

-- Location: IOOBUF_X58_Y0_N93
\dataout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => ww_dataout(1));

-- Location: IOOBUF_X56_Y0_N36
\dataout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => ww_dataout(2));

-- Location: IOOBUF_X52_Y0_N2
\dataout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => ww_dataout(3));

-- Location: IOOBUF_X56_Y0_N2
\dataout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => ww_dataout(4));

-- Location: IOOBUF_X28_Y0_N36
\dataout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => ww_dataout(5));

-- Location: IOOBUF_X62_Y0_N19
\dataout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => ww_dataout(6));

-- Location: IOOBUF_X8_Y0_N19
\dataout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => ww_dataout(7));

-- Location: IOOBUF_X62_Y0_N36
\dataout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => ww_dataout(8));

-- Location: IOOBUF_X54_Y0_N36
\dataout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => ww_dataout(9));

-- Location: IOOBUF_X26_Y0_N76
\dataout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => ww_dataout(10));

-- Location: IOOBUF_X30_Y0_N36
\dataout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => ww_dataout(11));

-- Location: IOOBUF_X2_Y0_N42
\dataout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a12~portadataout\,
	devoe => ww_devoe,
	o => ww_dataout(12));

-- Location: IOOBUF_X54_Y0_N19
\dataout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => ww_dataout(13));

-- Location: IOOBUF_X58_Y0_N76
\dataout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => ww_dataout(14));

-- Location: IOOBUF_X2_Y0_N93
\dataout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => ww_dataout(15));

-- Location: IOOBUF_X8_Y0_N36
\dataout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => ww_dataout(16));

-- Location: IOOBUF_X50_Y0_N76
\dataout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => ww_dataout(17));

-- Location: IOOBUF_X30_Y0_N19
\dataout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => ww_dataout(18));

-- Location: IOOBUF_X30_Y0_N2
\dataout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => ww_dataout(19));

-- Location: IOOBUF_X30_Y0_N53
\dataout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => ww_dataout(20));

-- Location: IOOBUF_X50_Y0_N42
\dataout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => ww_dataout(21));

-- Location: IOOBUF_X6_Y0_N19
\dataout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => ww_dataout(22));

-- Location: IOOBUF_X4_Y0_N36
\dataout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => ww_dataout(23));

-- Location: IOOBUF_X54_Y0_N2
\dataout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => ww_dataout(24));

-- Location: IOOBUF_X26_Y0_N42
\dataout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => ww_dataout(25));

-- Location: IOOBUF_X26_Y0_N93
\dataout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => ww_dataout(26));

-- Location: IOOBUF_X52_Y0_N19
\dataout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => ww_dataout(27));

-- Location: IOOBUF_X4_Y0_N19
\dataout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => ww_dataout(28));

-- Location: IOOBUF_X28_Y0_N19
\dataout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => ww_dataout(29));

-- Location: IOOBUF_X54_Y0_N53
\dataout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => ww_dataout(30));

-- Location: IOOBUF_X60_Y0_N36
\dataout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => ww_dataout(31));

-- Location: IOIBUF_X28_Y0_N52
\we~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X8_Y0_N1
\datain[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(0),
	o => \datain[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\address[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\address[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\datain[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\datain[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\datain[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\datain[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(4),
	o => \datain[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\datain[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(5),
	o => \datain[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\datain[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(6),
	o => \datain[6]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\datain[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(7),
	o => \datain[7]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\datain[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(8),
	o => \datain[8]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\datain[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(9),
	o => \datain[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\datain[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(10),
	o => \datain[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\datain[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(11),
	o => \datain[11]~input_o\);

-- Location: M10K_X38_Y1_N0
\mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_rtl_0|altsyncram_sla1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \we~input_o\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X38_Y0_N18
\datain[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(12),
	o => \datain[12]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\datain[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(13),
	o => \datain[13]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\datain[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(14),
	o => \datain[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\datain[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(15),
	o => \datain[15]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\datain[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(16),
	o => \datain[16]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\datain[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(17),
	o => \datain[17]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\datain[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(18),
	o => \datain[18]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\datain[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(19),
	o => \datain[19]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\datain[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(20),
	o => \datain[20]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\datain[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(21),
	o => \datain[21]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\datain[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(22),
	o => \datain[22]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\datain[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(23),
	o => \datain[23]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\datain[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(24),
	o => \datain[24]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\datain[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(25),
	o => \datain[25]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\datain[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(26),
	o => \datain[26]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\datain[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(27),
	o => \datain[27]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\datain[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(28),
	o => \datain[28]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\datain[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(29),
	o => \datain[29]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\datain[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(30),
	o => \datain[30]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\datain[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(31),
	o => \datain[31]~input_o\);

-- Location: M10K_X38_Y1_N0
\mem_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_rtl_0|altsyncram_sla1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \we~input_o\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \mem_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LABCELL_X53_Y51_N0
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


