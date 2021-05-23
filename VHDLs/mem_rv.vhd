library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity mem_rv is
	port(
		clock   : in std_logic;
		we      : in std_logic;
		
-- Por conta da versão do quartus Foi necessario adicionar limites as variáveis de vetores

		address  : in std_logic_vector(7 downto 0);
		datain  : in std_logic_vector(31 downto 0);
		dataout : out std_logic_vector(31 downto 0)
		);
end entity mem_rv;

architecture RTL of mem_rv is
type mem_type is array(0 to (2**address'length)-1) of std_logic_vector(datain'range);
signal mem : mem_type;
signal read_address : std_logic_vector(address'range);

begin
	Write: process(clock) is

	begin
		if rising_edge(clock) then
			if we = '1' then
				mem(to_integer(unsigned(address))) <= datain;
			end if;
			read_address <= address;
		end if;
		
	end process;
	
	dataout <= mem(to_integer(unsigned(read_address)));
	
end architecture RTL;
	

