library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 

entity testbench_ulaRV is
	generic (WSIZE : natural := 32);
end testbench_ulaRV;

architecture tb of testbench_ulaRV is

    signal s_opcode:	std_logic_vector(3 downto 0);
    signal s_A, s_B:	std_logic_vector(WSIZE-1 downto 0);
    signal s_Z:			std_logic_vector(WSIZE-1 downto 0);
    signal s_zero:		std_logic;
  
  -- DUT component
  	component ulaRV is
      generic (WSIZE : natural := 32);
  port (
      opcode 	: in std_logic_vector(3 downto 0);
      A, B 	: in std_logic_vector(WSIZE-1 downto 0);
      Z 		: out std_logic_vector(WSIZE-1 downto 0);
      zero	: out std_logic);
  	end component;
    
	begin
    
    DUT: ulaRV port map(opcode => s_opcode, A => s_A, B => s_B, Z => s_Z, zero => s_zero);
    
    process
    begin
    
    s_A <= "11111111111111111111111111111011"; -- -5
    s_B <= "00000000000000000000000000000101"; -- 5
    s_opcode <= "0000";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail ADD A+B resultado nulo" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "0000";
    wait for 1 ns;
    assert(s_Z="00000001000000000000000011111110" and s_zero = '0') report "Fail ADD A+B resultado positivo" severity error;
    
    s_A <= "10000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "0000";
    wait for 1 ns;
    assert(s_Z="10000001000000000000000011111110" and s_zero = '0') report "Fail ADD A+B resultado negativo" severity error;
    
    s_A <= "01111111111111111111111111111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "0000";
    wait for 1 ns;
    assert(s_Z="10000000000000001111111111111110" and s_zero = '0') report "Fail ADD A+B com overflow" severity error;

	s_A <= "11111111111111111111111111111011"; 
    s_B <= "11111111111111111111111111111011"; 
    s_opcode <= "0001";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SUB A-B resultado nulo" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "0001";
    wait for 1 ns;
    assert(s_Z="00000000111111100000000100000000" and s_zero = '0') report "Fail SUB A-B resultado positivo" severity error;
    
    s_A <= "00000000000000001111111111111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "0001";
    wait for 1 ns;
    assert(s_Z="11111111000000011111111100000000" and s_zero = '0') report "Fail SUB A-B resultado negativo" severity error;
    
    s_A <= "10000000000000000000000000000000";
    s_B <= "00000000000000000000000000000001";
    s_opcode <= "0001";
    wait for 1 ns;
    assert(s_Z="1111111111111111111111111111111" and s_zero = '0') report "Fail SUB A-B com overflow" severity error;
    
    s_A <= "00000000000000001111111111111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "0001";
    wait for 1 ns;
    assert(s_Z="11111111000000011111111100000000" and s_zero = '0') report "Fail SUB A-B" severity error;
    
    s_A <= "00000000000000001111111111111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "0001";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SUB A-B = 0" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "0010";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000011111111" and s_zero = '0') report "Fail A AND B 1" severity error;
    
    s_A <= "11111111111111110000000011111111";
    s_B <= "11111111000000001111111111111111";
    s_opcode <= "0010";
    wait for 1 ns;
    assert(s_Z="11111111000000000000000011111111" and s_zero = '0') report "Fail A AND B 2" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "0011";
    wait for 1 ns;
    assert(s_Z="00000000111111111111111111111111" and s_zero = '0') report "Fail A OR B 1" severity error;
    
    s_A <= "11111111000000000000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "0011";
    wait for 1 ns;
    assert(s_Z="11111111000000001111111111111111" and s_zero = '0') report "Fail A OR B 2" severity error;
    
    s_A <= "11111111000000000000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "0100";
    wait for 1 ns;
    assert(s_Z="11111111000000001111111100000000" and s_zero = '0') report "Fail A XOR B" severity error;
    
    s_A <= "00000000000000001111111111111111";
    s_B <= "00000000000000000000000000001001";
    s_opcode <= "0101";
    wait for 1 ns;
    assert(s_Z="00000001111111111111111000000000" and s_zero = '0') report "Fail A SLL B com numero positivo" severity error;
    
    s_A <= "10000000000000001111111111111111";
    s_B <= "00000000000000000000000000001001";
    s_opcode <= "0101";
    wait for 1 ns;
    assert(s_Z="00000001111111111111111000000000" and s_zero = '0') report "Fail A SLL B com numero negativo" severity error;
    
    s_A <= "00000000000000001111111111111111";
    s_B <= "00000000000000000000000000001001";
    s_opcode <= "0110";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000001111111" and s_zero = '0') report "Fail A SRL B com numero positivo" severity error;
    
    s_A <= "10000000000000001111111111111111";
    s_B <= "00000000000000000000000000001001";
    s_opcode <= "0110";
    wait for 1 ns;
    assert(s_Z="00000000010000000000000001111111" and s_zero = '0') report "Fail A SRL B com numero negativo" severity error;
    
    s_A <= "00000000000000001111111111111111";
    s_B <= "00000000000000000000000000001001";
    s_opcode <= "0111";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000001111111" and s_zero = '0') report "Fail A SRA B com numero positivo" severity error;
    
    s_A <= "10000000000000001111111111111111";
    s_B <= "00000000000000000000000000001001";
    s_opcode <= "0111";
    wait for 1 ns;
    assert(s_Z="11111111110000000000000001111111" and s_zero = '0') report "Fail A SRA B com numero negativo" severity error;
    
    s_A <= "00000000000000001111111111111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "1000";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SLT com A positivo e |A| < |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1000";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SLT com A positivo e |A| > |B|" severity error;
    
    s_A <= "10000000000000000000111111111111";
    s_B <= "00000000000000000000000011111111";
    s_opcode <= "1000";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SLT com A negativo e |A| < |B|" severity error;
    
    s_A <= "10000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1000";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SLT com A negativo e |A| > |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1001";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SLTU com A positivo e |A| > |B|" severity error;
    
    s_A <= "00000000000000001111111111111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "1001";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SLTU com A positivo e |A| < |B|" severity error;
    
    s_A <= "10000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1001";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SLTU com A negativo e |A| > |B|" severity error;
    
    s_A <= "10000000000000001111111111111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "1001";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SLTU com A negativo e |A| < |B|" severity error;
    
    s_A <= "00000000000000001111111111111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "1010";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SGE com A positivo e |A| < |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1010";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SGE com A positivo e |A| > |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "1010";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SGE com A positivo e |A| = |B|" severity error;
    
    s_A <= "10000000000000000000111111111111";
    s_B <= "00000000000000000000000011111111";
    s_opcode <= "1010";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SGE com A negativo e |A| < |B|" severity error;
    
    s_A <= "10000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1010";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SGE com A negativo e |A| > |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1011";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SGEU com A positivo e |A| > |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "1011";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SGEU com A positivo e |A| = |B|" severity error;
    
    s_A <= "10000000000000000000111111111111";
    s_B <= "00000000000000000000000011111111";
    s_opcode <= "1011";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SGEU com A negativo e |A| < |B|" severity error;
    
    s_A <= "10000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1011";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SGEU com A negativo e |A| > |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1100";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SEQ com A positivo e |A| > |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "1100";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SEQ com A positivo e |A| = |B|" severity error;
    
    s_A <= "10000000000000000000111111111111";
    s_B <= "00000000000000000000000011111111";
    s_opcode <= "1100";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SEQ com A negativo e |A| < |B|" severity error;
    
    s_A <= "10000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1100";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SEQ com A negativo e |A| > |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1101";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SNE com A positivo e |A| > |B|" severity error;
    
    s_A <= "00000000111111110000000011111111";
    s_B <= "00000000111111110000000011111111";
    s_opcode <= "1101";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000000" and s_zero = '1') report "Fail SNE com A positivo e |A| = |B|" severity error;
    
    s_A <= "10000000000000000000111111111111";
    s_B <= "00000000000000000000000011111111";
    s_opcode <= "1101";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SNE com A negativo e |A| < |B|" severity error;
    
    s_A <= "10000000111111110000000011111111";
    s_B <= "00000000000000001111111111111111";
    s_opcode <= "1101";
    wait for 1 ns;
    assert(s_Z="00000000000000000000000000000001" and s_zero = '0') report "Fail SNE com A negativo e |A| > |B|" severity error;
    
    assert false report "Test done." severity note;
    wait;
    end process;
end tb;
