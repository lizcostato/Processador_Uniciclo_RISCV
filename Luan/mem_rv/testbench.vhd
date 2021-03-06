library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity testbench is 
end testbench;

architecture Test of testbench is

component mem_rv is
	port(
		clock   : in std_logic;
		we      : in std_logic;
		address  : in std_logic_vector(7 downto 0);
		datain  : in std_logic_vector(31 downto 0);
		dataout : out std_logic_vector(31 downto 0)
		);
end component;

-- Sinais
signal data_in : std_logic_vector(31 downto 0);
signal clock_in: std_logic;
signal we_in: std_logic;
signal adress_in: std_logic_vector(7 downto 0);
signal data_out: std_logic_vector(31 downto 0);

begin

	DUT: mem_rv port map(datain => data_in,
								dataout => data_out,
								we => we_in,
								clock => clock_in,
								address => adress_in);
	
	clock_proc: 
		process
			begin
				clock_in <= '0';
				wait for 5 ps;
				clock_in <= '1';
				wait for 5 ps;
			end process clock_proc;
			
	
	Memory:
	process
	begin
		we_in <= '1';
		for i in 0 to 255 loop
			adress_in <= std_logic_vector(to_unsigned(i,8));
			data_in <= std_logic_vector(to_unsigned(i,30)) & "00";
			
			assert(data_out = data_in) report "Fail Alocate" severity error;

			wait for 10 ps;
		end loop;
		
		
		we_in <= '0';
		for i in 0 to 255 loop
			adress_in<= std_logic_vector(to_unsigned(i,8));
			data_in <= std_logic_vector(to_unsigned(i,30)) & "00";
			assert(data_out = data_in) report "Fail Alocate" severity error;
			wait for 10 ps;
		end loop;
								
		assert false report "Test done" severity note;
	wait;
	end process Memory;
	
end Test;
