--! @file      ulaRV.vhd
--!
--! @brief     subblock of the uniciclo RISCV
--! @details   It receives a 4-bit code which indicates which operation the 
--!				ALU should perform and two 32-bit data inputs, A and B.
--!				The output Z is the result of the operation between A and B. 
--!				In addition, there is a 'zero' output which indicates whether 
--!				the output is null or not.
--!
--! @author    Liz Costato
--! 
--! @version   1.1
--! @date      2021-04-27
--! 
--! @pre       
--! @pre       
--! @copyright 
--! 
-------------------------------------------------------------------------------
-- Version History
--
-- Version  Date        Author     		  Changes
-- 1.0      2021-04-23  Liz Costato   	Block Created
-- 1.1		2021-04-27	Liz Costato		Testbench created and block tested


--------------------------------------------------------------------------------

-- Libraries ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity ---------------------------------------------------------------------
entity ulaRV is
	generic (WSIZE : natural := 32);
	port (
    -- Input ---------------------------------------------------
      opcode 	: in std_logic_vector(3 downto 0);
      A, B 		: in std_logic_vector(WSIZE-1 downto 0);
    -- Output --------------------------------------------------
      Z 		: out std_logic_vector(WSIZE-1 downto 0);
      zero		: out std_logic);
end ulaRV;

architecture ulaRV_op of ulaRV is 

  signal s_opcode:		std_logic_vector(3 downto 0);
  signal s_A:			std_logic_vector(WSIZE-1 downto 0);
  signal s_B:			std_logic_vector(WSIZE-1 downto 0);
  signal s_Z:			std_logic_vector(WSIZE-1 downto 0);
  signal s_zero:		std_logic;

  begin
  
  s_opcode <= opcode;
  s_A <= A;
  s_B <= B;

  process(s_opcode, s_A, s_B)
    begin
      case s_opcode is
      -- ADD A, B
      when "0000" => s_Z <= std_logic_vector(signed(s_A) + signed(s_B));
      				if(signed(std_logic_vector(signed(s_A) + signed(s_B))) = 0) then s_zero <= '1';
   					else s_zero <= '0';
    				end if;
      -- SUB A, B
      when "0001" => s_Z <= std_logic_vector(signed(s_A) - signed(s_B));
      				if(signed(std_logic_vector(signed(s_A) - signed(s_B))) = 0) then s_zero <= '1';
   					else s_zero <= '0';
    				end if;
      -- AND A, B
      when "0010" => s_Z <= s_A and s_B;
      				if(signed(s_A and s_B) = 0) then s_zero <= '1';
   					else s_zero <= '0';
    				end if;
      -- OR A, B
      when "0011" => s_Z <= s_A or s_B;
      				if(signed(s_A or s_B) = 0) then s_zero <= '1';
   					else s_zero <= '0';
    				end if;
      -- XOR A, B
      when "0100" => s_Z <= s_A xor s_B;
      				if(signed(s_A xor s_B) = 0) then s_zero <= '1';
   					else s_zero <= '0';
    				end if;
      -- SLL A, B
      when "0101" => s_Z <= std_logic_vector(shift_left(unsigned(s_A), to_integer(unsigned(s_B))));
      				if(signed(std_logic_vector(shift_left(unsigned(s_A), to_integer(unsigned(s_B))))) = 0) then s_zero <= '1';
   					else s_zero <= '0';
    				end if;
      -- SRL A, B
      when "0110" => s_Z <= std_logic_vector(shift_right(unsigned(s_A), to_integer(unsigned(s_B))));
      				if(signed(std_logic_vector(shift_right(unsigned(s_A), to_integer(unsigned(s_B))))) = 0) then s_zero <= '1';
   					else s_zero <= '0';
    				end if;
      -- SRA A, B
      when "0111" => s_Z <= std_logic_vector(shift_right(signed(s_A), to_integer(unsigned(s_B))));
      				if(signed(std_logic_vector(shift_right(signed(s_A), to_integer(unsigned(s_B))))) = 0) then s_zero <= '1';
   					else s_zero <= '0';
    				end if;
      -- SLT A, B
      when "1000" => if(signed(s_A) - signed(s_B) < 0) then s_Z <= std_logic_vector(to_signed(1, WSIZE));
      				s_zero <= '0';
      				else s_Z <= std_logic_vector(to_signed(0, WSIZE));
                    s_zero <= '1';
                    end if;
      -- SLTU A, B
      when "1001" => if(unsigned(s_A) - unsigned(s_B) < 0) then s_Z <= std_logic_vector(to_signed(1, WSIZE));
      				s_zero <= '0';
      				else s_Z <= std_logic_vector(to_signed(0, WSIZE));
                    s_zero <= '1';
                    end if;
      -- SGE A, B
      when "1010" => if(signed(s_A) - signed(s_B) >= 0) then s_Z <= std_logic_vector(to_signed(1, WSIZE));
      				s_zero <= '0';
      				else s_Z <= std_logic_vector(to_signed(0, WSIZE));
                    s_zero <= '1';
                    end if;
      -- SGEU A, B
      when "1011" => if(unsigned(s_A) - unsigned(s_B) >= 0) then s_Z <= std_logic_vector(to_signed(1, WSIZE)); 
      				s_zero <= '0';
      				else s_Z <= std_logic_vector(to_signed(0, WSIZE)); 
                    s_zero <= '1';
                    end if; 
      -- SEQ A, B
      when "1100" => if(s_A = s_B) then s_Z <= std_logic_vector(to_signed(1, WSIZE));
      				s_zero <= '0';
      				else s_Z <= std_logic_vector(to_signed(0, WSIZE));
                    s_zero <= '1';
                    end if;
      -- SNE A, B
      when "1101" => if(s_A /= s_B) then s_Z <= std_logic_vector(to_signed(1, WSIZE));
      				s_zero <= '0';
      				else s_Z <= std_logic_vector(to_signed(0, WSIZE));
                    s_zero <= '1';
                    end if;
      when others => s_Z <= (others => '0');
      				 s_zero <= '0';
    end case;
    end process;
    
  Z <= s_Z;
  zero <= s_zero;

end ulaRV_op;