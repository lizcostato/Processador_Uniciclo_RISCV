-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 

entity testbench is
	--
end testbench;

architecture tb of testbench is

-- Testbench Constants ----------------------------------------------------------
	constant CLK_HALF_PERIOD        : time      := 5 ns;
    constant WAIT_TIME				: time		:= 2*CLK_HALF_PERIOD;

-- Testbench Signals ------------------------------------------------------------

    signal s_clock			: std_logic			:= '1';
    -- so pra testar a ligação
    signal s_intruc_out		: std_logic_vector(31 downto 0);
    signal s_r1_address_out	: std_logic_vector(4 downto 0);
    signal s_r2_address_out	: std_logic_vector(4 downto 0);
    signal s_immed_out		: std_logic_vector(31 downto 0);
    signal s_ula_z_out		: std_logic_vector(31 downto 0);
    signal s_pc_out			: std_logic_vector(31 downto 0);
    
    signal s_clock_stop	:	boolean       := FALSE;
    
  -- DUT component
	component top_level is
    port (
    -- Input ---------------------------------------------------
		  clock_in		: in std_logic;

    -- Output --------------------------------------------------
    	-- so pra testar a ligação
        intruc_out 		: out std_logic_vector(31 downto 0);
        r1_address_out	: out std_logic_vector(4 downto 0);
        r2_address_out	: out std_logic_vector(4 downto 0);
		immed_out		: out std_logic_vector(31 downto 0);
        ula_z_out		: out std_logic_vector(31 downto 0);
        pc_out			: out std_logic_vector(31 downto 0)
      	--end_program		: out std_logic;
    );
  	end component;
    
	begin
    
    DUT: top_level port map(clock_in => s_clock, intruc_out => s_intruc_out, r1_address_out => s_r1_address_out, r2_address_out => s_r2_address_out, immed_out => s_immed_out, ula_z_out => s_ula_z_out, pc_out => s_pc_out);
    
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
    
    -- ori x5, x0, 255 (00001111111100000110001010010011)
    wait for WAIT_TIME;
    
    -- andi x5, x5, 240 (00001111000000101111001010010011)
    wait for WAIT_TIME;
    
    -- lui x8, 2 (00000000000000000010010000110111)
    wait for WAIT_TIME;
    
    -- lw x9, 0(x8) (00000000000001000010010010000011)
    wait for WAIT_TIME;
    
    -- lw x18, 4(x8) (00000000010001000010100100000011)
    wait for WAIT_TIME;
    
    -- add x19, x9, x18 (00000001001001001000100110110011)
    wait for WAIT_TIME;
    
    -- sw x19, 8(x8) (00000001001101000010010000100011)
    wait for WAIT_TIME;
    
    -- lw x10, 8(x8) (00000000100001000010010100000011)
    wait for WAIT_TIME;
    
    -- addi x20, x0, 2032 (01111111000000000000101000010011)
    wait for WAIT_TIME;
    
    -- addi x21, x0, 255 (00001111111100000000101010010011)
    wait for WAIT_TIME;
    
    -- and x22, x21, x20(00000001010010101111101100110011)
    wait for WAIT_TIME;
    
    -- or x23, x21, x20 (00000001010010101110101110110011)
    wait for WAIT_TIME;
    
    -- xor x24, x21, x20 (00000001010010101100110000110011)
    wait for WAIT_TIME;
    
    -- slli x6, x21, 4 (00000000010010101001001100010011)
    wait for WAIT_TIME;
    
    -- lui x7, 1044480 (11111111000000000000001110110111)
    wait for WAIT_TIME;
    
    -- (00000000010000111101111000010011)
    wait for WAIT_TIME;
    
    -- (01000000010000111101111010010011)
    wait for WAIT_TIME;
    
    -- (00000000011000101010010000110011)
    wait for WAIT_TIME;
    
    -- (00000000010100110010010010110011)
    wait for WAIT_TIME;
    
    -- (00000000010100000011100110110011)
    wait for WAIT_TIME;
    
    -- (00000000000000101011101000110011)
    wait for WAIT_TIME;
    
    -- (00000000100000000000000011101111)
    wait for WAIT_TIME;
    
    -- (00000000110000000000000001101111)
    wait for WAIT_TIME;
    
    -- (01000000011000101000111000110011)
    wait for WAIT_TIME;
    
    -- (00000000000000001000000001100111)
    wait for WAIT_TIME;
    
    -- (11111111111000000000001010010011)
    wait for WAIT_TIME;
    
    -- (00000000001000101000001010010011)
    wait for WAIT_TIME;
    
    -- (11111110000000101000111011100011)
    wait for WAIT_TIME;
    
    -- (11111111111100101000001010010011)
    wait for WAIT_TIME;
    
    -- (11111110000000101001111011100011)
    wait for WAIT_TIME;
    
    s_clock_stop <= TRUE;
    
    assert false report "Test done." severity note;
    wait;
    end process TopLevel_TB;
    
end tb;