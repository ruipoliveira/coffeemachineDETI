library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity TestBench_LogicProdutos is
end TestBench_LogicProdutos; 

architecture Stimulus of TestBench_LogicProdutos is 
	signal s_clk, s_D, s_V, s_saida, s_valor,  s_C, s_U, s_produto_A, s_produto_B, s_clock4seg,  s_produto_C, s_produto_D, s_reset, s_reset_acucar : std_logic; 
	signal s_enable : std_logic_vector(2 downto 0); 
	signal s_troco : std_logic_vector(7 downto 0); 
	signal s_atual : std_logic_vector(11 downto 0);
	
begin 
	uut: entity work.LogicProdutos(RTL) 
		port map(clk => s_clk,
	         	 D => s_D,
	         	 V => s_V,
	         	 C => s_C,
	         	 U => s_U,
	         	 reset => s_reset,
					   produtoEscolhido =>s_enable,
	         	 troco => s_troco, -- saida
	         	 atual => s_atual, -- saida
	         	 saida => s_saida, -- saida
	         	 valor => s_valor, -- saida
	         	 produto_A => s_produto_A, -- saida
	         	 produto_B => s_produto_B, -- saida
	         	 produto_C => s_produto_C, -- saida
	         	 produto_D => s_produto_D, -- saida
					 reset_acucar => s_reset_acucar, 
					 clock4seg => s_clock4seg); 
					 
clock_proc: process 
	begin 
		s_clk <= '0';
		wait for 10 ns; 
		
		s_clk <= '1';
		wait for 10 ns; 
	end process; 
	

	stim_proc: process
	begin
		--40 centimos
		s_enable <= "000"; 
		wait for 90 ns; 

		s_D <= '0'; 
		wait for 10 ns; 
		
		s_V <= '1';
		wait for 20 ns; 
		
		s_C <= '0'; 
		wait for 5 ns; 
		
		s_U <= '1';
		wait for 10 ns; 

		s_D <= '1'; 
		wait for 10 ns; 
		
		s_V <= '0';
		wait for 20 ns; 
		
		s_C <= '1'; 
		wait for 5 ns; 
		
		s_U <= '0';
		wait for 10 ns; 


		--60 centimos
		s_enable <= "001"; 
		wait for 90 ns; 

		s_D <= '0'; 
		wait for 10 ns; 
		
		s_V <= '1';
		wait for 20 ns; 
		
		s_C <= '0'; 
		wait for 5 ns; 
		
		s_U <= '1';
		wait for 10 ns; 

		s_D <= '1'; 
		wait for 10 ns; 
		
		s_V <= '0';
		wait for 20 ns; 
		
		s_C <= '1'; 
		wait for 5 ns; 
		
		s_U <= '0';
		wait for 10 ns; 

		--100 centimos
		s_enable <= "010"; 
		wait for 90 ns; 

		s_D <= '0'; 
		wait for 10 ns; 
		
		s_V <= '1';
		wait for 20 ns; 
		
		s_C <= '0'; 
		wait for 5 ns; 
		
		s_U <= '1';
		wait for 10 ns; 

		s_D <= '1'; 
		wait for 10 ns; 
		
		s_V <= '0';
		wait for 20 ns; 
		
		s_C <= '1'; 
		wait for 5 ns; 
		
		s_U <= '0';
		wait for 10 ns; 

		--120 centimos
		s_enable <= "011"; 
		wait for 90 ns; 

		s_D <= '0'; 
		wait for 10 ns; 
		
		s_V <= '1';
		wait for 20 ns; 
		
		s_C <= '0'; 
		wait for 5 ns; 
		
		s_U <= '1';
		wait for 10 ns; 

		s_D <= '1'; 
		wait for 10 ns; 
		
		s_V <= '0';
		wait for 20 ns; 
		
		s_C <= '1'; 
		wait for 5 ns; 
		
		s_U <= '0';
		wait for 10 ns; 

		--40 centimos
		s_enable <= "000"; 
		wait for 90 ns; 

		s_D <= '0'; 
		wait for 10 ns; 
		
		s_V <= '1';
		wait for 20 ns; 
		
		s_C <= '0'; 
		wait for 5 ns; 
		
		s_U <= '1';
		wait for 10 ns; 

		s_D <= '1'; 
		wait for 10 ns; 
		
		s_V <= '0';
		wait for 20 ns; 
		
		s_C <= '1'; 
		wait for 5 ns; 
		
		s_U <= '0';
		wait for 10 ns; 

	end process stim_proc; 
end Stimulus;