library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity TestBench_LogicTroco is
end TestBench_LogicTroco; 

architecture Stimulus of TestBench_LogicTroco is 
	signal s_clk, s_reset : std_logic; 
	signal s_troco : std_logic_vector(7 downto 0); 
	signal s_saidaTroco : std_logic_vector(7 downto 0);
	
begin
uut: entity work.LogicTroco(RTL)
		port map(clk => s_clk,
	         	 troco => s_troco,
	         	 reset => s_reset,
	         	 saidaTroco => s_saidaTroco); 
					 
clock_proc: process 
	begin 
		s_clk <= '0';
		wait for 10 ns; 
		
		s_clk <= '1';
		wait for 10 ns; 
	end process; 

	stim_proc: process
	begin
		
		s_troco <= "00110000"; 
		wait for 20 ns; 
		s_reset <= '0'; 
		wait for 10 ns; 

		s_troco <= "00110000"; 
		wait for 20 ns; 
		s_reset <= '1'; 
		wait for 10 ns; 		

		s_troco <= "01110000"; 
		wait for 20 ns; 
		s_reset <= '1'; 
		wait for 10 ns; 

		s_troco <= "01010000"; 
		wait for 20 ns; 
		s_reset <= '1'; 
		wait for 10 ns; 

		s_troco <= "01110000"; 
		wait for 20 ns; 
		s_reset <= '1'; 
		wait for 10 ns; 

		s_troco <= "10010000"; 
		wait for 20 ns; 
		s_reset <= '1'; 
		wait for 10 ns; 

		s_troco <= "01100000"; 
		wait for 20 ns; 
		s_reset <= '1'; 
		wait for 10 ns; 		


	end process stim_proc; 
end Stimulus;