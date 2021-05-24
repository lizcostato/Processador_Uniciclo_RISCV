--! @file      genImm32.vhd
--!
--! @brief     subblock of the uniciclo RISCV
--! @details   It receives a 32-bit instruction and returns the 32-bit
--! 			correspondent immediate.
--!
--! @author    Liz Costato
--! 
--! @version   1.0
--! @date      2021-04-16
--! 
--! @pre       
--! @pre       
--! @copyright 
--! 
-------------------------------------------------------------------------------
-- Version History
--
-- Version  Date        Author     		  Changes
-- 1.0      2021-04-14  Liz Costato   	Block Created
-- 1.1		2021-04-16	Liz Costato		A few errors corrected


--------------------------------------------------------------------------------

-- Libraries ------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
	use ieee.numeric_std.all; 
	
-- Entity ---------------------------------------------------------------------
entity genImm32 is

    port (
        -- Input ---------------------------------------------------

        instr       :   in std_logic_vector(31 downto 0);

        -- Output --------------------------------------------------
		imm32	:	out signed(31 downto 0)
    );

end genImm32;

architecture genImm32_op of genImm32 is

	--! Instruction
    signal s_instr:   	 	std_logic_vector(31 downto 0);
    signal s_opcode:   	 	std_logic_vector(6 downto 0);
	--! Next State
    signal s_imm32:   	 	signed(31 downto 0);
	--! Signal to alert that the output is ready
	--signal s_ack_out:		std_logic;
	
    
	begin
    
	s_instr <= instr;
    s_opcode <= instr(6 downto 0);
    
    process(s_instr)
    begin
    	case s_opcode is
        	when "0000011" => s_imm32 <= resize(signed(s_instr(31 downto 20)), 32); --I_type: opcode 0x03
            when "0010011" => s_imm32 <= resize(signed(s_instr(31 downto 20)), 32); -- I_type: opcode 0x13
            when "1100111" => s_imm32 <= resize(signed(s_instr(31 downto 20)), 32); -- I_type: opcode 0x67
            when "0100011" => s_imm32 <= resize(signed(s_instr(31 downto 25) & s_instr(11 downto 7)), 32); --S_type: opcode 0x23
            when "1100011" => s_imm32 <= resize(signed(s_instr(31) & s_instr(7) & s_instr(30 downto 25) & s_instr(11 downto 8) & '0'), 32); --SB_type: opcode 0x63
            when "0110111" => s_imm32 <= signed(resize(signed(s_instr(31 downto 12)),32) sll 12); --U_type: opcode 0x37
            when "1101111" => s_imm32 <= resize(signed(s_instr(31) & s_instr(19 downto 12) & s_instr(20) & s_instr(30 downto 21) & '0'), 32); --UJ_type: opcode 0x6F
            when others => s_imm32 <= (others => '0'); -- includes R_type: opcode 0x33
        end case;
    end process;
	
	imm32 <= s_imm32;
	
end genImm32_op;