library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEncAdapt is
port(	decodedIn : in std_logic_vector(3 downto 0); -- xxx1 xx10 x100 1000
		decodedOut : out std_logic_vector(2 downto 0)); -- 000 001 010 011
end PEncAdapt;

architecture BehavEquations of PEncAdapt is
begin
		process (decodedIn)
		begin
			if(decodedIn(0) = '1') then
				decodedOut <= "000";
			elsif(decodedIn(1) = '1') then
				decodedOut <= "001";
			elsif(decodedIn(2) = '1') then
				decodedOut <= "010";
			elsif(decodedIn(3) = '1') then
				decodedOut <= "011";					
			else
				decodedOut <= "111";
			end if; 
		end process; 
end BehavEquations;