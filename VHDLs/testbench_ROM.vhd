library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 

entity testbench_ROM is
	--
end testbench_ROM;

architecture tb of testbench_ROM is

-- Testbench Constants ----------------------------------------------------------
    constant ADDRESS_SIZE			: integer   := 8;
    constant DATA_SIZE				: integer   := 32;

-- Testbench Signals ------------------------------------------------------------

    signal s_address	:	std_logic_vector(ADDRESS_SIZE-1 downto 0);
    signal s_dataout	:	std_logic_vector(DATA_SIZE-1 downto 0);
    
  -- DUT component
	component mem_ROM_rv is
    port (
    -- Input ---------------------------------------------------
		address : in std_logic_vector;

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector
 	);
  	end component;
    
	begin
    
    DUT: mem_ROM_rv port map(address => s_address, dataout => s_dataout);
    
    process
    begin
    
    s_address <= std_logic_vector(to_unsigned(0,8));
    wait for 10 ns;
    assert(s_dataout = "00000000010100000000100010010011") report "Fail 1" severity error;
    
    s_address <= std_logic_vector(to_unsigned(1,8));
    wait for 10 ns;
    assert(s_dataout = "00000000000000000000000001110011") report "Fail 2" severity error;
    
    s_address <= std_logic_vector(to_unsigned(2,8));
    wait for 10 ns;
    assert(s_dataout = "00000001111100000000001010010011") report "Fail 3" severity error;
    
    s_address <= std_logic_vector(to_unsigned(3,8));
    wait for 10 ns;
    assert(s_dataout = "00000000010101010001010000110011") report "Fail 4" severity error;
    
    s_address <= std_logic_vector(to_unsigned(4,8));
    wait for 10 ns;
    assert(s_dataout = "00000000000001000000111001100011") report "Fail 5" severity error;
    
    s_address <= std_logic_vector(to_unsigned(5,8));
    wait for 10 ns;
    assert(s_dataout = "11111101010001010000010100010011") report "Fail 6" severity error;
    
    assert false report "Test done." severity note;
    wait;
    end process;
    
end tb;
