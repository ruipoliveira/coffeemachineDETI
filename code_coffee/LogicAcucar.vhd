library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity LogicAcucar is
		port(	reset : in std_logic;
				reset_manual : in std_logic;
				clk : in std_logic;
				dataOut : out std_logic_vector(7 downto 0); 
				dirRit: in std_logic; 
				dirLeft: in std_logic );
end LogicAcucar;

architecture Behavioral of LogicAcucar is
	signal s_shiftregister : std_logic_vector(7 downto 0);
begin
	process( clk )
	begin
		if( rising_edge(clk) ) then
			if(reset = '1') then
				s_shiftregister <= "00000000";
			elsif(reset_manual = '1') then
				s_shiftregister <= "00000000";
			elsif (dirLeft = '1') then 
				s_shiftregister <= '1' & s_shiftregister(7 downto 1);
			elsif (dirRit ='1') then
				s_shiftregister <= s_shiftregister(6 downto 0) & '0'; 
			end if;
		end if;
	end process;
	dataOut <= s_shiftregister;
end Behavioral;