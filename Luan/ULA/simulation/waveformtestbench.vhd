LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY waveformtestbench  IS 
END ; 
 
ARCHITECTURE waveformtestbench_arch OF waveformtestbench IS
  SIGNAL zero   :  STD_LOGIC  ; 
  SIGNAL A   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL Z   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL B   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL opcode   :  std_logic_vector (3 downto 0)  ; 
  COMPONENT ULA  
    PORT ( 
      zero  : out STD_LOGIC ; 
      A  : in std_logic_vector (31 downto 0) ; 
      Z  : out std_logic_vector (31 downto 0) ; 
      B  : in std_logic_vector (31 downto 0) ; 
      opcode  : in std_logic_vector (3 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : ULA  
    PORT MAP ( 
      zero   => zero  ,
      A   => A  ,
      Z   => Z  ,
      B   => B  ,
      opcode   => opcode   ) ; 



-- "Counter Pattern"(Range-Up) : step = 1 Range(0000-1101)
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	variable VARopcode  : std_logic_vector(3 downto 0);
	Begin
	VARopcode  := "0000" ;
	for repeatLength in 1 to 14
	loop
	    opcode  <= VARopcode  ;
	   wait for 50 ns ;
	   VARopcode  := VARopcode  + 1 ;
	end loop;
-- 700 ns, repeat pattern in loop.
	VARopcode  := "0000" ;
	for repeatLength in 1 to 6
	loop
	    opcode  <= VARopcode  ;
	   wait for 50 ns ;
	   VARopcode  := VARopcode  + 1 ;
	end loop;
-- 1 us, periods remaining till edit start time.
	wait;
 End Process;


-- "Counter Pattern"(Range-Up) : step = 20 Range(00000000000000000000000000000000-11111111111111111111111111111111)
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	variable VARa  : std_logic_vector(31 downto 0);
	Begin
	VARa  := "00000000000000000000000000000000" ;
	for repeatLength in 1 to 20
	loop
	    a  <= VARa  ;
	   wait for 50 ns ;
	   VARa  := VARa  + 20 ;
	end loop;
-- 1 us, periods remaining till edit start time.
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 b  <= "00000000000000000000000000000001"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
