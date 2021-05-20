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
    generic(
    	DATA_SIZE	: natural   := 32;
    );
	port (
    -- Input ---------------------------------------------------
		address : in std_logic_vector;

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector
 	);
    end component;
    
    component XREG is
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
    generic (WSIZE : natural := 32);
	port (
      -- Input ---------------------------------------------------
        opcode 	: in std_logic_vector(3 downto 0);
        A, B 		: in std_logic_vector(WSIZE-1 downto 0);
      -- Output --------------------------------------------------
        Z 		: out std_logic_vector(WSIZE-1 downto 0);
        zero		: out std_logic);
    end component;
    
    component mem_RAM_rv is
    port (
    -- Input ---------------------------------------------------
		clock : in std_logic;
		we : in std_logic;
		address : in std_logic_vector;
		datain : in std_logic_vector;

    -- Output --------------------------------------------------
      	dataout : out std_logic_vector
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
		a, b	: in std_logic_vector;
    	sel		: in std_logic;
        
    -- Output --------------------------------------------------
		s		: out std_logic_vector);
    end component;
	
end package;