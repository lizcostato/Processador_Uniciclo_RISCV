-- Libraries ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity ---------------------------------------------------------------------
entity XREG is
	generic (
    	XREG_SIZE:	natural := 32;
    );
	port (
    -- Input ---------------------------------------------------
		clock : in std_logic;
        -- write enable
		we : in std_logic;
        -- endereço de leitura 1
		r1_address : in std_logic_vector;
        -- endereço de leitura 2
        r2_address : in std_logic_vector;
        -- endereço de escrita
        w_address	: in std_logic_vector;
        -- dado a ser escrito
		datain : in std_logic_vector;

    -- Output --------------------------------------------------
    	-- dado leitura 1
      	r1 : out std_logic_vector;
        -- dado leitura 2
        r2: out std_logic_vector
 	);
end entity XREG;
    
architecture RTL of XREG is 
	Type reg_type is array (0 to XREG_SIZE-1) of std_logic_vector(datain'range);
	signal s_XREG : reg_type;
	--signal read_address_1 : std_logic_vector(address'range);
    --signal read_address_2 : std_logic_vector(address'range);
    --signal write_and_read : std_logic_vector(w_address'range);
    
    begin
    
    Write: process(clock) begin
	if rising_edge(clock) then
      if we = '1' and to_integer(unsigned(w_address)) /= 0 then
      	s_XREG(to_integer(unsigned(w_address))) <= datain;
      end if;
      --if r1_address = w_address then
      --	 write_and_read <= w_address;
      --elsif r2_address = w_address then
      --	 write_and_read <= w_address;      
      --end if;
    end if;
	end process;
    
    --Output: process(clock)
    --begin
    --if r1_address = w_address then
	--	r1 <= s_XREG(to_integer(unsigned(write_and_read)));
    --elsif r2_address = w_address then
	--	r2 <= s_XREG(to_integer(unsigned(write_and_read)));
    --end if;
    --end process;
  
    s_XREG(0) <= (others => '0');
    
    r1 <= s_XREG(to_integer(unsigned(r1_address)));
    r2 <= s_XREG(to_integer(unsigned(r2_address)));
    
end RTL;