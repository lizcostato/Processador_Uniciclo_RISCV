-- Libraries ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use std.textio.all;

-- Entity ---------------------------------------------------------------------
entity mem_ROM_rv is
	generic(
    	DATA_SIZE	: natural   := 32;
    );
	port (
    -- Input ---------------------------------------------------
		address : in std_logic_vector;

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector
 	);
end entity mem_ROM_rv;
    
architecture RTL of mem_ROM_rv is 
	Type mem_type is array (0 to (2**address'length)-1) of std_logic_vector(DATA_SIZE-1 downto 0);
    
    impure function init_rom_bin return mem_type is
      file text_file : text open read_mode is "rom_content_bin.txt";
      variable text_line : line;
      variable rom_content : mem_type;
      variable i: integer := 0;
      begin
        while not endfile(text_file) loop      
          readline(text_file, text_line);
          bread(text_line, rom_content(i));
          i := i+1;
        end loop;
      return rom_content;
      file_close(text_file);
    end function;

	signal mem : mem_type := init_rom_bin;
    
    begin
    
    dataout <= mem(to_integer(unsigned(address)));
	
end RTL;