--! @file      genImm32.vhd
--!
--! @brief     pakage of the uniciclo RISCV
--! @details   It has all the constants and components used in the uniciclo RISCV
--!				processor.
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
	
-- Package ---------------------------------------------------------------------
package RISCV_Uniciclo_Pkg is

	component PC is
	port (
    -- Input ---------------------------------------------------
		clock : in std_logic;
      we : in std_logic;
      datain : in std_logic_vector(31 downto 0);

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector(31 downto 0)
 	);
  	end component;
	
    -- Instruction Memory
    component mem_ROM_rv is
	port (
    -- Input ---------------------------------------------------
		address : in std_logic_vector(7 downto 0);

    -- Output --------------------------------------------------
      dataout : out std_logic_vector(31 downto 0)
 	);
    end component;
    
    component banc_reg is
    port (
    -- Input ---------------------------------------------------
		clock : in std_logic;
        -- write enable
		we : in std_logic;
        -- endereço de leitura 1
		r1_address : in std_logic_vector(4 downto 0);
        -- endereço de leitura 2
        r2_address : in std_logic_vector(4 downto 0);
        -- endereço de escrita
        w_address	: in std_logic_vector(4 downto 0);
        -- dado a ser escrito
		datain : in std_logic_vector(31 downto 0);

    -- Output --------------------------------------------------
    	-- dado leitura 1
      	r1 : out std_logic_vector(31 downto 0);
        -- dado leitura 2
        r2: out std_logic_vector(31 downto 0)
 	);
    end component;
    
    component ulaRV is
	port (
      -- Input ---------------------------------------------------
        opcode 	: in std_logic_vector(3 downto 0);
        A, B 		: in std_logic_vector(31 downto 0);
      -- Output --------------------------------------------------
        Z 		: out std_logic_vector(31 downto 0);
        zero		: out std_logic
		  );
    end component;
    
    component mem_RAM_rv is
    port (
    -- Input ---------------------------------------------------
		clock : in std_logic;
		we : in std_logic;		
		
		address  : in std_logic_vector(7 downto 0);
		    -- Output --------------------------------------------------
		datain  : in std_logic_vector(31 downto 0);
		dataout : out std_logic_vector(31 downto 0)

 	);
    end component;
    
    component somador_32 is
    port (
    -- Input ---------------------------------------------------
		data1	: in std_logic_vector(31 downto 0);
        data2	: in std_logic_vector(31 downto 0);

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector(31 downto 0)
 	);
    end component;
    
    component mux2 is
    port(
    -- Input ---------------------------------------------------
		a, b	: in std_logic_vector(31 downto 0);
    	sel		: in std_logic;
        
    -- Output --------------------------------------------------
		s		: out std_logic_vector(31 downto 0 )
		);
    end component;
	 
	 component control_alu is
	 	port (
    -- Input ---------------------------------------------------
		aluop	: in std_logic_vector(2 downto 0);
		func3 : in std_logic_vector(2 downto 0);
		func7 : in std_logic_vector(6 downto 0);
      

    -- Output --------------------------------------------------
		operacao : out std_logic_vector(3 downto 0)
		);
		end component;
		
		component controlador is
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
			aluop : out std_logic_vector(2 downto 0);
		-- Controle para mux j ----------------------------
			jlink : out std_logic;
			isauipc : out std_logic
			);
		end component;
		
	component mem_rv is
		port(
			clock   : in std_logic;
			we      : in std_logic;
			address  : in std_logic_vector(7 downto 0);
			datain  : in std_logic_vector(31 downto 0);
			dataout : out std_logic_vector(31 downto 0)
		);
		end component;
		
end package;