library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 
 
entity testbench_somador_32 is
-- empty
end testbench_somador_32; 

architecture tb of testbench_somador_32 is

-- DUT component
component somador_32 is
	port (
    -- Input ---------------------------------------------------
		data1	: in std_logic_vector(31 downto 0);
        data2	: in std_logic_vector(31 downto 0);

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector(31 downto 0)
 	);
end component;

-- Sinais para conectar nas entradas e saídas

signal s_data1		: std_logic_vector(31 downto 0);
signal s_data2		: std_logic_vector(31 downto 0);
signal s_dataout	: std_logic_vector(31 downto 0);

begin

  -- Connect DUT
  DUT: somador_32 port map(data1 => s_data1, data2 => s_data2, dataout => s_dataout);

  process
  begin
  
  	s_data1 <= std_logic_vector(to_unsigned(0,32));
    s_data2 <= std_logic_vector(to_unsigned(4,32));
    wait for 1 ns;
    assert(s_dataout = std_logic_vector(to_unsigned(4,32))) report "Fail 1" severity error;
    
    assert false report "Test done." severity note;
    wait;
  end process;
end tb;

