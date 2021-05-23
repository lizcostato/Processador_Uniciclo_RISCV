-- Libraries ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity ---------------------------------------------------------------------
entity control_alu is
	port (
    -- Input ---------------------------------------------------
		aluop	: in std_logic_vector(2 downto 0);
		func3 : in std_logic_vector(2 downto 0);
		func7 : in std_logic_vector(6 downto 0);
      

    -- Output --------------------------------------------------
		operacao : out std_logic_vector(3 downto 0)
		
 	);
end entity control_alu;
    
architecture RTL_ula of control_alu is 
    
	 signal s_aluop : std_logic_vector(2 downto 0);
	 signal s_func3 : std_logic_vector(2 downto 0);
	 signal s_func7 : std_logic_vector(6 downto 0);
	 signal s_operacao : std_logic_vector(3 downto 0);
    
    begin
	 
	 s_aluop <= aluop;
	 s_func3 <= func3;
	 s_func7 <= func7;
	 
	 process(s_aluop, s_func3, s_func7)
	 begin
		case s_aluop is
		-----------------------------------------------------------
		when "000" =>
			case s_func3 is
				-- Caso ADD e SUB
				when "000" =>
					if s_func7 = "0100000" then
						s_operacao <= "0001";
					else
						s_operacao <= "0000";
					end if;
				-- Caso SLL
				when "001" => s_operacao <= "0101";
				-- Caso SLT
				when "010" => s_operacao <= "1000";
				-- Caso SLUT
				when "011" => s_operacao <= "1001";
				-- Caso XOR
				when "100" => s_operacao <= "0100";
				-- Caso SRLI E SRAI 
				when "101" => 
					if s_func7 = "0100000" then
							s_operacao <= "0111";
						else
							s_operacao <= "0110";
						end if;
				-- Caso OR
				when "110" => s_operacao <= "0011";
				-- Caso AND
				when "111" => s_operacao <= "0010";
				
				when others => s_operacao <= "1111";
				
				end case;
		--------------------------------------------------------------------
		
		when "001" =>
		case s_func3 is
			-- Caso BEQ
			when "000" => s_operacao <= "1100";
			-- Caso BNE
			when "001" => s_operacao <=  "1101";
			-- Caso BLT
			when "100" => s_operacao <= "1011";
			-- Caso BGE
			when "101" => s_operacao <= "1010";
			
			when others => s_operacao <= "1111";
			
		end case;
		
		-- Operalçao Lui, AUIPC, SW E LW
		
		when "010" => s_operacao <= "0000";
		
		when "011" => s_operacao <= "0000"; -- LUI
		
		
		-- outras
		when others => s_operacao <= "1111";
					
      				 
			
	 end case;
	 end process;
    
    
end RTL_ula;