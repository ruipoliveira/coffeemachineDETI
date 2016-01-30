library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity LogicTroco is
	port( clk : in std_logic;
			troco  : in std_logic_vector(7 downto 0);
			reset : in std_logic;
			saidaTroco : out std_logic_vector(7 downto 0)); --aparece no terminal 7 segmentos
end LogicTroco;

architecture RTL of LogicTroco is
	type state is (E0, E10, E20, E30, E40, E50, E60, E70, E80, E90, E20especial);
	signal PS, NS : state; 
	
begin
next_state: process(clk, reset)
begin
	if (rising_edge(clk)) then
		if (reset = '1') then
			PS <= E0;
		else
			PS<=NS;
		end if;
	end if; 
end process;

comb_proc : process(PS)
begin	
	case PS is
	when E0 =>
		if(troco = "00000000") then
			NS <= E0;
		elsif(troco = "00010000") then --troco 10
			NS <= E10;
		elsif(troco = "00100000") then --troco 20
			NS <= E20;
		elsif(troco = "00110000") then --troco 30
			NS <= E30;
		elsif(troco = "01000000") then --troco 40
			NS <= E40;
		elsif(troco = "01010000") then --troco 50
			NS <= E50;
		elsif(troco = "01100000") then --troco 60
			NS <= E60;
		elsif(troco = "01110000") then --troco 70
			NS <= E70;
		elsif(troco = "10000000") then --troco 80
			NS <= E80;
		elsif(troco = "10010000") then --troco 90
			NS <= E90;
		end if;
			saidaTroco <= "11111111";
		when E10 =>
			saidaTroco <= "00010000"; -- 10 troco
			NS <= E0;
		when E20 =>
			saidaTroco <= "00100000"; -- 20 troco
			NS <= E0;
		when E20especial => --ativa quando aparecem duas moedas de 20 centimos seguidas-- 
			saidaTroco <= "11111111"; -- 20 troco
			NS <= E20;
		when E30 =>
			saidaTroco <= "00100000";
			NS <= E10;
		when E40 =>
			saidaTroco <= "00100000";
			NS <= E20especial; 
		when E50 =>
			saidaTroco <= "01010000"; -- 50 troco
			NS <= E0;
		when E60 =>
			saidaTroco <= "01010000";
			NS <= E10;
		when E70 =>
			saidaTroco <= "01010000";
			NS <= E20;
		when E80 =>
			saidaTroco <= "01010000";
			NS <= E30;
		when E90 =>
			saidaTroco <= "01010000";
			NS <= E40; 
		when others =>
			NS <= E0;
		end case;

end process;
	
end RTL;