library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 
 
entity testbench_genImm32 is
-- empty
end testbench_genImm32; 

architecture tb of testbench_genImm32 is

-- DUT component
component genImm32 is
	port (
        -- Input ---------------------------------------------------

        instr       :   in std_logic_vector(31 downto 0);

        -- Output --------------------------------------------------
		
		--ack_out	:	out std_logic;
		imm32	:	out signed(31 downto 0)
    );
end component;

-- Sinais para conectar nas entradas e saídas

signal s_instr:	std_logic_vector(31 downto 0);
signal s_imm32:	signed(31 downto 0);

begin

  -- Connect DUT
  DUT: genImm32 port map(instr => s_instr, imm32 => s_imm32);

  process
  begin
  
  	-- caso I_type: opcode = '0000011'
	s_instr <= "11111001110000000000001100000011";
    wait for 1 ns;
    assert(s_imm32="11111111111111111111111110011100") report "Fail 1" severity error;
    -- caso I_type: opcode = '0100011'
	s_instr <= "00111001110000000000001100010011";
    wait for 1 ns;
    assert(s_imm32="00000000000000000000001110011100") report "Fail 2" severity error;
	-- caso I_type: opcode = '1100111'
	s_instr <= "00000000110000000000000011101111";
    wait for 1 ns;
    assert(s_imm32="00000000000000000000000000001100") report "Fail 3" severity error;
    
    -- casos que deveriam ser testados:
    s_instr <= "00000000000000000000001010110011";
    wait for 1 ns;
    assert(s_imm32="00000000000000000000000000000000") report "Fail caso 1 prof" severity error; -- 0
    
    s_instr <= "00000001000000000010001010000011";
    wait for 1 ns;
    assert(s_imm32="00000000000000000000000000010000") report "Fail caso 2 prof" severity error; -- 16
    
    s_instr <= "11111001110000000000001100010011";
    wait for 1 ns;
    assert(s_imm32="11111111111111111111111110011100") report "Fail caso 3 prof" severity error; -- -100
    
    s_instr <= "11111111111100101100001010010011";
    wait for 1 ns;
    assert(s_imm32="11111111111111111111111111111111") report "Fail caso 4 prof" severity error; -- -1
    
    s_instr <= "00010110001000000000001100010011";
    wait for 1 ns;
    assert(s_imm32="00000000000000000000000101100010") report "Fail caso 5 prof" severity error; -- 354
    
    s_instr <= "00000001100000000000000001100111";
    wait for 1 ns;
    assert(s_imm32="00000000000000000000000000011000") report "Fail caso 6 prof" severity error; -- 24
    
    s_instr <= "00000000000000000010010000110111";
    wait for 1 ns;
    assert(s_imm32="00000000000000000010000000000000") report "Fail caso 7 prof" severity error; -- 0x2000
    
    s_instr <= "00000010010101000010111000100011";
    wait for 1 ns;
    assert(s_imm32="00000000000000000000000000111100") report "Fail caso 8 prof" severity error; -- 60
    
    s_instr <= "11111110010100101001000011100011";
    wait for 1 ns;
    assert(s_imm32="11111111111111111111111111100000") report "Fail caso 9 prof" severity error; -- -32
    
    s_instr <= "00000000110000000000000011101111";
    wait for 1 ns;
    assert(s_imm32="00000000000000000000000000001100") report "Fail caso 10 prof" severity error; -- 0xC
    
    assert false report "Test done." severity note;
    wait;
  end process;
end tb;

