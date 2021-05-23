-- Libraries ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
	use ieee.std_logic_unsigned.all;

-- Entity ---------------------------------------------------------------------
entity somador_32 is
	port (
    -- Input ---------------------------------------------------
		  data1	: in std_logic_vector(31 downto 0);
        data2	: in std_logic_vector(31 downto 0);

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector(31 downto 0)
 	);
end entity somador_32;
    
architecture RTL of somador_32 is 
    
    --signal soma : integer;
    
    begin
    
    --process
    --begin
	dataout <= std_logic_vector(to_unsigned(to_integer(unsigned(data1)) + to_integer(unsigned(data2)), 32));
    --end process;
    
end RTL;