library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use std.textio.all;
use ieee.std_logic_textio.all;

entity mem_ROM_rv is

	port (
		address : in std_logic_vector(7 downto 0);
		dataout : out std_logic_vector(31 downto 0)
		);
end entity mem_ROM_rv;


architecture RTL of mem_ROM_rv is


	type mem_type is array (0 to (2**address'length)-1) of std_logic_vector(dataout'length-1 downto 0);
	
	
	impure function init_rom return mem_type is
		file text_file : text open read_mode is "mem_con";
		variable text_line : line;
		variable rom_content : mem_type;
		variable bv : bit_vector(rom_content(0)'range);
	begin
		for i in 0 to (2**address'length)- 1 loop
			readline(text_file, text_line);
			read(text_line, bv);
			rom_content(i) := To_StdLogicVector(bv);
		end loop;
 
	return rom_content;
  
	end function;
	
	signal mem : mem_type := init_rom;
	
	begin
	
	dataout <= mem(to_integer(unsigned(address)));
		
end RTL;
	