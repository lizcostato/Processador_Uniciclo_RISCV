-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 

entity testbench_top_level is
	--
end testbench_top_level;

architecture tb of testbench_top_level is

-- Testbench Constants ----------------------------------------------------------
	constant CLK_HALF_PERIOD        : time      := 5 ns;
    constant WAIT_TIME				: time		:= 2*CLK_HALF_PERIOD + 5ps;

-- Testbench Signals ------------------------------------------------------------

    signal s_clock			: std_logic			:= '0';
    -- so pra testar a primeira ligação
    signal s_datain			: std_logic_vector(31 downto 0);
    signal s_r1_out			: std_logic_vector(31 downto 0);
    signal s_r2_out			: std_logic_vector(31 downto 0);
    signal s_r1_address_out	: std_logic_vector(4 downto 0);
    signal s_r2_address_out	: std_logic_vector(4 downto 0);
    
    signal s_clock_stop	:	boolean       := FALSE;
    
  -- DUT component
	component top_level is
    port (
    -- Input ---------------------------------------------------
		clock_in		: in std_logic;
        -- so pra testar a primeira ligação
        data_in			: in std_logic_vector(31 downto 0);

    -- Output --------------------------------------------------
    	-- so pra testar a primeira ligação
        r1_out			: out std_logic_vector(31 downto 0);
        r2_out			: out std_logic_vector(31 downto 0);
        r1_address_out	: out std_logic_vector(4 downto 0);
        r2_address_out	: out std_logic_vector(4 downto 0);
      	--end_program		: out std_logic;
    );
  	end component;
    
	begin
    
    DUT: top_level port map(clock_in => s_clock, data_in => s_datain, r1_out => s_r1_out, r2_out => s_r2_out, r1_address_out => s_r1_address_out, r2_address_out => s_r2_address_out);
    
    clocking: process
    begin
    	while (not s_clock_stop) loop
        	wait for 5ps;
            s_clock <= not s_clock after CLK_HALF_PERIOD;
        end loop;
        wait;
    end process clocking;
    
    TopLevel_TB: process
    begin
    
    s_datain <= std_logic_vector(to_unsigned(4,32));
    wait for WAIT_TIME;
    assert(s_r1_address_out = std_logic_vector(to_unsigned(6,5)) and s_r2_address_out = std_logic_vector(to_unsigned(7,5))) report "Fail 1" severity error;
    
    s_datain <= std_logic_vector(to_unsigned(4,32));
    wait for WAIT_TIME;
    assert(s_r1_address_out = std_logic_vector(to_unsigned(29,5)) and s_r2_address_out = std_logic_vector(to_unsigned(30,5))) report "Fail 2" severity error;
    
    s_datain <= std_logic_vector(to_unsigned(4,32));
    wait for WAIT_TIME;
    assert(s_r1_address_out = std_logic_vector(to_unsigned(30,5)) and s_r2_address_out = std_logic_vector(to_unsigned(0,5))) report "Fail 3" severity error;
    
    s_clock_stop <= TRUE;
    
    assert false report "Test done." severity note;
    wait;
    end process TopLevel_TB;
    
end tb;