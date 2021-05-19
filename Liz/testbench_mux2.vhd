-- Testbench for mux 2
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component mux2 is
port(
	a, b: in std_logic_vector;
    sel: in std_logic;
	s: out std_logic_vector);  
end component;

signal a_in, b_in, s_out: std_logic_vector(7 downto 0);
signal sel_in: std_logic;

begin

  -- Connect DUT
  DUT: mux2 port map(a => a_in,
  					 b => b_in, 
                     sel => sel_in,
                     s => s_out);

  process
  begin
    a_in <= "00000000";
    b_in <= "00001111";
    sel_in <= '0';
    wait for 1 ns;
    assert(s_out="00000000") report "Fail 1" severity error;
  
    a_in <= "00000000";
    b_in <= "00001111";
    sel_in <= '1';
    wait for 1 ns;
    assert(s_out="00001111") report "Fail 2" severity error;

    -- Clear inputs
    a_in <= "00000000";
    b_in <= "00000000";
    sel_in <= '0';

    assert false report "Test done." severity note;
    wait;
  end process;
end tb;
