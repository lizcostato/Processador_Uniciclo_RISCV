library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 

entity testbench_PC is
	--
end testbench_PC;

architecture tb of testbench_PC is

-- Testbench Constants ----------------------------------------------------------
	constant CLK_HALF_PERIOD        : time      := 5 ns;
    constant WAIT_TIME				: time		:= 2*CLK_HALF_PERIOD + 5ps;

-- Testbench Signals ------------------------------------------------------------

    signal s_clock		:	std_logic			:= '0';
    signal s_we			:	std_logic			:= '0';
    signal s_datain		:	std_logic_vector(31 downto 0);
    signal s_dataout	:	std_logic_vector(31 downto 0);
    
    signal s_clock_stop	:	boolean       := FALSE;
    
  -- DUT component
	component PC is
    port (
    -- Input ---------------------------------------------------
		clock : in std_logic;
        we : in std_logic;
      	datain : in std_logic_vector(31 downto 0);

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector(31 downto 0)
 	);
  	end component;
    
	begin
    
    DUT: PC port map(clock => s_clock, we => s_we, datain => s_datain, dataout => s_dataout);
    
    clocking: process
    begin
    	while (not s_clock_stop) loop
        	wait for 5ps;
            s_clock <= not s_clock after CLK_HALF_PERIOD;
        end loop;
        wait;
    end process clocking;
    
    RAM_TB: process
    begin
    
    s_we <= '1';
    s_datain <= std_logic_vector(to_unsigned(0,30)) & "00";
    wait for WAIT_TIME;
    assert(s_dataout = std_logic_vector(to_unsigned(0,30)) & "00") report "Fail 1" severity error;
    
    s_we <= '0';
    s_datain <= std_logic_vector(to_unsigned(1,30)) & "00";
    wait for WAIT_TIME;
    assert(s_dataout = std_logic_vector(to_unsigned(0,30)) & "00") report "Fail 2" severity error;
    
    s_we <= '1';
    s_datain <= std_logic_vector(to_unsigned(1,30)) & "00";
    wait for WAIT_TIME;
    assert(s_dataout = std_logic_vector(to_unsigned(1,30)) & "00") report "Fail 3" severity error;
    
    s_datain <= std_logic_vector(to_unsigned(2,30)) & "00";
    s_datain <= std_logic_vector(to_unsigned(3,30)) & "00";
    wait for WAIT_TIME;
    assert(s_dataout = std_logic_vector(to_unsigned(3,30)) & "00") report "Fail 2" severity error;
    
    s_clock_stop <=TRUE;
    
    assert false report "Test done." severity note;
    wait;
    end process RAM_TB;
    
end tb;