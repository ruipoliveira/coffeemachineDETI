library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity LogicProdutos is
	port(clk : in std_logic;
			produtoEscolhido: in std_logic_vector(2 downto 0); 
			V, C, U, D : in std_logic;
			reset: in std_logic;
			clock4seg : in std_logic;	
			produto_A, produto_B, produto_C, produto_D, valor : out std_logic; 
			troco: out std_logic_vector(7 downto 0);
			produtoUsadoDisplay: out std_logic_vector(3 downto 0); 
			atual: out std_logic_vector(11 downto 0);
			saida: out std_logic;
			reset_acucar : out std_logic);
			
end LogicProdutos; 

architecture RTL of LogicProdutos is
	type state is (E0, E10, E20, E30, E40, E50, E60, E70, E80, E90, E100, E110, E120, E130, E140, E150, 
	E160, E170, E180, E190, E200, E210); 
	signal PS, NS : state; 
	signal s_moeda : std_logic_vector(3 downto 0);
	signal contador : unsigned(1 downto 0);
	signal contador_reset : std_logic;
	
begin 

automatico: process(clock4seg, contador_reset)
begin
	if(contador_reset = '1') then
		contador <= "00";
	elsif rising_edge(clock4seg) then
		contador <= contador+1;
	end if;
end process;

state_register: process(clk)
begin
	if rising_edge(clk) then
		if (reset = '1') then
			PS <= E0;
			
		elsif(contador = "11") then
			contador_reset <= '1';
			PS <= E0;
		else
			PS <= NS;
			contador_reset <= '0';
			s_moeda(0) <= D; 
			s_moeda(1) <= V; 
			s_moeda(2) <= C; 
			s_moeda(3) <= U;
		end if; 
	end if; 
end process; 

state_output_logic: process (PS,s_moeda, produtoEscolhido)
begin

-------------------------------------------------------------------------
--Implementação da máquina de estados para o produto de 40 centimos	  --
-------------------------------------------------------------------------

	if(produtoEscolhido="000") then
		produtoUsadoDisplay <= "1010";  
		NS<=PS;
		produto_A <= '0';
		produto_B <= '0';
		produto_C <= '0';
		produto_D <= '0';
		saida <= '0';
		reset_acucar <= '0';
		case PS is
		when E0 => 
			troco <= "00000000";
			atual <= "000000000000";
			if s_moeda(0)='1' then NS<= E10; 
			elsif s_moeda(1)='1' then NS <= E20;
			elsif s_moeda(2)='1' then NS <= E50; 
			elsif s_moeda(3)='1' then NS <= E100;
			else NS <= E0;
			
			
			end if;
		when E10 => 
			atual <= "000000010000";
			if  s_moeda(0)='1' then	NS<= E20; 
			elsif s_moeda(1)='1' then NS <= E30;
			elsif  s_moeda(2)='1' then NS <= E60; 
			elsif  s_moeda(3)='1' then NS <= E110; 
			else NS <= E10; 
			
			end if;
							
		when E20 =>
			atual <= "000000100000";		
			if s_moeda(0)='1' then NS<= E30; 
			elsif  s_moeda(1)='1' then NS <= E40;
			elsif  s_moeda(2)='1' then NS <= E70; 
			elsif  s_moeda(3)='1' then NS <= E120; 
			else NS <= E20; 
			
			end if; 
						
		when E30 => 				
			atual <= "000000110000";
			if s_moeda(0)='1' then NS<= E40;
			elsif s_moeda(1)='1' then NS <= E50;
			elsif  s_moeda(2)='1' then NS <= E80; 
			elsif  s_moeda(3)='1' then NS <= E130; 
			else NS <= E30;
			
			end if;  
			
		when E40 => 
			produto_A <= '1';
			atual <= "000001000000";
			saida <= '1';
			reset_acucar <= '1';

			
			
		when E50 => 
			produto_A <= '1';
			troco <= "00010000"; --10
			atual <= "000001010000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E60 => 
			produto_A <= '1';
			troco <= "00100000"; --20
			atual <= "000001100000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E70 => produto_A <= '1'; 
			troco <="00110000"; --30
			atual <= "000001110000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E80 => produto_A <= '1'; 
			troco <="01000000"; --40
			atual <= "000010000000";
			saida <= '1';
			reset_acucar <= '1';	
	
		when E90 => produto_A <= '1'; 
			troco <="01010000"; --50
			atual <= "000010010000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E100 => produto_A <= '1'; 
			troco <="01100000"; --60
			atual <= "000100000000";
			saida <= '1';
			reset_acucar <= '1';		
		
		when E110 => produto_A <= '1'; 
			troco <="01110000"; --70
			atual <= "000100010000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E120 => produto_A <= '1'; 
			troco <="10000000"; --80
			atual <= "000100100000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E130 => produto_A <= '1'; 
			troco <="10010000"; --90
			atual <= "000100110000";
			saida <= '1';
			reset_acucar <= '1';
		when others	=>
			NS <= E0;
		end case;
		
-------------------------------------------------------------------------
--Implementação da máquina de estados para o produto de 60 centimos	  --
-------------------------------------------------------------------------

	elsif(produtoEscolhido="001") then
		produtoUsadoDisplay <= "1011"; 
		NS<=PS;
		produto_A <= '0';
		produto_B <= '0';
		produto_C <= '0';
		produto_D <= '0';
		saida <= '0';
		reset_acucar <= '0';
	case PS is
		when E0 => 
			troco <= "00000000";
			atual <= "000000000000";
			if s_moeda(0)='1' then NS<= E10; 
			elsif s_moeda(1)='1' then NS <= E20;
			elsif s_moeda(2)='1' then NS <= E50; 
			elsif s_moeda(3)='1' then NS <= E100;
			else NS <= E0;
			end if;
		
		when E10 => 
			atual <= "000000010000";
			if  s_moeda(0)='1' then NS<= E20; 
			elsif s_moeda(1)='1' then NS <= E30;
			elsif  s_moeda(2)='1' then NS <= E60; 
			elsif  s_moeda(3)='1' then NS <= E110; 
			else NS <= E10; 
			end if;
					
		when E20 =>
			atual <= "000000100000";	
			if s_moeda(0)='1' then NS<= E30; 
			elsif  s_moeda(1)='1' then NS <= E40;
			elsif  s_moeda(2)='1' then NS <= E70; 
			elsif  s_moeda(3)='1' then NS <= E120; 
			else NS <= E20; 
			end if; 
				
		when E30 =>
			atual <= "000000110000";	
			if s_moeda(0)='1' then NS<= E40;
			elsif s_moeda(1)='1' then NS <= E50;
			elsif  s_moeda(2)='1' then NS <= E80; 
			elsif  s_moeda(3)='1' then NS <= E130; 
			else NS <= E30; 
			end if;  
						
		when E40 => 
			atual <= "000001000000";		
			if  s_moeda(0)='1' then NS<= E50; 
			elsif  s_moeda(1)='1' then NS <= E60;
			elsif  s_moeda(2)='1' then NS <= E90; 
			elsif s_moeda(3)='1' then NS <= E140; 
			else NS <= E40; 
			end if;
							
		when E50 =>
			atual <= "000001010000";	
			if s_moeda(0)='1' then NS<= E60; 
			elsif  s_moeda(1)='1' then NS <= E70; 
			elsif  s_moeda(2)='1' then NS <= E100; 
			elsif s_moeda(3)='1' then NS <= E150; 
			else NS <= E50; 
			end if; 
								
		when E60 => produto_B <= '1';
			atual <= "000001100000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E70 => produto_B <= '1'; 
			troco <="00010000"; --10
			atual <= "000001110000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E80 => produto_B <= '1'; 
			troco <="00100000"; --20
			atual <= "000010000000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E90 => produto_B <= '1'; 
			troco <="00110000"; --30
			atual <= "000010010000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E100 => produto_B <= '1'; 
			troco <="01000000"; --40
			atual <= "000100000000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E110 => produto_B <= '1'; 
			troco <="01010000"; --50
			atual <= "000100010000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E120 => produto_B <= '1'; 
			troco <="01100000"; --60
			atual <= "000100100000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E130 => produto_B <= '1'; 
			troco <="01110000"; --70
			atual <= "000100110000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E140 => produto_B <= '1'; 
			troco <="10000000"; --80
			atual <= "000101000000";
			saida <= '1';
			reset_acucar <= '1';
		
		when E150 =>  produto_B <= '1'; 
			troco <="10010000"; --90
			atual <= "000001010000";
			saida <= '1';
			reset_acucar <= '1';
			
		when others =>
			NS <= E0;
		end case;

-------------------------------------------------------------------------
--Implementação da máquina de estados para o produto de 100 centimos	  --
-------------------------------------------------------------------------
	elsif(produtoEscolhido = "010") then
		produtoUsadoDisplay <= "1100"; 
		NS<=PS;
		produto_A <= '0';
		produto_B <= '0';
		produto_C <= '0';
		produto_D <= '0';
		saida <= '0';
		reset_acucar <= '0';
		
	case PS is
		when E0 => 
			troco <= "00000000";
			atual <= "000000000000";
			if s_moeda(0)='1' then NS<= E10; 
			elsif s_moeda(1)='1' then NS <= E20;
			elsif s_moeda(2)='1' then NS <= E50; 
			elsif s_moeda(3)='1' then NS <= E100;
			else NS <= E0;
			end if;
								
		when E10 =>
			atual <= "000000010000";	
			if  s_moeda(0)='1' then NS<= E20; 
			elsif s_moeda(1)='1' then NS <= E30;
			elsif  s_moeda(2)='1' then NS <= E60; 
			elsif  s_moeda(3)='1' then NS <= E110; 
			else NS <= E10; 
			end if;
				
		when E20 => 
			atual <= "000000100000";	
			if s_moeda(0)='1' then NS<= E30; 
			elsif  s_moeda(1)='1' then NS <= E40;
			elsif  s_moeda(2)='1' then NS <= E70; 
			elsif  s_moeda(3)='1' then NS <= E120; 
			else NS <= E20; 
			end if; 
				
		when E30 => 
			atual <= "000000110000";
			if s_moeda(0)='1' then NS<= E40;
			elsif s_moeda(1)='1' then NS <= E50;
			elsif  s_moeda(2)='1' then NS <= E80; 
			elsif  s_moeda(3)='1' then NS <= E130; 
			else NS <= E30; 
			end if;  
				
		when E40 =>
			atual <= "000001000000";	
			if  s_moeda(0)='1' then NS<= E50; 
			elsif  s_moeda(1)='1' then NS <= E60;
			elsif  s_moeda(2)='1' then NS <= E90; 
			elsif s_moeda(3)='1' then NS <= E140; 
			else NS <= E40; 
			end if;
							
		when E50 =>
			atual <= "000001010000";	
			if s_moeda(0)='1' then NS<= E60; 
			elsif  s_moeda(1)='1' then NS <= E70; 
			elsif  s_moeda(2)='1' then NS <= E100; 
			elsif s_moeda(3)='1' then NS <= E150; 
			else NS <= E50; 
			end if; 
								
		when E60 => 
			atual <= "000001100000";	
			if s_moeda(0)='1' then NS<= E70; 
			elsif  s_moeda(1)='1' then NS <= E80; 
			elsif  s_moeda(2)='1' then NS <= E110; 
			elsif s_moeda(3)='1' then NS <= E160; 
			else NS <= E60; 
			end if;

		when E70 =>  
			atual <= "000001110000";
			if s_moeda(0)='1' then NS<= E80; 
			elsif  s_moeda(1)='1' then NS <= E90; 
			elsif  s_moeda(2)='1' then NS <= E120; 
			elsif s_moeda(3)='1' then NS <= E170; 
			else NS <= E70; 
			end if;
			
		when E80 => 
			atual <= "000010000000";
			if s_moeda(0)='1' then NS<= E90; 
			elsif  s_moeda(1)='1' then NS <= E100; 
			elsif  s_moeda(2)='1' then NS <= E130; 
			elsif s_moeda(3)='1' then NS <= E180; 
			else NS <= E80; 
			end if;	
		
		when E90 =>  
			atual <= "000010010000";
			if s_moeda(0)='1' then NS<= E100; 
			elsif  s_moeda(1)='1' then NS <= E110; 
			elsif  s_moeda(2)='1' then NS <= E140; 
			elsif s_moeda(3)='1' then NS <= E190; 
			else NS <= E90; 
			end if;
		
		when E100 => produto_C <= '1'; 
			atual <= "000100000000";
			saida <= '1';
			reset_acucar <= '1';		
		
		when E110 => produto_C <= '1'; 
			troco <="00010000"; --10
			atual <= "000100010000";
			saida <= '1';
			reset_acucar <= '1';			
		
		when E120 => produto_C <= '1'; 
			troco <="00100000"; --20
			atual <= "000100100000";	
			saida <= '1';
			reset_acucar <= '1';	
		
		when E130 => produto_C <= '1'; 
			troco <="00110000"; --30
			atual <= "000100110000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E140 => produto_C <= '1'; 
			troco <="01000000"; --40
			atual <= "000101000000";	
			saida <= '1';
			reset_acucar <= '1';	
		
		when E150 =>  produto_C <= '1'; 
			troco <="01010000"; --50
			atual <= "000001010000";
			saida <= '1';
			reset_acucar <= '1';

		when E160 =>  produto_C <= '1'; 
			troco <="01100000"; --60
			atual <= "000001010000";
			saida <= '1';
			reset_acucar <= '1';	
			
		when E170 =>  produto_C <= '1'; 
			troco <="01110000"; --70
			atual <= "000001010000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E180 =>  produto_C <= '1'; 
			troco <="10000000"; --80
			atual <= "000001010000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E190 =>  produto_C <= '1'; 
			troco <="10010000"; --90
			atual <= "000001010000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when others =>
			NS <= E0;
		end case;
		
-------------------------------------------------------------------------
--Implementação da máquina de estados para o produto de 120 centimos	  --
-------------------------------------------------------------------------
		
	elsif(produtoEscolhido = "011") then
		produtoUsadoDisplay <= "1101"; 
		NS<=PS;
		produto_A <= '0';
		produto_B <= '0';
		produto_C <= '0';
		produto_D <= '0';
		saida <= '0';
		reset_acucar <= '0';	
	case PS is
		when E0 => 
			troco <= "00000000";
			atual <= "000000000000";
			if s_moeda(0)='1' then NS<= E10; 
			elsif s_moeda(1)='1' then NS <= E20;
			elsif s_moeda(2)='1' then NS <= E50; 
			elsif s_moeda(3)='1' then NS <= E100;
			else NS <= E0;
			end if;
								
		when E10 =>
			atual <= "000000010000";	
			if  s_moeda(0)='1' then NS<= E20; 
			elsif s_moeda(1)='1' then NS <= E30;
			elsif  s_moeda(2)='1' then NS <= E60; 
			elsif  s_moeda(3)='1' then NS <= E110; 
			else NS <= E10; 
			end if;
								
		when E20 => 
			atual <= "000000100000";	
			if s_moeda(0)='1' then NS<= E30; 
			elsif  s_moeda(1)='1' then NS <= E40;
			elsif  s_moeda(2)='1' then NS <= E70; 
			elsif  s_moeda(3)='1' then NS <= E120; 
			else NS <= E20; 
			end if; 
								
		when E30 =>
			atual <= "000000110000";	
			if s_moeda(0)='1' then NS<= E40;
			elsif s_moeda(1)='1' then NS <= E50;
			elsif  s_moeda(2)='1' then NS <= E80; 
			elsif  s_moeda(3)='1' then NS <= E130; 
			else NS <= E30; 
			end if;  
							
		when E40 =>
			atual <= "000001000000";	
			if  s_moeda(0)='1' then NS<= E50; 
			elsif  s_moeda(1)='1' then NS <= E60;
			elsif  s_moeda(2)='1' then NS <= E90; 
			elsif s_moeda(3)='1' then NS <= E140; 
			else NS <= E40; 
			end if;
							
		when E50 =>
			atual <= "000001010000";	
			if s_moeda(0)='1' then NS<= E60; 
			elsif  s_moeda(1)='1' then NS <= E70; 
			elsif  s_moeda(2)='1' then NS <= E100; 
			elsif s_moeda(3)='1' then NS <= E150; 
			else NS <= E50; 
			end if; 
		
		when E60 => 
			atual <= "000001100000";	
			if s_moeda(0)='1' then NS<= E70; 
			elsif  s_moeda(1)='1' then NS <= E80; 
			elsif  s_moeda(2)='1' then NS <= E110; 
			elsif s_moeda(3)='1' then NS <= E160; 
			else NS <= E60; 
			end if;
		
		when E70 =>  
			atual <= "000001110000";
			if s_moeda(0)='1' then NS<= E80; 
			elsif  s_moeda(1)='1' then NS <= E90; 
			elsif  s_moeda(2)='1' then NS <= E120; 
			elsif s_moeda(3)='1' then NS <= E170; 
			else NS <= E70; 
			end if;
			
		when E80 => 
			atual <= "000010000000";
			if s_moeda(0)='1' then NS<= E90; 
			elsif  s_moeda(1)='1' then NS <= E100; 
			elsif  s_moeda(2)='1' then NS <= E130; 
			elsif s_moeda(3)='1' then NS <= E180; 
			else NS <= E80; 
			end if;	
		
		when E90 =>  
			atual <= "000010010000";
			if s_moeda(0)='1' then NS<= E100; 
			elsif  s_moeda(1)='1' then NS <= E110; 
			elsif  s_moeda(2)='1' then NS <= E140; 
			elsif s_moeda(3)='1' then NS <= E190; 
			else NS <= E90; 
			end if;
		
		when E100 =>  
			atual <= "000100000000";
			if s_moeda(0)='1' then NS<= E110; 
			elsif  s_moeda(1)='1' then NS <= E120; 
			elsif  s_moeda(2)='1' then NS <= E150; 
			elsif s_moeda(3)='1' then NS <= E200; 
			else NS <= E100; 
			end if;		
		
		when E110 => 
			atual <= "000100010000";
			if s_moeda(0)='1' then NS<= E120; 
			elsif  s_moeda(1)='1' then NS <= E130; 
			elsif  s_moeda(2)='1' then NS <= E160; 
			elsif s_moeda(3)='1' then NS <= E210; 
			else NS <= E110; 
			end if;		
		
		when E120 => produto_D <= '1'; 
			atual <= "000100100000";
			saida <= '1';
			reset_acucar <= '1';		
		
		when E130 => produto_D <= '1'; 
			troco <="00010000"; --10
			atual <= "000100110000";
			saida <= '1';
			reset_acucar <= '1';		
		
		when E140 => produto_D <= '1'; 
			troco <="00100000"; --20
			atual <= "000101000000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E150 =>  produto_D <= '1'; 
			troco <="00110000"; --30
			atual <= "000101010000";
			saida <= '1';
			reset_acucar <= '1';	
			
		when E160 =>  produto_D <= '1'; 
			troco <="01000000"; --40
			atual <= "000101100000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E170 =>  produto_D <= '1'; 
			troco <="01010000"; --50
			atual <= "000101110000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E180 =>  produto_D <= '1'; 
			troco <="01100000"; --60
			atual <= "000110000000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E190 =>  produto_D <= '1'; 
			troco <="01110000"; --70
			atual <= "000110010000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E200 =>  produto_D <= '1'; 
			troco <="10000000"; --80
			atual <= "001000000000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when E210 =>  produto_D <= '1'; 
			troco <="10010000"; --90
			atual <= "001000010000";
			saida <= '1';
			reset_acucar <= '1';	
		
		when others	=>
			NS <= E0;
		end case;
		
	else
			--NS <= PS;
			produtoUsadoDisplay <= "1111";  
	end if;
end process;
end RTL;