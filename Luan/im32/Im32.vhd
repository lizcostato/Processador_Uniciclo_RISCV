library ieee;
use ieee.std_logic_1164.all;

entity Im32 is 
	port(
		instr: in std_logic_vector(31 downto 0);
		imm32: out std_logic_vector(31 downto 0)
		);
		
end Im32;


architecture comportamento of Im32 is

	signal OP : std_logic_vector(5 downto 0):= instr(5 downto 0);

	signal EXTPOS : std_logic_vector(19 downto 0) := (others => '0'); -- dá para tirar
	signal EXTNEG : std_logic_vector(19 downto 0) := (others => '1'); -- dá para tirar
	
	
	signal IMM12 : std_logic_vector(11 downto 0):= instr(31 downto 20);
	
	
	signal IMMS : std_logic_vector(11 downto 0) := instr(31 downto 25) & instr(11 downto 7); -- sTYPE IMADIETE
	signal IMMSB : std_logic_vector(12 downto 0) := instr(31) & instr(7) & instr(30 downto 25) &instr(11 downto 8) & '0';
	
	signal IMMUJ : std_logic_vector(20 downto 0):= instr(31)&instr(19 downto 12)&instr(12)&instr(30 downto 21)&'0';
	
	signal IMMU : std_logic_vector(31 downto 0) := instr(31 downto 12)&EXTPOS(11 downto 0);
	


begin
process ( OP, IMM12, IMMSB)
begin
	-- talvez arrumar o tamanho da comparação op = 6bits hexa 8 bits
	
		if ( OP = x"33") then
		-- Resolução do tipo R sem immediato
			imm32 <= x"00000000";
		
		end if;
		
		 if ( OP = x"23") then
		 
		 -- OP S type
			if ( IMMS(11) = '1' ) then
				imm32 <= EXTNEG& IMMS ;
			else
				imm32 <= EXTPOS & IMMS;
			end if;	
			
		end if;
		
		if ( OP = x"63") then
		-- OP SB type
			if (IMMSB(12) = '1') then
				imm32 <= EXTPOS(18 downto 0) & IMMSB;
			else
				imm32 <= EXTNEG(18 downto 0) & IMMSB;
			end if;
		end if;
		
		
		if ( OP = x"37") then
		-- OP U type
		imm32 <= IMMU;
		end if;
		
		
		if ( OP = x"6F") then
		-- OP UJ type
			if (IMMUJ(20) = '1') then
				imm32 <= EXTNEG(11 downto 0) & IMMUJ;
			else 
				imm32 <= EXTPOS(11 downto 0) & IMMUJ;
			end if;
			
		end if;
		
		
		if ( OP = x"03") or ( OP = x"13") or ( OP = x"67") then
			if ( IMM12(11) = '1' ) then
				imm32 <= EXTNEG & IMM12;
			else
				imm32 <= EXTPOS & IMM12;
			end if;
		-- OP I type
		end if;
		
end process;


end comportamento;
