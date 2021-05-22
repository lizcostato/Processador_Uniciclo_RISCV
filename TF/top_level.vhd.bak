--! @file      genImm32.vhd
--!
--! @brief     toplevel of the uniciclo RISCV
--! @details   It has its instruction memory initialized with a program implemented 
--!				in RISC-V assembly and it is able to execute the program with one 	
--!				instruction per cycle.
--!
--! @author    Liz Costato
--! @author    Luan Cardoso
--! 
--! @version   1.0
--! @date      2021-05-20
--! 
--! @pre       
--! @pre       
--! @copyright 
--! 
-------------------------------------------------------------------------------
-- Version History
--
-- Version  Date        Author     		  Changes
-- 1.0      2021-05-20  Liz Costato   	Block Created


--------------------------------------------------------------------------------

-- Libraries ------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
	use ieee.numeric_std.all; 
use work.RISCV_Uniciclo_Pkg.all;
	
-- Entity ---------------------------------------------------------------------
entity top_level is
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
        r2_address_out	: out std_logic_vector(4 downto 0)
      	--end_program		: out std_logic;
    );
end top_level;

architecture rtl of top_level is

	-- sinais que vão ser necessários entre os blocos
	 signal s_pcin 			: std_logic_vector(31 downto 0) := (others => '0');
    signal s_pcout			: std_logic_vector(31 downto 0) := (others => '0');
    signal s_instruction	: std_logic_vector(31 downto 0) := (others => '0');
    signal s_pc_plus4		: std_logic_vector(31 downto 0) := (others => '0');
	 
    
	begin
    
    comp_PC: PC
    	port map(
        	clock => clock_in, 
            we => '1',
            datain => s_pcin, 
            dataout => s_pcout);
	
    -- Instruction Memory
    comp_ROM: mem_ROM_rv
    	port map(
        	-- o tamanho do s_pcout aqui depende da quantidade de linhas da ROM
        	address => s_pcout(1 downto 0), 
       	dataout => s_instruction);
    
    comp_XREG: XREG
    	port map(
        	clock => clock_in, 
            we => '1', 
            r1_address => s_instruction(19 downto 15), 
            r2_address => s_instruction(24 downto 20), 
            w_address => s_instruction(11 downto 7), 
            datain => data_in, 
            r1 => r1_out, 
            r2 => r2_out);
        
    --comp_ULA: ulaRV
    --	port map(opcode => , A =>, B =>, Z =>, zero =>);
        
    --comp_RAM:
    --	port map(clock => clock_in, we =>, address =>, datain =>, dataout =>);
        
    --comp_somador_ula: somador_32
    --	port map(data1 =>, data2 =>, dataout =>);
        
    comp_somador_PC: somador_32
    	port map(
        	data1 => std_logic_vector(to_unsigned(4,32)), 
            data2 => s_pcout, 
            dataout => s_pcin);
    
    --comp_mux2_pc: mux2
    --	port map(a =>, b =>, sel =>, s =>);
        
    --comp_mux2_jalr: mux2
    --	port map(a =>, b =>, sel =>, s =>);
        
    --comp_mux2_imm_r2: mux2
    --	port map(a =>, b =>, sel =>, s =>);
        
    --comp_mux2_ula_RAM: mux2
    --	port map(a =>, b =>, sel =>, s =>);
	
    -- só pro primeiro teste
    r1_address_out <= s_instruction(19 downto 15);
    r2_address_out <= s_instruction(24 downto 20);
    
end rtl;