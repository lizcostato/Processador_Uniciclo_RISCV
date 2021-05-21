library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 

entity testbench is
	
end testbench;

architecture rom_tb of testbench is

	signal address_in : std_logic_vector(31 downto 0);
	signal data_out  : std_logic_vector(31 downto 0);

	component mem_ro is
	port(
		address : in  std_logic_vector(7 downto 0);
		dataout : out std_logic_vector(31 downto 0)
		);
	end component;
	
	begin
	
	DUT : mem_ro port map(address => address_in , dataout => data_out);
	
	process
		begin
		
		address_in <= std_logic_vector(to_unsigned(0,8));
		wait for 10 ps;
		assert(data_out = "0000000000000000000000000000000001") report "Fail" severity error;
		
		address_in <= std_logic_vector(to_unsigned(1,8));
		wait for 10 ps;
		assert(data_out = "0000000000000000000000000000000010") report "Fail" severity error;
		
		address_in <= std_logic_vector(to_unsigned(2,8));
		wait for 10 ps;
		assert(data_out = "0000000000000000000000000000000011") report "Fail" severity error;
		
		address_in <= std_logic_vector(to_unsigned(3,8));
		wait for 10 ps;
		assert(data_out = "0000000000000000000000000000000101") report "Fail" severity error;
		
		address_in <= std_logic_vector(to_unsigned(4,8));
		wait for 10 ps;
		assert(data_out = "0000000000000000000000000000001000") report "Fail" severity error;
		
		address_in <= std_logic_vector(to_unsigned(5,8));
		wait for 10 ps;
		assert(data_out = "0000000000000000000000000000001101") report "Fail" severity error;
		
		address_in <= std_logic_vector(to_unsigned(6,8));
		wait for 10 ps;
		assert(data_out = "0000000000000000000000000000100010") report "Fail" severity error;
		
		address_in <= std_logic_vector(to_unsigned(7,8));
		wait for 10 ps;
		assert(data_out = "0000000000000000000000000000110111") report "Fail" severity error;
		
		address_in <= std_logic_vector(to_unsigned(8,8));
		wait for 10 ps;
		assert(data_out = "0000000000000000000000000001011001") report "Fail" severity error;
		
		assert false report "Test Done" severity note;
		wait;
		end process;
	end rom_tb;