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

-- DATE "04/18/2021 22:00:20"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Im32 IS
    PORT (
	instr : IN std_logic_vector(31 DOWNTO 0);
	imm32 : OUT std_logic_vector(31 DOWNTO 0)
	);
END Im32;

-- Design Ports Information
-- instr[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[4]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[5]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[8]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[9]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[10]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[11]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[12]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[13]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[14]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[15]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[16]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[17]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[18]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[19]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[20]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[21]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[22]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[23]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[24]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[25]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[26]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[27]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[28]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[29]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[30]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[31]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[0]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[2]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[4]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[5]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[6]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[7]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[8]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[9]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[10]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[11]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[12]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[13]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[14]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[15]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[16]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[17]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[18]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[19]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[20]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[21]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[22]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[23]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[24]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[25]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[26]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[27]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[28]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[29]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[30]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imm32[31]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Im32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_instr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_imm32 : std_logic_vector(31 DOWNTO 0);
SIGNAL \instr[0]~input_o\ : std_logic;
SIGNAL \instr[1]~input_o\ : std_logic;
SIGNAL \instr[2]~input_o\ : std_logic;
SIGNAL \instr[3]~input_o\ : std_logic;
SIGNAL \instr[4]~input_o\ : std_logic;
SIGNAL \instr[5]~input_o\ : std_logic;
SIGNAL \instr[6]~input_o\ : std_logic;
SIGNAL \instr[7]~input_o\ : std_logic;
SIGNAL \instr[8]~input_o\ : std_logic;
SIGNAL \instr[9]~input_o\ : std_logic;
SIGNAL \instr[10]~input_o\ : std_logic;
SIGNAL \instr[11]~input_o\ : std_logic;
SIGNAL \instr[12]~input_o\ : std_logic;
SIGNAL \instr[13]~input_o\ : std_logic;
SIGNAL \instr[14]~input_o\ : std_logic;
SIGNAL \instr[15]~input_o\ : std_logic;
SIGNAL \instr[16]~input_o\ : std_logic;
SIGNAL \instr[17]~input_o\ : std_logic;
SIGNAL \instr[18]~input_o\ : std_logic;
SIGNAL \instr[19]~input_o\ : std_logic;
SIGNAL \instr[20]~input_o\ : std_logic;
SIGNAL \instr[21]~input_o\ : std_logic;
SIGNAL \instr[22]~input_o\ : std_logic;
SIGNAL \instr[23]~input_o\ : std_logic;
SIGNAL \instr[24]~input_o\ : std_logic;
SIGNAL \instr[25]~input_o\ : std_logic;
SIGNAL \instr[26]~input_o\ : std_logic;
SIGNAL \instr[27]~input_o\ : std_logic;
SIGNAL \instr[28]~input_o\ : std_logic;
SIGNAL \instr[29]~input_o\ : std_logic;
SIGNAL \instr[30]~input_o\ : std_logic;
SIGNAL \instr[31]~input_o\ : std_logic;
SIGNAL \imm32[0]~output_o\ : std_logic;
SIGNAL \imm32[1]~output_o\ : std_logic;
SIGNAL \imm32[2]~output_o\ : std_logic;
SIGNAL \imm32[3]~output_o\ : std_logic;
SIGNAL \imm32[4]~output_o\ : std_logic;
SIGNAL \imm32[5]~output_o\ : std_logic;
SIGNAL \imm32[6]~output_o\ : std_logic;
SIGNAL \imm32[7]~output_o\ : std_logic;
SIGNAL \imm32[8]~output_o\ : std_logic;
SIGNAL \imm32[9]~output_o\ : std_logic;
SIGNAL \imm32[10]~output_o\ : std_logic;
SIGNAL \imm32[11]~output_o\ : std_logic;
SIGNAL \imm32[12]~output_o\ : std_logic;
SIGNAL \imm32[13]~output_o\ : std_logic;
SIGNAL \imm32[14]~output_o\ : std_logic;
SIGNAL \imm32[15]~output_o\ : std_logic;
SIGNAL \imm32[16]~output_o\ : std_logic;
SIGNAL \imm32[17]~output_o\ : std_logic;
SIGNAL \imm32[18]~output_o\ : std_logic;
SIGNAL \imm32[19]~output_o\ : std_logic;
SIGNAL \imm32[20]~output_o\ : std_logic;
SIGNAL \imm32[21]~output_o\ : std_logic;
SIGNAL \imm32[22]~output_o\ : std_logic;
SIGNAL \imm32[23]~output_o\ : std_logic;
SIGNAL \imm32[24]~output_o\ : std_logic;
SIGNAL \imm32[25]~output_o\ : std_logic;
SIGNAL \imm32[26]~output_o\ : std_logic;
SIGNAL \imm32[27]~output_o\ : std_logic;
SIGNAL \imm32[28]~output_o\ : std_logic;
SIGNAL \imm32[29]~output_o\ : std_logic;
SIGNAL \imm32[30]~output_o\ : std_logic;
SIGNAL \imm32[31]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_instr <= instr;
imm32 <= ww_imm32;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N23
\imm32[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\imm32[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[1]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\imm32[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\imm32[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[3]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\imm32[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\imm32[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\imm32[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\imm32[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[7]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\imm32[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[8]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\imm32[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\imm32[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[10]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\imm32[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\imm32[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[12]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\imm32[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[13]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\imm32[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[14]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\imm32[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[15]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\imm32[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[16]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\imm32[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[17]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\imm32[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[18]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\imm32[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[19]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\imm32[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[20]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\imm32[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[21]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\imm32[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[22]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\imm32[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[23]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\imm32[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[24]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\imm32[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[25]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\imm32[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[26]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\imm32[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[27]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\imm32[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[28]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\imm32[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[29]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\imm32[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[30]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\imm32[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \imm32[31]~output_o\);

-- Location: IOIBUF_X18_Y0_N15
\instr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(0),
	o => \instr[0]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\instr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(1),
	o => \instr[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\instr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(2),
	o => \instr[2]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\instr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(3),
	o => \instr[3]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\instr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(4),
	o => \instr[4]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\instr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(5),
	o => \instr[5]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\instr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(6),
	o => \instr[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\instr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(7),
	o => \instr[7]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\instr[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(8),
	o => \instr[8]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\instr[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(9),
	o => \instr[9]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\instr[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(10),
	o => \instr[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\instr[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(11),
	o => \instr[11]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\instr[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(12),
	o => \instr[12]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\instr[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(13),
	o => \instr[13]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\instr[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(14),
	o => \instr[14]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\instr[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(15),
	o => \instr[15]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\instr[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(16),
	o => \instr[16]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\instr[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(17),
	o => \instr[17]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\instr[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(18),
	o => \instr[18]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\instr[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(19),
	o => \instr[19]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\instr[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(20),
	o => \instr[20]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\instr[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(21),
	o => \instr[21]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\instr[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(22),
	o => \instr[22]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\instr[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(23),
	o => \instr[23]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\instr[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(24),
	o => \instr[24]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\instr[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(25),
	o => \instr[25]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\instr[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(26),
	o => \instr[26]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\instr[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(27),
	o => \instr[27]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\instr[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(28),
	o => \instr[28]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\instr[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(29),
	o => \instr[29]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\instr[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(30),
	o => \instr[30]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\instr[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(31),
	o => \instr[31]~input_o\);

ww_imm32(0) <= \imm32[0]~output_o\;

ww_imm32(1) <= \imm32[1]~output_o\;

ww_imm32(2) <= \imm32[2]~output_o\;

ww_imm32(3) <= \imm32[3]~output_o\;

ww_imm32(4) <= \imm32[4]~output_o\;

ww_imm32(5) <= \imm32[5]~output_o\;

ww_imm32(6) <= \imm32[6]~output_o\;

ww_imm32(7) <= \imm32[7]~output_o\;

ww_imm32(8) <= \imm32[8]~output_o\;

ww_imm32(9) <= \imm32[9]~output_o\;

ww_imm32(10) <= \imm32[10]~output_o\;

ww_imm32(11) <= \imm32[11]~output_o\;

ww_imm32(12) <= \imm32[12]~output_o\;

ww_imm32(13) <= \imm32[13]~output_o\;

ww_imm32(14) <= \imm32[14]~output_o\;

ww_imm32(15) <= \imm32[15]~output_o\;

ww_imm32(16) <= \imm32[16]~output_o\;

ww_imm32(17) <= \imm32[17]~output_o\;

ww_imm32(18) <= \imm32[18]~output_o\;

ww_imm32(19) <= \imm32[19]~output_o\;

ww_imm32(20) <= \imm32[20]~output_o\;

ww_imm32(21) <= \imm32[21]~output_o\;

ww_imm32(22) <= \imm32[22]~output_o\;

ww_imm32(23) <= \imm32[23]~output_o\;

ww_imm32(24) <= \imm32[24]~output_o\;

ww_imm32(25) <= \imm32[25]~output_o\;

ww_imm32(26) <= \imm32[26]~output_o\;

ww_imm32(27) <= \imm32[27]~output_o\;

ww_imm32(28) <= \imm32[28]~output_o\;

ww_imm32(29) <= \imm32[29]~output_o\;

ww_imm32(30) <= \imm32[30]~output_o\;

ww_imm32(31) <= \imm32[31]~output_o\;
END structure;


