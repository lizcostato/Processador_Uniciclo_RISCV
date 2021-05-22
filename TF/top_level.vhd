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
        r2_address_out	: out std_logic_vector(4 downto 0);
		  intruc_out : out std_logic_vector(31 downto 0)
      	--end_program		: out std_logic;
    );
end top_level;

architecture rtl of top_level is

	-- sinais que vão ser necessários entre os blocos
	 signal s_pcin 			: std_logic_vector(31 downto 0) := (others => '0');
    signal s_pcout			: std_logic_vector(31 downto 0) := (others => '0');
    signal s_instruction	: std_logic_vector(31 downto 0) := (others => '0');
    signal s_pc_plus4		: std_logic_vector(31 downto 0) := (others => '0');
	 -- Sinais do controle
	 signal s_branch        : std_logic;
	 signal s_memread       : std_logic;
	 signal s_memreg        : std_logic;
	 signal s_jlink         : std_logic;
	 signal s_memwrite      : std_logic;
	 signal s_regwrite      : std_logic;
	 signal s_alusrc        : std_logic;
	 signal s_aluop         : std_logic_vector(2 downto 0);
	 -- Sinais da ula
	 signal s_ular1			: std_logic_vector(31 downto 0);
	 signal s_ular2			: std_logic_vector(31 downto 0); -- Banco de registradores
	 signal s_ulaout        : std_logic_vector(31 downto 0); -- entrada r2 da ula
	 signal s_immed_r2      : std_logic_vector(31 downto 0);
	 signal s_branchula     : std_logic;
	 -- Sinais gerador de Imediado
	 signal s_immed       : std_logic_vector(31 downto 0);
	 
	 -- Sinais Banco de Registrados
	 signal s_datain			: std_logic_vector(31 downto 0);
	 
	 -- Sinais da memoria RAM
	 signal s_outram : std_logic_vector(31 downto 0);
	 signal s_ula_ram : std_logic_vector(31 downto 0);
	 
	 -- saidas de instrução
	 alias rd_field    : std_logic_vector(4 downto 0) is s_instruction(11 downto 7);
	 alias rs1_field   : std_logic_vector(4 downto 0) is s_instruction(19 downto 15);
	 alias rs2_field   : std_logic_vector(4 downto 0) is s_instruction(24 downto 20);
	 alias op_field    : std_logic_vector(5 downto 0) is s_instruction(6 downto 0);
	 alias func3_field : std_logic_vector(2 downto 0) is s_instruction(14 downto 12);
	 alias fun7_field  : std_logic_vector(5 downto 0) is s_instruction(31 downto 25);
	 
    
	begin
	
	-- Controlador ----------------------------
	contr_uni : controlador
		port map(
		-- Input ---------------------------------------------------
			opcode => op_field,
		-- Output --------------------------------------------------
			branch => s_branch,
			memread => s_memread,
			memreg => s_memreg,
			memwrite => s_memwrite,
			regwrite => s_regwrite,
			alusrc s_alusrc,
			aluop => s_aluop
		);
		
    -- PC ----------------------------
    comp_PC: PC
    	port map(
        	   clock => clock_in, 
            we => '1',
            datain => s_pcin, 
            dataout => s_pcout
			);
	
    -- Instruction Memory
    comp_ROM: mem_ROM_rv
    	port map(
        	-- o tamanho do s_pcout aqui depende da quantidade de linhas da ROM
        	address => s_pcout(7 downto 0), 
       	dataout => s_instruction);
			
    -- Banco de Registradores ------------------------------------
    comp_XREG: banc_reg
    	port map(
        	clock => clock_in, 
            we => s_regwrite, 
            r1_address => sr1_field -- src1, 
            r2_address => sr2_field -- mux_banreg, 
            w_address => rd_field,
            datain => s_datain -- Mux_dataWrite, 
            r1 => s_ular1, 
            r2 => s_ular2
			);
			
	 comp_mux2_imm_ula: mux2  -- Mux MEM PC=4
    	port map(
			a   => s_ula_ram, 
			b   => s_pc4, -- Criar sinal de saida PC+4 para este modelo caso JALR/JAL 
			sel => s_jlink, 
			s   => s_datain
		);
		
			
     -- ULA E MUX de controle --------------------------------------
    comp_ULA: ulaRV
    	port map(
				opcode => s_alup;
				A =>  s_ular1, -- Saida do banco de registradores 
				B => s_immed_r2 -- Mux ula
				Z => s_ulaout,
				zero => s_branchula
			);
			
	 comp_mux2_imm_ula: mux2  -- Mux ula
    	port map(
			a => s_ular2, 
			b =>s_immed, 
			sel => s_alusrc, 
			s =>s_immed_r2
		);
        
	-- RAM E MUX de Saida -------------------------------------------	  
    --comp_RAM:
    --	port map(clock => clock_in, we =>, address =>, datain =>, dataout =>);
	 
	  comp_mux2_ula_RAM: mux2
    	port map(
				a =>s_ulaout, 
				b => s_outram, 
				sel => s_memreg, 
				s => s_ula_ram
			);
        
    --comp_somador_ula: somador_32
    --	port map(data1 =>, data2 =>, dataout =>);
        
    comp_somador_PC: somador_32
    	port map(
        	data1 => std_logic_vector(to_unsigned(4,32)), 
            data2 => s_pcout, 
            dataout => s_pcin);
 

	
	
    --comp_mux2_pc: mux2
    	--port map(
			--a =>, 
			--b =>, 
			--sel =>, 
			--s =>);
        
    --comp_mux2_jalr: mux2
    --	port map(a =>, b =>, sel =>, s =>);
        

        

	
    -- só pro primeiro teste
    r1_address_out <= s_instruction(19 downto 15);
    r2_address_out <= s_instruction(24 downto 20);
	 intruc_out <= s_instruction;
    
end rtl;