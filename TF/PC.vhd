-- Libraries ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity ---------------------------------------------------------------------
entity PC is
	port (
    -- Input ---------------------------------------------------
		clock : in std_logic;
           we : in std_logic;
      	datain : in std_logic_vector(31 downto 0);

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector(31 downto 0)
 	);
end entity PC;
    
architecture RTL of PC is  

    begin
    
    Write: process(clock) begin
	if rising_edge(clock) then
      if we = '1' then
      	dataout <= datain;
      end if;
    end if;
	end process;
	
end RTL;