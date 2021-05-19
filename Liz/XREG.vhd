-- Libraries ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity ---------------------------------------------------------------------
entity XREG is
	port (
    -- Input ---------------------------------------------------
		clock : in std_logic;
        -- write enable
		we : in std_logic;
        -- endereço de leitura 1
		r1_address : in std_logic_vector(4 downto 0);
        -- endereço de leitura 2
        r2_address : in std_logic_vector(4 downto 0);
        -- endereço de escrita
        w_address	: in std_logic_vector(4 downto 0);
        -- dado a ser escrito
		datain : in std_logic_vector(31 downto 0);

    -- Output --------------------------------------------------
    	-- dado leitura 1
      	r1 : out std_logic_vector(31 downto 0);
        -- dado leitura 2
        r2: out std_logic_vector(31 downto 0)
 	);
end entity XREG;
    
architecture RTL of XREG is 
	Type reg_type is array (0 to 31) of std_logic_vector(31 downto 0);
	signal s_XREG : reg_type := (others => "00000000000000000000000000000000");
    
    begin
    
    Write: process(clock) begin
	if rising_edge(clock) then
      if we = '1' and to_integer(unsigned(w_address)) /= 0 then
      	s_XREG(to_integer(unsigned(w_address))) <= datain;
      end if;
      s_XREG(0) <= (others => '0');
    end if;
	end process;
    
    r1 <= s_XREG(to_integer(unsigned(r1_address)));
    r2 <= s_XREG(to_integer(unsigned(r2_address)));
    
end RTL;