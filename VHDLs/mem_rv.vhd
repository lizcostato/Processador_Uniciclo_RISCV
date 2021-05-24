library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

entity mem_rv is
	port(
    -- Input ---------------------------------------------------
		clock   : in std_logic;
		we      : in std_logic;
		address  : in std_logic_vector(7 downto 0);
		datain  : in std_logic_vector(31 downto 0);
        
    -- Output --------------------------------------------------
		dataout : out std_logic_vector(31 downto 0)
		);
end entity mem_rv;

architecture RTL of mem_rv is
type mem_type is array(0 to (2**address'length)-1) of std_logic_vector(datain'range);
signal read_address : std_logic_vector(address'range);

impure function init_ram_bin return mem_type is
      file text_file : text open read_mode is "ram_content_bin.txt";
      variable text_line : line;
      variable ram_content : mem_type;
      variable i: integer := 0;
      begin
        while not endfile(text_file) loop      
          readline(text_file, text_line);
          bread(text_line, ram_content(i));
          i := i+1;
        end loop;
      return ram_content;
      file_close(text_file);
    end function;

signal mem : mem_type := init_ram_bin;

begin

	Write: process(clock, address) is

	begin
		if rising_edge(clock) then
			if we = '1' then
				mem(to_integer(unsigned(address))/4) <= datain;
			end if;
		end if;
		read_address <= address;
	end process;
	
	dataout <= mem(to_integer(unsigned(read_address))/4);
	
end architecture RTL;
	

