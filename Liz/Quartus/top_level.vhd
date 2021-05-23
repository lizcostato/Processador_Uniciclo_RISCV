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
	use ieee.std_logic_unsigned.all;
use work.RISCV_Uniciclo_Pkg.all;
	
-- Entity ---------------------------------------------------------------------
entity top_level is
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
end top_level;

architecture rtl of top_level is

	
	
	-- sinais que vão ser necessários entre os blocos
	 signal s_pcin 			: std_logic_vector(31 downto 0);
    signal s_pcout			: std_logic_vector(31 downto 0) := (others => '0');
	 signal s_pc_plus4		: std_logic_vector(31 downto 0);
	 signal s_pc_immed      : std_logic_vector(31 downto 0);
	 signal s_reg_aui			: std_logic_vector(31 downto 0);
    signal s_instruction	: std_logic_vector(31 downto 0);
	 signal s_j_pc				: std_logic_vector(31 downto 0);
	 signal s_mux_ram_aui	: std_logic_vector(31 downto 0);
	 
	 -- Sinais do controle
	 signal s_branch        : std_logic;
	 signal s_memread       : std_logic;
	 signal s_memreg        : std_logic;
	 signal s_jlink         : std_logic;
	 signal s_memwrite      : std_logic;
	 signal s_regwrite      : std_logic;
	 signal s_alusrc        : std_logic;
	 signal s_isauipc 		: std_logic;
     signal s_islui			: std_logic_vector(4 downto 0);
	 signal s_con_alu         : std_logic_vector(2 downto 0);
	 
	 -- Sinais da ula
	 signal s_ular1			: std_logic_vector(31 downto 0);
	 signal s_aluop			: std_logic_vector(3 downto 0);
	 signal s_ular2			: std_logic_vector(31 downto 0); -- Banco de registradores
	 signal s_ulaout        : std_logic_vector(31 downto 0); -- entrada r2 da ula
	 signal s_immed_r2      : std_logic_vector(31 downto 0);
	 signal s_branchula     : std_logic;
	 
	 -- Sinal da entrada do BREG
     signal s_datain		: std_logic_vector(31 downto 0);
	 
	 -- Sinais gerador de Imediado
	 signal s_immed       	: signed(31 downto 0);
	 
	 -- Sinais da memoria RAM
	 signal s_outram 			: std_logic_vector(31 downto 0);
	 signal s_ula_ram 		: std_logic_vector(31 downto 0);
	 
	 -- saidas de instrução
	 alias rd_field   		: std_logic_vector(4 downto 0) is s_instruction(11 downto 7);
	 alias rs1_field  	   : std_logic_vector(4 downto 0) is s_instruction(19 downto 15);
	 alias rs2_field   		: std_logic_vector(4 downto 0) is s_instruction(24 downto 20);
	 alias op_field    		: std_logic_vector(6 downto 0) is s_instruction(6 downto 0);
	 alias func3_field 		: std_logic_vector(2 downto 0) is s_instruction(14 downto 12);
	 alias func7_field  		: std_logic_vector(6 downto 0) is s_instruction(31 downto 25);
	 
    
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
			alusrc => s_alusrc,
			aluop => s_con_alu,
			isauipc => s_isauipc,
            islui => s_islui,
			jlink => s_jlink
		);
		
	-- Controle da Ula
	controle_alu : control_alu
		port map(
		 -- Input ---------------------------------------------------
			aluop	=> s_con_alu,
			func3 => func3_field,
			func7 => func7_field,
		-- Output --------------------------------------------------
			operacao => s_aluop
		);
		
    -- PC ----------------------------
    comp_PC: PC
    	port map(
        	   clock => clock_in, 
            	datain => s_pcin, 
            	dataout => s_pcout
			);
	
    -- Instruction Memory ---------------------------------------
    comp_ROM: mem_ROM_rv
    	port map(
        	-- o tamanho do s_pcout aqui depende da quantidade de linhas da ROM
				address => s_pcout(31 downto 0), 
				dataout => s_instruction
			);
			
    -- Immediate Generator ---------------------------------------            
    comp_genImm32: genImm32 
      port map(
          instr		=> s_instruction,
          imm32		=> s_immed
      	);
            
    -- Banco de Registradores ------------------------------------
    comp_XREG: banc_reg
    	port map(
        	clock => clock_in, 
            we => s_regwrite, 
            r1_address => rs1_field, -- src1, 
            r2_address => rs2_field,-- mux_banreg, 
            w_address => rd_field,
            datain => s_ula_ram, -- Mux_dataWrite, 
            r1 => s_ular1, 
            r2 => s_ular2
			);
			
			
	 comp_mux2_imm_ula: mux2  -- Mux ula
    	port map(
			a => s_ular2, 
			b => std_logic_vector(s_immed), 
			sel => s_alusrc, 
			s => s_immed_r2
		);
		
     -- ULA E MUX de controle --------------------------------------
    comp_ULA: ulaRV
    	port map(
				opcode => s_aluop,
				A =>  s_ular1, -- Saida do banco de registradores 
				B => s_immed_r2, -- Mux ula
				Z => s_ulaout,
				zero => s_branchula
			);
			
		
    comp_MEM_RV : mem_rv
      port map(
        clock   => clock_in,
        we      => s_memwrite,
        address  => s_ulaout(7 downto 0),
        datain  => s_ular2,
        dataout => s_outram
      );

    -- Saida do Mux da ram para a ula
    comp_mux1_ula_RAM: mux2
      port map(
        a =>s_ulaout, 
        b => s_outram, 
        sel => s_memreg, 
        s => s_ula_ram
      );
    -- MUX AUIPC
    comp_mux2_Ram_AUI: mux2
      port map(
        a => s_ula_ram, 
        b => s_pc_immed, 
        sel => s_isauipc, 
        s => s_reg_aui
      );
    -- MUX JAL
    comp_mux2_AUI_JAL: mux2
      port map(
        a => s_pc_plus4, 
        b => s_reg_aui, 
        sel => s_jlink, 
        s => s_datain
      );


    comp_somador_PC: somador_32
      port map(
        data1 => std_logic_vector(to_unsigned(1,32)), 
        data2 => s_pcout, 
        dataout => s_pc_plus4
      );

    comp_somador_PC_immed: somador_32
      port map(
        data1 => std_logic_vector(s_immed),
        data2 => s_j_pc, 
        dataout => s_pc_immed
      );

    comp_mux_PC_JAL : mux2
      port map(
        a => s_pcout, 
        b => s_ular1, 
        sel => s_jlink, 
        s => s_j_pc
      );

    comp_mux2_PC_IMMED: mux2
      port map(
        a => s_pc_plus4, 
        b => s_pc_immed, 
        sel => s_branch and not(s_branchula), 
        s => s_pcin
      );

	
    -- só pro primeiro teste
    r1_address_out <= rs1_field;
    r2_address_out <= rs2_field;
	immed_out <= std_logic_vector(s_immed);
	intruc_out <= s_instruction;
    ula_z_out <= s_ulaout;
    pc_out <= s_pcout;
    
end rtl;