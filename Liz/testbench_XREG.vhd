-- Code your testbench here
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity testbench is
	--
end testbench;

architecture tb of testbench is

-- Testbench Constants ----------------------------------------------------------
	constant CLK_HALF_PERIOD        : time      := 5 ns;
    constant WAIT_TIME				: time		:= 2*CLK_HALF_PERIOD + 5ps;
    constant ADDRESS_SIZE			: integer   := 5;
    constant DATA_SIZE				: integer   := 32;

-- Testbench Signals ------------------------------------------------------------

    signal s_clock		:	std_logic			:= '0';
    signal s_we			:	std_logic			:= '0';
    signal s_r1_address	:	std_logic_vector(ADDRESS_SIZE-1 downto 0);
    signal s_r2_address	:	std_logic_vector(ADDRESS_SIZE-1 downto 0);
    signal s_w_address	:	std_logic_vector(ADDRESS_SIZE-1 downto 0);
    signal s_datain		:	std_logic_vector(DATA_SIZE-1 downto 0);
    signal s_r1			:	std_logic_vector(DATA_SIZE-1 downto 0);
    signal s_r2			:	std_logic_vector(DATA_SIZE-1 downto 0);
    
    signal s_clock_stop	:	boolean       := FALSE;
    
  -- DUT component
	component XREG is
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
  	end component;
    
	begin
    
    DUT: XREG port map(clock => s_clock, we => s_we, r1_address => s_r1_address, r2_address => s_r2_address, w_address => s_w_address, datain => s_datain, r1 => s_r1, r2 => s_r2);
    
    clocking: process
    begin
    	while (not s_clock_stop) loop
        	wait for 5ps;
            s_clock <= not s_clock after CLK_HALF_PERIOD;
        end loop;
        wait;
    end process clocking;
    
    XREG_TB: process
    begin
    
    s_we <= '0';
    s_r1_address <= std_logic_vector(to_unsigned(0,ADDRESS_SIZE));
    wait for WAIT_TIME;
    assert(s_r1 = std_logic_vector(to_unsigned(0,DATA_SIZE))) report "Fail ZERO" severity error;
    
    s_we <= '1';
    s_w_address <= std_logic_vector(to_unsigned(1,ADDRESS_SIZE));
    s_datain <= std_logic_vector(to_unsigned(1,DATA_SIZE-2)) & "00";
    wait for WAIT_TIME;
    
    s_we <= '1';
    s_w_address <= std_logic_vector(to_unsigned(2,ADDRESS_SIZE));
    s_datain <= std_logic_vector(to_unsigned(2,DATA_SIZE-2)) & "00";
    wait for WAIT_TIME;
    
    s_we <= '0';
    s_r1_address <= std_logic_vector(to_unsigned(1,ADDRESS_SIZE));
    wait for WAIT_TIME;
    assert(s_r1 = std_logic_vector(to_unsigned(1,DATA_SIZE-2)) & "00") report "Fail 1" severity error;
    
    s_we <= '0';
    s_r2_address <= std_logic_vector(to_unsigned(2,ADDRESS_SIZE));
    wait for WAIT_TIME;
    assert(s_r2 = std_logic_vector(to_unsigned(2,DATA_SIZE-2)) & "00") report "Fail 1" severity error;
    
    s_we <= '1';
    s_r1_address <= std_logic_vector(to_unsigned(0,ADDRESS_SIZE));
    wait for WAIT_TIME;
    assert(s_r1 = std_logic_vector(to_unsigned(0,DATA_SIZE))) report "Fail ZERO 2" severity error;
    
    s_clock_stop <=TRUE;
    
    assert false report "Test done." severity note;
    wait;
    end process XREG_TB;
    
end tb;