library IEEE;
use IEEE.STD_LOGIC_1164.all;

--------------------------------------------------------------------------------
-- @autor 	ruben miranda							laboratorios de sistemas digitais--
-- @autor 	rui oliveira 							prof. augusto silva					--
-- @date 	31-05-2014  						 	2013/2014								--
--------------------------------------------------------------------------------

entity maquinaDeCafe is
	port(SW : in std_logic_vector(17 downto 0); 
		KEY : in std_logic_vector(3 downto 0);
		CLOCK_50 : in std_logic;
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: out std_logic_vector(6 downto 0);
		LEDR : out std_logic_vector(17 downto 0);
		LEDG : out std_logic_vector(7 downto 0)
		);
end maquinaDeCafe;

architecture Shell of maquinaDeCafe is


-------------------------------------------------------------------------
--Inicialização dos sinais	usados			   								  --
-------------------------------------------------------------------------	
	signal s_troco : std_logic_vector(7 downto 0);
	signal s_atual : std_logic_vector(11 downto 0);
	signal s_clock_4seg : std_logic;
	signal s_keyClk0, s_keyClk1, s_keyClk2, s_keyClk3 : std_logic;
	signal s_produtoEscolhido : std_logic_vector(2 downto 0);
	signal s_clockacucar : std_logic;
	signal enable_contador : std_logic;
	signal saida_troco : std_logic_vector(7 downto 0);
	signal s_acucar : std_logic;
	signal s_produtoUsadoDisplay: std_logic_vector(3 downto 0);
	signal saida : std_logic_vector(7 downto 0);
	signal s_clock : std_logic;

begin



---------------------------------------------------------------------------------
-- Simulaçao das moedas a sair em troco													 --
---------------------------------------------------------------------------------

		clockMoedasACair : entity work.FreqDivider(Behavioral)
							generic map(K=>65000000)
							port map(enable => '1',
										clkIn => CLOCK_50,
										clkOut => s_clock);
					
		MoedasACair : entity work.LogicTroco(RTL)
							port map(clk => s_clock,
										reset => SW(17),
										troco => s_troco,
										saidaTroco => saida);
			
		MoedasACair_Displayesq : entity work.Bin7SegDecoder(Behavioral)
							port map(binInput =>  saida(7 downto 4),
								decOut_n => HEX5);
			
		MoedasACair_Displaydire : entity work.Bin7SegDecoder(Behavioral)
							port map(binInput =>  saida(3 downto 0),
								decOut_n => HEX4);
						
---------------------------------------------------------------------------------
--Debounce para as 4 KEY's, correspondente a cada moeda possivel de introduzir --
---------------------------------------------------------------------------------
		--10centimos
		key0 : entity work.DebounceUnit(RTL)
		generic map(clkFreKHz => 50000,	-- 50000 KHz = 50 MHz
					blindmSec => 300,	-- 300 ms = 0.3 s
					inPol     => '0',	-- active low input
					outPol    => '1')   -- active high output pulse
		port map(reset        => SW(17),     -- reset input
				 refClk       => CLOCK_50,  -- reference clock
				 dirtyInput   => KEY(0),    -- bounced key clock
				 pulsedOut    => s_keyClk0); -- debounced key clock
		--20centimos		 
		key1 : entity work.DebounceUnit(RTL)
		generic map(clkFreKHz => 50000,	-- 50000 KHz = 50 MHz
					blindmSec => 300,	-- 300 ms = 0.3 s
					inPol     => '0',	-- active low input
					outPol    => '1')   -- active high output pulse
		port map(reset        => SW(17),     -- reset input
				 refClk       => CLOCK_50,  -- reference clock
				 dirtyInput   => KEY(1),    -- bounced key clock
				 pulsedOut    => s_keyClk1); -- debounced key clock
		
		--50centimos
		key2 : entity work.DebounceUnit(RTL)
		generic map(clkFreKHz => 50000,	-- 50000 KHz = 50 MHz
					blindmSec => 300,	-- 300 ms = 0.3 s
					inPol     => '0',	-- active low input
					outPol    => '1')   -- active high output pulse
		port map(reset        => SW(17),     -- reset input
				 refClk       => CLOCK_50,  -- reference clock
				 dirtyInput   => KEY(2),    -- bounced key clock
				 pulsedOut    => s_keyClk2); -- debounced key clock
		
		--100centimos
		key3 : entity work.DebounceUnit(RTL)
		generic map(clkFreKHz => 50000,	-- 50000 KHz = 50 MHz
					blindmSec => 300,	-- 300 ms = 0.3 s
					inPol     => '0',	-- active low input
					outPol    => '1')   -- active high output pulse
		port map(reset        => SW(17),     -- reset input
				 refClk       => CLOCK_50,  -- reference clock
				 dirtyInput   => KEY(3),    -- bounced key clock
				 pulsedOut    => s_keyClk3); -- debounced key clock


---------------------------------------------------------------------------------
--Codificador de prioridade (4: 4) p.e. caso exista 2 produtos selecionados irá--
-- selecionar o SW do produtos mais à direita 											 --
---------------------------------------------------------------------------------

	codificadorPr : entity work.PEncAdapt(BehavEquations)
					port map(decodedIn => SW(3 downto 0),
						decodedOut => s_produtoEscolhido);
						
---------------------------------------------------------------------------------
--Sinal de clock para reset automatico														 --
---------------------------------------------------------------------------------				
	time_resetauto: entity work.FreqDivider(Behavioral)
					
					generic map(K=>45000000)
				port map(enable => enable_contador,
					clkIn => CLOCK_50,
					clkOut => s_clock_4seg);

---------------------------------------------------------------------------------
--Instanciacao do modulo principal. LogicProdutos										 --
---------------------------------------------------------------------------------					
	escolhaproduto : entity work.LogicProdutos(RTL)
			port map(produtoEscolhido => s_produtoEscolhido,
						clk =>CLOCK_50,
						D=> s_keyClk0,
						V=>s_keyClk1,
						C=>s_keyClk2,
						U=>s_keyClk3,
						troco => s_troco,
						produto_A => LEDR(0),
						produto_B => LEDR(1),
						produto_C => LEDR(2),
						produto_D => LEDR(3),
						atual => s_atual,
						produtoUsadoDisplay => s_produtoUsadoDisplay,
						clock4seg => s_clock_4seg,
						saida => enable_contador,
						reset_acucar => s_acucar,
						reset => SW(17));

---------------------------------------------------------------------------------
--Colocar no display o produto selecionado. Representados por A,B,C,D,			 --
---------------------------------------------------------------------------------
		produtodisplay : entity work.Bin7SegDecoder(Behavioral)
					port map(binInput => s_produtoUsadoDisplay,
								decOut_n => HEX3);

-------------------------------------------------------------------------
--Gestão da quantidade de açucar a adicionar no café					  --
-------------------------------------------------------------------------				
	clock_acucar : entity work.FreqDivider(Behavioral)
	generic map(K=>50000000)
		port map(enable => '1',
					clkIn => CLOCK_50,
					clkOut => s_clockacucar);
				
	acucar : entity work.LogicAcucar(Behavioral)
	port map(
				clk => s_clockacucar, 
				dataOut => LEDG,
				dirRit => SW(15),		
				dirLeft=> SW(16),
				reset => s_acucar,
				reset_manual => SW(17));
							
-------------------------------------------------------------------------
--Apresentação do valor de troco no HEX7 e HEX6								  --
-------------------------------------------------------------------------
		troco_dire	: entity work.Bin7SegDecoder(Behavioral)
					port map(binInput =>  s_troco(3 downto 0),
						decOut_n => HEX6 );
	
		troco_esqe : entity work.Bin7SegDecoder(Behavioral)
					port map(binInput =>  s_troco(7 downto 4),
						decOut_n => HEX7);

-------------------------------------------------------------------------
--Apresentação do montante introduzido no HEX2, HEX1 e HEX0				  --
-------------------------------------------------------------------------
		atual_dir : entity work.Bin7SegDecoder(Behavioral)
					port map(binInput => s_atual(3 downto 0),
						decOut_n => HEX0);
						
		atual_meio : entity work.Bin7SegDecoder(Behavioral)
					port map(binInput => s_atual(7 downto 4),
						decOut_n => HEX1);
						
		atual_esqe : entity work.Bin7SegDecoder(Behavioral)
					port map(binInput => s_atual(11 downto 8),
						decOut_n => HEX2);
				
						
			
end Shell;