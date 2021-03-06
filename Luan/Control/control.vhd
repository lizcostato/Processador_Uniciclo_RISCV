-- Libraries ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Entity ---------------------------------------------------------------------
entity controlador is
	port (
    -- Input ---------------------------------------------------
		opcode	: in std_logic_vector(6 downto 0);
       

    -- Output --------------------------------------------------
      branch : out std_logic;
		memread : out std_logic;
		memreg : out std_logic;
		memwrite : out std_logic;
		regwrite : out std_logic;
		alusrc : out std_logic;
		aluop : out std_logic_vector(2 downto 0)
		
 	);
end entity controlador;
    
architecture RTL of controlador is 
    
	 signal S_opcode : std_logic_vector(6 downto 0);
    
    begin
	 
	 s_opcode <= opcode;
	 
	 process(s_opcode)
	 begin
		case s_opcode is
		-- Intruções do tipo R normais
		when "0110011" =>
			branch <= '0';
			memread <= '0';
			memreg <= '0';
			memwrite <= '0';
			regwrite <= '1';
			alusrc <= '0';
			aluop <= "000";
			
		-- Instruções imediatos
		when "0010011" =>
			branch <= '0';
			memread <= '0';
			memreg <= '0';
			memwrite <= '0';
			regwrite <= '1';
			alusrc <= '1';
			aluop <= "000";
			
		-- Instruções Branch
		when "1100011" =>
			branch <= '1';
			memread <= '0';
			memreg <= '0';
			memwrite <= '0';
			regwrite <= '0';
			alusrc <= '0';
			aluop <= "001";
			
		-- Instrução LUI
		when "0110111" =>
			branch <= '0';
			memread <= '0';
			memreg <= '0';
			memwrite <= '0';
			regwrite <= '1';
			alusrc <= '1';
			aluop <= "010";
			
		-- Instrução AUIPC -- Modificação para somar com o PC talvez seja necessária
		when "0010111" =>
			branch <= '0';
			memread <= '0';
			memreg <= '0';
			memwrite <= '0';
			regwrite <= '1';
			alusrc <= '1';
			aluop <= "010";
			
		-- Instrução LW
		when "0000011" =>
			branch <= '0';
			memread <= '1';
			memreg <= '1';
			memwrite <= '0';
			regwrite <= '1';
			alusrc <= '1';
			aluop <= "010";
			
		-- Instrução SW
		when "0100011" =>
			branch <= '0';
			memread <= '0';
			memreg <= '1';
			memwrite <= '1';
			regwrite <= '0';
			alusrc <= '0';
			aluop <= "010";
			
		 when others =>
		 	branch <= '0';
			memread <= '0';
			memreg <= '0';
			memwrite <= '0';
			regwrite <= '0';
			alusrc <= '0';
			aluop <= "111";
      				 
			
	 end case;
	 end process;
    
    
end RTL;