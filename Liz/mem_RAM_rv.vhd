-- Libraries ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity ---------------------------------------------------------------------
entity mem_RAM_rv is
	port (
    -- Input ---------------------------------------------------
		clock : in std_logic;
		we : in std_logic;
		address : in std_logic_vector;
		datain : in std_logic_vector;

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector
 	);
end entity mem_RAM_rv;
    
architecture RTL of mem_RAM_rv is 
	Type mem_type is array (0 to (2**address'length)-1) of std_logic_vector(datain'range);
	signal mem : mem_type;
	signal read_address : std_logic_vector(address'range);
    
    begin
    
    Write: process(clock) begin
	if rising_edge(clock) then
      if we = '1' then
      	mem(to_integer(unsigned(address))) <= datain;
      end if;
      read_address <= address;
    end if;
	end process;
    
dataout <= mem(to_integer(unsigned(read_address)));
	
end RTL;