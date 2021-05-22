LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ularv is
	port (
		opcode : in std_logic_vector(3 downto 0);
		A,B    : in std_logic_vector(31 downto 0);
		Z 	    : out std_logic_vector( 31 downto 0);
		zero   : out std_logic
		);
end ularv;


architecture ula_arc OF ularv is

begin
	
	process (A,B,opcode)
	begin
	
	if A = 0 and B = 0 then
		zero <= '1';
	else
		zero <= '0';
	end if;

	case opcode is
	
	when "0000" => 
		Z <= A + B;
		if A+B = 0 then
			zero <= '1';
		else
			zero <= '0';
		end if;
	when "0001" => 
		Z <= A - B;
		if A-B = 0 then
			zero <= '1';
		else
			zero <= '0';
		end if;
		
	when "0010" => 
		Z <= A AND B;
		if A = 0 or B = 0 then
			zero <= '0';
		end if;

	when "0011" => Z <= A OR B;
	
	when "0100" => Z <= A XOR B;
			
	when "0101" =>
		Z <= std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(B))));
		if std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(B)))) = 0 then
			zero <= '0';
		end if;

	when "0110" =>
		Z <= std_logic_vector(shift_right(unsigned(A),to_integer(unsigned(B))));
		if std_logic_vector(shift_right(unsigned(A),to_integer(unsigned(B)))) = 0 then
			zero <= '0';
		end if;

	when "0111" =>
		Z <= std_logic_vector(shift_right( signed(A),to_integer(unsigned(B))));
		if std_logic_vector(shift_right( signed(A),to_integer(unsigned(B)))) = 0 then
			zero <= '0';
		end if;

	when "1000" => 
		if A < B then
			Z <= "00000000000000000000000000000001";
			zero <= '0';
		else
			Z <= "00000000000000000000000000000000";
			zero <='1';
		end if;
	when "1001" =>  
		if unsigned(A) < unsigned(B) then
			Z <= "00000000000000000000000000000001";
			zero <= '0';
		else
			Z <= "00000000000000000000000000000000";
			zero <='1';
		end if;
	when "1010" =>  
		if A >= B then
			Z <= "00000000000000000000000000000001";
			zero <= '0';
		else
			Z <= "00000000000000000000000000000000";
			zero <='1';
		end if;
	when "1011" =>  
		if  unsigned(A) >= unsigned(B) then
			Z <= "00000000000000000000000000000001";
			zero <= '0';
		else
			Z <= "00000000000000000000000000000000";
			zero <= '1';
		end if;
	when "1100" =>   
		if A = B then
			Z <= "00000000000000000000000000000001";
			zero <= '0';
		else
			Z <= "00000000000000000000000000000000";
			zero <='1';
		end if;
	when "1101" =>   
		if A /= B then
			Z <= "00000000000000000000000000000001";
			zero <= '0';
		else
			Z <= "00000000000000000000000000000000";
			zero <='1';
		end if;
	when others => 
			Z <= "00000000000000000000000000000000";
			zero <='1';
	end case;
			
	end process;
	
end ula_arc;