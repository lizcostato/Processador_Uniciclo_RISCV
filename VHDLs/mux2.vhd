library IEEE;
use IEEE.std_logic_1164.all;

entity mux2 is
	port(
	-- Input ---------------------------------------------------
      a, b: in std_logic_vector(31 downto 0);
      sel: in std_logic;
    
    -- Output --------------------------------------------------
		s: out std_logic_vector(31 downto 0) );    
end mux2;

architecture comportamental of mux2 is

	BEGIN
	with sel select
       s <= 	a when '0',
            	b when others;
           
END comportamental;
