-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/03/2014 12:30:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	maquinaDeCafe IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END maquinaDeCafe;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maquinaDeCafe IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \codificadorPr|decodedOut[2]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_acucar|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockMoedasACair|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \escolhaproduto|atual[7]~18clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \time_resetauto|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MoedasACair|Selector11~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \time_resetauto|Add0~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \codificadorPr|decodedOut[2]~0_combout\ : std_logic;
SIGNAL \codificadorPr|decodedOut[2]~0clkctrl_outclk\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \escolhaproduto|contador[1]~0_combout\ : std_logic;
SIGNAL \escolhaproduto|Equal0~0_combout\ : std_logic;
SIGNAL \escolhaproduto|contador_reset~feeder_combout\ : std_logic;
SIGNAL \escolhaproduto|contador_reset~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \key2|s_dirtyInput~q\ : std_logic;
SIGNAL \key2|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \key2|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \key2|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \key2|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \key2|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \key2|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \key2|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \key2|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \key2|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \key2|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \key2|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \key2|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \key2|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \key2|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \key2|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \key2|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[15]~feeder_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \key2|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \key2|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \key2|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \key2|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \key2|Equal0~5_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \key2|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \key2|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \key2|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \key2|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \key2|Equal0~6_combout\ : std_logic;
SIGNAL \key2|Equal0~0_combout\ : std_logic;
SIGNAL \key2|Equal0~3_combout\ : std_logic;
SIGNAL \key2|Equal0~2_combout\ : std_logic;
SIGNAL \key2|Equal0~1_combout\ : std_logic;
SIGNAL \key2|Equal0~4_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \key2|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \key2|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \key2|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \key2|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \key2|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \key2|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \key2|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \key2|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \key2|Equal0~7_combout\ : std_logic;
SIGNAL \key2|Equal0~8_combout\ : std_logic;
SIGNAL \key2|Equal0~9_combout\ : std_logic;
SIGNAL \key2|s_resetPulse~0_combout\ : std_logic;
SIGNAL \key2|s_resetPulse~q\ : std_logic;
SIGNAL \key2|out_proc~0_combout\ : std_logic;
SIGNAL \key2|s_pulsedOut~q\ : std_logic;
SIGNAL \escolhaproduto|PS~46_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \key3|s_dirtyInput~q\ : std_logic;
SIGNAL \key3|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \key3|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \key3|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \key3|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \key3|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \key3|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \key3|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \key3|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \key3|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \key3|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \key3|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \key3|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \key3|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \key3|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \key3|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \key3|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \key3|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \key3|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \key3|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \key3|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \key3|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \key3|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \key3|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \key3|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \key3|Equal0~6_combout\ : std_logic;
SIGNAL \key3|Equal0~5_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \key3|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \key3|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \key3|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \key3|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \key3|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \key3|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \key3|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \key3|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \key3|Equal0~7_combout\ : std_logic;
SIGNAL \key3|Equal0~8_combout\ : std_logic;
SIGNAL \key3|Equal0~1_combout\ : std_logic;
SIGNAL \key3|Equal0~3_combout\ : std_logic;
SIGNAL \key3|Equal0~2_combout\ : std_logic;
SIGNAL \key3|Equal0~0_combout\ : std_logic;
SIGNAL \key3|Equal0~4_combout\ : std_logic;
SIGNAL \key3|Equal0~9_combout\ : std_logic;
SIGNAL \key3|s_resetPulse~0_combout\ : std_logic;
SIGNAL \key3|s_resetPulse~q\ : std_logic;
SIGNAL \key3|out_proc~0_combout\ : std_logic;
SIGNAL \key3|s_pulsedOut~q\ : std_logic;
SIGNAL \escolhaproduto|s_moeda[3]~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \key0|s_dirtyInput~q\ : std_logic;
SIGNAL \key0|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \key0|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \key0|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \key0|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \key0|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \key0|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \key0|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \key0|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \key0|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \key0|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \key0|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \key0|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \key0|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \key0|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \key0|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \key0|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \key0|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \key0|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \key0|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \key0|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \key0|Equal0~5_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \key0|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \key0|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \key0|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \key0|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \key0|Equal0~6_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \key0|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \key0|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \key0|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \key0|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \key0|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \key0|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \key0|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \key0|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \key0|Equal0~7_combout\ : std_logic;
SIGNAL \key0|Equal0~8_combout\ : std_logic;
SIGNAL \key0|Equal0~1_combout\ : std_logic;
SIGNAL \key0|Equal0~3_combout\ : std_logic;
SIGNAL \key0|Equal0~0_combout\ : std_logic;
SIGNAL \key0|Equal0~2_combout\ : std_logic;
SIGNAL \key0|Equal0~4_combout\ : std_logic;
SIGNAL \key0|Equal0~9_combout\ : std_logic;
SIGNAL \key0|s_resetPulse~0_combout\ : std_logic;
SIGNAL \key0|s_resetPulse~q\ : std_logic;
SIGNAL \key0|out_proc~0_combout\ : std_logic;
SIGNAL \key0|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \key1|s_dirtyInput~q\ : std_logic;
SIGNAL \key1|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \key1|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \key1|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \key1|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \key1|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \key1|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \key1|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \key1|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \key1|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \key1|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \key1|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \key1|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \key1|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \key1|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \key1|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \key1|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \key1|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \key1|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \key1|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \key1|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \key1|Equal0~5_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \key1|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \key1|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \key1|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \key1|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \key1|Equal0~6_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \key1|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \key1|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \key1|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \key1|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \key1|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \key1|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \key1|Equal0~7_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \key1|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \key1|Equal0~8_combout\ : std_logic;
SIGNAL \key1|Equal0~0_combout\ : std_logic;
SIGNAL \key1|Equal0~3_combout\ : std_logic;
SIGNAL \key1|Equal0~2_combout\ : std_logic;
SIGNAL \key1|Equal0~1_combout\ : std_logic;
SIGNAL \key1|Equal0~4_combout\ : std_logic;
SIGNAL \key1|Equal0~9_combout\ : std_logic;
SIGNAL \key1|s_resetPulse~0_combout\ : std_logic;
SIGNAL \key1|s_resetPulse~q\ : std_logic;
SIGNAL \key1|out_proc~0_combout\ : std_logic;
SIGNAL \key1|s_pulsedOut~q\ : std_logic;
SIGNAL \escolhaproduto|NS~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS~2_combout\ : std_logic;
SIGNAL \escolhaproduto|Equal2~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E20~6_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E140~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E140~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E140~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E140_1932~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~39_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E140~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E130~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E80~3_combout\ : std_logic;
SIGNAL \produtodisplay|Mux1~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E130~5_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E130~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E130~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E130_1944~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~27_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E130~q\ : std_logic;
SIGNAL \escolhaproduto|troco~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E200~0_combout\ : std_logic;
SIGNAL \escolhaproduto|produtoUsadoDisplay[0]~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E200~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E200~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E200_1860~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~32_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E200~q\ : std_logic;
SIGNAL \escolhaproduto|WideOr0~6_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr130~combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E70~5_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E60~5_combout\ : std_logic;
SIGNAL \escolhaproduto|Equal3~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E60~6_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E60~7_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E60~8_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E60~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E60~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E60~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E60~9_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E60_2028~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~43_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E60~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E80~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E80~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E80~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E80~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E80_2004~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~37_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E80~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E100~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E100~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E100~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E100~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E100~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E100~5_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E100~6_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E100_1980~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~36_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E100~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E150~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E150~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E150_1920~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~31_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E150~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E160~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E160~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E160_1908~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~34_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E160~q\ : std_logic;
SIGNAL \escolhaproduto|WideOr59~0_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr94~combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E210~2_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr57~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E210~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E210~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E210~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E210~5_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E210_1848~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~33_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E210~q\ : std_logic;
SIGNAL \escolhaproduto|WideOr0~8_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E90~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E90~5_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E90~7_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E90~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E90~8_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E90~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E90~6_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E90_1992~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~25_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E90~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E190~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E190_1872~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~45_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E190~q\ : std_logic;
SIGNAL \escolhaproduto|WideOr100~0_combout\ : std_logic;
SIGNAL \escolhaproduto|produto_C~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E20~7_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr11~0_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr4~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E20~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E20~5_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E20~8_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E20_2076~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~41_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E20~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E70~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E70~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E70~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E70~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E70~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E70~6_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E70_2016~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~24_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E70~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E170~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E170_1896~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~44_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E170~q\ : std_logic;
SIGNAL \escolhaproduto|WideOr25~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E0~8_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E0~6_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E0~7_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E0_2100~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~40_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E0~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E10~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E10~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E10~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E10_2088~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~28_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E10~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E110~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E110~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E110~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E110~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E110~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E110~5_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E110_1968~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~26_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E110~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E120~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E120~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E120~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E120~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E120_1956~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~38_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E120~q\ : std_logic;
SIGNAL \escolhaproduto|WideOr23~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E20~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E20~9_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E20~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E30~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E30~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E30~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E30~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E30_2064~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~29_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E30~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E40~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E40~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E40~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E40~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E40_2052~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~42_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E40~q\ : std_logic;
SIGNAL \escolhaproduto|NS.E50~2_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E50~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E50~3_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E50~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E50~4_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E50_2040~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~30_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E50~q\ : std_logic;
SIGNAL \escolhaproduto|WideOr14~0_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr27~0_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr54~combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr24~combout\ : std_logic;
SIGNAL \escolhaproduto|saida~0_combout\ : std_logic;
SIGNAL \escolhaproduto|saida~1_combout\ : std_logic;
SIGNAL \escolhaproduto|reset_acucar~combout\ : std_logic;
SIGNAL \time_resetauto|Add0~1\ : std_logic;
SIGNAL \time_resetauto|Add0~2_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~3\ : std_logic;
SIGNAL \time_resetauto|Add0~4_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~5\ : std_logic;
SIGNAL \time_resetauto|Add0~6_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~7\ : std_logic;
SIGNAL \time_resetauto|Add0~8_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~9\ : std_logic;
SIGNAL \time_resetauto|Add0~10_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~11\ : std_logic;
SIGNAL \time_resetauto|Add0~12_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~6_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~13\ : std_logic;
SIGNAL \time_resetauto|Add0~14_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~15\ : std_logic;
SIGNAL \time_resetauto|Add0~16_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~9_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~17\ : std_logic;
SIGNAL \time_resetauto|Add0~18_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~19\ : std_logic;
SIGNAL \time_resetauto|Add0~21\ : std_logic;
SIGNAL \time_resetauto|Add0~22_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~23\ : std_logic;
SIGNAL \time_resetauto|Add0~24_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~25\ : std_logic;
SIGNAL \time_resetauto|Add0~26_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~11_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~27\ : std_logic;
SIGNAL \time_resetauto|Add0~28_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~29\ : std_logic;
SIGNAL \time_resetauto|Add0~30_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~12_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~31\ : std_logic;
SIGNAL \time_resetauto|Add0~32_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~33\ : std_logic;
SIGNAL \time_resetauto|Add0~34_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~7_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~1_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~0_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~35\ : std_logic;
SIGNAL \time_resetauto|Add0~36_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~8_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~37\ : std_logic;
SIGNAL \time_resetauto|Add0~38_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~13_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~39\ : std_logic;
SIGNAL \time_resetauto|Add0~40_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~41\ : std_logic;
SIGNAL \time_resetauto|Add0~42_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~14_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~43\ : std_logic;
SIGNAL \time_resetauto|Add0~44_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~45\ : std_logic;
SIGNAL \time_resetauto|Add0~46_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~15_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~47\ : std_logic;
SIGNAL \time_resetauto|Add0~48_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~49\ : std_logic;
SIGNAL \time_resetauto|Add0~51\ : std_logic;
SIGNAL \time_resetauto|Add0~52_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~53\ : std_logic;
SIGNAL \time_resetauto|Add0~54_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~55\ : std_logic;
SIGNAL \time_resetauto|Add0~56_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~57\ : std_logic;
SIGNAL \time_resetauto|Add0~58_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~59\ : std_logic;
SIGNAL \time_resetauto|Add0~60_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~3_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~2_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~4_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~50_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~16_combout\ : std_logic;
SIGNAL \time_resetauto|Add0~20_combout\ : std_logic;
SIGNAL \time_resetauto|s_counter~10_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~6_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~8_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~7_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~5_combout\ : std_logic;
SIGNAL \time_resetauto|Equal0~9_combout\ : std_logic;
SIGNAL \time_resetauto|clkOut~3_combout\ : std_logic;
SIGNAL \time_resetauto|clkOut~5_combout\ : std_logic;
SIGNAL \time_resetauto|clkOut~2_combout\ : std_logic;
SIGNAL \time_resetauto|clkOut~4_combout\ : std_logic;
SIGNAL \time_resetauto|clkOut~6_combout\ : std_logic;
SIGNAL \time_resetauto|clkOut~7_combout\ : std_logic;
SIGNAL \time_resetauto|clkOut~8_combout\ : std_logic;
SIGNAL \time_resetauto|clkOut~q\ : std_logic;
SIGNAL \time_resetauto|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \escolhaproduto|contador[0]~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E180~0_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E180_1884~combout\ : std_logic;
SIGNAL \escolhaproduto|PS~35_combout\ : std_logic;
SIGNAL \escolhaproduto|PS.E180~q\ : std_logic;
SIGNAL \escolhaproduto|atual[7]~27_combout\ : std_logic;
SIGNAL \escolhaproduto|Equal4~0_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr0~7_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[7]~17_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[7]~18_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[7]~18clkctrl_outclk\ : std_logic;
SIGNAL \escolhaproduto|WideOr6~0_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[5]~19_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[5]~20_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[6]~21_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[6]~26_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[6]~22_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr107~0_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[4]~13_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[4]~14_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[4]~15_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr8~0_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[4]~12_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[4]~16_combout\ : std_logic;
SIGNAL \atual_meio|Mux6~0_combout\ : std_logic;
SIGNAL \atual_meio|Mux5~0_combout\ : std_logic;
SIGNAL \atual_meio|Mux4~0_combout\ : std_logic;
SIGNAL \atual_meio|Mux3~0_combout\ : std_logic;
SIGNAL \atual_meio|Mux2~0_combout\ : std_logic;
SIGNAL \atual_meio|Mux1~0_combout\ : std_logic;
SIGNAL \atual_meio|Mux0~0_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[9]~28_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[8]~23_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[8]~24_combout\ : std_logic;
SIGNAL \escolhaproduto|atual[8]~25_combout\ : std_logic;
SIGNAL \atual_esqe|Mux1~0_combout\ : std_logic;
SIGNAL \atual_esqe|Mux1~1_combout\ : std_logic;
SIGNAL \atual_esqe|Mux1~2_combout\ : std_logic;
SIGNAL \produtodisplay|Mux5~0_combout\ : std_logic;
SIGNAL \produtodisplay|Mux4~0_combout\ : std_logic;
SIGNAL \produtodisplay|Mux3~0_combout\ : std_logic;
SIGNAL \produtodisplay|Mux2~0_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~0_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~1\ : std_logic;
SIGNAL \clockMoedasACair|Add0~2_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~3\ : std_logic;
SIGNAL \clockMoedasACair|Add0~4_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~5\ : std_logic;
SIGNAL \clockMoedasACair|Add0~6_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~7\ : std_logic;
SIGNAL \clockMoedasACair|Add0~8_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~9\ : std_logic;
SIGNAL \clockMoedasACair|Add0~10_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~11\ : std_logic;
SIGNAL \clockMoedasACair|Add0~12_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~0_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~13\ : std_logic;
SIGNAL \clockMoedasACair|Add0~14_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~15\ : std_logic;
SIGNAL \clockMoedasACair|Add0~16_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~17\ : std_logic;
SIGNAL \clockMoedasACair|Add0~18_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~10_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~19\ : std_logic;
SIGNAL \clockMoedasACair|Add0~20_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~21\ : std_logic;
SIGNAL \clockMoedasACair|Add0~22_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~23\ : std_logic;
SIGNAL \clockMoedasACair|Add0~24_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~11_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~25\ : std_logic;
SIGNAL \clockMoedasACair|Add0~26_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~27\ : std_logic;
SIGNAL \clockMoedasACair|Add0~28_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~1_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~29\ : std_logic;
SIGNAL \clockMoedasACair|Add0~30_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~2_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~31\ : std_logic;
SIGNAL \clockMoedasACair|Add0~32_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~3_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~33\ : std_logic;
SIGNAL \clockMoedasACair|Add0~34_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~4_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~35\ : std_logic;
SIGNAL \clockMoedasACair|Add0~36_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~5_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~37\ : std_logic;
SIGNAL \clockMoedasACair|Add0~38_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~6_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~39\ : std_logic;
SIGNAL \clockMoedasACair|Add0~40_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~12_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~41\ : std_logic;
SIGNAL \clockMoedasACair|Add0~42_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~8_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~7_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~51\ : std_logic;
SIGNAL \clockMoedasACair|Add0~52_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~53\ : std_logic;
SIGNAL \clockMoedasACair|Add0~54_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~55\ : std_logic;
SIGNAL \clockMoedasACair|Add0~56_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~57\ : std_logic;
SIGNAL \clockMoedasACair|Add0~58_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~59\ : std_logic;
SIGNAL \clockMoedasACair|Add0~60_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~5_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~2_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~43\ : std_logic;
SIGNAL \clockMoedasACair|Add0~44_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~7_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~45\ : std_logic;
SIGNAL \clockMoedasACair|Add0~46_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~8_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~3_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~1_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~0_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~4_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~6_combout\ : std_logic;
SIGNAL \clockMoedasACair|Equal0~9_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~47\ : std_logic;
SIGNAL \clockMoedasACair|Add0~48_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~9_combout\ : std_logic;
SIGNAL \clockMoedasACair|Add0~49\ : std_logic;
SIGNAL \clockMoedasACair|Add0~50_combout\ : std_logic;
SIGNAL \clockMoedasACair|s_counter~13_combout\ : std_logic;
SIGNAL \clockMoedasACair|clkOut~0_combout\ : std_logic;
SIGNAL \clockMoedasACair|clkOut~1_combout\ : std_logic;
SIGNAL \clockMoedasACair|clkOut~2_combout\ : std_logic;
SIGNAL \clockMoedasACair|clkOut~3_combout\ : std_logic;
SIGNAL \clockMoedasACair|clkOut~feeder_combout\ : std_logic;
SIGNAL \clockMoedasACair|clkOut~q\ : std_logic;
SIGNAL \clockMoedasACair|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \escolhaproduto|troco~15_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[7]~14_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[7]~16_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr2~combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr57~1_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr57~2_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[7]~8_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr96~0_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[7]~7_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr27~combout\ : std_logic;
SIGNAL \escolhaproduto|troco[7]~9_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr31~combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr100~combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr61~combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr6~combout\ : std_logic;
SIGNAL \escolhaproduto|troco[5]~10_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[5]~11_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr4~combout\ : std_logic;
SIGNAL \escolhaproduto|troco[6]~12_combout\ : std_logic;
SIGNAL \escolhaproduto|WideOr98~0_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[6]~13_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[4]~3_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[4]~4_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[4]~5_combout\ : std_logic;
SIGNAL \escolhaproduto|troco[4]~6_combout\ : std_logic;
SIGNAL \MoedasACair|Equal0~1_combout\ : std_logic;
SIGNAL \MoedasACair|Equal0~0_combout\ : std_logic;
SIGNAL \MoedasACair|Equal0~7_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E50~0_combout\ : std_logic;
SIGNAL \MoedasACair|Equal0~2_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E20especial~0_combout\ : std_logic;
SIGNAL \MoedasACair|comb~0_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E50_437~combout\ : std_logic;
SIGNAL \MoedasACair|PS~19_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E50~q\ : std_logic;
SIGNAL \MoedasACair|Equal0~3_combout\ : std_logic;
SIGNAL \MoedasACair|Equal0~8_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E70~0_combout\ : std_logic;
SIGNAL \MoedasACair|comb~1_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E70_389~combout\ : std_logic;
SIGNAL \MoedasACair|PS~20_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E70~q\ : std_logic;
SIGNAL \MoedasACair|Selector6~0_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E20_518~combout\ : std_logic;
SIGNAL \MoedasACair|PS~15_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E20~q\ : std_logic;
SIGNAL \MoedasACair|Equal0~6_combout\ : std_logic;
SIGNAL \MoedasACair|Equal0~9_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E60~0_combout\ : std_logic;
SIGNAL \MoedasACair|comb~5_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E60_413~combout\ : std_logic;
SIGNAL \MoedasACair|PS~23_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E60~q\ : std_logic;
SIGNAL \MoedasACair|NS.E80~0_combout\ : std_logic;
SIGNAL \MoedasACair|comb~2_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E80_365~combout\ : std_logic;
SIGNAL \MoedasACair|PS~21_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E80~q\ : std_logic;
SIGNAL \MoedasACair|Equal0~4_combout\ : std_logic;
SIGNAL \MoedasACair|Selector4~0_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E30_491~combout\ : std_logic;
SIGNAL \MoedasACair|PS~16_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E30~q\ : std_logic;
SIGNAL \MoedasACair|Selector8~0_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E10_545~combout\ : std_logic;
SIGNAL \MoedasACair|PS~18_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E10~q\ : std_logic;
SIGNAL \MoedasACair|Selector10~0_combout\ : std_logic;
SIGNAL \MoedasACair|Selector10~1_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E0_572~combout\ : std_logic;
SIGNAL \MoedasACair|PS~13_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E0~q\ : std_logic;
SIGNAL \MoedasACair|Selector11~0_combout\ : std_logic;
SIGNAL \MoedasACair|Selector11~0clkctrl_outclk\ : std_logic;
SIGNAL \MoedasACair|NS.E90~0_combout\ : std_logic;
SIGNAL \MoedasACair|comb~4_combout\ : std_logic;
SIGNAL \MoedasACair|comb~3_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E90_341~combout\ : std_logic;
SIGNAL \MoedasACair|PS~22_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E90~q\ : std_logic;
SIGNAL \MoedasACair|Equal0~5_combout\ : std_logic;
SIGNAL \MoedasACair|Selector2~0_combout\ : std_logic;
SIGNAL \MoedasACair|NS.E40_464~combout\ : std_logic;
SIGNAL \MoedasACair|PS~17_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E40~q\ : std_logic;
SIGNAL \MoedasACair|NS.E20especial_317~combout\ : std_logic;
SIGNAL \MoedasACair|PS~14_combout\ : std_logic;
SIGNAL \MoedasACair|PS.E20especial~q\ : std_logic;
SIGNAL \MoedasACair|WideOr8~0_combout\ : std_logic;
SIGNAL \MoedasACair|WideOr7~combout\ : std_logic;
SIGNAL \MoedasACair|WideOr7~0_combout\ : std_logic;
SIGNAL \MoedasACair_Displayesq|Mux6~2_combout\ : std_logic;
SIGNAL \MoedasACair_Displayesq|Mux4~4_combout\ : std_logic;
SIGNAL \MoedasACair_Displayesq|Mux3~2_combout\ : std_logic;
SIGNAL \MoedasACair_Displayesq|Mux1~2_combout\ : std_logic;
SIGNAL \troco_esqe|Mux6~0_combout\ : std_logic;
SIGNAL \troco_esqe|Mux5~0_combout\ : std_logic;
SIGNAL \troco_esqe|Mux4~0_combout\ : std_logic;
SIGNAL \troco_esqe|Mux3~0_combout\ : std_logic;
SIGNAL \troco_esqe|Mux2~0_combout\ : std_logic;
SIGNAL \troco_esqe|Mux1~0_combout\ : std_logic;
SIGNAL \troco_esqe|Mux0~0_combout\ : std_logic;
SIGNAL \escolhaproduto|produto_A~combout\ : std_logic;
SIGNAL \escolhaproduto|produto_B~0_combout\ : std_logic;
SIGNAL \escolhaproduto|produto_A~0_combout\ : std_logic;
SIGNAL \escolhaproduto|produto_B~combout\ : std_logic;
SIGNAL \codificadorPr|decodedOut[2]~1_combout\ : std_logic;
SIGNAL \escolhaproduto|NS.E210~0_combout\ : std_logic;
SIGNAL \escolhaproduto|produto_C~combout\ : std_logic;
SIGNAL \escolhaproduto|produto_D~combout\ : std_logic;
SIGNAL \clock_acucar|Add0~1_cout\ : std_logic;
SIGNAL \clock_acucar|Add0~2_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~3\ : std_logic;
SIGNAL \clock_acucar|Add0~4_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~5\ : std_logic;
SIGNAL \clock_acucar|Add0~6_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~7\ : std_logic;
SIGNAL \clock_acucar|Add0~8_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~9\ : std_logic;
SIGNAL \clock_acucar|Add0~10_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~11\ : std_logic;
SIGNAL \clock_acucar|Add0~12_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~0_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~13\ : std_logic;
SIGNAL \clock_acucar|Add0~14_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~15\ : std_logic;
SIGNAL \clock_acucar|Add0~16_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~17\ : std_logic;
SIGNAL \clock_acucar|Add0~18_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~19\ : std_logic;
SIGNAL \clock_acucar|Add0~20_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~21\ : std_logic;
SIGNAL \clock_acucar|Add0~22_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~1_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~23\ : std_logic;
SIGNAL \clock_acucar|Add0~24_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~2_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~25\ : std_logic;
SIGNAL \clock_acucar|Add0~26_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~3_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~27\ : std_logic;
SIGNAL \clock_acucar|Add0~28_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~8_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~29\ : std_logic;
SIGNAL \clock_acucar|Add0~30_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~7_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~31\ : std_logic;
SIGNAL \clock_acucar|Add0~32_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~9_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~33\ : std_logic;
SIGNAL \clock_acucar|Add0~34_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~35\ : std_logic;
SIGNAL \clock_acucar|Add0~36_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~4_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~37\ : std_logic;
SIGNAL \clock_acucar|Add0~38_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~5_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~39\ : std_logic;
SIGNAL \clock_acucar|Add0~40_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~6_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~41\ : std_logic;
SIGNAL \clock_acucar|Add0~42_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~7_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~43\ : std_logic;
SIGNAL \clock_acucar|Add0~44_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~10_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~45\ : std_logic;
SIGNAL \clock_acucar|Add0~46_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~47\ : std_logic;
SIGNAL \clock_acucar|Add0~48_combout\ : std_logic;
SIGNAL \clock_acucar|s_counter~11_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~8_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~49\ : std_logic;
SIGNAL \clock_acucar|Add0~50_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~51\ : std_logic;
SIGNAL \clock_acucar|Add0~52_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~53\ : std_logic;
SIGNAL \clock_acucar|Add0~54_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~55\ : std_logic;
SIGNAL \clock_acucar|Add0~56_combout\ : std_logic;
SIGNAL \clock_acucar|Add0~57\ : std_logic;
SIGNAL \clock_acucar|Add0~58_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~5_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~0_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~3_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~1_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~2_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~4_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~6_combout\ : std_logic;
SIGNAL \clock_acucar|Equal0~9_combout\ : std_logic;
SIGNAL \clock_acucar|clkOut~1_combout\ : std_logic;
SIGNAL \clock_acucar|clkOut~0_combout\ : std_logic;
SIGNAL \clock_acucar|clkOut~2_combout\ : std_logic;
SIGNAL \clock_acucar|clkOut~3_combout\ : std_logic;
SIGNAL \clock_acucar|clkOut~feeder_combout\ : std_logic;
SIGNAL \clock_acucar|clkOut~q\ : std_logic;
SIGNAL \clock_acucar|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \acucar|s_shiftregister[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \acucar|s_shiftregister~1_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister~3_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister~10_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister~11_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \acucar|s_shiftregister~9_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \acucar|s_shiftregister~8_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \acucar|s_shiftregister~7_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \acucar|s_shiftregister~6_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \acucar|s_shiftregister~5_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \acucar|s_shiftregister~4_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \acucar|s_shiftregister[0]~0_combout\ : std_logic;
SIGNAL \acucar|s_shiftregister[0]~2_combout\ : std_logic;
SIGNAL \key1|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \key2|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \key3|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \clockMoedasACair|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \key0|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \time_resetauto|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \escolhaproduto|troco\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \escolhaproduto|s_moeda\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \escolhaproduto|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \escolhaproduto|atual\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \clock_acucar|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \acucar|s_shiftregister\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \troco_esqe|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \MoedasACair|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \MoedasACair|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \produtodisplay|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \atual_meio|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[17]~input_o\ : std_logic;
SIGNAL \escolhaproduto|ALT_INV_atual\ : std_logic_vector(9 DOWNTO 9);
SIGNAL \key3|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \key3|ALT_INV_s_dirtyInput~q\ : std_logic;
SIGNAL \key2|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \key2|ALT_INV_s_dirtyInput~q\ : std_logic;
SIGNAL \key0|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \key0|ALT_INV_s_dirtyInput~q\ : std_logic;
SIGNAL \key1|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \key1|ALT_INV_s_dirtyInput~q\ : std_logic;
SIGNAL \escolhaproduto|ALT_INV_contador_reset~q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\codificadorPr|decodedOut[2]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \codificadorPr|decodedOut[2]~0_combout\);

\clock_acucar|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_acucar|clkOut~q\);

\clockMoedasACair|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockMoedasACair|clkOut~q\);

\escolhaproduto|atual[7]~18clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \escolhaproduto|atual[7]~18_combout\);

\time_resetauto|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \time_resetauto|clkOut~q\);

\MoedasACair|Selector11~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MoedasACair|Selector11~0_combout\);
\troco_esqe|ALT_INV_Mux0~0_combout\ <= NOT \troco_esqe|Mux0~0_combout\;
\MoedasACair|ALT_INV_WideOr7~combout\ <= NOT \MoedasACair|WideOr7~combout\;
\MoedasACair|ALT_INV_WideOr8~0_combout\ <= NOT \MoedasACair|WideOr8~0_combout\;
\produtodisplay|ALT_INV_Mux4~0_combout\ <= NOT \produtodisplay|Mux4~0_combout\;
\atual_meio|ALT_INV_Mux0~0_combout\ <= NOT \atual_meio|Mux0~0_combout\;
\ALT_INV_SW[17]~input_o\ <= NOT \SW[17]~input_o\;
\escolhaproduto|ALT_INV_atual\(9) <= NOT \escolhaproduto|atual\(9);
\key3|ALT_INV_out_proc~0_combout\ <= NOT \key3|out_proc~0_combout\;
\key3|ALT_INV_s_dirtyInput~q\ <= NOT \key3|s_dirtyInput~q\;
\key2|ALT_INV_out_proc~0_combout\ <= NOT \key2|out_proc~0_combout\;
\key2|ALT_INV_s_dirtyInput~q\ <= NOT \key2|s_dirtyInput~q\;
\key0|ALT_INV_out_proc~0_combout\ <= NOT \key0|out_proc~0_combout\;
\key0|ALT_INV_s_dirtyInput~q\ <= NOT \key0|s_dirtyInput~q\;
\key1|ALT_INV_out_proc~0_combout\ <= NOT \key1|out_proc~0_combout\;
\key1|ALT_INV_s_dirtyInput~q\ <= NOT \key1|s_dirtyInput~q\;
\escolhaproduto|ALT_INV_contador_reset~q\ <= NOT \escolhaproduto|contador_reset~q\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_meio|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_meio|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_meio|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_meio|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_meio|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_meio|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_meio|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_esqe|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_esqe|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_esqe|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \escolhaproduto|atual\(8),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual_esqe|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \escolhaproduto|ALT_INV_atual\(9),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \produtodisplay|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \produtodisplay|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \produtodisplay|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \produtodisplay|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \produtodisplay|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \produtodisplay|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair|ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair_Displayesq|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair_Displayesq|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair_Displayesq|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair|WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair_Displayesq|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MoedasACair_Displayesq|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \troco_esqe|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \troco_esqe|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \troco_esqe|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \troco_esqe|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \troco_esqe|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \troco_esqe|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \troco_esqe|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \escolhaproduto|produto_A~combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \escolhaproduto|produto_B~combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \escolhaproduto|produto_C~combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \escolhaproduto|produto_D~combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acucar|s_shiftregister\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acucar|s_shiftregister\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acucar|s_shiftregister\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acucar|s_shiftregister\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acucar|s_shiftregister\(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acucar|s_shiftregister\(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acucar|s_shiftregister\(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acucar|s_shiftregister\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X88_Y66_N2
\time_resetauto|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~0_combout\ = \time_resetauto|s_counter\(0) $ (VCC)
-- \time_resetauto|Add0~1\ = CARRY(\time_resetauto|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(0),
	datad => VCC,
	combout => \time_resetauto|Add0~0_combout\,
	cout => \time_resetauto|Add0~1\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y17_N22
\codificadorPr|decodedOut[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \codificadorPr|decodedOut[2]~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\) # ((\SW[1]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \codificadorPr|decodedOut[2]~0_combout\);

-- Location: CLKCTRL_G7
\codificadorPr|decodedOut[2]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \codificadorPr|decodedOut[2]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \codificadorPr|decodedOut[2]~0clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X97_Y20_N14
\escolhaproduto|contador[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|contador[1]~0_combout\ = \escolhaproduto|contador\(1) $ (\escolhaproduto|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|contador\(0),
	combout => \escolhaproduto|contador[1]~0_combout\);

-- Location: LCCOMB_X99_Y20_N2
\escolhaproduto|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|Equal0~0_combout\ = (\escolhaproduto|contador\(1) & \escolhaproduto|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|contador\(0),
	combout => \escolhaproduto|Equal0~0_combout\);

-- Location: LCCOMB_X99_Y20_N8
\escolhaproduto|contador_reset~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|contador_reset~feeder_combout\ = \escolhaproduto|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \escolhaproduto|Equal0~0_combout\,
	combout => \escolhaproduto|contador_reset~feeder_combout\);

-- Location: FF_X99_Y20_N9
\escolhaproduto|contador_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \escolhaproduto|contador_reset~feeder_combout\,
	ena => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|contador_reset~q\);

-- Location: FF_X97_Y20_N15
\escolhaproduto|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \time_resetauto|clkOut~clkctrl_outclk\,
	d => \escolhaproduto|contador[1]~0_combout\,
	clrn => \escolhaproduto|ALT_INV_contador_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|contador\(1));

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: FF_X115_Y42_N17
\key2|s_dirtyInput\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_dirtyInput~q\);

-- Location: LCCOMB_X81_Y21_N4
\key2|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \key2|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X77_Y21_N2
\key2|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[0]~31_combout\ = \key2|s_debounceCnt\(0) $ (VCC)
-- \key2|s_debounceCnt[0]~32\ = CARRY(\key2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(0),
	datad => VCC,
	combout => \key2|s_debounceCnt[0]~31_combout\,
	cout => \key2|s_debounceCnt[0]~32\);

-- Location: LCCOMB_X87_Y38_N16
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X77_Y21_N3
\key2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(0));

-- Location: LCCOMB_X77_Y21_N4
\key2|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[1]~33_combout\ = (\key2|s_debounceCnt\(1) & (\key2|s_debounceCnt[0]~32\ & VCC)) # (!\key2|s_debounceCnt\(1) & (!\key2|s_debounceCnt[0]~32\))
-- \key2|s_debounceCnt[1]~34\ = CARRY((!\key2|s_debounceCnt\(1) & !\key2|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(1),
	datad => VCC,
	cin => \key2|s_debounceCnt[0]~32\,
	combout => \key2|s_debounceCnt[1]~33_combout\,
	cout => \key2|s_debounceCnt[1]~34\);

-- Location: FF_X77_Y21_N5
\key2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(1));

-- Location: LCCOMB_X77_Y21_N6
\key2|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[2]~35_combout\ = (\key2|s_debounceCnt\(2) & ((GND) # (!\key2|s_debounceCnt[1]~34\))) # (!\key2|s_debounceCnt\(2) & (\key2|s_debounceCnt[1]~34\ $ (GND)))
-- \key2|s_debounceCnt[2]~36\ = CARRY((\key2|s_debounceCnt\(2)) # (!\key2|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(2),
	datad => VCC,
	cin => \key2|s_debounceCnt[1]~34\,
	combout => \key2|s_debounceCnt[2]~35_combout\,
	cout => \key2|s_debounceCnt[2]~36\);

-- Location: FF_X77_Y21_N7
\key2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(2));

-- Location: LCCOMB_X77_Y21_N8
\key2|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[3]~37_combout\ = (\key2|s_debounceCnt\(3) & (\key2|s_debounceCnt[2]~36\ & VCC)) # (!\key2|s_debounceCnt\(3) & (!\key2|s_debounceCnt[2]~36\))
-- \key2|s_debounceCnt[3]~38\ = CARRY((!\key2|s_debounceCnt\(3) & !\key2|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(3),
	datad => VCC,
	cin => \key2|s_debounceCnt[2]~36\,
	combout => \key2|s_debounceCnt[3]~37_combout\,
	cout => \key2|s_debounceCnt[3]~38\);

-- Location: FF_X77_Y21_N9
\key2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(3));

-- Location: LCCOMB_X77_Y21_N10
\key2|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[4]~39_combout\ = (\key2|s_debounceCnt\(4) & ((GND) # (!\key2|s_debounceCnt[3]~38\))) # (!\key2|s_debounceCnt\(4) & (\key2|s_debounceCnt[3]~38\ $ (GND)))
-- \key2|s_debounceCnt[4]~40\ = CARRY((\key2|s_debounceCnt\(4)) # (!\key2|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(4),
	datad => VCC,
	cin => \key2|s_debounceCnt[3]~38\,
	combout => \key2|s_debounceCnt[4]~39_combout\,
	cout => \key2|s_debounceCnt[4]~40\);

-- Location: FF_X77_Y21_N11
\key2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(4));

-- Location: LCCOMB_X77_Y21_N12
\key2|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[5]~41_combout\ = (\key2|s_debounceCnt\(5) & (\key2|s_debounceCnt[4]~40\ & VCC)) # (!\key2|s_debounceCnt\(5) & (!\key2|s_debounceCnt[4]~40\))
-- \key2|s_debounceCnt[5]~42\ = CARRY((!\key2|s_debounceCnt\(5) & !\key2|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(5),
	datad => VCC,
	cin => \key2|s_debounceCnt[4]~40\,
	combout => \key2|s_debounceCnt[5]~41_combout\,
	cout => \key2|s_debounceCnt[5]~42\);

-- Location: FF_X77_Y21_N13
\key2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(5));

-- Location: LCCOMB_X77_Y21_N14
\key2|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[6]~43_combout\ = (\key2|s_debounceCnt\(6) & ((GND) # (!\key2|s_debounceCnt[5]~42\))) # (!\key2|s_debounceCnt\(6) & (\key2|s_debounceCnt[5]~42\ $ (GND)))
-- \key2|s_debounceCnt[6]~44\ = CARRY((\key2|s_debounceCnt\(6)) # (!\key2|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(6),
	datad => VCC,
	cin => \key2|s_debounceCnt[5]~42\,
	combout => \key2|s_debounceCnt[6]~43_combout\,
	cout => \key2|s_debounceCnt[6]~44\);

-- Location: FF_X77_Y21_N15
\key2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[6]~43_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(6));

-- Location: LCCOMB_X77_Y21_N16
\key2|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[7]~45_combout\ = (\key2|s_debounceCnt\(7) & (\key2|s_debounceCnt[6]~44\ & VCC)) # (!\key2|s_debounceCnt\(7) & (!\key2|s_debounceCnt[6]~44\))
-- \key2|s_debounceCnt[7]~46\ = CARRY((!\key2|s_debounceCnt\(7) & !\key2|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(7),
	datad => VCC,
	cin => \key2|s_debounceCnt[6]~44\,
	combout => \key2|s_debounceCnt[7]~45_combout\,
	cout => \key2|s_debounceCnt[7]~46\);

-- Location: FF_X77_Y21_N17
\key2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[7]~45_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(7));

-- Location: LCCOMB_X77_Y21_N18
\key2|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[8]~47_combout\ = (\key2|s_debounceCnt\(8) & ((GND) # (!\key2|s_debounceCnt[7]~46\))) # (!\key2|s_debounceCnt\(8) & (\key2|s_debounceCnt[7]~46\ $ (GND)))
-- \key2|s_debounceCnt[8]~48\ = CARRY((\key2|s_debounceCnt\(8)) # (!\key2|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(8),
	datad => VCC,
	cin => \key2|s_debounceCnt[7]~46\,
	combout => \key2|s_debounceCnt[8]~47_combout\,
	cout => \key2|s_debounceCnt[8]~48\);

-- Location: FF_X77_Y21_N19
\key2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[8]~47_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(8));

-- Location: LCCOMB_X77_Y21_N20
\key2|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[9]~49_combout\ = (\key2|s_debounceCnt\(9) & (\key2|s_debounceCnt[8]~48\ & VCC)) # (!\key2|s_debounceCnt\(9) & (!\key2|s_debounceCnt[8]~48\))
-- \key2|s_debounceCnt[9]~50\ = CARRY((!\key2|s_debounceCnt\(9) & !\key2|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(9),
	datad => VCC,
	cin => \key2|s_debounceCnt[8]~48\,
	combout => \key2|s_debounceCnt[9]~49_combout\,
	cout => \key2|s_debounceCnt[9]~50\);

-- Location: FF_X77_Y21_N21
\key2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[9]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(9));

-- Location: LCCOMB_X77_Y21_N22
\key2|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[10]~51_combout\ = (\key2|s_debounceCnt\(10) & ((GND) # (!\key2|s_debounceCnt[9]~50\))) # (!\key2|s_debounceCnt\(10) & (\key2|s_debounceCnt[9]~50\ $ (GND)))
-- \key2|s_debounceCnt[10]~52\ = CARRY((\key2|s_debounceCnt\(10)) # (!\key2|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(10),
	datad => VCC,
	cin => \key2|s_debounceCnt[9]~50\,
	combout => \key2|s_debounceCnt[10]~51_combout\,
	cout => \key2|s_debounceCnt[10]~52\);

-- Location: FF_X77_Y21_N23
\key2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(10));

-- Location: LCCOMB_X77_Y21_N24
\key2|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[11]~53_combout\ = (\key2|s_debounceCnt\(11) & (\key2|s_debounceCnt[10]~52\ & VCC)) # (!\key2|s_debounceCnt\(11) & (!\key2|s_debounceCnt[10]~52\))
-- \key2|s_debounceCnt[11]~54\ = CARRY((!\key2|s_debounceCnt\(11) & !\key2|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(11),
	datad => VCC,
	cin => \key2|s_debounceCnt[10]~52\,
	combout => \key2|s_debounceCnt[11]~53_combout\,
	cout => \key2|s_debounceCnt[11]~54\);

-- Location: FF_X77_Y21_N25
\key2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[11]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(11));

-- Location: LCCOMB_X77_Y21_N26
\key2|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[12]~55_combout\ = (\key2|s_debounceCnt\(12) & ((GND) # (!\key2|s_debounceCnt[11]~54\))) # (!\key2|s_debounceCnt\(12) & (\key2|s_debounceCnt[11]~54\ $ (GND)))
-- \key2|s_debounceCnt[12]~56\ = CARRY((\key2|s_debounceCnt\(12)) # (!\key2|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(12),
	datad => VCC,
	cin => \key2|s_debounceCnt[11]~54\,
	combout => \key2|s_debounceCnt[12]~55_combout\,
	cout => \key2|s_debounceCnt[12]~56\);

-- Location: FF_X77_Y21_N27
\key2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(12));

-- Location: LCCOMB_X77_Y21_N28
\key2|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[13]~57_combout\ = (\key2|s_debounceCnt\(13) & (\key2|s_debounceCnt[12]~56\ & VCC)) # (!\key2|s_debounceCnt\(13) & (!\key2|s_debounceCnt[12]~56\))
-- \key2|s_debounceCnt[13]~58\ = CARRY((!\key2|s_debounceCnt\(13) & !\key2|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(13),
	datad => VCC,
	cin => \key2|s_debounceCnt[12]~56\,
	combout => \key2|s_debounceCnt[13]~57_combout\,
	cout => \key2|s_debounceCnt[13]~58\);

-- Location: FF_X77_Y21_N29
\key2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[13]~57_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(13));

-- Location: LCCOMB_X77_Y21_N30
\key2|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[14]~59_combout\ = (\key2|s_debounceCnt\(14) & ((GND) # (!\key2|s_debounceCnt[13]~58\))) # (!\key2|s_debounceCnt\(14) & (\key2|s_debounceCnt[13]~58\ $ (GND)))
-- \key2|s_debounceCnt[14]~60\ = CARRY((\key2|s_debounceCnt\(14)) # (!\key2|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(14),
	datad => VCC,
	cin => \key2|s_debounceCnt[13]~58\,
	combout => \key2|s_debounceCnt[14]~59_combout\,
	cout => \key2|s_debounceCnt[14]~60\);

-- Location: FF_X77_Y21_N31
\key2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[14]~59_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(14));

-- Location: LCCOMB_X77_Y20_N0
\key2|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[15]~61_combout\ = (\key2|s_debounceCnt\(15) & (\key2|s_debounceCnt[14]~60\ & VCC)) # (!\key2|s_debounceCnt\(15) & (!\key2|s_debounceCnt[14]~60\))
-- \key2|s_debounceCnt[15]~62\ = CARRY((!\key2|s_debounceCnt\(15) & !\key2|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(15),
	datad => VCC,
	cin => \key2|s_debounceCnt[14]~60\,
	combout => \key2|s_debounceCnt[15]~61_combout\,
	cout => \key2|s_debounceCnt[15]~62\);

-- Location: LCCOMB_X76_Y21_N12
\key2|s_debounceCnt[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[15]~feeder_combout\ = \key2|s_debounceCnt[15]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key2|s_debounceCnt[15]~61_combout\,
	combout => \key2|s_debounceCnt[15]~feeder_combout\);

-- Location: FF_X76_Y21_N13
\key2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[15]~feeder_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(15));

-- Location: LCCOMB_X77_Y20_N2
\key2|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[16]~63_combout\ = (\key2|s_debounceCnt\(16) & ((GND) # (!\key2|s_debounceCnt[15]~62\))) # (!\key2|s_debounceCnt\(16) & (\key2|s_debounceCnt[15]~62\ $ (GND)))
-- \key2|s_debounceCnt[16]~64\ = CARRY((\key2|s_debounceCnt\(16)) # (!\key2|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(16),
	datad => VCC,
	cin => \key2|s_debounceCnt[15]~62\,
	combout => \key2|s_debounceCnt[16]~63_combout\,
	cout => \key2|s_debounceCnt[16]~64\);

-- Location: FF_X77_Y20_N3
\key2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(16));

-- Location: LCCOMB_X77_Y20_N4
\key2|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[17]~65_combout\ = (\key2|s_debounceCnt\(17) & (\key2|s_debounceCnt[16]~64\ & VCC)) # (!\key2|s_debounceCnt\(17) & (!\key2|s_debounceCnt[16]~64\))
-- \key2|s_debounceCnt[17]~66\ = CARRY((!\key2|s_debounceCnt\(17) & !\key2|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(17),
	datad => VCC,
	cin => \key2|s_debounceCnt[16]~64\,
	combout => \key2|s_debounceCnt[17]~65_combout\,
	cout => \key2|s_debounceCnt[17]~66\);

-- Location: FF_X77_Y20_N5
\key2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(17));

-- Location: LCCOMB_X77_Y20_N6
\key2|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[18]~67_combout\ = (\key2|s_debounceCnt\(18) & ((GND) # (!\key2|s_debounceCnt[17]~66\))) # (!\key2|s_debounceCnt\(18) & (\key2|s_debounceCnt[17]~66\ $ (GND)))
-- \key2|s_debounceCnt[18]~68\ = CARRY((\key2|s_debounceCnt\(18)) # (!\key2|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(18),
	datad => VCC,
	cin => \key2|s_debounceCnt[17]~66\,
	combout => \key2|s_debounceCnt[18]~67_combout\,
	cout => \key2|s_debounceCnt[18]~68\);

-- Location: FF_X77_Y20_N7
\key2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[18]~67_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(18));

-- Location: LCCOMB_X77_Y20_N8
\key2|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[19]~69_combout\ = (\key2|s_debounceCnt\(19) & (\key2|s_debounceCnt[18]~68\ & VCC)) # (!\key2|s_debounceCnt\(19) & (!\key2|s_debounceCnt[18]~68\))
-- \key2|s_debounceCnt[19]~70\ = CARRY((!\key2|s_debounceCnt\(19) & !\key2|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(19),
	datad => VCC,
	cin => \key2|s_debounceCnt[18]~68\,
	combout => \key2|s_debounceCnt[19]~69_combout\,
	cout => \key2|s_debounceCnt[19]~70\);

-- Location: FF_X77_Y20_N9
\key2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[19]~69_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(19));

-- Location: LCCOMB_X76_Y21_N22
\key2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~5_combout\ = (!\key2|s_debounceCnt\(19) & (!\key2|s_debounceCnt\(18) & (!\key2|s_debounceCnt\(16) & !\key2|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(19),
	datab => \key2|s_debounceCnt\(18),
	datac => \key2|s_debounceCnt\(16),
	datad => \key2|s_debounceCnt\(17),
	combout => \key2|Equal0~5_combout\);

-- Location: LCCOMB_X77_Y20_N10
\key2|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[20]~71_combout\ = (\key2|s_debounceCnt\(20) & ((GND) # (!\key2|s_debounceCnt[19]~70\))) # (!\key2|s_debounceCnt\(20) & (\key2|s_debounceCnt[19]~70\ $ (GND)))
-- \key2|s_debounceCnt[20]~72\ = CARRY((\key2|s_debounceCnt\(20)) # (!\key2|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(20),
	datad => VCC,
	cin => \key2|s_debounceCnt[19]~70\,
	combout => \key2|s_debounceCnt[20]~71_combout\,
	cout => \key2|s_debounceCnt[20]~72\);

-- Location: FF_X77_Y20_N11
\key2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(20));

-- Location: LCCOMB_X77_Y20_N12
\key2|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[21]~73_combout\ = (\key2|s_debounceCnt\(21) & (\key2|s_debounceCnt[20]~72\ & VCC)) # (!\key2|s_debounceCnt\(21) & (!\key2|s_debounceCnt[20]~72\))
-- \key2|s_debounceCnt[21]~74\ = CARRY((!\key2|s_debounceCnt\(21) & !\key2|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(21),
	datad => VCC,
	cin => \key2|s_debounceCnt[20]~72\,
	combout => \key2|s_debounceCnt[21]~73_combout\,
	cout => \key2|s_debounceCnt[21]~74\);

-- Location: FF_X77_Y20_N13
\key2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[21]~73_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(21));

-- Location: LCCOMB_X77_Y20_N14
\key2|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[22]~75_combout\ = (\key2|s_debounceCnt\(22) & ((GND) # (!\key2|s_debounceCnt[21]~74\))) # (!\key2|s_debounceCnt\(22) & (\key2|s_debounceCnt[21]~74\ $ (GND)))
-- \key2|s_debounceCnt[22]~76\ = CARRY((\key2|s_debounceCnt\(22)) # (!\key2|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(22),
	datad => VCC,
	cin => \key2|s_debounceCnt[21]~74\,
	combout => \key2|s_debounceCnt[22]~75_combout\,
	cout => \key2|s_debounceCnt[22]~76\);

-- Location: FF_X77_Y20_N15
\key2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[22]~75_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(22));

-- Location: LCCOMB_X77_Y20_N16
\key2|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[23]~77_combout\ = (\key2|s_debounceCnt\(23) & (\key2|s_debounceCnt[22]~76\ & VCC)) # (!\key2|s_debounceCnt\(23) & (!\key2|s_debounceCnt[22]~76\))
-- \key2|s_debounceCnt[23]~78\ = CARRY((!\key2|s_debounceCnt\(23) & !\key2|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(23),
	datad => VCC,
	cin => \key2|s_debounceCnt[22]~76\,
	combout => \key2|s_debounceCnt[23]~77_combout\,
	cout => \key2|s_debounceCnt[23]~78\);

-- Location: FF_X77_Y20_N17
\key2|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[23]~77_combout\,
	asdata => \key2|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(23));

-- Location: LCCOMB_X76_Y21_N24
\key2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~6_combout\ = (!\key2|s_debounceCnt\(21) & (!\key2|s_debounceCnt\(20) & (!\key2|s_debounceCnt\(22) & !\key2|s_debounceCnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(21),
	datab => \key2|s_debounceCnt\(20),
	datac => \key2|s_debounceCnt\(22),
	datad => \key2|s_debounceCnt\(23),
	combout => \key2|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y21_N30
\key2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~0_combout\ = (!\key2|s_debounceCnt\(1) & (!\key2|s_debounceCnt\(3) & (!\key2|s_debounceCnt\(0) & !\key2|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(1),
	datab => \key2|s_debounceCnt\(3),
	datac => \key2|s_debounceCnt\(0),
	datad => \key2|s_debounceCnt\(2),
	combout => \key2|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y21_N18
\key2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~3_combout\ = (!\key2|s_debounceCnt\(15) & (!\key2|s_debounceCnt\(13) & (!\key2|s_debounceCnt\(12) & !\key2|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(15),
	datab => \key2|s_debounceCnt\(13),
	datac => \key2|s_debounceCnt\(12),
	datad => \key2|s_debounceCnt\(14),
	combout => \key2|Equal0~3_combout\);

-- Location: LCCOMB_X77_Y21_N0
\key2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~2_combout\ = (!\key2|s_debounceCnt\(10) & (!\key2|s_debounceCnt\(9) & (!\key2|s_debounceCnt\(11) & !\key2|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(10),
	datab => \key2|s_debounceCnt\(9),
	datac => \key2|s_debounceCnt\(11),
	datad => \key2|s_debounceCnt\(8),
	combout => \key2|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y21_N20
\key2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~1_combout\ = (!\key2|s_debounceCnt\(6) & (!\key2|s_debounceCnt\(4) & (!\key2|s_debounceCnt\(5) & !\key2|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(6),
	datab => \key2|s_debounceCnt\(4),
	datac => \key2|s_debounceCnt\(5),
	datad => \key2|s_debounceCnt\(7),
	combout => \key2|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y21_N4
\key2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~4_combout\ = (\key2|Equal0~0_combout\ & (\key2|Equal0~3_combout\ & (\key2|Equal0~2_combout\ & \key2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|Equal0~0_combout\,
	datab => \key2|Equal0~3_combout\,
	datac => \key2|Equal0~2_combout\,
	datad => \key2|Equal0~1_combout\,
	combout => \key2|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y20_N18
\key2|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[24]~79_combout\ = (\key2|s_debounceCnt\(24) & ((GND) # (!\key2|s_debounceCnt[23]~78\))) # (!\key2|s_debounceCnt\(24) & (\key2|s_debounceCnt[23]~78\ $ (GND)))
-- \key2|s_debounceCnt[24]~80\ = CARRY((\key2|s_debounceCnt\(24)) # (!\key2|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(24),
	datad => VCC,
	cin => \key2|s_debounceCnt[23]~78\,
	combout => \key2|s_debounceCnt[24]~79_combout\,
	cout => \key2|s_debounceCnt[24]~80\);

-- Location: FF_X77_Y20_N19
\key2|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(24));

-- Location: LCCOMB_X77_Y20_N20
\key2|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[25]~81_combout\ = (\key2|s_debounceCnt\(25) & (\key2|s_debounceCnt[24]~80\ & VCC)) # (!\key2|s_debounceCnt\(25) & (!\key2|s_debounceCnt[24]~80\))
-- \key2|s_debounceCnt[25]~82\ = CARRY((!\key2|s_debounceCnt\(25) & !\key2|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(25),
	datad => VCC,
	cin => \key2|s_debounceCnt[24]~80\,
	combout => \key2|s_debounceCnt[25]~81_combout\,
	cout => \key2|s_debounceCnt[25]~82\);

-- Location: FF_X77_Y20_N21
\key2|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(25));

-- Location: LCCOMB_X77_Y20_N22
\key2|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[26]~83_combout\ = (\key2|s_debounceCnt\(26) & ((GND) # (!\key2|s_debounceCnt[25]~82\))) # (!\key2|s_debounceCnt\(26) & (\key2|s_debounceCnt[25]~82\ $ (GND)))
-- \key2|s_debounceCnt[26]~84\ = CARRY((\key2|s_debounceCnt\(26)) # (!\key2|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(26),
	datad => VCC,
	cin => \key2|s_debounceCnt[25]~82\,
	combout => \key2|s_debounceCnt[26]~83_combout\,
	cout => \key2|s_debounceCnt[26]~84\);

-- Location: FF_X77_Y20_N23
\key2|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(26));

-- Location: LCCOMB_X77_Y20_N24
\key2|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[27]~85_combout\ = (\key2|s_debounceCnt\(27) & (\key2|s_debounceCnt[26]~84\ & VCC)) # (!\key2|s_debounceCnt\(27) & (!\key2|s_debounceCnt[26]~84\))
-- \key2|s_debounceCnt[27]~86\ = CARRY((!\key2|s_debounceCnt\(27) & !\key2|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(27),
	datad => VCC,
	cin => \key2|s_debounceCnt[26]~84\,
	combout => \key2|s_debounceCnt[27]~85_combout\,
	cout => \key2|s_debounceCnt[27]~86\);

-- Location: FF_X77_Y20_N25
\key2|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(27));

-- Location: LCCOMB_X77_Y20_N26
\key2|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[28]~87_combout\ = (\key2|s_debounceCnt\(28) & ((GND) # (!\key2|s_debounceCnt[27]~86\))) # (!\key2|s_debounceCnt\(28) & (\key2|s_debounceCnt[27]~86\ $ (GND)))
-- \key2|s_debounceCnt[28]~88\ = CARRY((\key2|s_debounceCnt\(28)) # (!\key2|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(28),
	datad => VCC,
	cin => \key2|s_debounceCnt[27]~86\,
	combout => \key2|s_debounceCnt[28]~87_combout\,
	cout => \key2|s_debounceCnt[28]~88\);

-- Location: FF_X77_Y20_N27
\key2|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(28));

-- Location: LCCOMB_X77_Y20_N28
\key2|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[29]~89_combout\ = (\key2|s_debounceCnt\(29) & (\key2|s_debounceCnt[28]~88\ & VCC)) # (!\key2|s_debounceCnt\(29) & (!\key2|s_debounceCnt[28]~88\))
-- \key2|s_debounceCnt[29]~90\ = CARRY((!\key2|s_debounceCnt\(29) & !\key2|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key2|s_debounceCnt\(29),
	datad => VCC,
	cin => \key2|s_debounceCnt[28]~88\,
	combout => \key2|s_debounceCnt[29]~89_combout\,
	cout => \key2|s_debounceCnt[29]~90\);

-- Location: FF_X77_Y20_N29
\key2|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(29));

-- Location: LCCOMB_X77_Y20_N30
\key2|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_debounceCnt[30]~91_combout\ = \key2|s_debounceCnt\(30) $ (\key2|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(30),
	cin => \key2|s_debounceCnt[29]~90\,
	combout => \key2|s_debounceCnt[30]~91_combout\);

-- Location: FF_X77_Y20_N31
\key2|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key2|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_debounceCnt\(30));

-- Location: LCCOMB_X76_Y21_N10
\key2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~7_combout\ = (!\key2|s_debounceCnt\(24) & (!\key2|s_debounceCnt\(26) & (!\key2|s_debounceCnt\(27) & !\key2|s_debounceCnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(24),
	datab => \key2|s_debounceCnt\(26),
	datac => \key2|s_debounceCnt\(27),
	datad => \key2|s_debounceCnt\(25),
	combout => \key2|Equal0~7_combout\);

-- Location: LCCOMB_X76_Y21_N28
\key2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~8_combout\ = (!\key2|s_debounceCnt\(28) & (!\key2|s_debounceCnt\(30) & (!\key2|s_debounceCnt\(29) & \key2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|s_debounceCnt\(28),
	datab => \key2|s_debounceCnt\(30),
	datac => \key2|s_debounceCnt\(29),
	datad => \key2|Equal0~7_combout\,
	combout => \key2|Equal0~8_combout\);

-- Location: LCCOMB_X76_Y21_N26
\key2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|Equal0~9_combout\ = (\key2|Equal0~5_combout\ & (\key2|Equal0~6_combout\ & (\key2|Equal0~4_combout\ & \key2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2|Equal0~5_combout\,
	datab => \key2|Equal0~6_combout\,
	datac => \key2|Equal0~4_combout\,
	datad => \key2|Equal0~8_combout\,
	combout => \key2|Equal0~9_combout\);

-- Location: LCCOMB_X81_Y21_N2
\key2|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|s_resetPulse~0_combout\ = (\key2|s_pulsedOut~q\) # (!\key2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key2|s_pulsedOut~q\,
	datad => \key2|Equal0~9_combout\,
	combout => \key2|s_resetPulse~0_combout\);

-- Location: FF_X81_Y21_N3
\key2|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key2|s_resetPulse~0_combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_resetPulse~q\);

-- Location: LCCOMB_X81_Y21_N0
\key2|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key2|out_proc~0_combout\ = (\SW[17]~input_o\) # (\key2|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \key2|s_resetPulse~q\,
	combout => \key2|out_proc~0_combout\);

-- Location: FF_X81_Y21_N5
\key2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key2|ALT_INV_s_dirtyInput~q\,
	d => \key2|s_pulsedOut~feeder_combout\,
	clrn => \key2|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2|s_pulsedOut~q\);

-- Location: LCCOMB_X98_Y20_N22
\escolhaproduto|PS~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~46_combout\ = (!\SW[17]~input_o\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \escolhaproduto|contador\(0),
	datad => \escolhaproduto|contador\(1),
	combout => \escolhaproduto|PS~46_combout\);

-- Location: FF_X98_Y20_N23
\escolhaproduto|s_moeda[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \key2|s_pulsedOut~q\,
	sload => VCC,
	ena => \escolhaproduto|PS~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|s_moeda\(2));

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: FF_X115_Y35_N24
\key3|s_dirtyInput\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_dirtyInput~q\);

-- Location: LCCOMB_X97_Y22_N0
\key3|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \key3|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X98_Y23_N2
\key3|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[0]~31_combout\ = \key3|s_debounceCnt\(0) $ (VCC)
-- \key3|s_debounceCnt[0]~32\ = CARRY(\key3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(0),
	datad => VCC,
	combout => \key3|s_debounceCnt[0]~31_combout\,
	cout => \key3|s_debounceCnt[0]~32\);

-- Location: FF_X98_Y23_N3
\key3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y23_N4
\key3|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[1]~33_combout\ = (\key3|s_debounceCnt\(1) & (\key3|s_debounceCnt[0]~32\ & VCC)) # (!\key3|s_debounceCnt\(1) & (!\key3|s_debounceCnt[0]~32\))
-- \key3|s_debounceCnt[1]~34\ = CARRY((!\key3|s_debounceCnt\(1) & !\key3|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(1),
	datad => VCC,
	cin => \key3|s_debounceCnt[0]~32\,
	combout => \key3|s_debounceCnt[1]~33_combout\,
	cout => \key3|s_debounceCnt[1]~34\);

-- Location: FF_X98_Y23_N5
\key3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y23_N6
\key3|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[2]~35_combout\ = (\key3|s_debounceCnt\(2) & ((GND) # (!\key3|s_debounceCnt[1]~34\))) # (!\key3|s_debounceCnt\(2) & (\key3|s_debounceCnt[1]~34\ $ (GND)))
-- \key3|s_debounceCnt[2]~36\ = CARRY((\key3|s_debounceCnt\(2)) # (!\key3|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(2),
	datad => VCC,
	cin => \key3|s_debounceCnt[1]~34\,
	combout => \key3|s_debounceCnt[2]~35_combout\,
	cout => \key3|s_debounceCnt[2]~36\);

-- Location: FF_X98_Y23_N7
\key3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(2));

-- Location: LCCOMB_X98_Y23_N8
\key3|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[3]~37_combout\ = (\key3|s_debounceCnt\(3) & (\key3|s_debounceCnt[2]~36\ & VCC)) # (!\key3|s_debounceCnt\(3) & (!\key3|s_debounceCnt[2]~36\))
-- \key3|s_debounceCnt[3]~38\ = CARRY((!\key3|s_debounceCnt\(3) & !\key3|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(3),
	datad => VCC,
	cin => \key3|s_debounceCnt[2]~36\,
	combout => \key3|s_debounceCnt[3]~37_combout\,
	cout => \key3|s_debounceCnt[3]~38\);

-- Location: FF_X98_Y23_N9
\key3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(3));

-- Location: LCCOMB_X98_Y23_N10
\key3|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[4]~39_combout\ = (\key3|s_debounceCnt\(4) & ((GND) # (!\key3|s_debounceCnt[3]~38\))) # (!\key3|s_debounceCnt\(4) & (\key3|s_debounceCnt[3]~38\ $ (GND)))
-- \key3|s_debounceCnt[4]~40\ = CARRY((\key3|s_debounceCnt\(4)) # (!\key3|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(4),
	datad => VCC,
	cin => \key3|s_debounceCnt[3]~38\,
	combout => \key3|s_debounceCnt[4]~39_combout\,
	cout => \key3|s_debounceCnt[4]~40\);

-- Location: FF_X98_Y23_N11
\key3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y23_N12
\key3|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[5]~41_combout\ = (\key3|s_debounceCnt\(5) & (\key3|s_debounceCnt[4]~40\ & VCC)) # (!\key3|s_debounceCnt\(5) & (!\key3|s_debounceCnt[4]~40\))
-- \key3|s_debounceCnt[5]~42\ = CARRY((!\key3|s_debounceCnt\(5) & !\key3|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(5),
	datad => VCC,
	cin => \key3|s_debounceCnt[4]~40\,
	combout => \key3|s_debounceCnt[5]~41_combout\,
	cout => \key3|s_debounceCnt[5]~42\);

-- Location: FF_X98_Y23_N13
\key3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y23_N14
\key3|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[6]~43_combout\ = (\key3|s_debounceCnt\(6) & ((GND) # (!\key3|s_debounceCnt[5]~42\))) # (!\key3|s_debounceCnt\(6) & (\key3|s_debounceCnt[5]~42\ $ (GND)))
-- \key3|s_debounceCnt[6]~44\ = CARRY((\key3|s_debounceCnt\(6)) # (!\key3|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(6),
	datad => VCC,
	cin => \key3|s_debounceCnt[5]~42\,
	combout => \key3|s_debounceCnt[6]~43_combout\,
	cout => \key3|s_debounceCnt[6]~44\);

-- Location: FF_X98_Y23_N15
\key3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[6]~43_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y23_N16
\key3|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[7]~45_combout\ = (\key3|s_debounceCnt\(7) & (\key3|s_debounceCnt[6]~44\ & VCC)) # (!\key3|s_debounceCnt\(7) & (!\key3|s_debounceCnt[6]~44\))
-- \key3|s_debounceCnt[7]~46\ = CARRY((!\key3|s_debounceCnt\(7) & !\key3|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(7),
	datad => VCC,
	cin => \key3|s_debounceCnt[6]~44\,
	combout => \key3|s_debounceCnt[7]~45_combout\,
	cout => \key3|s_debounceCnt[7]~46\);

-- Location: FF_X98_Y23_N17
\key3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[7]~45_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y23_N18
\key3|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[8]~47_combout\ = (\key3|s_debounceCnt\(8) & ((GND) # (!\key3|s_debounceCnt[7]~46\))) # (!\key3|s_debounceCnt\(8) & (\key3|s_debounceCnt[7]~46\ $ (GND)))
-- \key3|s_debounceCnt[8]~48\ = CARRY((\key3|s_debounceCnt\(8)) # (!\key3|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(8),
	datad => VCC,
	cin => \key3|s_debounceCnt[7]~46\,
	combout => \key3|s_debounceCnt[8]~47_combout\,
	cout => \key3|s_debounceCnt[8]~48\);

-- Location: FF_X98_Y23_N19
\key3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[8]~47_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(8));

-- Location: LCCOMB_X98_Y23_N20
\key3|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[9]~49_combout\ = (\key3|s_debounceCnt\(9) & (\key3|s_debounceCnt[8]~48\ & VCC)) # (!\key3|s_debounceCnt\(9) & (!\key3|s_debounceCnt[8]~48\))
-- \key3|s_debounceCnt[9]~50\ = CARRY((!\key3|s_debounceCnt\(9) & !\key3|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(9),
	datad => VCC,
	cin => \key3|s_debounceCnt[8]~48\,
	combout => \key3|s_debounceCnt[9]~49_combout\,
	cout => \key3|s_debounceCnt[9]~50\);

-- Location: FF_X98_Y23_N21
\key3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[9]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y23_N22
\key3|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[10]~51_combout\ = (\key3|s_debounceCnt\(10) & ((GND) # (!\key3|s_debounceCnt[9]~50\))) # (!\key3|s_debounceCnt\(10) & (\key3|s_debounceCnt[9]~50\ $ (GND)))
-- \key3|s_debounceCnt[10]~52\ = CARRY((\key3|s_debounceCnt\(10)) # (!\key3|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(10),
	datad => VCC,
	cin => \key3|s_debounceCnt[9]~50\,
	combout => \key3|s_debounceCnt[10]~51_combout\,
	cout => \key3|s_debounceCnt[10]~52\);

-- Location: FF_X98_Y23_N23
\key3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y23_N24
\key3|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[11]~53_combout\ = (\key3|s_debounceCnt\(11) & (\key3|s_debounceCnt[10]~52\ & VCC)) # (!\key3|s_debounceCnt\(11) & (!\key3|s_debounceCnt[10]~52\))
-- \key3|s_debounceCnt[11]~54\ = CARRY((!\key3|s_debounceCnt\(11) & !\key3|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(11),
	datad => VCC,
	cin => \key3|s_debounceCnt[10]~52\,
	combout => \key3|s_debounceCnt[11]~53_combout\,
	cout => \key3|s_debounceCnt[11]~54\);

-- Location: FF_X98_Y23_N25
\key3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[11]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(11));

-- Location: LCCOMB_X98_Y23_N26
\key3|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[12]~55_combout\ = (\key3|s_debounceCnt\(12) & ((GND) # (!\key3|s_debounceCnt[11]~54\))) # (!\key3|s_debounceCnt\(12) & (\key3|s_debounceCnt[11]~54\ $ (GND)))
-- \key3|s_debounceCnt[12]~56\ = CARRY((\key3|s_debounceCnt\(12)) # (!\key3|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(12),
	datad => VCC,
	cin => \key3|s_debounceCnt[11]~54\,
	combout => \key3|s_debounceCnt[12]~55_combout\,
	cout => \key3|s_debounceCnt[12]~56\);

-- Location: FF_X98_Y23_N27
\key3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(12));

-- Location: LCCOMB_X98_Y23_N28
\key3|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[13]~57_combout\ = (\key3|s_debounceCnt\(13) & (\key3|s_debounceCnt[12]~56\ & VCC)) # (!\key3|s_debounceCnt\(13) & (!\key3|s_debounceCnt[12]~56\))
-- \key3|s_debounceCnt[13]~58\ = CARRY((!\key3|s_debounceCnt\(13) & !\key3|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(13),
	datad => VCC,
	cin => \key3|s_debounceCnt[12]~56\,
	combout => \key3|s_debounceCnt[13]~57_combout\,
	cout => \key3|s_debounceCnt[13]~58\);

-- Location: FF_X98_Y23_N29
\key3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[13]~57_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y23_N30
\key3|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[14]~59_combout\ = (\key3|s_debounceCnt\(14) & ((GND) # (!\key3|s_debounceCnt[13]~58\))) # (!\key3|s_debounceCnt\(14) & (\key3|s_debounceCnt[13]~58\ $ (GND)))
-- \key3|s_debounceCnt[14]~60\ = CARRY((\key3|s_debounceCnt\(14)) # (!\key3|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(14),
	datad => VCC,
	cin => \key3|s_debounceCnt[13]~58\,
	combout => \key3|s_debounceCnt[14]~59_combout\,
	cout => \key3|s_debounceCnt[14]~60\);

-- Location: FF_X98_Y23_N31
\key3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[14]~59_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y22_N0
\key3|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[15]~61_combout\ = (\key3|s_debounceCnt\(15) & (\key3|s_debounceCnt[14]~60\ & VCC)) # (!\key3|s_debounceCnt\(15) & (!\key3|s_debounceCnt[14]~60\))
-- \key3|s_debounceCnt[15]~62\ = CARRY((!\key3|s_debounceCnt\(15) & !\key3|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(15),
	datad => VCC,
	cin => \key3|s_debounceCnt[14]~60\,
	combout => \key3|s_debounceCnt[15]~61_combout\,
	cout => \key3|s_debounceCnt[15]~62\);

-- Location: FF_X98_Y22_N1
\key3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[15]~61_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(15));

-- Location: LCCOMB_X98_Y22_N2
\key3|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[16]~63_combout\ = (\key3|s_debounceCnt\(16) & ((GND) # (!\key3|s_debounceCnt[15]~62\))) # (!\key3|s_debounceCnt\(16) & (\key3|s_debounceCnt[15]~62\ $ (GND)))
-- \key3|s_debounceCnt[16]~64\ = CARRY((\key3|s_debounceCnt\(16)) # (!\key3|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(16),
	datad => VCC,
	cin => \key3|s_debounceCnt[15]~62\,
	combout => \key3|s_debounceCnt[16]~63_combout\,
	cout => \key3|s_debounceCnt[16]~64\);

-- Location: FF_X98_Y22_N3
\key3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y22_N4
\key3|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[17]~65_combout\ = (\key3|s_debounceCnt\(17) & (\key3|s_debounceCnt[16]~64\ & VCC)) # (!\key3|s_debounceCnt\(17) & (!\key3|s_debounceCnt[16]~64\))
-- \key3|s_debounceCnt[17]~66\ = CARRY((!\key3|s_debounceCnt\(17) & !\key3|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(17),
	datad => VCC,
	cin => \key3|s_debounceCnt[16]~64\,
	combout => \key3|s_debounceCnt[17]~65_combout\,
	cout => \key3|s_debounceCnt[17]~66\);

-- Location: FF_X98_Y22_N5
\key3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(17));

-- Location: LCCOMB_X98_Y22_N6
\key3|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[18]~67_combout\ = (\key3|s_debounceCnt\(18) & ((GND) # (!\key3|s_debounceCnt[17]~66\))) # (!\key3|s_debounceCnt\(18) & (\key3|s_debounceCnt[17]~66\ $ (GND)))
-- \key3|s_debounceCnt[18]~68\ = CARRY((\key3|s_debounceCnt\(18)) # (!\key3|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(18),
	datad => VCC,
	cin => \key3|s_debounceCnt[17]~66\,
	combout => \key3|s_debounceCnt[18]~67_combout\,
	cout => \key3|s_debounceCnt[18]~68\);

-- Location: FF_X98_Y22_N7
\key3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[18]~67_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(18));

-- Location: LCCOMB_X98_Y22_N8
\key3|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[19]~69_combout\ = (\key3|s_debounceCnt\(19) & (\key3|s_debounceCnt[18]~68\ & VCC)) # (!\key3|s_debounceCnt\(19) & (!\key3|s_debounceCnt[18]~68\))
-- \key3|s_debounceCnt[19]~70\ = CARRY((!\key3|s_debounceCnt\(19) & !\key3|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(19),
	datad => VCC,
	cin => \key3|s_debounceCnt[18]~68\,
	combout => \key3|s_debounceCnt[19]~69_combout\,
	cout => \key3|s_debounceCnt[19]~70\);

-- Location: FF_X98_Y22_N9
\key3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[19]~69_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(19));

-- Location: LCCOMB_X98_Y22_N10
\key3|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[20]~71_combout\ = (\key3|s_debounceCnt\(20) & ((GND) # (!\key3|s_debounceCnt[19]~70\))) # (!\key3|s_debounceCnt\(20) & (\key3|s_debounceCnt[19]~70\ $ (GND)))
-- \key3|s_debounceCnt[20]~72\ = CARRY((\key3|s_debounceCnt\(20)) # (!\key3|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(20),
	datad => VCC,
	cin => \key3|s_debounceCnt[19]~70\,
	combout => \key3|s_debounceCnt[20]~71_combout\,
	cout => \key3|s_debounceCnt[20]~72\);

-- Location: FF_X98_Y22_N11
\key3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(20));

-- Location: LCCOMB_X98_Y22_N12
\key3|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[21]~73_combout\ = (\key3|s_debounceCnt\(21) & (\key3|s_debounceCnt[20]~72\ & VCC)) # (!\key3|s_debounceCnt\(21) & (!\key3|s_debounceCnt[20]~72\))
-- \key3|s_debounceCnt[21]~74\ = CARRY((!\key3|s_debounceCnt\(21) & !\key3|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(21),
	datad => VCC,
	cin => \key3|s_debounceCnt[20]~72\,
	combout => \key3|s_debounceCnt[21]~73_combout\,
	cout => \key3|s_debounceCnt[21]~74\);

-- Location: FF_X98_Y22_N13
\key3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[21]~73_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(21));

-- Location: LCCOMB_X98_Y22_N14
\key3|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[22]~75_combout\ = (\key3|s_debounceCnt\(22) & ((GND) # (!\key3|s_debounceCnt[21]~74\))) # (!\key3|s_debounceCnt\(22) & (\key3|s_debounceCnt[21]~74\ $ (GND)))
-- \key3|s_debounceCnt[22]~76\ = CARRY((\key3|s_debounceCnt\(22)) # (!\key3|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(22),
	datad => VCC,
	cin => \key3|s_debounceCnt[21]~74\,
	combout => \key3|s_debounceCnt[22]~75_combout\,
	cout => \key3|s_debounceCnt[22]~76\);

-- Location: FF_X98_Y22_N15
\key3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[22]~75_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(22));

-- Location: LCCOMB_X98_Y22_N16
\key3|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[23]~77_combout\ = (\key3|s_debounceCnt\(23) & (\key3|s_debounceCnt[22]~76\ & VCC)) # (!\key3|s_debounceCnt\(23) & (!\key3|s_debounceCnt[22]~76\))
-- \key3|s_debounceCnt[23]~78\ = CARRY((!\key3|s_debounceCnt\(23) & !\key3|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(23),
	datad => VCC,
	cin => \key3|s_debounceCnt[22]~76\,
	combout => \key3|s_debounceCnt[23]~77_combout\,
	cout => \key3|s_debounceCnt[23]~78\);

-- Location: FF_X98_Y22_N17
\key3|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[23]~77_combout\,
	asdata => \key3|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(23));

-- Location: LCCOMB_X99_Y22_N22
\key3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~6_combout\ = (!\key3|s_debounceCnt\(22) & (!\key3|s_debounceCnt\(21) & (!\key3|s_debounceCnt\(23) & !\key3|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(22),
	datab => \key3|s_debounceCnt\(21),
	datac => \key3|s_debounceCnt\(23),
	datad => \key3|s_debounceCnt\(20),
	combout => \key3|Equal0~6_combout\);

-- Location: LCCOMB_X99_Y22_N20
\key3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~5_combout\ = (!\key3|s_debounceCnt\(16) & (!\key3|s_debounceCnt\(18) & (!\key3|s_debounceCnt\(17) & !\key3|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(16),
	datab => \key3|s_debounceCnt\(18),
	datac => \key3|s_debounceCnt\(17),
	datad => \key3|s_debounceCnt\(19),
	combout => \key3|Equal0~5_combout\);

-- Location: LCCOMB_X98_Y22_N18
\key3|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[24]~79_combout\ = (\key3|s_debounceCnt\(24) & ((GND) # (!\key3|s_debounceCnt[23]~78\))) # (!\key3|s_debounceCnt\(24) & (\key3|s_debounceCnt[23]~78\ $ (GND)))
-- \key3|s_debounceCnt[24]~80\ = CARRY((\key3|s_debounceCnt\(24)) # (!\key3|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(24),
	datad => VCC,
	cin => \key3|s_debounceCnt[23]~78\,
	combout => \key3|s_debounceCnt[24]~79_combout\,
	cout => \key3|s_debounceCnt[24]~80\);

-- Location: FF_X98_Y22_N19
\key3|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(24));

-- Location: LCCOMB_X98_Y22_N20
\key3|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[25]~81_combout\ = (\key3|s_debounceCnt\(25) & (\key3|s_debounceCnt[24]~80\ & VCC)) # (!\key3|s_debounceCnt\(25) & (!\key3|s_debounceCnt[24]~80\))
-- \key3|s_debounceCnt[25]~82\ = CARRY((!\key3|s_debounceCnt\(25) & !\key3|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(25),
	datad => VCC,
	cin => \key3|s_debounceCnt[24]~80\,
	combout => \key3|s_debounceCnt[25]~81_combout\,
	cout => \key3|s_debounceCnt[25]~82\);

-- Location: FF_X98_Y22_N21
\key3|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(25));

-- Location: LCCOMB_X98_Y22_N22
\key3|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[26]~83_combout\ = (\key3|s_debounceCnt\(26) & ((GND) # (!\key3|s_debounceCnt[25]~82\))) # (!\key3|s_debounceCnt\(26) & (\key3|s_debounceCnt[25]~82\ $ (GND)))
-- \key3|s_debounceCnt[26]~84\ = CARRY((\key3|s_debounceCnt\(26)) # (!\key3|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(26),
	datad => VCC,
	cin => \key3|s_debounceCnt[25]~82\,
	combout => \key3|s_debounceCnt[26]~83_combout\,
	cout => \key3|s_debounceCnt[26]~84\);

-- Location: FF_X98_Y22_N23
\key3|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(26));

-- Location: LCCOMB_X98_Y22_N24
\key3|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[27]~85_combout\ = (\key3|s_debounceCnt\(27) & (\key3|s_debounceCnt[26]~84\ & VCC)) # (!\key3|s_debounceCnt\(27) & (!\key3|s_debounceCnt[26]~84\))
-- \key3|s_debounceCnt[27]~86\ = CARRY((!\key3|s_debounceCnt\(27) & !\key3|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(27),
	datad => VCC,
	cin => \key3|s_debounceCnt[26]~84\,
	combout => \key3|s_debounceCnt[27]~85_combout\,
	cout => \key3|s_debounceCnt[27]~86\);

-- Location: FF_X98_Y22_N25
\key3|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(27));

-- Location: LCCOMB_X98_Y22_N26
\key3|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[28]~87_combout\ = (\key3|s_debounceCnt\(28) & ((GND) # (!\key3|s_debounceCnt[27]~86\))) # (!\key3|s_debounceCnt\(28) & (\key3|s_debounceCnt[27]~86\ $ (GND)))
-- \key3|s_debounceCnt[28]~88\ = CARRY((\key3|s_debounceCnt\(28)) # (!\key3|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(28),
	datad => VCC,
	cin => \key3|s_debounceCnt[27]~86\,
	combout => \key3|s_debounceCnt[28]~87_combout\,
	cout => \key3|s_debounceCnt[28]~88\);

-- Location: FF_X98_Y22_N27
\key3|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(28));

-- Location: LCCOMB_X98_Y22_N28
\key3|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[29]~89_combout\ = (\key3|s_debounceCnt\(29) & (\key3|s_debounceCnt[28]~88\ & VCC)) # (!\key3|s_debounceCnt\(29) & (!\key3|s_debounceCnt[28]~88\))
-- \key3|s_debounceCnt[29]~90\ = CARRY((!\key3|s_debounceCnt\(29) & !\key3|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_debounceCnt\(29),
	datad => VCC,
	cin => \key3|s_debounceCnt[28]~88\,
	combout => \key3|s_debounceCnt[29]~89_combout\,
	cout => \key3|s_debounceCnt[29]~90\);

-- Location: FF_X98_Y22_N29
\key3|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(29));

-- Location: LCCOMB_X98_Y22_N30
\key3|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_debounceCnt[30]~91_combout\ = \key3|s_debounceCnt\(30) $ (\key3|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(30),
	cin => \key3|s_debounceCnt[29]~90\,
	combout => \key3|s_debounceCnt[30]~91_combout\);

-- Location: FF_X98_Y22_N31
\key3|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key3|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_debounceCnt\(30));

-- Location: LCCOMB_X99_Y22_N24
\key3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~7_combout\ = (!\key3|s_debounceCnt\(25) & (!\key3|s_debounceCnt\(26) & (!\key3|s_debounceCnt\(24) & !\key3|s_debounceCnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(25),
	datab => \key3|s_debounceCnt\(26),
	datac => \key3|s_debounceCnt\(24),
	datad => \key3|s_debounceCnt\(27),
	combout => \key3|Equal0~7_combout\);

-- Location: LCCOMB_X99_Y22_N26
\key3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~8_combout\ = (!\key3|s_debounceCnt\(28) & (!\key3|s_debounceCnt\(30) & (!\key3|s_debounceCnt\(29) & \key3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(28),
	datab => \key3|s_debounceCnt\(30),
	datac => \key3|s_debounceCnt\(29),
	datad => \key3|Equal0~7_combout\,
	combout => \key3|Equal0~8_combout\);

-- Location: LCCOMB_X99_Y22_N12
\key3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~1_combout\ = (!\key3|s_debounceCnt\(6) & (!\key3|s_debounceCnt\(5) & (!\key3|s_debounceCnt\(4) & !\key3|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(6),
	datab => \key3|s_debounceCnt\(5),
	datac => \key3|s_debounceCnt\(4),
	datad => \key3|s_debounceCnt\(7),
	combout => \key3|Equal0~1_combout\);

-- Location: LCCOMB_X99_Y22_N8
\key3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~3_combout\ = (!\key3|s_debounceCnt\(14) & (!\key3|s_debounceCnt\(13) & (!\key3|s_debounceCnt\(15) & !\key3|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(14),
	datab => \key3|s_debounceCnt\(13),
	datac => \key3|s_debounceCnt\(15),
	datad => \key3|s_debounceCnt\(12),
	combout => \key3|Equal0~3_combout\);

-- Location: LCCOMB_X99_Y22_N30
\key3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~2_combout\ = (!\key3|s_debounceCnt\(9) & (!\key3|s_debounceCnt\(10) & (!\key3|s_debounceCnt\(11) & !\key3|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(9),
	datab => \key3|s_debounceCnt\(10),
	datac => \key3|s_debounceCnt\(11),
	datad => \key3|s_debounceCnt\(8),
	combout => \key3|Equal0~2_combout\);

-- Location: LCCOMB_X98_Y23_N0
\key3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~0_combout\ = (!\key3|s_debounceCnt\(2) & (!\key3|s_debounceCnt\(1) & (!\key3|s_debounceCnt\(3) & !\key3|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|s_debounceCnt\(2),
	datab => \key3|s_debounceCnt\(1),
	datac => \key3|s_debounceCnt\(3),
	datad => \key3|s_debounceCnt\(0),
	combout => \key3|Equal0~0_combout\);

-- Location: LCCOMB_X99_Y22_N18
\key3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~4_combout\ = (\key3|Equal0~1_combout\ & (\key3|Equal0~3_combout\ & (\key3|Equal0~2_combout\ & \key3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|Equal0~1_combout\,
	datab => \key3|Equal0~3_combout\,
	datac => \key3|Equal0~2_combout\,
	datad => \key3|Equal0~0_combout\,
	combout => \key3|Equal0~4_combout\);

-- Location: LCCOMB_X99_Y22_N0
\key3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|Equal0~9_combout\ = (\key3|Equal0~6_combout\ & (\key3|Equal0~5_combout\ & (\key3|Equal0~8_combout\ & \key3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3|Equal0~6_combout\,
	datab => \key3|Equal0~5_combout\,
	datac => \key3|Equal0~8_combout\,
	datad => \key3|Equal0~4_combout\,
	combout => \key3|Equal0~9_combout\);

-- Location: LCCOMB_X97_Y22_N18
\key3|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|s_resetPulse~0_combout\ = (\key3|s_pulsedOut~q\) # (!\key3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key3|s_pulsedOut~q\,
	datac => \key3|Equal0~9_combout\,
	combout => \key3|s_resetPulse~0_combout\);

-- Location: FF_X97_Y22_N19
\key3|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key3|s_resetPulse~0_combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_resetPulse~q\);

-- Location: LCCOMB_X97_Y22_N20
\key3|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key3|out_proc~0_combout\ = (\SW[17]~input_o\) # (\key3|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \key3|s_resetPulse~q\,
	combout => \key3|out_proc~0_combout\);

-- Location: FF_X97_Y22_N1
\key3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key3|ALT_INV_s_dirtyInput~q\,
	d => \key3|s_pulsedOut~feeder_combout\,
	clrn => \key3|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key3|s_pulsedOut~q\);

-- Location: LCCOMB_X98_Y20_N16
\escolhaproduto|s_moeda[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|s_moeda[3]~feeder_combout\ = \key3|s_pulsedOut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key3|s_pulsedOut~q\,
	combout => \escolhaproduto|s_moeda[3]~feeder_combout\);

-- Location: FF_X98_Y20_N17
\escolhaproduto|s_moeda[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \escolhaproduto|s_moeda[3]~feeder_combout\,
	ena => \escolhaproduto|PS~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|s_moeda\(3));

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X115_Y40_N10
\key0|s_dirtyInput\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_dirtyInput~q\);

-- Location: LCCOMB_X103_Y39_N4
\key0|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \key0|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X105_Y40_N2
\key0|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[0]~31_combout\ = \key0|s_debounceCnt\(0) $ (VCC)
-- \key0|s_debounceCnt[0]~32\ = CARRY(\key0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(0),
	datad => VCC,
	combout => \key0|s_debounceCnt[0]~31_combout\,
	cout => \key0|s_debounceCnt[0]~32\);

-- Location: FF_X105_Y40_N3
\key0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(0));

-- Location: LCCOMB_X105_Y40_N4
\key0|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[1]~33_combout\ = (\key0|s_debounceCnt\(1) & (\key0|s_debounceCnt[0]~32\ & VCC)) # (!\key0|s_debounceCnt\(1) & (!\key0|s_debounceCnt[0]~32\))
-- \key0|s_debounceCnt[1]~34\ = CARRY((!\key0|s_debounceCnt\(1) & !\key0|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(1),
	datad => VCC,
	cin => \key0|s_debounceCnt[0]~32\,
	combout => \key0|s_debounceCnt[1]~33_combout\,
	cout => \key0|s_debounceCnt[1]~34\);

-- Location: FF_X105_Y40_N5
\key0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(1));

-- Location: LCCOMB_X105_Y40_N6
\key0|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[2]~35_combout\ = (\key0|s_debounceCnt\(2) & ((GND) # (!\key0|s_debounceCnt[1]~34\))) # (!\key0|s_debounceCnt\(2) & (\key0|s_debounceCnt[1]~34\ $ (GND)))
-- \key0|s_debounceCnt[2]~36\ = CARRY((\key0|s_debounceCnt\(2)) # (!\key0|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(2),
	datad => VCC,
	cin => \key0|s_debounceCnt[1]~34\,
	combout => \key0|s_debounceCnt[2]~35_combout\,
	cout => \key0|s_debounceCnt[2]~36\);

-- Location: FF_X105_Y40_N7
\key0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(2));

-- Location: LCCOMB_X105_Y40_N8
\key0|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[3]~37_combout\ = (\key0|s_debounceCnt\(3) & (\key0|s_debounceCnt[2]~36\ & VCC)) # (!\key0|s_debounceCnt\(3) & (!\key0|s_debounceCnt[2]~36\))
-- \key0|s_debounceCnt[3]~38\ = CARRY((!\key0|s_debounceCnt\(3) & !\key0|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(3),
	datad => VCC,
	cin => \key0|s_debounceCnt[2]~36\,
	combout => \key0|s_debounceCnt[3]~37_combout\,
	cout => \key0|s_debounceCnt[3]~38\);

-- Location: FF_X105_Y40_N9
\key0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(3));

-- Location: LCCOMB_X105_Y40_N10
\key0|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[4]~39_combout\ = (\key0|s_debounceCnt\(4) & ((GND) # (!\key0|s_debounceCnt[3]~38\))) # (!\key0|s_debounceCnt\(4) & (\key0|s_debounceCnt[3]~38\ $ (GND)))
-- \key0|s_debounceCnt[4]~40\ = CARRY((\key0|s_debounceCnt\(4)) # (!\key0|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(4),
	datad => VCC,
	cin => \key0|s_debounceCnt[3]~38\,
	combout => \key0|s_debounceCnt[4]~39_combout\,
	cout => \key0|s_debounceCnt[4]~40\);

-- Location: FF_X105_Y40_N11
\key0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(4));

-- Location: LCCOMB_X105_Y40_N12
\key0|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[5]~41_combout\ = (\key0|s_debounceCnt\(5) & (\key0|s_debounceCnt[4]~40\ & VCC)) # (!\key0|s_debounceCnt\(5) & (!\key0|s_debounceCnt[4]~40\))
-- \key0|s_debounceCnt[5]~42\ = CARRY((!\key0|s_debounceCnt\(5) & !\key0|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(5),
	datad => VCC,
	cin => \key0|s_debounceCnt[4]~40\,
	combout => \key0|s_debounceCnt[5]~41_combout\,
	cout => \key0|s_debounceCnt[5]~42\);

-- Location: FF_X105_Y40_N13
\key0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(5));

-- Location: LCCOMB_X105_Y40_N14
\key0|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[6]~43_combout\ = (\key0|s_debounceCnt\(6) & ((GND) # (!\key0|s_debounceCnt[5]~42\))) # (!\key0|s_debounceCnt\(6) & (\key0|s_debounceCnt[5]~42\ $ (GND)))
-- \key0|s_debounceCnt[6]~44\ = CARRY((\key0|s_debounceCnt\(6)) # (!\key0|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(6),
	datad => VCC,
	cin => \key0|s_debounceCnt[5]~42\,
	combout => \key0|s_debounceCnt[6]~43_combout\,
	cout => \key0|s_debounceCnt[6]~44\);

-- Location: FF_X105_Y40_N15
\key0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[6]~43_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(6));

-- Location: LCCOMB_X105_Y40_N16
\key0|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[7]~45_combout\ = (\key0|s_debounceCnt\(7) & (\key0|s_debounceCnt[6]~44\ & VCC)) # (!\key0|s_debounceCnt\(7) & (!\key0|s_debounceCnt[6]~44\))
-- \key0|s_debounceCnt[7]~46\ = CARRY((!\key0|s_debounceCnt\(7) & !\key0|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(7),
	datad => VCC,
	cin => \key0|s_debounceCnt[6]~44\,
	combout => \key0|s_debounceCnt[7]~45_combout\,
	cout => \key0|s_debounceCnt[7]~46\);

-- Location: FF_X105_Y40_N17
\key0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[7]~45_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(7));

-- Location: LCCOMB_X105_Y40_N18
\key0|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[8]~47_combout\ = (\key0|s_debounceCnt\(8) & ((GND) # (!\key0|s_debounceCnt[7]~46\))) # (!\key0|s_debounceCnt\(8) & (\key0|s_debounceCnt[7]~46\ $ (GND)))
-- \key0|s_debounceCnt[8]~48\ = CARRY((\key0|s_debounceCnt\(8)) # (!\key0|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(8),
	datad => VCC,
	cin => \key0|s_debounceCnt[7]~46\,
	combout => \key0|s_debounceCnt[8]~47_combout\,
	cout => \key0|s_debounceCnt[8]~48\);

-- Location: FF_X105_Y40_N19
\key0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[8]~47_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(8));

-- Location: LCCOMB_X105_Y40_N20
\key0|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[9]~49_combout\ = (\key0|s_debounceCnt\(9) & (\key0|s_debounceCnt[8]~48\ & VCC)) # (!\key0|s_debounceCnt\(9) & (!\key0|s_debounceCnt[8]~48\))
-- \key0|s_debounceCnt[9]~50\ = CARRY((!\key0|s_debounceCnt\(9) & !\key0|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(9),
	datad => VCC,
	cin => \key0|s_debounceCnt[8]~48\,
	combout => \key0|s_debounceCnt[9]~49_combout\,
	cout => \key0|s_debounceCnt[9]~50\);

-- Location: FF_X105_Y40_N21
\key0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[9]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(9));

-- Location: LCCOMB_X105_Y40_N22
\key0|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[10]~51_combout\ = (\key0|s_debounceCnt\(10) & ((GND) # (!\key0|s_debounceCnt[9]~50\))) # (!\key0|s_debounceCnt\(10) & (\key0|s_debounceCnt[9]~50\ $ (GND)))
-- \key0|s_debounceCnt[10]~52\ = CARRY((\key0|s_debounceCnt\(10)) # (!\key0|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(10),
	datad => VCC,
	cin => \key0|s_debounceCnt[9]~50\,
	combout => \key0|s_debounceCnt[10]~51_combout\,
	cout => \key0|s_debounceCnt[10]~52\);

-- Location: FF_X105_Y40_N23
\key0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(10));

-- Location: LCCOMB_X105_Y40_N24
\key0|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[11]~53_combout\ = (\key0|s_debounceCnt\(11) & (\key0|s_debounceCnt[10]~52\ & VCC)) # (!\key0|s_debounceCnt\(11) & (!\key0|s_debounceCnt[10]~52\))
-- \key0|s_debounceCnt[11]~54\ = CARRY((!\key0|s_debounceCnt\(11) & !\key0|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(11),
	datad => VCC,
	cin => \key0|s_debounceCnt[10]~52\,
	combout => \key0|s_debounceCnt[11]~53_combout\,
	cout => \key0|s_debounceCnt[11]~54\);

-- Location: FF_X105_Y40_N25
\key0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[11]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(11));

-- Location: LCCOMB_X105_Y40_N26
\key0|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[12]~55_combout\ = (\key0|s_debounceCnt\(12) & ((GND) # (!\key0|s_debounceCnt[11]~54\))) # (!\key0|s_debounceCnt\(12) & (\key0|s_debounceCnt[11]~54\ $ (GND)))
-- \key0|s_debounceCnt[12]~56\ = CARRY((\key0|s_debounceCnt\(12)) # (!\key0|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(12),
	datad => VCC,
	cin => \key0|s_debounceCnt[11]~54\,
	combout => \key0|s_debounceCnt[12]~55_combout\,
	cout => \key0|s_debounceCnt[12]~56\);

-- Location: FF_X105_Y40_N27
\key0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(12));

-- Location: LCCOMB_X105_Y40_N28
\key0|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[13]~57_combout\ = (\key0|s_debounceCnt\(13) & (\key0|s_debounceCnt[12]~56\ & VCC)) # (!\key0|s_debounceCnt\(13) & (!\key0|s_debounceCnt[12]~56\))
-- \key0|s_debounceCnt[13]~58\ = CARRY((!\key0|s_debounceCnt\(13) & !\key0|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(13),
	datad => VCC,
	cin => \key0|s_debounceCnt[12]~56\,
	combout => \key0|s_debounceCnt[13]~57_combout\,
	cout => \key0|s_debounceCnt[13]~58\);

-- Location: FF_X105_Y40_N29
\key0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[13]~57_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(13));

-- Location: LCCOMB_X105_Y40_N30
\key0|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[14]~59_combout\ = (\key0|s_debounceCnt\(14) & ((GND) # (!\key0|s_debounceCnt[13]~58\))) # (!\key0|s_debounceCnt\(14) & (\key0|s_debounceCnt[13]~58\ $ (GND)))
-- \key0|s_debounceCnt[14]~60\ = CARRY((\key0|s_debounceCnt\(14)) # (!\key0|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(14),
	datad => VCC,
	cin => \key0|s_debounceCnt[13]~58\,
	combout => \key0|s_debounceCnt[14]~59_combout\,
	cout => \key0|s_debounceCnt[14]~60\);

-- Location: FF_X105_Y40_N31
\key0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[14]~59_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(14));

-- Location: LCCOMB_X105_Y39_N0
\key0|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[15]~61_combout\ = (\key0|s_debounceCnt\(15) & (\key0|s_debounceCnt[14]~60\ & VCC)) # (!\key0|s_debounceCnt\(15) & (!\key0|s_debounceCnt[14]~60\))
-- \key0|s_debounceCnt[15]~62\ = CARRY((!\key0|s_debounceCnt\(15) & !\key0|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(15),
	datad => VCC,
	cin => \key0|s_debounceCnt[14]~60\,
	combout => \key0|s_debounceCnt[15]~61_combout\,
	cout => \key0|s_debounceCnt[15]~62\);

-- Location: FF_X105_Y39_N1
\key0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[15]~61_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(15));

-- Location: LCCOMB_X105_Y39_N2
\key0|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[16]~63_combout\ = (\key0|s_debounceCnt\(16) & ((GND) # (!\key0|s_debounceCnt[15]~62\))) # (!\key0|s_debounceCnt\(16) & (\key0|s_debounceCnt[15]~62\ $ (GND)))
-- \key0|s_debounceCnt[16]~64\ = CARRY((\key0|s_debounceCnt\(16)) # (!\key0|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(16),
	datad => VCC,
	cin => \key0|s_debounceCnt[15]~62\,
	combout => \key0|s_debounceCnt[16]~63_combout\,
	cout => \key0|s_debounceCnt[16]~64\);

-- Location: FF_X105_Y39_N3
\key0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(16));

-- Location: LCCOMB_X105_Y39_N4
\key0|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[17]~65_combout\ = (\key0|s_debounceCnt\(17) & (\key0|s_debounceCnt[16]~64\ & VCC)) # (!\key0|s_debounceCnt\(17) & (!\key0|s_debounceCnt[16]~64\))
-- \key0|s_debounceCnt[17]~66\ = CARRY((!\key0|s_debounceCnt\(17) & !\key0|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(17),
	datad => VCC,
	cin => \key0|s_debounceCnt[16]~64\,
	combout => \key0|s_debounceCnt[17]~65_combout\,
	cout => \key0|s_debounceCnt[17]~66\);

-- Location: FF_X105_Y39_N5
\key0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(17));

-- Location: LCCOMB_X105_Y39_N6
\key0|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[18]~67_combout\ = (\key0|s_debounceCnt\(18) & ((GND) # (!\key0|s_debounceCnt[17]~66\))) # (!\key0|s_debounceCnt\(18) & (\key0|s_debounceCnt[17]~66\ $ (GND)))
-- \key0|s_debounceCnt[18]~68\ = CARRY((\key0|s_debounceCnt\(18)) # (!\key0|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(18),
	datad => VCC,
	cin => \key0|s_debounceCnt[17]~66\,
	combout => \key0|s_debounceCnt[18]~67_combout\,
	cout => \key0|s_debounceCnt[18]~68\);

-- Location: FF_X105_Y39_N7
\key0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[18]~67_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(18));

-- Location: LCCOMB_X105_Y39_N8
\key0|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[19]~69_combout\ = (\key0|s_debounceCnt\(19) & (\key0|s_debounceCnt[18]~68\ & VCC)) # (!\key0|s_debounceCnt\(19) & (!\key0|s_debounceCnt[18]~68\))
-- \key0|s_debounceCnt[19]~70\ = CARRY((!\key0|s_debounceCnt\(19) & !\key0|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(19),
	datad => VCC,
	cin => \key0|s_debounceCnt[18]~68\,
	combout => \key0|s_debounceCnt[19]~69_combout\,
	cout => \key0|s_debounceCnt[19]~70\);

-- Location: FF_X105_Y39_N9
\key0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[19]~69_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(19));

-- Location: LCCOMB_X106_Y39_N12
\key0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~5_combout\ = (!\key0|s_debounceCnt\(19) & (!\key0|s_debounceCnt\(18) & (!\key0|s_debounceCnt\(17) & !\key0|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(19),
	datab => \key0|s_debounceCnt\(18),
	datac => \key0|s_debounceCnt\(17),
	datad => \key0|s_debounceCnt\(16),
	combout => \key0|Equal0~5_combout\);

-- Location: LCCOMB_X105_Y39_N10
\key0|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[20]~71_combout\ = (\key0|s_debounceCnt\(20) & ((GND) # (!\key0|s_debounceCnt[19]~70\))) # (!\key0|s_debounceCnt\(20) & (\key0|s_debounceCnt[19]~70\ $ (GND)))
-- \key0|s_debounceCnt[20]~72\ = CARRY((\key0|s_debounceCnt\(20)) # (!\key0|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(20),
	datad => VCC,
	cin => \key0|s_debounceCnt[19]~70\,
	combout => \key0|s_debounceCnt[20]~71_combout\,
	cout => \key0|s_debounceCnt[20]~72\);

-- Location: FF_X105_Y39_N11
\key0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(20));

-- Location: LCCOMB_X105_Y39_N12
\key0|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[21]~73_combout\ = (\key0|s_debounceCnt\(21) & (\key0|s_debounceCnt[20]~72\ & VCC)) # (!\key0|s_debounceCnt\(21) & (!\key0|s_debounceCnt[20]~72\))
-- \key0|s_debounceCnt[21]~74\ = CARRY((!\key0|s_debounceCnt\(21) & !\key0|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(21),
	datad => VCC,
	cin => \key0|s_debounceCnt[20]~72\,
	combout => \key0|s_debounceCnt[21]~73_combout\,
	cout => \key0|s_debounceCnt[21]~74\);

-- Location: FF_X105_Y39_N13
\key0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[21]~73_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(21));

-- Location: LCCOMB_X105_Y39_N14
\key0|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[22]~75_combout\ = (\key0|s_debounceCnt\(22) & ((GND) # (!\key0|s_debounceCnt[21]~74\))) # (!\key0|s_debounceCnt\(22) & (\key0|s_debounceCnt[21]~74\ $ (GND)))
-- \key0|s_debounceCnt[22]~76\ = CARRY((\key0|s_debounceCnt\(22)) # (!\key0|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(22),
	datad => VCC,
	cin => \key0|s_debounceCnt[21]~74\,
	combout => \key0|s_debounceCnt[22]~75_combout\,
	cout => \key0|s_debounceCnt[22]~76\);

-- Location: FF_X105_Y39_N15
\key0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[22]~75_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(22));

-- Location: LCCOMB_X105_Y39_N16
\key0|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[23]~77_combout\ = (\key0|s_debounceCnt\(23) & (\key0|s_debounceCnt[22]~76\ & VCC)) # (!\key0|s_debounceCnt\(23) & (!\key0|s_debounceCnt[22]~76\))
-- \key0|s_debounceCnt[23]~78\ = CARRY((!\key0|s_debounceCnt\(23) & !\key0|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(23),
	datad => VCC,
	cin => \key0|s_debounceCnt[22]~76\,
	combout => \key0|s_debounceCnt[23]~77_combout\,
	cout => \key0|s_debounceCnt[23]~78\);

-- Location: FF_X105_Y39_N17
\key0|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[23]~77_combout\,
	asdata => \key0|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(23));

-- Location: LCCOMB_X106_Y39_N2
\key0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~6_combout\ = (!\key0|s_debounceCnt\(22) & (!\key0|s_debounceCnt\(21) & (!\key0|s_debounceCnt\(23) & !\key0|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(22),
	datab => \key0|s_debounceCnt\(21),
	datac => \key0|s_debounceCnt\(23),
	datad => \key0|s_debounceCnt\(20),
	combout => \key0|Equal0~6_combout\);

-- Location: LCCOMB_X105_Y39_N18
\key0|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[24]~79_combout\ = (\key0|s_debounceCnt\(24) & ((GND) # (!\key0|s_debounceCnt[23]~78\))) # (!\key0|s_debounceCnt\(24) & (\key0|s_debounceCnt[23]~78\ $ (GND)))
-- \key0|s_debounceCnt[24]~80\ = CARRY((\key0|s_debounceCnt\(24)) # (!\key0|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(24),
	datad => VCC,
	cin => \key0|s_debounceCnt[23]~78\,
	combout => \key0|s_debounceCnt[24]~79_combout\,
	cout => \key0|s_debounceCnt[24]~80\);

-- Location: FF_X105_Y39_N19
\key0|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(24));

-- Location: LCCOMB_X105_Y39_N20
\key0|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[25]~81_combout\ = (\key0|s_debounceCnt\(25) & (\key0|s_debounceCnt[24]~80\ & VCC)) # (!\key0|s_debounceCnt\(25) & (!\key0|s_debounceCnt[24]~80\))
-- \key0|s_debounceCnt[25]~82\ = CARRY((!\key0|s_debounceCnt\(25) & !\key0|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(25),
	datad => VCC,
	cin => \key0|s_debounceCnt[24]~80\,
	combout => \key0|s_debounceCnt[25]~81_combout\,
	cout => \key0|s_debounceCnt[25]~82\);

-- Location: FF_X105_Y39_N21
\key0|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(25));

-- Location: LCCOMB_X105_Y39_N22
\key0|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[26]~83_combout\ = (\key0|s_debounceCnt\(26) & ((GND) # (!\key0|s_debounceCnt[25]~82\))) # (!\key0|s_debounceCnt\(26) & (\key0|s_debounceCnt[25]~82\ $ (GND)))
-- \key0|s_debounceCnt[26]~84\ = CARRY((\key0|s_debounceCnt\(26)) # (!\key0|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(26),
	datad => VCC,
	cin => \key0|s_debounceCnt[25]~82\,
	combout => \key0|s_debounceCnt[26]~83_combout\,
	cout => \key0|s_debounceCnt[26]~84\);

-- Location: FF_X105_Y39_N23
\key0|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(26));

-- Location: LCCOMB_X105_Y39_N24
\key0|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[27]~85_combout\ = (\key0|s_debounceCnt\(27) & (\key0|s_debounceCnt[26]~84\ & VCC)) # (!\key0|s_debounceCnt\(27) & (!\key0|s_debounceCnt[26]~84\))
-- \key0|s_debounceCnt[27]~86\ = CARRY((!\key0|s_debounceCnt\(27) & !\key0|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(27),
	datad => VCC,
	cin => \key0|s_debounceCnt[26]~84\,
	combout => \key0|s_debounceCnt[27]~85_combout\,
	cout => \key0|s_debounceCnt[27]~86\);

-- Location: FF_X105_Y39_N25
\key0|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(27));

-- Location: LCCOMB_X105_Y39_N26
\key0|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[28]~87_combout\ = (\key0|s_debounceCnt\(28) & ((GND) # (!\key0|s_debounceCnt[27]~86\))) # (!\key0|s_debounceCnt\(28) & (\key0|s_debounceCnt[27]~86\ $ (GND)))
-- \key0|s_debounceCnt[28]~88\ = CARRY((\key0|s_debounceCnt\(28)) # (!\key0|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(28),
	datad => VCC,
	cin => \key0|s_debounceCnt[27]~86\,
	combout => \key0|s_debounceCnt[28]~87_combout\,
	cout => \key0|s_debounceCnt[28]~88\);

-- Location: FF_X105_Y39_N27
\key0|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(28));

-- Location: LCCOMB_X105_Y39_N28
\key0|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[29]~89_combout\ = (\key0|s_debounceCnt\(29) & (\key0|s_debounceCnt[28]~88\ & VCC)) # (!\key0|s_debounceCnt\(29) & (!\key0|s_debounceCnt[28]~88\))
-- \key0|s_debounceCnt[29]~90\ = CARRY((!\key0|s_debounceCnt\(29) & !\key0|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_debounceCnt\(29),
	datad => VCC,
	cin => \key0|s_debounceCnt[28]~88\,
	combout => \key0|s_debounceCnt[29]~89_combout\,
	cout => \key0|s_debounceCnt[29]~90\);

-- Location: FF_X105_Y39_N29
\key0|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(29));

-- Location: LCCOMB_X105_Y39_N30
\key0|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_debounceCnt[30]~91_combout\ = \key0|s_debounceCnt\(30) $ (\key0|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(30),
	cin => \key0|s_debounceCnt[29]~90\,
	combout => \key0|s_debounceCnt[30]~91_combout\);

-- Location: FF_X105_Y39_N31
\key0|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key0|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_debounceCnt\(30));

-- Location: LCCOMB_X106_Y39_N28
\key0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~7_combout\ = (!\key0|s_debounceCnt\(24) & (!\key0|s_debounceCnt\(25) & (!\key0|s_debounceCnt\(26) & !\key0|s_debounceCnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(24),
	datab => \key0|s_debounceCnt\(25),
	datac => \key0|s_debounceCnt\(26),
	datad => \key0|s_debounceCnt\(27),
	combout => \key0|Equal0~7_combout\);

-- Location: LCCOMB_X106_Y39_N30
\key0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~8_combout\ = (!\key0|s_debounceCnt\(29) & (!\key0|s_debounceCnt\(30) & (!\key0|s_debounceCnt\(28) & \key0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(29),
	datab => \key0|s_debounceCnt\(30),
	datac => \key0|s_debounceCnt\(28),
	datad => \key0|Equal0~7_combout\,
	combout => \key0|Equal0~8_combout\);

-- Location: LCCOMB_X106_Y39_N26
\key0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~1_combout\ = (!\key0|s_debounceCnt\(6) & (!\key0|s_debounceCnt\(7) & (!\key0|s_debounceCnt\(5) & !\key0|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(6),
	datab => \key0|s_debounceCnt\(7),
	datac => \key0|s_debounceCnt\(5),
	datad => \key0|s_debounceCnt\(4),
	combout => \key0|Equal0~1_combout\);

-- Location: LCCOMB_X106_Y39_N4
\key0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~3_combout\ = (!\key0|s_debounceCnt\(15) & (!\key0|s_debounceCnt\(13) & (!\key0|s_debounceCnt\(14) & !\key0|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(15),
	datab => \key0|s_debounceCnt\(13),
	datac => \key0|s_debounceCnt\(14),
	datad => \key0|s_debounceCnt\(12),
	combout => \key0|Equal0~3_combout\);

-- Location: LCCOMB_X106_Y39_N8
\key0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~0_combout\ = (!\key0|s_debounceCnt\(2) & (!\key0|s_debounceCnt\(3) & (!\key0|s_debounceCnt\(0) & !\key0|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(2),
	datab => \key0|s_debounceCnt\(3),
	datac => \key0|s_debounceCnt\(0),
	datad => \key0|s_debounceCnt\(1),
	combout => \key0|Equal0~0_combout\);

-- Location: LCCOMB_X105_Y40_N0
\key0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~2_combout\ = (!\key0|s_debounceCnt\(10) & (!\key0|s_debounceCnt\(11) & (!\key0|s_debounceCnt\(9) & !\key0|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|s_debounceCnt\(10),
	datab => \key0|s_debounceCnt\(11),
	datac => \key0|s_debounceCnt\(9),
	datad => \key0|s_debounceCnt\(8),
	combout => \key0|Equal0~2_combout\);

-- Location: LCCOMB_X106_Y39_N18
\key0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~4_combout\ = (\key0|Equal0~1_combout\ & (\key0|Equal0~3_combout\ & (\key0|Equal0~0_combout\ & \key0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|Equal0~1_combout\,
	datab => \key0|Equal0~3_combout\,
	datac => \key0|Equal0~0_combout\,
	datad => \key0|Equal0~2_combout\,
	combout => \key0|Equal0~4_combout\);

-- Location: LCCOMB_X106_Y39_N0
\key0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|Equal0~9_combout\ = (\key0|Equal0~5_combout\ & (\key0|Equal0~6_combout\ & (\key0|Equal0~8_combout\ & \key0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0|Equal0~5_combout\,
	datab => \key0|Equal0~6_combout\,
	datac => \key0|Equal0~8_combout\,
	datad => \key0|Equal0~4_combout\,
	combout => \key0|Equal0~9_combout\);

-- Location: LCCOMB_X103_Y39_N2
\key0|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|s_resetPulse~0_combout\ = (\key0|s_pulsedOut~q\) # (!\key0|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0|s_pulsedOut~q\,
	datad => \key0|Equal0~9_combout\,
	combout => \key0|s_resetPulse~0_combout\);

-- Location: FF_X103_Y39_N3
\key0|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0|s_resetPulse~0_combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_resetPulse~q\);

-- Location: LCCOMB_X103_Y39_N24
\key0|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0|out_proc~0_combout\ = (\SW[17]~input_o\) # (\key0|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \key0|s_resetPulse~q\,
	combout => \key0|out_proc~0_combout\);

-- Location: FF_X103_Y39_N5
\key0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0|ALT_INV_s_dirtyInput~q\,
	d => \key0|s_pulsedOut~feeder_combout\,
	clrn => \key0|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0|s_pulsedOut~q\);

-- Location: FF_X98_Y20_N7
\escolhaproduto|s_moeda[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \key0|s_pulsedOut~q\,
	sload => VCC,
	ena => \escolhaproduto|PS~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|s_moeda\(0));

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X115_Y53_N17
\key1|s_dirtyInput\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_dirtyInput~q\);

-- Location: LCCOMB_X99_Y42_N4
\key1|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \key1|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X98_Y44_N2
\key1|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[0]~31_combout\ = \key1|s_debounceCnt\(0) $ (VCC)
-- \key1|s_debounceCnt[0]~32\ = CARRY(\key1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(0),
	datad => VCC,
	combout => \key1|s_debounceCnt[0]~31_combout\,
	cout => \key1|s_debounceCnt[0]~32\);

-- Location: FF_X98_Y44_N3
\key1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y44_N4
\key1|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[1]~33_combout\ = (\key1|s_debounceCnt\(1) & (\key1|s_debounceCnt[0]~32\ & VCC)) # (!\key1|s_debounceCnt\(1) & (!\key1|s_debounceCnt[0]~32\))
-- \key1|s_debounceCnt[1]~34\ = CARRY((!\key1|s_debounceCnt\(1) & !\key1|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(1),
	datad => VCC,
	cin => \key1|s_debounceCnt[0]~32\,
	combout => \key1|s_debounceCnt[1]~33_combout\,
	cout => \key1|s_debounceCnt[1]~34\);

-- Location: FF_X98_Y44_N5
\key1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y44_N6
\key1|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[2]~35_combout\ = (\key1|s_debounceCnt\(2) & ((GND) # (!\key1|s_debounceCnt[1]~34\))) # (!\key1|s_debounceCnt\(2) & (\key1|s_debounceCnt[1]~34\ $ (GND)))
-- \key1|s_debounceCnt[2]~36\ = CARRY((\key1|s_debounceCnt\(2)) # (!\key1|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(2),
	datad => VCC,
	cin => \key1|s_debounceCnt[1]~34\,
	combout => \key1|s_debounceCnt[2]~35_combout\,
	cout => \key1|s_debounceCnt[2]~36\);

-- Location: FF_X98_Y44_N7
\key1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(2));

-- Location: LCCOMB_X98_Y44_N8
\key1|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[3]~37_combout\ = (\key1|s_debounceCnt\(3) & (\key1|s_debounceCnt[2]~36\ & VCC)) # (!\key1|s_debounceCnt\(3) & (!\key1|s_debounceCnt[2]~36\))
-- \key1|s_debounceCnt[3]~38\ = CARRY((!\key1|s_debounceCnt\(3) & !\key1|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(3),
	datad => VCC,
	cin => \key1|s_debounceCnt[2]~36\,
	combout => \key1|s_debounceCnt[3]~37_combout\,
	cout => \key1|s_debounceCnt[3]~38\);

-- Location: FF_X98_Y44_N9
\key1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(3));

-- Location: LCCOMB_X98_Y44_N10
\key1|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[4]~39_combout\ = (\key1|s_debounceCnt\(4) & ((GND) # (!\key1|s_debounceCnt[3]~38\))) # (!\key1|s_debounceCnt\(4) & (\key1|s_debounceCnt[3]~38\ $ (GND)))
-- \key1|s_debounceCnt[4]~40\ = CARRY((\key1|s_debounceCnt\(4)) # (!\key1|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(4),
	datad => VCC,
	cin => \key1|s_debounceCnt[3]~38\,
	combout => \key1|s_debounceCnt[4]~39_combout\,
	cout => \key1|s_debounceCnt[4]~40\);

-- Location: FF_X98_Y44_N11
\key1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y44_N12
\key1|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[5]~41_combout\ = (\key1|s_debounceCnt\(5) & (\key1|s_debounceCnt[4]~40\ & VCC)) # (!\key1|s_debounceCnt\(5) & (!\key1|s_debounceCnt[4]~40\))
-- \key1|s_debounceCnt[5]~42\ = CARRY((!\key1|s_debounceCnt\(5) & !\key1|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(5),
	datad => VCC,
	cin => \key1|s_debounceCnt[4]~40\,
	combout => \key1|s_debounceCnt[5]~41_combout\,
	cout => \key1|s_debounceCnt[5]~42\);

-- Location: FF_X98_Y44_N13
\key1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y44_N14
\key1|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[6]~43_combout\ = (\key1|s_debounceCnt\(6) & ((GND) # (!\key1|s_debounceCnt[5]~42\))) # (!\key1|s_debounceCnt\(6) & (\key1|s_debounceCnt[5]~42\ $ (GND)))
-- \key1|s_debounceCnt[6]~44\ = CARRY((\key1|s_debounceCnt\(6)) # (!\key1|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(6),
	datad => VCC,
	cin => \key1|s_debounceCnt[5]~42\,
	combout => \key1|s_debounceCnt[6]~43_combout\,
	cout => \key1|s_debounceCnt[6]~44\);

-- Location: FF_X98_Y44_N15
\key1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[6]~43_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y44_N16
\key1|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[7]~45_combout\ = (\key1|s_debounceCnt\(7) & (\key1|s_debounceCnt[6]~44\ & VCC)) # (!\key1|s_debounceCnt\(7) & (!\key1|s_debounceCnt[6]~44\))
-- \key1|s_debounceCnt[7]~46\ = CARRY((!\key1|s_debounceCnt\(7) & !\key1|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(7),
	datad => VCC,
	cin => \key1|s_debounceCnt[6]~44\,
	combout => \key1|s_debounceCnt[7]~45_combout\,
	cout => \key1|s_debounceCnt[7]~46\);

-- Location: FF_X98_Y44_N17
\key1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[7]~45_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y44_N18
\key1|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[8]~47_combout\ = (\key1|s_debounceCnt\(8) & ((GND) # (!\key1|s_debounceCnt[7]~46\))) # (!\key1|s_debounceCnt\(8) & (\key1|s_debounceCnt[7]~46\ $ (GND)))
-- \key1|s_debounceCnt[8]~48\ = CARRY((\key1|s_debounceCnt\(8)) # (!\key1|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(8),
	datad => VCC,
	cin => \key1|s_debounceCnt[7]~46\,
	combout => \key1|s_debounceCnt[8]~47_combout\,
	cout => \key1|s_debounceCnt[8]~48\);

-- Location: FF_X98_Y44_N19
\key1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[8]~47_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(8));

-- Location: LCCOMB_X98_Y44_N20
\key1|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[9]~49_combout\ = (\key1|s_debounceCnt\(9) & (\key1|s_debounceCnt[8]~48\ & VCC)) # (!\key1|s_debounceCnt\(9) & (!\key1|s_debounceCnt[8]~48\))
-- \key1|s_debounceCnt[9]~50\ = CARRY((!\key1|s_debounceCnt\(9) & !\key1|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(9),
	datad => VCC,
	cin => \key1|s_debounceCnt[8]~48\,
	combout => \key1|s_debounceCnt[9]~49_combout\,
	cout => \key1|s_debounceCnt[9]~50\);

-- Location: FF_X98_Y44_N21
\key1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[9]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y44_N22
\key1|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[10]~51_combout\ = (\key1|s_debounceCnt\(10) & ((GND) # (!\key1|s_debounceCnt[9]~50\))) # (!\key1|s_debounceCnt\(10) & (\key1|s_debounceCnt[9]~50\ $ (GND)))
-- \key1|s_debounceCnt[10]~52\ = CARRY((\key1|s_debounceCnt\(10)) # (!\key1|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(10),
	datad => VCC,
	cin => \key1|s_debounceCnt[9]~50\,
	combout => \key1|s_debounceCnt[10]~51_combout\,
	cout => \key1|s_debounceCnt[10]~52\);

-- Location: FF_X98_Y44_N23
\key1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y44_N24
\key1|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[11]~53_combout\ = (\key1|s_debounceCnt\(11) & (\key1|s_debounceCnt[10]~52\ & VCC)) # (!\key1|s_debounceCnt\(11) & (!\key1|s_debounceCnt[10]~52\))
-- \key1|s_debounceCnt[11]~54\ = CARRY((!\key1|s_debounceCnt\(11) & !\key1|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(11),
	datad => VCC,
	cin => \key1|s_debounceCnt[10]~52\,
	combout => \key1|s_debounceCnt[11]~53_combout\,
	cout => \key1|s_debounceCnt[11]~54\);

-- Location: FF_X98_Y44_N25
\key1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[11]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(11));

-- Location: LCCOMB_X98_Y44_N26
\key1|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[12]~55_combout\ = (\key1|s_debounceCnt\(12) & ((GND) # (!\key1|s_debounceCnt[11]~54\))) # (!\key1|s_debounceCnt\(12) & (\key1|s_debounceCnt[11]~54\ $ (GND)))
-- \key1|s_debounceCnt[12]~56\ = CARRY((\key1|s_debounceCnt\(12)) # (!\key1|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(12),
	datad => VCC,
	cin => \key1|s_debounceCnt[11]~54\,
	combout => \key1|s_debounceCnt[12]~55_combout\,
	cout => \key1|s_debounceCnt[12]~56\);

-- Location: FF_X98_Y44_N27
\key1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(12));

-- Location: LCCOMB_X98_Y44_N28
\key1|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[13]~57_combout\ = (\key1|s_debounceCnt\(13) & (\key1|s_debounceCnt[12]~56\ & VCC)) # (!\key1|s_debounceCnt\(13) & (!\key1|s_debounceCnt[12]~56\))
-- \key1|s_debounceCnt[13]~58\ = CARRY((!\key1|s_debounceCnt\(13) & !\key1|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(13),
	datad => VCC,
	cin => \key1|s_debounceCnt[12]~56\,
	combout => \key1|s_debounceCnt[13]~57_combout\,
	cout => \key1|s_debounceCnt[13]~58\);

-- Location: FF_X98_Y44_N29
\key1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[13]~57_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y44_N30
\key1|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[14]~59_combout\ = (\key1|s_debounceCnt\(14) & ((GND) # (!\key1|s_debounceCnt[13]~58\))) # (!\key1|s_debounceCnt\(14) & (\key1|s_debounceCnt[13]~58\ $ (GND)))
-- \key1|s_debounceCnt[14]~60\ = CARRY((\key1|s_debounceCnt\(14)) # (!\key1|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(14),
	datad => VCC,
	cin => \key1|s_debounceCnt[13]~58\,
	combout => \key1|s_debounceCnt[14]~59_combout\,
	cout => \key1|s_debounceCnt[14]~60\);

-- Location: FF_X98_Y44_N31
\key1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[14]~59_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y43_N0
\key1|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[15]~61_combout\ = (\key1|s_debounceCnt\(15) & (\key1|s_debounceCnt[14]~60\ & VCC)) # (!\key1|s_debounceCnt\(15) & (!\key1|s_debounceCnt[14]~60\))
-- \key1|s_debounceCnt[15]~62\ = CARRY((!\key1|s_debounceCnt\(15) & !\key1|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(15),
	datad => VCC,
	cin => \key1|s_debounceCnt[14]~60\,
	combout => \key1|s_debounceCnt[15]~61_combout\,
	cout => \key1|s_debounceCnt[15]~62\);

-- Location: FF_X98_Y43_N1
\key1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[15]~61_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(15));

-- Location: LCCOMB_X98_Y43_N2
\key1|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[16]~63_combout\ = (\key1|s_debounceCnt\(16) & ((GND) # (!\key1|s_debounceCnt[15]~62\))) # (!\key1|s_debounceCnt\(16) & (\key1|s_debounceCnt[15]~62\ $ (GND)))
-- \key1|s_debounceCnt[16]~64\ = CARRY((\key1|s_debounceCnt\(16)) # (!\key1|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(16),
	datad => VCC,
	cin => \key1|s_debounceCnt[15]~62\,
	combout => \key1|s_debounceCnt[16]~63_combout\,
	cout => \key1|s_debounceCnt[16]~64\);

-- Location: FF_X98_Y43_N3
\key1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y43_N4
\key1|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[17]~65_combout\ = (\key1|s_debounceCnt\(17) & (\key1|s_debounceCnt[16]~64\ & VCC)) # (!\key1|s_debounceCnt\(17) & (!\key1|s_debounceCnt[16]~64\))
-- \key1|s_debounceCnt[17]~66\ = CARRY((!\key1|s_debounceCnt\(17) & !\key1|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(17),
	datad => VCC,
	cin => \key1|s_debounceCnt[16]~64\,
	combout => \key1|s_debounceCnt[17]~65_combout\,
	cout => \key1|s_debounceCnt[17]~66\);

-- Location: FF_X98_Y43_N5
\key1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(17));

-- Location: LCCOMB_X98_Y43_N6
\key1|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[18]~67_combout\ = (\key1|s_debounceCnt\(18) & ((GND) # (!\key1|s_debounceCnt[17]~66\))) # (!\key1|s_debounceCnt\(18) & (\key1|s_debounceCnt[17]~66\ $ (GND)))
-- \key1|s_debounceCnt[18]~68\ = CARRY((\key1|s_debounceCnt\(18)) # (!\key1|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(18),
	datad => VCC,
	cin => \key1|s_debounceCnt[17]~66\,
	combout => \key1|s_debounceCnt[18]~67_combout\,
	cout => \key1|s_debounceCnt[18]~68\);

-- Location: FF_X98_Y43_N7
\key1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[18]~67_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(18));

-- Location: LCCOMB_X98_Y43_N8
\key1|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[19]~69_combout\ = (\key1|s_debounceCnt\(19) & (\key1|s_debounceCnt[18]~68\ & VCC)) # (!\key1|s_debounceCnt\(19) & (!\key1|s_debounceCnt[18]~68\))
-- \key1|s_debounceCnt[19]~70\ = CARRY((!\key1|s_debounceCnt\(19) & !\key1|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(19),
	datad => VCC,
	cin => \key1|s_debounceCnt[18]~68\,
	combout => \key1|s_debounceCnt[19]~69_combout\,
	cout => \key1|s_debounceCnt[19]~70\);

-- Location: FF_X98_Y43_N9
\key1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[19]~69_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(19));

-- Location: LCCOMB_X99_Y43_N4
\key1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~5_combout\ = (!\key1|s_debounceCnt\(16) & (!\key1|s_debounceCnt\(17) & (!\key1|s_debounceCnt\(18) & !\key1|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(16),
	datab => \key1|s_debounceCnt\(17),
	datac => \key1|s_debounceCnt\(18),
	datad => \key1|s_debounceCnt\(19),
	combout => \key1|Equal0~5_combout\);

-- Location: LCCOMB_X98_Y43_N10
\key1|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[20]~71_combout\ = (\key1|s_debounceCnt\(20) & ((GND) # (!\key1|s_debounceCnt[19]~70\))) # (!\key1|s_debounceCnt\(20) & (\key1|s_debounceCnt[19]~70\ $ (GND)))
-- \key1|s_debounceCnt[20]~72\ = CARRY((\key1|s_debounceCnt\(20)) # (!\key1|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(20),
	datad => VCC,
	cin => \key1|s_debounceCnt[19]~70\,
	combout => \key1|s_debounceCnt[20]~71_combout\,
	cout => \key1|s_debounceCnt[20]~72\);

-- Location: FF_X98_Y43_N11
\key1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(20));

-- Location: LCCOMB_X98_Y43_N12
\key1|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[21]~73_combout\ = (\key1|s_debounceCnt\(21) & (\key1|s_debounceCnt[20]~72\ & VCC)) # (!\key1|s_debounceCnt\(21) & (!\key1|s_debounceCnt[20]~72\))
-- \key1|s_debounceCnt[21]~74\ = CARRY((!\key1|s_debounceCnt\(21) & !\key1|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(21),
	datad => VCC,
	cin => \key1|s_debounceCnt[20]~72\,
	combout => \key1|s_debounceCnt[21]~73_combout\,
	cout => \key1|s_debounceCnt[21]~74\);

-- Location: FF_X98_Y43_N13
\key1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[21]~73_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(21));

-- Location: LCCOMB_X98_Y43_N14
\key1|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[22]~75_combout\ = (\key1|s_debounceCnt\(22) & ((GND) # (!\key1|s_debounceCnt[21]~74\))) # (!\key1|s_debounceCnt\(22) & (\key1|s_debounceCnt[21]~74\ $ (GND)))
-- \key1|s_debounceCnt[22]~76\ = CARRY((\key1|s_debounceCnt\(22)) # (!\key1|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(22),
	datad => VCC,
	cin => \key1|s_debounceCnt[21]~74\,
	combout => \key1|s_debounceCnt[22]~75_combout\,
	cout => \key1|s_debounceCnt[22]~76\);

-- Location: FF_X98_Y43_N15
\key1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[22]~75_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(22));

-- Location: LCCOMB_X98_Y43_N16
\key1|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[23]~77_combout\ = (\key1|s_debounceCnt\(23) & (\key1|s_debounceCnt[22]~76\ & VCC)) # (!\key1|s_debounceCnt\(23) & (!\key1|s_debounceCnt[22]~76\))
-- \key1|s_debounceCnt[23]~78\ = CARRY((!\key1|s_debounceCnt\(23) & !\key1|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(23),
	datad => VCC,
	cin => \key1|s_debounceCnt[22]~76\,
	combout => \key1|s_debounceCnt[23]~77_combout\,
	cout => \key1|s_debounceCnt[23]~78\);

-- Location: FF_X98_Y43_N17
\key1|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[23]~77_combout\,
	asdata => \key1|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(23));

-- Location: LCCOMB_X99_Y43_N2
\key1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~6_combout\ = (!\key1|s_debounceCnt\(22) & (!\key1|s_debounceCnt\(21) & (!\key1|s_debounceCnt\(23) & !\key1|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(22),
	datab => \key1|s_debounceCnt\(21),
	datac => \key1|s_debounceCnt\(23),
	datad => \key1|s_debounceCnt\(20),
	combout => \key1|Equal0~6_combout\);

-- Location: LCCOMB_X98_Y43_N18
\key1|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[24]~79_combout\ = (\key1|s_debounceCnt\(24) & ((GND) # (!\key1|s_debounceCnt[23]~78\))) # (!\key1|s_debounceCnt\(24) & (\key1|s_debounceCnt[23]~78\ $ (GND)))
-- \key1|s_debounceCnt[24]~80\ = CARRY((\key1|s_debounceCnt\(24)) # (!\key1|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(24),
	datad => VCC,
	cin => \key1|s_debounceCnt[23]~78\,
	combout => \key1|s_debounceCnt[24]~79_combout\,
	cout => \key1|s_debounceCnt[24]~80\);

-- Location: FF_X98_Y43_N19
\key1|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(24));

-- Location: LCCOMB_X98_Y43_N20
\key1|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[25]~81_combout\ = (\key1|s_debounceCnt\(25) & (\key1|s_debounceCnt[24]~80\ & VCC)) # (!\key1|s_debounceCnt\(25) & (!\key1|s_debounceCnt[24]~80\))
-- \key1|s_debounceCnt[25]~82\ = CARRY((!\key1|s_debounceCnt\(25) & !\key1|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(25),
	datad => VCC,
	cin => \key1|s_debounceCnt[24]~80\,
	combout => \key1|s_debounceCnt[25]~81_combout\,
	cout => \key1|s_debounceCnt[25]~82\);

-- Location: FF_X98_Y43_N21
\key1|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(25));

-- Location: LCCOMB_X98_Y43_N22
\key1|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[26]~83_combout\ = (\key1|s_debounceCnt\(26) & ((GND) # (!\key1|s_debounceCnt[25]~82\))) # (!\key1|s_debounceCnt\(26) & (\key1|s_debounceCnt[25]~82\ $ (GND)))
-- \key1|s_debounceCnt[26]~84\ = CARRY((\key1|s_debounceCnt\(26)) # (!\key1|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(26),
	datad => VCC,
	cin => \key1|s_debounceCnt[25]~82\,
	combout => \key1|s_debounceCnt[26]~83_combout\,
	cout => \key1|s_debounceCnt[26]~84\);

-- Location: FF_X98_Y43_N23
\key1|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(26));

-- Location: LCCOMB_X98_Y43_N24
\key1|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[27]~85_combout\ = (\key1|s_debounceCnt\(27) & (\key1|s_debounceCnt[26]~84\ & VCC)) # (!\key1|s_debounceCnt\(27) & (!\key1|s_debounceCnt[26]~84\))
-- \key1|s_debounceCnt[27]~86\ = CARRY((!\key1|s_debounceCnt\(27) & !\key1|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(27),
	datad => VCC,
	cin => \key1|s_debounceCnt[26]~84\,
	combout => \key1|s_debounceCnt[27]~85_combout\,
	cout => \key1|s_debounceCnt[27]~86\);

-- Location: FF_X98_Y43_N25
\key1|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(27));

-- Location: LCCOMB_X98_Y43_N26
\key1|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[28]~87_combout\ = (\key1|s_debounceCnt\(28) & ((GND) # (!\key1|s_debounceCnt[27]~86\))) # (!\key1|s_debounceCnt\(28) & (\key1|s_debounceCnt[27]~86\ $ (GND)))
-- \key1|s_debounceCnt[28]~88\ = CARRY((\key1|s_debounceCnt\(28)) # (!\key1|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(28),
	datad => VCC,
	cin => \key1|s_debounceCnt[27]~86\,
	combout => \key1|s_debounceCnt[28]~87_combout\,
	cout => \key1|s_debounceCnt[28]~88\);

-- Location: FF_X98_Y43_N27
\key1|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(28));

-- Location: LCCOMB_X98_Y43_N28
\key1|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[29]~89_combout\ = (\key1|s_debounceCnt\(29) & (\key1|s_debounceCnt[28]~88\ & VCC)) # (!\key1|s_debounceCnt\(29) & (!\key1|s_debounceCnt[28]~88\))
-- \key1|s_debounceCnt[29]~90\ = CARRY((!\key1|s_debounceCnt\(29) & !\key1|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1|s_debounceCnt\(29),
	datad => VCC,
	cin => \key1|s_debounceCnt[28]~88\,
	combout => \key1|s_debounceCnt[29]~89_combout\,
	cout => \key1|s_debounceCnt[29]~90\);

-- Location: FF_X98_Y43_N29
\key1|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(29));

-- Location: LCCOMB_X99_Y43_N8
\key1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~7_combout\ = (!\key1|s_debounceCnt\(27) & (!\key1|s_debounceCnt\(25) & (!\key1|s_debounceCnt\(24) & !\key1|s_debounceCnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(27),
	datab => \key1|s_debounceCnt\(25),
	datac => \key1|s_debounceCnt\(24),
	datad => \key1|s_debounceCnt\(26),
	combout => \key1|Equal0~7_combout\);

-- Location: LCCOMB_X98_Y43_N30
\key1|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_debounceCnt[30]~91_combout\ = \key1|s_debounceCnt\(30) $ (\key1|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(30),
	cin => \key1|s_debounceCnt[29]~90\,
	combout => \key1|s_debounceCnt[30]~91_combout\);

-- Location: FF_X98_Y43_N31
\key1|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \key1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_debounceCnt\(30));

-- Location: LCCOMB_X99_Y43_N26
\key1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~8_combout\ = (!\key1|s_debounceCnt\(28) & (!\key1|s_debounceCnt\(29) & (\key1|Equal0~7_combout\ & !\key1|s_debounceCnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(28),
	datab => \key1|s_debounceCnt\(29),
	datac => \key1|Equal0~7_combout\,
	datad => \key1|s_debounceCnt\(30),
	combout => \key1|Equal0~8_combout\);

-- Location: LCCOMB_X99_Y43_N12
\key1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~0_combout\ = (!\key1|s_debounceCnt\(2) & (!\key1|s_debounceCnt\(3) & (!\key1|s_debounceCnt\(0) & !\key1|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(2),
	datab => \key1|s_debounceCnt\(3),
	datac => \key1|s_debounceCnt\(0),
	datad => \key1|s_debounceCnt\(1),
	combout => \key1|Equal0~0_combout\);

-- Location: LCCOMB_X99_Y43_N20
\key1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~3_combout\ = (!\key1|s_debounceCnt\(15) & (!\key1|s_debounceCnt\(14) & (!\key1|s_debounceCnt\(13) & !\key1|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(15),
	datab => \key1|s_debounceCnt\(14),
	datac => \key1|s_debounceCnt\(13),
	datad => \key1|s_debounceCnt\(12),
	combout => \key1|Equal0~3_combout\);

-- Location: LCCOMB_X98_Y44_N0
\key1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~2_combout\ = (!\key1|s_debounceCnt\(10) & (!\key1|s_debounceCnt\(11) & (!\key1|s_debounceCnt\(9) & !\key1|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(10),
	datab => \key1|s_debounceCnt\(11),
	datac => \key1|s_debounceCnt\(9),
	datad => \key1|s_debounceCnt\(8),
	combout => \key1|Equal0~2_combout\);

-- Location: LCCOMB_X99_Y43_N10
\key1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~1_combout\ = (!\key1|s_debounceCnt\(6) & (!\key1|s_debounceCnt\(7) & (!\key1|s_debounceCnt\(5) & !\key1|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|s_debounceCnt\(6),
	datab => \key1|s_debounceCnt\(7),
	datac => \key1|s_debounceCnt\(5),
	datad => \key1|s_debounceCnt\(4),
	combout => \key1|Equal0~1_combout\);

-- Location: LCCOMB_X99_Y43_N18
\key1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~4_combout\ = (\key1|Equal0~0_combout\ & (\key1|Equal0~3_combout\ & (\key1|Equal0~2_combout\ & \key1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|Equal0~0_combout\,
	datab => \key1|Equal0~3_combout\,
	datac => \key1|Equal0~2_combout\,
	datad => \key1|Equal0~1_combout\,
	combout => \key1|Equal0~4_combout\);

-- Location: LCCOMB_X99_Y43_N0
\key1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|Equal0~9_combout\ = (\key1|Equal0~5_combout\ & (\key1|Equal0~6_combout\ & (\key1|Equal0~8_combout\ & \key1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1|Equal0~5_combout\,
	datab => \key1|Equal0~6_combout\,
	datac => \key1|Equal0~8_combout\,
	datad => \key1|Equal0~4_combout\,
	combout => \key1|Equal0~9_combout\);

-- Location: LCCOMB_X99_Y42_N2
\key1|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|s_resetPulse~0_combout\ = (\key1|s_pulsedOut~q\) # (!\key1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1|s_pulsedOut~q\,
	datad => \key1|Equal0~9_combout\,
	combout => \key1|s_resetPulse~0_combout\);

-- Location: FF_X99_Y42_N3
\key1|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1|s_resetPulse~0_combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_resetPulse~q\);

-- Location: LCCOMB_X99_Y42_N0
\key1|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1|out_proc~0_combout\ = (\SW[17]~input_o\) # (\key1|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \key1|s_resetPulse~q\,
	combout => \key1|out_proc~0_combout\);

-- Location: FF_X99_Y42_N5
\key1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1|ALT_INV_s_dirtyInput~q\,
	d => \key1|s_pulsedOut~feeder_combout\,
	clrn => \key1|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1|s_pulsedOut~q\);

-- Location: FF_X98_Y20_N1
\escolhaproduto|s_moeda[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \key1|s_pulsedOut~q\,
	sload => VCC,
	ena => \escolhaproduto|PS~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|s_moeda\(1));

-- Location: LCCOMB_X98_Y20_N6
\escolhaproduto|NS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS~1_combout\ = (\escolhaproduto|s_moeda\(2)) # ((\escolhaproduto|s_moeda\(3)) # ((\escolhaproduto|s_moeda\(0)) # (\escolhaproduto|s_moeda\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(2),
	datab => \escolhaproduto|s_moeda\(3),
	datac => \escolhaproduto|s_moeda\(0),
	datad => \escolhaproduto|s_moeda\(1),
	combout => \escolhaproduto|NS~1_combout\);

-- Location: LCCOMB_X98_Y20_N20
\escolhaproduto|NS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS~3_combout\ = (!\escolhaproduto|s_moeda\(1) & (\escolhaproduto|s_moeda\(3) & (!\escolhaproduto|s_moeda\(2) & !\escolhaproduto|s_moeda\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(1),
	datab => \escolhaproduto|s_moeda\(3),
	datac => \escolhaproduto|s_moeda\(2),
	datad => \escolhaproduto|s_moeda\(0),
	combout => \escolhaproduto|NS~3_combout\);

-- Location: LCCOMB_X95_Y19_N28
\escolhaproduto|NS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS~2_combout\ = (\escolhaproduto|s_moeda\(1) & !\escolhaproduto|s_moeda\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \escolhaproduto|s_moeda\(1),
	datad => \escolhaproduto|s_moeda\(0),
	combout => \escolhaproduto|NS~2_combout\);

-- Location: LCCOMB_X97_Y17_N12
\escolhaproduto|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|Equal2~0_combout\ = (!\SW[0]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \escolhaproduto|Equal2~0_combout\);

-- Location: LCCOMB_X98_Y18_N8
\escolhaproduto|NS.E20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E20~6_combout\ = (\escolhaproduto|s_moeda\(0) & (((\escolhaproduto|PS.E10~q\)))) # (!\escolhaproduto|s_moeda\(0) & (!\escolhaproduto|PS.E0~q\ & (\escolhaproduto|s_moeda\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E0~q\,
	datab => \escolhaproduto|s_moeda\(0),
	datac => \escolhaproduto|s_moeda\(1),
	datad => \escolhaproduto|PS.E10~q\,
	combout => \escolhaproduto|NS.E20~6_combout\);

-- Location: LCCOMB_X98_Y20_N24
\escolhaproduto|NS.E140~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E140~0_combout\ = (\escolhaproduto|s_moeda\(2) & (!\escolhaproduto|s_moeda\(1) & (!\escolhaproduto|s_moeda\(0) & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(2),
	datab => \escolhaproduto|s_moeda\(1),
	datac => \escolhaproduto|s_moeda\(0),
	datad => \SW[1]~input_o\,
	combout => \escolhaproduto|NS.E140~0_combout\);

-- Location: LCCOMB_X98_Y20_N10
\escolhaproduto|NS.E140~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E140~1_combout\ = (\escolhaproduto|NS~3_combout\ & ((\escolhaproduto|PS.E40~q\) # ((\escolhaproduto|PS.E90~q\ & \escolhaproduto|NS.E140~0_combout\)))) # (!\escolhaproduto|NS~3_combout\ & (\escolhaproduto|PS.E90~q\ & 
-- (\escolhaproduto|NS.E140~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~3_combout\,
	datab => \escolhaproduto|PS.E90~q\,
	datac => \escolhaproduto|NS.E140~0_combout\,
	datad => \escolhaproduto|PS.E40~q\,
	combout => \escolhaproduto|NS.E140~1_combout\);

-- Location: LCCOMB_X96_Y20_N12
\escolhaproduto|NS.E140~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E140~2_combout\ = (!\SW[0]~input_o\ & ((\escolhaproduto|NS.E140~1_combout\) # (\escolhaproduto|PS.E140~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E140~1_combout\,
	datac => \escolhaproduto|PS.E140~q\,
	datad => \SW[0]~input_o\,
	combout => \escolhaproduto|NS.E140~2_combout\);

-- Location: LCCOMB_X96_Y20_N18
\escolhaproduto|NS.E140_1932\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E140_1932~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E140~2_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E140_1932~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E140~2_combout\,
	datac => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	datad => \escolhaproduto|NS.E140_1932~combout\,
	combout => \escolhaproduto|NS.E140_1932~combout\);

-- Location: LCCOMB_X96_Y20_N22
\escolhaproduto|PS~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~39_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E140_1932~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E140_1932~combout\,
	combout => \escolhaproduto|PS~39_combout\);

-- Location: FF_X96_Y20_N23
\escolhaproduto|PS.E140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E140~q\);

-- Location: LCCOMB_X96_Y18_N30
\escolhaproduto|NS.E130~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E130~2_combout\ = (!\SW[0]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \escolhaproduto|NS.E130~2_combout\);

-- Location: LCCOMB_X98_Y20_N0
\escolhaproduto|NS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS~0_combout\ = (\escolhaproduto|s_moeda\(2) & (!\escolhaproduto|s_moeda\(1) & !\escolhaproduto|s_moeda\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(2),
	datac => \escolhaproduto|s_moeda\(1),
	datad => \escolhaproduto|s_moeda\(0),
	combout => \escolhaproduto|NS~0_combout\);

-- Location: LCCOMB_X95_Y18_N22
\escolhaproduto|NS.E80~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E80~3_combout\ = (!\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|PS.E80~q\) # ((\escolhaproduto|NS~0_combout\ & \escolhaproduto|PS.E30~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E80~q\,
	datab => \escolhaproduto|NS~0_combout\,
	datac => \escolhaproduto|PS.E30~q\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|NS.E80~3_combout\);

-- Location: LCCOMB_X96_Y17_N6
\produtodisplay|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \produtodisplay|Mux1~0_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & !\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \produtodisplay|Mux1~0_combout\);

-- Location: LCCOMB_X96_Y19_N10
\escolhaproduto|NS.E130~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E130~5_combout\ = (\escolhaproduto|PS.E110~q\ & (\produtodisplay|Mux1~0_combout\ & (!\escolhaproduto|s_moeda\(0) & \escolhaproduto|s_moeda\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E110~q\,
	datab => \produtodisplay|Mux1~0_combout\,
	datac => \escolhaproduto|s_moeda\(0),
	datad => \escolhaproduto|s_moeda\(1),
	combout => \escolhaproduto|NS.E130~5_combout\);

-- Location: LCCOMB_X96_Y19_N30
\escolhaproduto|NS.E130~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E130~3_combout\ = (\escolhaproduto|PS.E130~q\) # ((\escolhaproduto|PS.E80~q\ & (\escolhaproduto|NS.E130~2_combout\ & \escolhaproduto|NS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E80~q\,
	datab => \escolhaproduto|PS.E130~q\,
	datac => \escolhaproduto|NS.E130~2_combout\,
	datad => \escolhaproduto|NS~0_combout\,
	combout => \escolhaproduto|NS.E130~3_combout\);

-- Location: LCCOMB_X96_Y19_N6
\escolhaproduto|NS.E130~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E130~4_combout\ = (\escolhaproduto|NS.E130~5_combout\) # ((\escolhaproduto|NS.E130~3_combout\) # ((\escolhaproduto|PS.E30~q\ & \escolhaproduto|NS~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E130~5_combout\,
	datab => \escolhaproduto|PS.E30~q\,
	datac => \escolhaproduto|NS~3_combout\,
	datad => \escolhaproduto|NS.E130~3_combout\,
	combout => \escolhaproduto|NS.E130~4_combout\);

-- Location: LCCOMB_X96_Y19_N2
\escolhaproduto|NS.E130_1944\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E130_1944~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E130~4_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E130_1944~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E130~4_combout\,
	datac => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	datad => \escolhaproduto|NS.E130_1944~combout\,
	combout => \escolhaproduto|NS.E130_1944~combout\);

-- Location: LCCOMB_X96_Y19_N8
\escolhaproduto|PS~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~27_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E130_1944~combout\ & ((!\escolhaproduto|contador\(0)) # (!\escolhaproduto|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \escolhaproduto|contador\(1),
	datac => \escolhaproduto|contador\(0),
	datad => \escolhaproduto|NS.E130_1944~combout\,
	combout => \escolhaproduto|PS~27_combout\);

-- Location: FF_X96_Y19_N9
\escolhaproduto|PS.E130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E130~q\);

-- Location: LCCOMB_X96_Y17_N20
\escolhaproduto|troco~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco~2_combout\ = (!\escolhaproduto|PS.E120~q\ & !\escolhaproduto|PS.E130~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|PS.E120~q\,
	datad => \escolhaproduto|PS.E130~q\,
	combout => \escolhaproduto|troco~2_combout\);

-- Location: LCCOMB_X95_Y18_N6
\escolhaproduto|NS.E200~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E200~0_combout\ = (\escolhaproduto|PS.E200~q\) # ((\escolhaproduto|PS.E100~q\ & \escolhaproduto|NS~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E100~q\,
	datac => \escolhaproduto|NS~3_combout\,
	datad => \escolhaproduto|PS.E200~q\,
	combout => \escolhaproduto|NS.E200~0_combout\);

-- Location: LCCOMB_X96_Y18_N0
\escolhaproduto|produtoUsadoDisplay[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|produtoUsadoDisplay[0]~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # (!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\);

-- Location: LCCOMB_X98_Y18_N28
\escolhaproduto|NS.E200~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E200~1_combout\ = (\escolhaproduto|NS.E130~2_combout\ & (!\SW[2]~input_o\ & ((\escolhaproduto|produtoUsadoDisplay[0]~0_combout\) # (!\escolhaproduto|WideOr94~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datab => \escolhaproduto|NS.E130~2_combout\,
	datac => \escolhaproduto|WideOr94~combout\,
	datad => \SW[2]~input_o\,
	combout => \escolhaproduto|NS.E200~1_combout\);

-- Location: LCCOMB_X98_Y18_N18
\escolhaproduto|NS.E200~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E200~2_combout\ = (\escolhaproduto|NS.E200~0_combout\ & ((\escolhaproduto|NS.E200~1_combout\) # ((\escolhaproduto|PS.E200~q\ & \escolhaproduto|NS.E210~3_combout\)))) # (!\escolhaproduto|NS.E200~0_combout\ & (((\escolhaproduto|PS.E200~q\ 
-- & \escolhaproduto|NS.E210~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E200~0_combout\,
	datab => \escolhaproduto|NS.E200~1_combout\,
	datac => \escolhaproduto|PS.E200~q\,
	datad => \escolhaproduto|NS.E210~3_combout\,
	combout => \escolhaproduto|NS.E200~2_combout\);

-- Location: LCCOMB_X98_Y18_N0
\escolhaproduto|NS.E200_1860\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E200_1860~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E200~2_combout\))) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E200_1860~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E200_1860~combout\,
	datac => \escolhaproduto|NS.E200~2_combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E200_1860~combout\);

-- Location: LCCOMB_X98_Y18_N22
\escolhaproduto|PS~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~32_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E200_1860~combout\ & ((!\escolhaproduto|contador\(0)) # (!\escolhaproduto|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \escolhaproduto|contador\(1),
	datac => \escolhaproduto|contador\(0),
	datad => \escolhaproduto|NS.E200_1860~combout\,
	combout => \escolhaproduto|PS~32_combout\);

-- Location: FF_X98_Y18_N23
\escolhaproduto|PS.E200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E200~q\);

-- Location: LCCOMB_X97_Y18_N24
\escolhaproduto|WideOr0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr0~6_combout\ = (!\escolhaproduto|PS.E210~q\ & !\escolhaproduto|PS.E200~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \escolhaproduto|PS.E210~q\,
	datad => \escolhaproduto|PS.E200~q\,
	combout => \escolhaproduto|WideOr0~6_combout\);

-- Location: LCCOMB_X96_Y17_N4
\escolhaproduto|WideOr130\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr130~combout\ = (((!\escolhaproduto|WideOr0~6_combout\) # (!\escolhaproduto|WideOr59~0_combout\)) # (!\escolhaproduto|troco~2_combout\)) # (!\escolhaproduto|WideOr100~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr100~0_combout\,
	datab => \escolhaproduto|troco~2_combout\,
	datac => \escolhaproduto|WideOr59~0_combout\,
	datad => \escolhaproduto|WideOr0~6_combout\,
	combout => \escolhaproduto|WideOr130~combout\);

-- Location: LCCOMB_X95_Y18_N2
\escolhaproduto|NS.E70~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E70~5_combout\ = (\escolhaproduto|produto_C~0_combout\) # ((\produtodisplay|Mux1~0_combout\ & \escolhaproduto|WideOr130~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|produto_C~0_combout\,
	datab => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|WideOr130~combout\,
	combout => \escolhaproduto|NS.E70~5_combout\);

-- Location: LCCOMB_X96_Y17_N22
\escolhaproduto|NS.E60~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E60~5_combout\ = (\SW[0]~input_o\) # ((\produtodisplay|Mux1~0_combout\ & ((\escolhaproduto|WideOr130~combout\) # (!\escolhaproduto|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \escolhaproduto|WideOr130~combout\,
	datad => \produtodisplay|Mux1~0_combout\,
	combout => \escolhaproduto|NS.E60~5_combout\);

-- Location: LCCOMB_X95_Y17_N28
\escolhaproduto|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|Equal3~0_combout\ = (\SW[1]~input_o\) # ((\SW[0]~input_o\) # (!\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \escolhaproduto|Equal3~0_combout\);

-- Location: LCCOMB_X95_Y17_N2
\escolhaproduto|NS.E60~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E60~6_combout\ = (\escolhaproduto|Equal3~0_combout\) # ((\escolhaproduto|NS~1_combout\ & !\escolhaproduto|WideOr94~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|Equal3~0_combout\,
	datac => \escolhaproduto|NS~1_combout\,
	datad => \escolhaproduto|WideOr94~combout\,
	combout => \escolhaproduto|NS.E60~6_combout\);

-- Location: LCCOMB_X96_Y20_N0
\escolhaproduto|NS.E60~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E60~7_combout\ = (\escolhaproduto|s_moeda\(1) & (((\escolhaproduto|PS.E40~q\)))) # (!\escolhaproduto|s_moeda\(1) & (\escolhaproduto|s_moeda\(2) & ((\escolhaproduto|PS.E10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(1),
	datab => \escolhaproduto|s_moeda\(2),
	datac => \escolhaproduto|PS.E40~q\,
	datad => \escolhaproduto|PS.E10~q\,
	combout => \escolhaproduto|NS.E60~7_combout\);

-- Location: LCCOMB_X95_Y17_N0
\escolhaproduto|NS.E60~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E60~8_combout\ = ((\escolhaproduto|s_moeda\(0) & (\escolhaproduto|PS.E50~q\)) # (!\escolhaproduto|s_moeda\(0) & ((\escolhaproduto|NS.E60~7_combout\)))) # (!\escolhaproduto|NS.E60~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(0),
	datab => \escolhaproduto|NS.E60~6_combout\,
	datac => \escolhaproduto|PS.E50~q\,
	datad => \escolhaproduto|NS.E60~7_combout\,
	combout => \escolhaproduto|NS.E60~8_combout\);

-- Location: LCCOMB_X96_Y20_N26
\escolhaproduto|NS.E60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E60~3_combout\ = (!\escolhaproduto|s_moeda\(1) & (\escolhaproduto|s_moeda\(2) & (!\escolhaproduto|s_moeda\(0) & \escolhaproduto|PS.E10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(1),
	datab => \escolhaproduto|s_moeda\(2),
	datac => \escolhaproduto|s_moeda\(0),
	datad => \escolhaproduto|PS.E10~q\,
	combout => \escolhaproduto|NS.E60~3_combout\);

-- Location: LCCOMB_X95_Y19_N0
\escolhaproduto|NS.E60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E60~2_combout\ = (\escolhaproduto|s_moeda\(0) & (((\escolhaproduto|PS.E50~q\)))) # (!\escolhaproduto|s_moeda\(0) & (\escolhaproduto|s_moeda\(1) & (\escolhaproduto|PS.E40~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(0),
	datab => \escolhaproduto|s_moeda\(1),
	datac => \escolhaproduto|PS.E40~q\,
	datad => \escolhaproduto|PS.E50~q\,
	combout => \escolhaproduto|NS.E60~2_combout\);

-- Location: LCCOMB_X96_Y20_N2
\escolhaproduto|NS.E60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E60~4_combout\ = (\escolhaproduto|NS.E60~3_combout\) # ((\escolhaproduto|PS.E60~q\) # ((\escolhaproduto|NS.E60~2_combout\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E60~3_combout\,
	datab => \escolhaproduto|PS.E60~q\,
	datac => \escolhaproduto|NS.E60~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \escolhaproduto|NS.E60~4_combout\);

-- Location: LCCOMB_X96_Y17_N12
\escolhaproduto|NS.E60~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E60~9_combout\ = (\escolhaproduto|NS.E60~4_combout\ & ((\escolhaproduto|NS.E60~5_combout\) # ((\escolhaproduto|NS.E60~8_combout\) # (\escolhaproduto|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E60~5_combout\,
	datab => \escolhaproduto|NS.E60~8_combout\,
	datac => \escolhaproduto|NS.E60~4_combout\,
	datad => \escolhaproduto|Equal2~0_combout\,
	combout => \escolhaproduto|NS.E60~9_combout\);

-- Location: LCCOMB_X97_Y20_N2
\escolhaproduto|NS.E60_2028\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E60_2028~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E60~9_combout\))) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E60_2028~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E60_2028~combout\,
	datac => \escolhaproduto|NS.E60~9_combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E60_2028~combout\);

-- Location: LCCOMB_X97_Y20_N30
\escolhaproduto|PS~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~43_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E60_2028~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E60_2028~combout\,
	combout => \escolhaproduto|PS~43_combout\);

-- Location: FF_X97_Y20_N31
\escolhaproduto|PS.E60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E60~q\);

-- Location: LCCOMB_X95_Y18_N20
\escolhaproduto|NS.E80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E80~0_combout\ = (\escolhaproduto|s_moeda\(0) & (((\escolhaproduto|PS.E70~q\)))) # (!\escolhaproduto|s_moeda\(0) & (\escolhaproduto|s_moeda\(1) & ((\escolhaproduto|PS.E60~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(1),
	datab => \escolhaproduto|PS.E70~q\,
	datac => \escolhaproduto|PS.E60~q\,
	datad => \escolhaproduto|s_moeda\(0),
	combout => \escolhaproduto|NS.E80~0_combout\);

-- Location: LCCOMB_X95_Y18_N18
\escolhaproduto|NS.E80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E80~1_combout\ = (\escolhaproduto|NS.E80~0_combout\) # ((\escolhaproduto|NS~0_combout\ & \escolhaproduto|PS.E30~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS~0_combout\,
	datac => \escolhaproduto|PS.E30~q\,
	datad => \escolhaproduto|NS.E80~0_combout\,
	combout => \escolhaproduto|NS.E80~1_combout\);

-- Location: LCCOMB_X95_Y18_N0
\escolhaproduto|NS.E80~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E80~2_combout\ = (\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|NS.E80~1_combout\) # ((\escolhaproduto|PS.E80~q\ & !\escolhaproduto|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E80~q\,
	datab => \escolhaproduto|NS.E80~1_combout\,
	datac => \escolhaproduto|NS~1_combout\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|NS.E80~2_combout\);

-- Location: LCCOMB_X95_Y18_N8
\escolhaproduto|NS.E80~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E80~4_combout\ = (\escolhaproduto|NS.E80~3_combout\) # ((\escolhaproduto|NS.E80~2_combout\) # ((\escolhaproduto|NS.E70~5_combout\ & \escolhaproduto|PS.E80~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E80~3_combout\,
	datab => \escolhaproduto|NS.E70~5_combout\,
	datac => \escolhaproduto|NS.E80~2_combout\,
	datad => \escolhaproduto|PS.E80~q\,
	combout => \escolhaproduto|NS.E80~4_combout\);

-- Location: LCCOMB_X97_Y20_N0
\escolhaproduto|NS.E80_2004\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E80_2004~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E80~4_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E80_2004~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E80~4_combout\,
	datab => \escolhaproduto|NS.E80_2004~combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E80_2004~combout\);

-- Location: LCCOMB_X97_Y20_N4
\escolhaproduto|PS~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~37_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E80_2004~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E80_2004~combout\,
	combout => \escolhaproduto|PS~37_combout\);

-- Location: FF_X97_Y20_N5
\escolhaproduto|PS.E80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E80~q\);

-- Location: LCCOMB_X97_Y19_N8
\escolhaproduto|NS.E100~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E100~1_combout\ = (\escolhaproduto|s_moeda\(0) & (\escolhaproduto|PS.E90~q\)) # (!\escolhaproduto|s_moeda\(0) & (((\escolhaproduto|s_moeda\(1) & \escolhaproduto|PS.E80~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(0),
	datab => \escolhaproduto|PS.E90~q\,
	datac => \escolhaproduto|s_moeda\(1),
	datad => \escolhaproduto|PS.E80~q\,
	combout => \escolhaproduto|NS.E100~1_combout\);

-- Location: LCCOMB_X96_Y19_N12
\escolhaproduto|NS.E100~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E100~2_combout\ = (\escolhaproduto|NS.E100~1_combout\) # ((\escolhaproduto|NS~0_combout\ & \escolhaproduto|PS.E50~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS~0_combout\,
	datac => \escolhaproduto|NS.E100~1_combout\,
	datad => \escolhaproduto|PS.E50~q\,
	combout => \escolhaproduto|NS.E100~2_combout\);

-- Location: LCCOMB_X96_Y17_N28
\escolhaproduto|NS.E100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E100~0_combout\ = (\produtodisplay|Mux1~0_combout\ & (\escolhaproduto|PS.E100~q\ & ((\escolhaproduto|WideOr130~combout\) # (!\escolhaproduto|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~1_combout\,
	datab => \produtodisplay|Mux1~0_combout\,
	datac => \escolhaproduto|WideOr130~combout\,
	datad => \escolhaproduto|PS.E100~q\,
	combout => \escolhaproduto|NS.E100~0_combout\);

-- Location: LCCOMB_X97_Y17_N28
\escolhaproduto|NS.E100~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E100~3_combout\ = (\SW[2]~input_o\ & (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \escolhaproduto|PS.E100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \escolhaproduto|PS.E100~q\,
	combout => \escolhaproduto|NS.E100~3_combout\);

-- Location: LCCOMB_X97_Y17_N4
\escolhaproduto|NS.E100~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E100~4_combout\ = (\escolhaproduto|NS.E100~3_combout\) # ((\escolhaproduto|PS.E50~q\ & (\escolhaproduto|NS~0_combout\ & \escolhaproduto|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E50~q\,
	datab => \escolhaproduto|NS~0_combout\,
	datac => \escolhaproduto|Equal2~0_combout\,
	datad => \escolhaproduto|NS.E100~3_combout\,
	combout => \escolhaproduto|NS.E100~4_combout\);

-- Location: LCCOMB_X97_Y17_N16
\escolhaproduto|NS.E100~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E100~5_combout\ = (\escolhaproduto|NS.E100~0_combout\) # ((\escolhaproduto|NS.E100~4_combout\) # ((\escolhaproduto|NS~3_combout\ & !\escolhaproduto|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E100~0_combout\,
	datab => \escolhaproduto|NS.E100~4_combout\,
	datac => \escolhaproduto|NS~3_combout\,
	datad => \escolhaproduto|PS.E0~q\,
	combout => \escolhaproduto|NS.E100~5_combout\);

-- Location: LCCOMB_X97_Y17_N0
\escolhaproduto|NS.E100~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E100~6_combout\ = (\escolhaproduto|NS.E100~5_combout\) # ((\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|NS.E100~2_combout\))) # (!\escolhaproduto|NS.E130~2_combout\ & (\escolhaproduto|PS.E100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E100~q\,
	datab => \escolhaproduto|NS.E130~2_combout\,
	datac => \escolhaproduto|NS.E100~2_combout\,
	datad => \escolhaproduto|NS.E100~5_combout\,
	combout => \escolhaproduto|NS.E100~6_combout\);

-- Location: LCCOMB_X97_Y18_N28
\escolhaproduto|NS.E100_1980\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E100_1980~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E100~6_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E100_1980~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E100~6_combout\,
	datac => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	datad => \escolhaproduto|NS.E100_1980~combout\,
	combout => \escolhaproduto|NS.E100_1980~combout\);

-- Location: LCCOMB_X97_Y18_N0
\escolhaproduto|PS~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~36_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E100_1980~combout\ & ((!\escolhaproduto|contador\(0)) # (!\escolhaproduto|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \escolhaproduto|contador\(1),
	datac => \escolhaproduto|contador\(0),
	datad => \escolhaproduto|NS.E100_1980~combout\,
	combout => \escolhaproduto|PS~36_combout\);

-- Location: FF_X97_Y18_N1
\escolhaproduto|PS.E100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E100~q\);

-- Location: LCCOMB_X95_Y18_N30
\escolhaproduto|NS.E150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E150~0_combout\ = (!\SW[0]~input_o\ & ((\escolhaproduto|PS.E150~q\) # ((\escolhaproduto|PS.E50~q\ & \escolhaproduto|NS~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E50~q\,
	datab => \escolhaproduto|PS.E150~q\,
	datac => \escolhaproduto|NS~3_combout\,
	datad => \SW[0]~input_o\,
	combout => \escolhaproduto|NS.E150~0_combout\);

-- Location: LCCOMB_X95_Y18_N28
\escolhaproduto|NS.E150~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E150~1_combout\ = (\escolhaproduto|NS.E150~0_combout\) # ((\escolhaproduto|PS.E100~q\ & (\escolhaproduto|NS~0_combout\ & \produtodisplay|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E100~q\,
	datab => \escolhaproduto|NS~0_combout\,
	datac => \escolhaproduto|NS.E150~0_combout\,
	datad => \produtodisplay|Mux1~0_combout\,
	combout => \escolhaproduto|NS.E150~1_combout\);

-- Location: LCCOMB_X96_Y20_N16
\escolhaproduto|NS.E150_1920\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E150_1920~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E150~1_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E150_1920~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E150~1_combout\,
	datac => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	datad => \escolhaproduto|NS.E150_1920~combout\,
	combout => \escolhaproduto|NS.E150_1920~combout\);

-- Location: LCCOMB_X96_Y20_N8
\escolhaproduto|PS~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~31_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E150_1920~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E150_1920~combout\,
	combout => \escolhaproduto|PS~31_combout\);

-- Location: FF_X96_Y20_N9
\escolhaproduto|PS.E150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E150~q\);

-- Location: LCCOMB_X98_Y20_N18
\escolhaproduto|NS.E160~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E160~0_combout\ = (\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|PS.E160~q\) # ((\escolhaproduto|NS~3_combout\ & \escolhaproduto|PS.E60~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~3_combout\,
	datab => \escolhaproduto|PS.E160~q\,
	datac => \escolhaproduto|PS.E60~q\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|NS.E160~0_combout\);

-- Location: LCCOMB_X98_Y20_N14
\escolhaproduto|NS.E160~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E160~1_combout\ = (\escolhaproduto|NS.E160~0_combout\) # ((\escolhaproduto|NS~0_combout\ & (\produtodisplay|Mux1~0_combout\ & \escolhaproduto|PS.E110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~0_combout\,
	datab => \escolhaproduto|NS.E160~0_combout\,
	datac => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|PS.E110~q\,
	combout => \escolhaproduto|NS.E160~1_combout\);

-- Location: LCCOMB_X98_Y20_N2
\escolhaproduto|NS.E160_1908\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E160_1908~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E160~1_combout\))) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E160_1908~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E160_1908~combout\,
	datac => \escolhaproduto|NS.E160~1_combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E160_1908~combout\);

-- Location: LCCOMB_X98_Y20_N28
\escolhaproduto|PS~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~34_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E160_1908~combout\ & ((!\escolhaproduto|contador\(0)) # (!\escolhaproduto|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(1),
	datab => \escolhaproduto|contador\(0),
	datac => \SW[17]~input_o\,
	datad => \escolhaproduto|NS.E160_1908~combout\,
	combout => \escolhaproduto|PS~34_combout\);

-- Location: FF_X98_Y20_N29
\escolhaproduto|PS.E160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E160~q\);

-- Location: LCCOMB_X96_Y20_N10
\escolhaproduto|WideOr59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr59~0_combout\ = (!\escolhaproduto|PS.E140~q\ & (!\escolhaproduto|PS.E170~q\ & (!\escolhaproduto|PS.E150~q\ & !\escolhaproduto|PS.E160~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E140~q\,
	datab => \escolhaproduto|PS.E170~q\,
	datac => \escolhaproduto|PS.E150~q\,
	datad => \escolhaproduto|PS.E160~q\,
	combout => \escolhaproduto|WideOr59~0_combout\);

-- Location: LCCOMB_X96_Y18_N16
\escolhaproduto|WideOr94\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr94~combout\ = (((\escolhaproduto|PS.E190~q\) # (\escolhaproduto|PS.E180~q\)) # (!\escolhaproduto|WideOr59~0_combout\)) # (!\escolhaproduto|WideOr23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr23~0_combout\,
	datab => \escolhaproduto|WideOr59~0_combout\,
	datac => \escolhaproduto|PS.E190~q\,
	datad => \escolhaproduto|PS.E180~q\,
	combout => \escolhaproduto|WideOr94~combout\);

-- Location: LCCOMB_X97_Y18_N26
\escolhaproduto|NS.E210~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E210~2_combout\ = (\SW[1]~input_o\ & (!\escolhaproduto|WideOr54~combout\)) # (!\SW[1]~input_o\ & (((\SW[2]~input_o\ & \escolhaproduto|WideOr94~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \escolhaproduto|WideOr54~combout\,
	datac => \SW[2]~input_o\,
	datad => \escolhaproduto|WideOr94~combout\,
	combout => \escolhaproduto|NS.E210~2_combout\);

-- Location: LCCOMB_X97_Y18_N12
\escolhaproduto|WideOr57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr57~0_combout\ = (!\escolhaproduto|PS.E20~q\ & (!\escolhaproduto|PS.E10~q\ & !\escolhaproduto|PS.E30~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E20~q\,
	datac => \escolhaproduto|PS.E10~q\,
	datad => \escolhaproduto|PS.E30~q\,
	combout => \escolhaproduto|WideOr57~0_combout\);

-- Location: LCCOMB_X98_Y18_N26
\escolhaproduto|NS.E210~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E210~1_combout\ = (\escolhaproduto|WideOr57~0_combout\ & (\escolhaproduto|PS.E0~q\ & \escolhaproduto|WideOr0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr57~0_combout\,
	datac => \escolhaproduto|PS.E0~q\,
	datad => \escolhaproduto|WideOr0~8_combout\,
	combout => \escolhaproduto|NS.E210~1_combout\);

-- Location: LCCOMB_X98_Y18_N30
\escolhaproduto|NS.E210~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E210~3_combout\ = (\SW[0]~input_o\ & ((\escolhaproduto|NS.E210~1_combout\))) # (!\SW[0]~input_o\ & (\escolhaproduto|NS.E210~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E210~2_combout\,
	datab => \SW[0]~input_o\,
	datac => \escolhaproduto|NS.E210~1_combout\,
	combout => \escolhaproduto|NS.E210~3_combout\);

-- Location: LCCOMB_X96_Y18_N20
\escolhaproduto|NS.E210~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E210~4_combout\ = (\escolhaproduto|PS.E210~q\) # ((\escolhaproduto|PS.E110~q\ & \escolhaproduto|NS~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E110~q\,
	datab => \escolhaproduto|PS.E210~q\,
	datad => \escolhaproduto|NS~3_combout\,
	combout => \escolhaproduto|NS.E210~4_combout\);

-- Location: LCCOMB_X97_Y18_N2
\escolhaproduto|NS.E210~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E210~5_combout\ = (\escolhaproduto|NS.E210~3_combout\ & ((\escolhaproduto|PS.E210~q\) # ((\escolhaproduto|NS.E210~4_combout\ & \escolhaproduto|NS.E200~1_combout\)))) # (!\escolhaproduto|NS.E210~3_combout\ & 
-- (\escolhaproduto|NS.E210~4_combout\ & ((\escolhaproduto|NS.E200~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E210~3_combout\,
	datab => \escolhaproduto|NS.E210~4_combout\,
	datac => \escolhaproduto|PS.E210~q\,
	datad => \escolhaproduto|NS.E200~1_combout\,
	combout => \escolhaproduto|NS.E210~5_combout\);

-- Location: LCCOMB_X97_Y18_N16
\escolhaproduto|NS.E210_1848\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E210_1848~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E210~5_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E210_1848~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E210~5_combout\,
	datac => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	datad => \escolhaproduto|NS.E210_1848~combout\,
	combout => \escolhaproduto|NS.E210_1848~combout\);

-- Location: LCCOMB_X97_Y18_N30
\escolhaproduto|PS~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~33_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E210_1848~combout\ & ((!\escolhaproduto|contador\(0)) # (!\escolhaproduto|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \escolhaproduto|contador\(1),
	datac => \escolhaproduto|contador\(0),
	datad => \escolhaproduto|NS.E210_1848~combout\,
	combout => \escolhaproduto|PS~33_combout\);

-- Location: FF_X97_Y18_N31
\escolhaproduto|PS.E210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E210~q\);

-- Location: LCCOMB_X96_Y18_N28
\escolhaproduto|WideOr0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr0~8_combout\ = (!\escolhaproduto|PS.E210~q\ & (\escolhaproduto|WideOr100~0_combout\ & (!\escolhaproduto|PS.E200~q\ & \escolhaproduto|WideOr59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E210~q\,
	datab => \escolhaproduto|WideOr100~0_combout\,
	datac => \escolhaproduto|PS.E200~q\,
	datad => \escolhaproduto|WideOr59~0_combout\,
	combout => \escolhaproduto|WideOr0~8_combout\);

-- Location: LCCOMB_X98_Y19_N4
\escolhaproduto|NS.E90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E90~2_combout\ = (\escolhaproduto|WideOr0~8_combout\ & (\escolhaproduto|PS.E0~q\ & (\SW[0]~input_o\ & \escolhaproduto|WideOr57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr0~8_combout\,
	datab => \escolhaproduto|PS.E0~q\,
	datac => \SW[0]~input_o\,
	datad => \escolhaproduto|WideOr57~0_combout\,
	combout => \escolhaproduto|NS.E90~2_combout\);

-- Location: LCCOMB_X98_Y20_N30
\escolhaproduto|NS.E90~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E90~5_combout\ = (\escolhaproduto|s_moeda\(0) & (((\escolhaproduto|PS.E80~q\)))) # (!\escolhaproduto|s_moeda\(0) & (\escolhaproduto|PS.E70~q\ & (\escolhaproduto|s_moeda\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E70~q\,
	datab => \escolhaproduto|s_moeda\(1),
	datac => \escolhaproduto|PS.E80~q\,
	datad => \escolhaproduto|s_moeda\(0),
	combout => \escolhaproduto|NS.E90~5_combout\);

-- Location: LCCOMB_X98_Y20_N8
\escolhaproduto|NS.E90~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E90~7_combout\ = (\SW[1]~input_o\ & (((\escolhaproduto|PS.E90~q\)))) # (!\SW[1]~input_o\ & ((\escolhaproduto|NS.E90~5_combout\) # ((!\escolhaproduto|NS~1_combout\ & \escolhaproduto|PS.E90~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \escolhaproduto|NS~1_combout\,
	datac => \escolhaproduto|NS.E90~5_combout\,
	datad => \escolhaproduto|PS.E90~q\,
	combout => \escolhaproduto|NS.E90~7_combout\);

-- Location: LCCOMB_X98_Y20_N12
\escolhaproduto|NS.E90~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E90~4_combout\ = (\escolhaproduto|s_moeda\(2) & (!\escolhaproduto|s_moeda\(1) & (!\escolhaproduto|s_moeda\(0) & \escolhaproduto|PS.E40~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(2),
	datab => \escolhaproduto|s_moeda\(1),
	datac => \escolhaproduto|s_moeda\(0),
	datad => \escolhaproduto|PS.E40~q\,
	combout => \escolhaproduto|NS.E90~4_combout\);

-- Location: LCCOMB_X98_Y20_N4
\escolhaproduto|NS.E90~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E90~8_combout\ = (!\SW[0]~input_o\ & ((\escolhaproduto|NS.E90~7_combout\) # (\escolhaproduto|NS.E90~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \escolhaproduto|NS.E90~7_combout\,
	datad => \escolhaproduto|NS.E90~4_combout\,
	combout => \escolhaproduto|NS.E90~8_combout\);

-- Location: LCCOMB_X95_Y18_N24
\escolhaproduto|NS.E90~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E90~3_combout\ = (\escolhaproduto|PS.E90~q\ & ((\escolhaproduto|produto_C~0_combout\) # ((\produtodisplay|Mux1~0_combout\ & \escolhaproduto|WideOr130~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \produtodisplay|Mux1~0_combout\,
	datab => \escolhaproduto|PS.E90~q\,
	datac => \escolhaproduto|produto_C~0_combout\,
	datad => \escolhaproduto|WideOr130~combout\,
	combout => \escolhaproduto|NS.E90~3_combout\);

-- Location: LCCOMB_X98_Y19_N10
\escolhaproduto|NS.E90~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E90~6_combout\ = (\escolhaproduto|NS.E90~8_combout\) # ((\escolhaproduto|NS.E90~3_combout\) # ((\escolhaproduto|NS.E90~2_combout\ & \escolhaproduto|PS.E90~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E90~2_combout\,
	datab => \escolhaproduto|NS.E90~8_combout\,
	datac => \escolhaproduto|NS.E90~3_combout\,
	datad => \escolhaproduto|PS.E90~q\,
	combout => \escolhaproduto|NS.E90~6_combout\);

-- Location: LCCOMB_X98_Y19_N20
\escolhaproduto|NS.E90_1992\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E90_1992~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E90~6_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E90_1992~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E90~6_combout\,
	datac => \escolhaproduto|NS.E90_1992~combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E90_1992~combout\);

-- Location: LCCOMB_X98_Y19_N30
\escolhaproduto|PS~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~25_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E90_1992~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E90_1992~combout\,
	combout => \escolhaproduto|PS~25_combout\);

-- Location: FF_X98_Y19_N31
\escolhaproduto|PS.E90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E90~q\);

-- Location: LCCOMB_X98_Y20_N26
\escolhaproduto|NS.E190~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E190~0_combout\ = (\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|PS.E190~q\) # ((\escolhaproduto|NS~3_combout\ & \escolhaproduto|PS.E90~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~3_combout\,
	datab => \escolhaproduto|PS.E90~q\,
	datac => \escolhaproduto|PS.E190~q\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|NS.E190~0_combout\);

-- Location: LCCOMB_X97_Y20_N10
\escolhaproduto|NS.E190_1872\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E190_1872~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E190~0_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E190_1872~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E190~0_combout\,
	datac => \escolhaproduto|NS.E190_1872~combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E190_1872~combout\);

-- Location: LCCOMB_X97_Y20_N12
\escolhaproduto|PS~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~45_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E190_1872~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E190_1872~combout\,
	combout => \escolhaproduto|PS~45_combout\);

-- Location: FF_X97_Y20_N13
\escolhaproduto|PS.E190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E190~q\);

-- Location: LCCOMB_X97_Y20_N22
\escolhaproduto|WideOr100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr100~0_combout\ = (!\escolhaproduto|PS.E190~q\ & !\escolhaproduto|PS.E180~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E190~q\,
	datad => \escolhaproduto|PS.E180~q\,
	combout => \escolhaproduto|WideOr100~0_combout\);

-- Location: LCCOMB_X95_Y18_N12
\escolhaproduto|produto_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|produto_C~0_combout\ = (!\escolhaproduto|Equal3~0_combout\ & (((!\escolhaproduto|WideOr59~0_combout\) # (!\escolhaproduto|WideOr23~0_combout\)) # (!\escolhaproduto|WideOr100~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr100~0_combout\,
	datab => \escolhaproduto|WideOr23~0_combout\,
	datac => \escolhaproduto|Equal3~0_combout\,
	datad => \escolhaproduto|WideOr59~0_combout\,
	combout => \escolhaproduto|produto_C~0_combout\);

-- Location: LCCOMB_X98_Y18_N16
\escolhaproduto|NS.E20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E20~7_combout\ = (\escolhaproduto|NS.E20~6_combout\) # ((\escolhaproduto|PS.E20~q\ & ((\escolhaproduto|produto_C~0_combout\) # (!\escolhaproduto|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E20~6_combout\,
	datab => \escolhaproduto|produto_C~0_combout\,
	datac => \escolhaproduto|PS.E20~q\,
	datad => \escolhaproduto|NS~1_combout\,
	combout => \escolhaproduto|NS.E20~7_combout\);

-- Location: LCCOMB_X97_Y19_N26
\escolhaproduto|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr11~0_combout\ = (!\escolhaproduto|PS.E60~q\ & (!\escolhaproduto|PS.E50~q\ & (!\escolhaproduto|PS.E40~q\ & !\escolhaproduto|PS.E70~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E60~q\,
	datab => \escolhaproduto|PS.E50~q\,
	datac => \escolhaproduto|PS.E40~q\,
	datad => \escolhaproduto|PS.E70~q\,
	combout => \escolhaproduto|WideOr11~0_combout\);

-- Location: LCCOMB_X97_Y19_N10
\escolhaproduto|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr4~0_combout\ = (!\escolhaproduto|PS.E90~q\ & !\escolhaproduto|PS.E80~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \escolhaproduto|PS.E90~q\,
	datad => \escolhaproduto|PS.E80~q\,
	combout => \escolhaproduto|WideOr4~0_combout\);

-- Location: LCCOMB_X96_Y19_N16
\escolhaproduto|NS.E20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E20~4_combout\ = (\SW[0]~input_o\ & (((!\escolhaproduto|WideOr23~0_combout\) # (!\escolhaproduto|WideOr4~0_combout\)) # (!\escolhaproduto|WideOr11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr11~0_combout\,
	datab => \escolhaproduto|WideOr4~0_combout\,
	datac => \escolhaproduto|WideOr23~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \escolhaproduto|NS.E20~4_combout\);

-- Location: LCCOMB_X95_Y18_N14
\escolhaproduto|NS.E20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E20~5_combout\ = (\escolhaproduto|PS.E20~q\ & ((\escolhaproduto|NS.E20~4_combout\) # ((\produtodisplay|Mux1~0_combout\ & \escolhaproduto|WideOr130~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E20~q\,
	datab => \escolhaproduto|NS.E20~4_combout\,
	datac => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|WideOr130~combout\,
	combout => \escolhaproduto|NS.E20~5_combout\);

-- Location: LCCOMB_X98_Y18_N24
\escolhaproduto|NS.E20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E20~8_combout\ = (\escolhaproduto|NS.E20~7_combout\) # ((\escolhaproduto|NS.E20~5_combout\) # ((\escolhaproduto|PS.E20~q\ & \escolhaproduto|NS.E20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E20~q\,
	datab => \escolhaproduto|NS.E20~3_combout\,
	datac => \escolhaproduto|NS.E20~7_combout\,
	datad => \escolhaproduto|NS.E20~5_combout\,
	combout => \escolhaproduto|NS.E20~8_combout\);

-- Location: LCCOMB_X98_Y18_N20
\escolhaproduto|NS.E20_2076\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E20_2076~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E20~8_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E20_2076~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E20~8_combout\,
	datab => \escolhaproduto|NS.E20_2076~combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E20_2076~combout\);

-- Location: LCCOMB_X98_Y18_N4
\escolhaproduto|PS~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~41_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E20_2076~combout\ & ((!\escolhaproduto|contador\(0)) # (!\escolhaproduto|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \escolhaproduto|contador\(1),
	datac => \escolhaproduto|contador\(0),
	datad => \escolhaproduto|NS.E20_2076~combout\,
	combout => \escolhaproduto|PS~41_combout\);

-- Location: FF_X98_Y18_N5
\escolhaproduto|PS.E20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E20~q\);

-- Location: LCCOMB_X96_Y19_N18
\escolhaproduto|NS.E70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E70~3_combout\ = (!\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|PS.E70~q\) # ((\escolhaproduto|PS.E20~q\ & \escolhaproduto|NS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E70~q\,
	datab => \escolhaproduto|PS.E20~q\,
	datac => \escolhaproduto|NS.E130~2_combout\,
	datad => \escolhaproduto|NS~0_combout\,
	combout => \escolhaproduto|NS.E70~3_combout\);

-- Location: LCCOMB_X96_Y19_N20
\escolhaproduto|NS.E70~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E70~4_combout\ = (\escolhaproduto|NS.E70~3_combout\) # ((\escolhaproduto|PS.E50~q\ & (\escolhaproduto|NS~2_combout\ & \escolhaproduto|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E50~q\,
	datab => \escolhaproduto|NS~2_combout\,
	datac => \escolhaproduto|Equal2~0_combout\,
	datad => \escolhaproduto|NS.E70~3_combout\,
	combout => \escolhaproduto|NS.E70~4_combout\);

-- Location: LCCOMB_X95_Y19_N26
\escolhaproduto|NS.E70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E70~0_combout\ = (\escolhaproduto|s_moeda\(0) & (((\escolhaproduto|PS.E60~q\)))) # (!\escolhaproduto|s_moeda\(0) & (\escolhaproduto|s_moeda\(1) & ((\escolhaproduto|PS.E50~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(0),
	datab => \escolhaproduto|s_moeda\(1),
	datac => \escolhaproduto|PS.E60~q\,
	datad => \escolhaproduto|PS.E50~q\,
	combout => \escolhaproduto|NS.E70~0_combout\);

-- Location: LCCOMB_X95_Y19_N8
\escolhaproduto|NS.E70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E70~1_combout\ = (\escolhaproduto|NS.E70~0_combout\) # ((\escolhaproduto|NS~0_combout\ & \escolhaproduto|PS.E20~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS~0_combout\,
	datac => \escolhaproduto|NS.E70~0_combout\,
	datad => \escolhaproduto|PS.E20~q\,
	combout => \escolhaproduto|NS.E70~1_combout\);

-- Location: LCCOMB_X95_Y19_N30
\escolhaproduto|NS.E70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E70~2_combout\ = (\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|NS.E70~1_combout\) # ((!\escolhaproduto|NS~1_combout\ & \escolhaproduto|PS.E70~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~1_combout\,
	datab => \escolhaproduto|NS.E130~2_combout\,
	datac => \escolhaproduto|PS.E70~q\,
	datad => \escolhaproduto|NS.E70~1_combout\,
	combout => \escolhaproduto|NS.E70~2_combout\);

-- Location: LCCOMB_X96_Y19_N28
\escolhaproduto|NS.E70~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E70~6_combout\ = (\escolhaproduto|NS.E70~4_combout\) # ((\escolhaproduto|NS.E70~2_combout\) # ((\escolhaproduto|PS.E70~q\ & \escolhaproduto|NS.E70~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E70~q\,
	datab => \escolhaproduto|NS.E70~4_combout\,
	datac => \escolhaproduto|NS.E70~5_combout\,
	datad => \escolhaproduto|NS.E70~2_combout\,
	combout => \escolhaproduto|NS.E70~6_combout\);

-- Location: LCCOMB_X96_Y19_N24
\escolhaproduto|NS.E70_2016\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E70_2016~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E70~6_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E70_2016~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E70~6_combout\,
	datac => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	datad => \escolhaproduto|NS.E70_2016~combout\,
	combout => \escolhaproduto|NS.E70_2016~combout\);

-- Location: LCCOMB_X96_Y19_N22
\escolhaproduto|PS~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~24_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E70_2016~combout\ & ((!\escolhaproduto|contador\(0)) # (!\escolhaproduto|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \escolhaproduto|contador\(1),
	datac => \escolhaproduto|contador\(0),
	datad => \escolhaproduto|NS.E70_2016~combout\,
	combout => \escolhaproduto|PS~24_combout\);

-- Location: FF_X96_Y19_N23
\escolhaproduto|PS.E70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E70~q\);

-- Location: LCCOMB_X96_Y20_N20
\escolhaproduto|NS.E170~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E170~0_combout\ = (\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|PS.E170~q\) # ((\escolhaproduto|PS.E70~q\ & \escolhaproduto|NS~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E70~q\,
	datab => \escolhaproduto|NS~3_combout\,
	datac => \escolhaproduto|PS.E170~q\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|NS.E170~0_combout\);

-- Location: LCCOMB_X97_Y20_N18
\escolhaproduto|NS.E170_1896\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E170_1896~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E170~0_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E170_1896~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E170~0_combout\,
	datab => \escolhaproduto|NS.E170_1896~combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E170_1896~combout\);

-- Location: LCCOMB_X97_Y20_N16
\escolhaproduto|PS~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~44_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E170_1896~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E170_1896~combout\,
	combout => \escolhaproduto|PS~44_combout\);

-- Location: FF_X97_Y20_N17
\escolhaproduto|PS.E170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E170~q\);

-- Location: LCCOMB_X97_Y18_N14
\escolhaproduto|WideOr25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr25~0_combout\ = (!\escolhaproduto|PS.E170~q\ & (\escolhaproduto|WideOr100~0_combout\ & (!\escolhaproduto|PS.E160~q\ & \escolhaproduto|WideOr0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E170~q\,
	datab => \escolhaproduto|WideOr100~0_combout\,
	datac => \escolhaproduto|PS.E160~q\,
	datad => \escolhaproduto|WideOr0~6_combout\,
	combout => \escolhaproduto|WideOr25~0_combout\);

-- Location: LCCOMB_X98_Y18_N12
\escolhaproduto|NS.E0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E0~8_combout\ = (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\) # ((!\escolhaproduto|PS.E200~q\ & (!\escolhaproduto|PS.E210~q\ & \escolhaproduto|NS.E130~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datab => \escolhaproduto|PS.E200~q\,
	datac => \escolhaproduto|PS.E210~q\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|NS.E0~8_combout\);

-- Location: LCCOMB_X98_Y18_N2
\escolhaproduto|NS.E0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E0~6_combout\ = (\escolhaproduto|NS.E0~8_combout\ & ((\escolhaproduto|WideOr25~0_combout\) # ((\escolhaproduto|NS.E130~2_combout\)))) # (!\escolhaproduto|NS.E0~8_combout\ & (((\escolhaproduto|WideOr0~8_combout\ & 
-- !\escolhaproduto|NS.E130~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr25~0_combout\,
	datab => \escolhaproduto|WideOr0~8_combout\,
	datac => \escolhaproduto|NS.E0~8_combout\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|NS.E0~6_combout\);

-- Location: LCCOMB_X98_Y18_N14
\escolhaproduto|NS.E0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E0~7_combout\ = ((!\escolhaproduto|NS~1_combout\ & !\escolhaproduto|PS.E0~q\)) # (!\escolhaproduto|NS.E0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~1_combout\,
	datac => \escolhaproduto|NS.E0~6_combout\,
	datad => \escolhaproduto|PS.E0~q\,
	combout => \escolhaproduto|NS.E0~7_combout\);

-- Location: LCCOMB_X98_Y18_N10
\escolhaproduto|NS.E0_2100\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E0_2100~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E0~7_combout\))) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E0_2100~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E0_2100~combout\,
	datac => \escolhaproduto|NS.E0~7_combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E0_2100~combout\);

-- Location: LCCOMB_X98_Y18_N6
\escolhaproduto|PS~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~40_combout\ = (!\SW[17]~input_o\ & (!\escolhaproduto|NS.E0_2100~combout\ & ((!\escolhaproduto|contador\(0)) # (!\escolhaproduto|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \escolhaproduto|contador\(1),
	datac => \escolhaproduto|contador\(0),
	datad => \escolhaproduto|NS.E0_2100~combout\,
	combout => \escolhaproduto|PS~40_combout\);

-- Location: FF_X98_Y18_N7
\escolhaproduto|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E0~q\);

-- Location: LCCOMB_X96_Y17_N10
\escolhaproduto|NS.E10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E10~0_combout\ = (\escolhaproduto|NS~1_combout\ & ((!\escolhaproduto|WideOr130~combout\) # (!\produtodisplay|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~1_combout\,
	datab => \produtodisplay|Mux1~0_combout\,
	datac => \escolhaproduto|WideOr130~combout\,
	combout => \escolhaproduto|NS.E10~0_combout\);

-- Location: LCCOMB_X96_Y20_N4
\escolhaproduto|NS.E10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E10~1_combout\ = (!\escolhaproduto|produto_C~0_combout\ & (!\escolhaproduto|NS.E20~4_combout\ & (\escolhaproduto|NS.E10~0_combout\ & !\escolhaproduto|NS.E20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|produto_C~0_combout\,
	datab => \escolhaproduto|NS.E20~4_combout\,
	datac => \escolhaproduto|NS.E10~0_combout\,
	datad => \escolhaproduto|NS.E20~3_combout\,
	combout => \escolhaproduto|NS.E10~1_combout\);

-- Location: LCCOMB_X96_Y20_N6
\escolhaproduto|NS.E10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E10~2_combout\ = (\escolhaproduto|PS.E10~q\ & (((!\escolhaproduto|PS.E0~q\ & \escolhaproduto|s_moeda\(0))) # (!\escolhaproduto|NS.E10~1_combout\))) # (!\escolhaproduto|PS.E10~q\ & (!\escolhaproduto|PS.E0~q\ & 
-- ((\escolhaproduto|s_moeda\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E10~q\,
	datab => \escolhaproduto|PS.E0~q\,
	datac => \escolhaproduto|NS.E10~1_combout\,
	datad => \escolhaproduto|s_moeda\(0),
	combout => \escolhaproduto|NS.E10~2_combout\);

-- Location: LCCOMB_X97_Y20_N24
\escolhaproduto|NS.E10_2088\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E10_2088~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E10~2_combout\))) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E10_2088~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E10_2088~combout\,
	datac => \escolhaproduto|NS.E10~2_combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E10_2088~combout\);

-- Location: LCCOMB_X97_Y20_N26
\escolhaproduto|PS~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~28_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E10_2088~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E10_2088~combout\,
	combout => \escolhaproduto|PS~28_combout\);

-- Location: FF_X97_Y20_N27
\escolhaproduto|PS.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E10~q\);

-- Location: LCCOMB_X95_Y20_N14
\escolhaproduto|NS.E110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E110~0_combout\ = (\escolhaproduto|PS.E110~q\ & (\produtodisplay|Mux1~0_combout\ & ((\escolhaproduto|WideOr130~combout\) # (!\escolhaproduto|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E110~q\,
	datab => \produtodisplay|Mux1~0_combout\,
	datac => \escolhaproduto|WideOr130~combout\,
	datad => \escolhaproduto|NS~1_combout\,
	combout => \escolhaproduto|NS.E110~0_combout\);

-- Location: LCCOMB_X95_Y17_N10
\escolhaproduto|NS.E110~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E110~2_combout\ = (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (\escolhaproduto|PS.E110~q\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \escolhaproduto|PS.E110~q\,
	datad => \SW[0]~input_o\,
	combout => \escolhaproduto|NS.E110~2_combout\);

-- Location: LCCOMB_X95_Y17_N16
\escolhaproduto|NS.E110~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E110~3_combout\ = (\escolhaproduto|NS.E110~2_combout\) # ((\escolhaproduto|s_moeda\(0) & (\produtodisplay|Mux1~0_combout\ & \escolhaproduto|PS.E100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(0),
	datab => \escolhaproduto|NS.E110~2_combout\,
	datac => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|PS.E100~q\,
	combout => \escolhaproduto|NS.E110~3_combout\);

-- Location: LCCOMB_X95_Y20_N28
\escolhaproduto|NS.E110~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E110~4_combout\ = (\escolhaproduto|NS.E110~0_combout\) # ((\escolhaproduto|NS.E110~3_combout\) # ((\escolhaproduto|PS.E10~q\ & \escolhaproduto|NS~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E10~q\,
	datab => \escolhaproduto|NS~3_combout\,
	datac => \escolhaproduto|NS.E110~0_combout\,
	datad => \escolhaproduto|NS.E110~3_combout\,
	combout => \escolhaproduto|NS.E110~4_combout\);

-- Location: LCCOMB_X95_Y19_N18
\escolhaproduto|NS.E110~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E110~1_combout\ = (\escolhaproduto|PS.E90~q\ & ((\escolhaproduto|NS~2_combout\) # ((\escolhaproduto|NS~0_combout\ & \escolhaproduto|PS.E60~q\)))) # (!\escolhaproduto|PS.E90~q\ & (((\escolhaproduto|NS~0_combout\ & 
-- \escolhaproduto|PS.E60~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E90~q\,
	datab => \escolhaproduto|NS~2_combout\,
	datac => \escolhaproduto|NS~0_combout\,
	datad => \escolhaproduto|PS.E60~q\,
	combout => \escolhaproduto|NS.E110~1_combout\);

-- Location: LCCOMB_X95_Y20_N2
\escolhaproduto|NS.E110~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E110~5_combout\ = (\escolhaproduto|NS.E110~4_combout\) # ((\escolhaproduto|NS.E130~2_combout\ & (\escolhaproduto|NS.E110~1_combout\)) # (!\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|PS.E110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E110~4_combout\,
	datab => \escolhaproduto|NS.E110~1_combout\,
	datac => \escolhaproduto|NS.E130~2_combout\,
	datad => \escolhaproduto|PS.E110~q\,
	combout => \escolhaproduto|NS.E110~5_combout\);

-- Location: LCCOMB_X95_Y20_N16
\escolhaproduto|NS.E110_1968\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E110_1968~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E110~5_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E110_1968~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E110~5_combout\,
	datac => \escolhaproduto|NS.E110_1968~combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E110_1968~combout\);

-- Location: LCCOMB_X95_Y20_N20
\escolhaproduto|PS~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~26_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E110_1968~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E110_1968~combout\,
	combout => \escolhaproduto|PS~26_combout\);

-- Location: FF_X95_Y20_N21
\escolhaproduto|PS.E110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \escolhaproduto|PS~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E110~q\);

-- Location: LCCOMB_X95_Y17_N14
\escolhaproduto|NS.E120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E120~0_combout\ = (\escolhaproduto|s_moeda\(0) & (((\escolhaproduto|PS.E110~q\)))) # (!\escolhaproduto|s_moeda\(0) & (\escolhaproduto|s_moeda\(1) & ((\escolhaproduto|PS.E100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(0),
	datab => \escolhaproduto|s_moeda\(1),
	datac => \escolhaproduto|PS.E110~q\,
	datad => \escolhaproduto|PS.E100~q\,
	combout => \escolhaproduto|NS.E120~0_combout\);

-- Location: LCCOMB_X95_Y17_N20
\escolhaproduto|NS.E120~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E120~1_combout\ = (\escolhaproduto|NS~3_combout\ & ((\escolhaproduto|PS.E20~q\) # ((\escolhaproduto|NS.E120~0_combout\ & \produtodisplay|Mux1~0_combout\)))) # (!\escolhaproduto|NS~3_combout\ & (\escolhaproduto|NS.E120~0_combout\ & 
-- (\produtodisplay|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~3_combout\,
	datab => \escolhaproduto|NS.E120~0_combout\,
	datac => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|PS.E20~q\,
	combout => \escolhaproduto|NS.E120~1_combout\);

-- Location: LCCOMB_X95_Y17_N26
\escolhaproduto|NS.E120~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E120~2_combout\ = (\escolhaproduto|PS.E70~q\ & (\escolhaproduto|NS~0_combout\ & ((\produtodisplay|Mux1~0_combout\) # (!\escolhaproduto|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E70~q\,
	datab => \escolhaproduto|Equal3~0_combout\,
	datac => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|NS~0_combout\,
	combout => \escolhaproduto|NS.E120~2_combout\);

-- Location: LCCOMB_X95_Y17_N12
\escolhaproduto|NS.E120~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E120~3_combout\ = (\escolhaproduto|NS.E120~1_combout\) # ((\escolhaproduto|PS.E120~q\) # (\escolhaproduto|NS.E120~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E120~1_combout\,
	datab => \escolhaproduto|PS.E120~q\,
	datac => \escolhaproduto|NS.E120~2_combout\,
	combout => \escolhaproduto|NS.E120~3_combout\);

-- Location: LCCOMB_X96_Y17_N24
\escolhaproduto|NS.E120_1956\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E120_1956~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E120~3_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E120_1956~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E120~3_combout\,
	datac => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	datad => \escolhaproduto|NS.E120_1956~combout\,
	combout => \escolhaproduto|NS.E120_1956~combout\);

-- Location: LCCOMB_X96_Y17_N0
\escolhaproduto|PS~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~38_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E120_1956~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E120_1956~combout\,
	combout => \escolhaproduto|PS~38_combout\);

-- Location: FF_X96_Y17_N1
\escolhaproduto|PS.E120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \escolhaproduto|PS~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E120~q\);

-- Location: LCCOMB_X96_Y18_N6
\escolhaproduto|WideOr23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr23~0_combout\ = (!\escolhaproduto|PS.E120~q\ & (!\escolhaproduto|PS.E100~q\ & (!\escolhaproduto|PS.E110~q\ & !\escolhaproduto|PS.E130~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E120~q\,
	datab => \escolhaproduto|PS.E100~q\,
	datac => \escolhaproduto|PS.E110~q\,
	datad => \escolhaproduto|PS.E130~q\,
	combout => \escolhaproduto|WideOr23~0_combout\);

-- Location: LCCOMB_X95_Y19_N4
\escolhaproduto|NS.E20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E20~2_combout\ = (\escolhaproduto|PS.E80~q\) # ((\escolhaproduto|PS.E150~q\) # ((\escolhaproduto|PS.E140~q\) # (\escolhaproduto|PS.E90~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E80~q\,
	datab => \escolhaproduto|PS.E150~q\,
	datac => \escolhaproduto|PS.E140~q\,
	datad => \escolhaproduto|PS.E90~q\,
	combout => \escolhaproduto|NS.E20~2_combout\);

-- Location: LCCOMB_X95_Y19_N2
\escolhaproduto|NS.E20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E20~9_combout\ = (\escolhaproduto|NS.E20~2_combout\) # ((\escolhaproduto|PS.E70~q\) # (\escolhaproduto|PS.E60~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E20~2_combout\,
	datac => \escolhaproduto|PS.E70~q\,
	datad => \escolhaproduto|PS.E60~q\,
	combout => \escolhaproduto|NS.E20~9_combout\);

-- Location: LCCOMB_X95_Y19_N22
\escolhaproduto|NS.E20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E20~3_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\escolhaproduto|NS.E20~9_combout\) # (!\escolhaproduto|WideOr23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \escolhaproduto|WideOr23~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \escolhaproduto|NS.E20~9_combout\,
	combout => \escolhaproduto|NS.E20~3_combout\);

-- Location: LCCOMB_X97_Y19_N28
\escolhaproduto|NS.E30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E30~1_combout\ = (\escolhaproduto|s_moeda\(0) & (((\escolhaproduto|PS.E20~q\)))) # (!\escolhaproduto|s_moeda\(0) & (\escolhaproduto|PS.E10~q\ & (\escolhaproduto|s_moeda\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(0),
	datab => \escolhaproduto|PS.E10~q\,
	datac => \escolhaproduto|s_moeda\(1),
	datad => \escolhaproduto|PS.E20~q\,
	combout => \escolhaproduto|NS.E30~1_combout\);

-- Location: LCCOMB_X98_Y19_N2
\escolhaproduto|NS.E30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E30~2_combout\ = (\escolhaproduto|NS.E30~1_combout\) # ((\escolhaproduto|PS.E30~q\ & ((\escolhaproduto|produto_C~0_combout\) # (!\escolhaproduto|NS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E30~1_combout\,
	datab => \escolhaproduto|PS.E30~q\,
	datac => \escolhaproduto|NS~1_combout\,
	datad => \escolhaproduto|produto_C~0_combout\,
	combout => \escolhaproduto|NS.E30~2_combout\);

-- Location: LCCOMB_X96_Y19_N4
\escolhaproduto|NS.E30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E30~0_combout\ = (\escolhaproduto|PS.E30~q\ & ((\escolhaproduto|NS.E20~4_combout\) # ((\escolhaproduto|WideOr130~combout\ & \produtodisplay|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr130~combout\,
	datab => \escolhaproduto|NS.E20~4_combout\,
	datac => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|PS.E30~q\,
	combout => \escolhaproduto|NS.E30~0_combout\);

-- Location: LCCOMB_X98_Y19_N6
\escolhaproduto|NS.E30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E30~3_combout\ = (\escolhaproduto|NS.E30~2_combout\) # ((\escolhaproduto|NS.E30~0_combout\) # ((\escolhaproduto|NS.E20~3_combout\ & \escolhaproduto|PS.E30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E20~3_combout\,
	datab => \escolhaproduto|PS.E30~q\,
	datac => \escolhaproduto|NS.E30~2_combout\,
	datad => \escolhaproduto|NS.E30~0_combout\,
	combout => \escolhaproduto|NS.E30~3_combout\);

-- Location: LCCOMB_X98_Y19_N18
\escolhaproduto|NS.E30_2064\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E30_2064~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E30~3_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E30_2064~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E30~3_combout\,
	datac => \escolhaproduto|NS.E30_2064~combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E30_2064~combout\);

-- Location: LCCOMB_X98_Y19_N12
\escolhaproduto|PS~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~29_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E30_2064~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E30_2064~combout\,
	combout => \escolhaproduto|PS~29_combout\);

-- Location: FF_X98_Y19_N13
\escolhaproduto|PS.E30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E30~q\);

-- Location: LCCOMB_X95_Y19_N6
\escolhaproduto|NS.E40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E40~1_combout\ = (\escolhaproduto|s_moeda\(0) & (!\escolhaproduto|PS.E30~q\)) # (!\escolhaproduto|s_moeda\(0) & (((!\escolhaproduto|PS.E20~q\) # (!\escolhaproduto|s_moeda\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(0),
	datab => \escolhaproduto|PS.E30~q\,
	datac => \escolhaproduto|s_moeda\(1),
	datad => \escolhaproduto|PS.E20~q\,
	combout => \escolhaproduto|NS.E40~1_combout\);

-- Location: LCCOMB_X95_Y19_N16
\escolhaproduto|NS.E40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E40~2_combout\ = ((\escolhaproduto|PS.E40~q\ & ((\SW[0]~input_o\) # (!\escolhaproduto|NS~1_combout\)))) # (!\escolhaproduto|NS.E40~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \escolhaproduto|PS.E40~q\,
	datad => \escolhaproduto|NS.E40~1_combout\,
	combout => \escolhaproduto|NS.E40~2_combout\);

-- Location: LCCOMB_X95_Y19_N24
\escolhaproduto|NS.E40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E40~0_combout\ = (\escolhaproduto|PS.E40~q\ & ((\escolhaproduto|NS.E20~3_combout\) # ((\produtodisplay|Mux1~0_combout\ & \escolhaproduto|WideOr130~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E20~3_combout\,
	datab => \produtodisplay|Mux1~0_combout\,
	datac => \escolhaproduto|PS.E40~q\,
	datad => \escolhaproduto|WideOr130~combout\,
	combout => \escolhaproduto|NS.E40~0_combout\);

-- Location: LCCOMB_X95_Y19_N14
\escolhaproduto|NS.E40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E40~3_combout\ = (\escolhaproduto|NS.E40~2_combout\) # ((\escolhaproduto|NS.E40~0_combout\) # ((\escolhaproduto|PS.E40~q\ & \escolhaproduto|produto_C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E40~q\,
	datab => \escolhaproduto|NS.E40~2_combout\,
	datac => \escolhaproduto|NS.E40~0_combout\,
	datad => \escolhaproduto|produto_C~0_combout\,
	combout => \escolhaproduto|NS.E40~3_combout\);

-- Location: LCCOMB_X98_Y19_N16
\escolhaproduto|NS.E40_2052\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E40_2052~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E40~3_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E40_2052~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E40~3_combout\,
	datab => \escolhaproduto|NS.E40_2052~combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E40_2052~combout\);

-- Location: LCCOMB_X98_Y19_N26
\escolhaproduto|PS~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~42_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E40_2052~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E40_2052~combout\,
	combout => \escolhaproduto|PS~42_combout\);

-- Location: FF_X98_Y19_N27
\escolhaproduto|PS.E40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E40~q\);

-- Location: LCCOMB_X98_Y19_N8
\escolhaproduto|NS.E50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E50~2_combout\ = (\SW[0]~input_o\ & (((\escolhaproduto|PS.E50~q\)))) # (!\SW[0]~input_o\ & (\escolhaproduto|s_moeda\(0) & ((\escolhaproduto|PS.E40~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|s_moeda\(0),
	datab => \escolhaproduto|PS.E50~q\,
	datac => \SW[0]~input_o\,
	datad => \escolhaproduto|PS.E40~q\,
	combout => \escolhaproduto|NS.E50~2_combout\);

-- Location: LCCOMB_X95_Y19_N10
\escolhaproduto|NS.E50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E50~1_combout\ = (\escolhaproduto|PS.E0~q\ & (\escolhaproduto|NS~2_combout\ & ((\escolhaproduto|PS.E30~q\)))) # (!\escolhaproduto|PS.E0~q\ & ((\escolhaproduto|NS~0_combout\) # ((\escolhaproduto|NS~2_combout\ & 
-- \escolhaproduto|PS.E30~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E0~q\,
	datab => \escolhaproduto|NS~2_combout\,
	datac => \escolhaproduto|NS~0_combout\,
	datad => \escolhaproduto|PS.E30~q\,
	combout => \escolhaproduto|NS.E50~1_combout\);

-- Location: LCCOMB_X98_Y19_N22
\escolhaproduto|NS.E50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E50~3_combout\ = (\escolhaproduto|NS.E50~2_combout\) # ((\escolhaproduto|NS.E50~1_combout\) # ((!\escolhaproduto|NS~1_combout\ & \escolhaproduto|PS.E50~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS~1_combout\,
	datab => \escolhaproduto|NS.E50~2_combout\,
	datac => \escolhaproduto|NS.E50~1_combout\,
	datad => \escolhaproduto|PS.E50~q\,
	combout => \escolhaproduto|NS.E50~3_combout\);

-- Location: LCCOMB_X95_Y19_N20
\escolhaproduto|NS.E50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E50~0_combout\ = (\escolhaproduto|PS.E50~q\ & ((\escolhaproduto|NS.E20~3_combout\) # ((\produtodisplay|Mux1~0_combout\ & \escolhaproduto|WideOr130~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E20~3_combout\,
	datab => \escolhaproduto|PS.E50~q\,
	datac => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|WideOr130~combout\,
	combout => \escolhaproduto|NS.E50~0_combout\);

-- Location: LCCOMB_X98_Y19_N28
\escolhaproduto|NS.E50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E50~4_combout\ = (\escolhaproduto|NS.E50~3_combout\) # ((\escolhaproduto|NS.E50~0_combout\) # ((\escolhaproduto|produto_C~0_combout\ & \escolhaproduto|PS.E50~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E50~3_combout\,
	datab => \escolhaproduto|NS.E50~0_combout\,
	datac => \escolhaproduto|produto_C~0_combout\,
	datad => \escolhaproduto|PS.E50~q\,
	combout => \escolhaproduto|NS.E50~4_combout\);

-- Location: LCCOMB_X98_Y19_N0
\escolhaproduto|NS.E50_2040\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E50_2040~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E50~4_combout\))) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E50_2040~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E50_2040~combout\,
	datac => \escolhaproduto|NS.E50~4_combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E50_2040~combout\);

-- Location: LCCOMB_X98_Y19_N24
\escolhaproduto|PS~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~30_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E50_2040~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E50_2040~combout\,
	combout => \escolhaproduto|PS~30_combout\);

-- Location: FF_X98_Y19_N25
\escolhaproduto|PS.E50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E50~q\);

-- Location: LCCOMB_X97_Y18_N6
\escolhaproduto|WideOr14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr14~0_combout\ = (!\escolhaproduto|PS.E50~q\ & (!\escolhaproduto|PS.E10~q\ & !\escolhaproduto|PS.E30~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E50~q\,
	datac => \escolhaproduto|PS.E10~q\,
	datad => \escolhaproduto|PS.E30~q\,
	combout => \escolhaproduto|WideOr14~0_combout\);

-- Location: LCCOMB_X97_Y18_N4
\escolhaproduto|WideOr27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr27~0_combout\ = (!\escolhaproduto|PS.E40~q\ & !\escolhaproduto|PS.E20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \escolhaproduto|PS.E40~q\,
	datad => \escolhaproduto|PS.E20~q\,
	combout => \escolhaproduto|WideOr27~0_combout\);

-- Location: LCCOMB_X97_Y18_N20
\escolhaproduto|WideOr54\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr54~combout\ = (((!\escolhaproduto|PS.E0~q\) # (!\escolhaproduto|WideOr25~0_combout\)) # (!\escolhaproduto|WideOr27~0_combout\)) # (!\escolhaproduto|WideOr14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr14~0_combout\,
	datab => \escolhaproduto|WideOr27~0_combout\,
	datac => \escolhaproduto|WideOr25~0_combout\,
	datad => \escolhaproduto|PS.E0~q\,
	combout => \escolhaproduto|WideOr54~combout\);

-- Location: LCCOMB_X96_Y18_N26
\escolhaproduto|WideOr24\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr24~combout\ = ((!\escolhaproduto|WideOr0~8_combout\) # (!\escolhaproduto|WideOr57~0_combout\)) # (!\escolhaproduto|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|PS.E0~q\,
	datac => \escolhaproduto|WideOr57~0_combout\,
	datad => \escolhaproduto|WideOr0~8_combout\,
	combout => \escolhaproduto|WideOr24~combout\);

-- Location: LCCOMB_X96_Y18_N18
\escolhaproduto|saida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|saida~0_combout\ = (\escolhaproduto|NS.E130~2_combout\ & (\escolhaproduto|WideOr94~combout\ & ((!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\)))) # (!\escolhaproduto|NS.E130~2_combout\ & 
-- (((\escolhaproduto|produtoUsadoDisplay[0]~0_combout\) # (!\escolhaproduto|WideOr24~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E130~2_combout\,
	datab => \escolhaproduto|WideOr94~combout\,
	datac => \escolhaproduto|WideOr24~combout\,
	datad => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	combout => \escolhaproduto|saida~0_combout\);

-- Location: LCCOMB_X96_Y18_N12
\escolhaproduto|saida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|saida~1_combout\ = (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & ((\escolhaproduto|saida~0_combout\ & (!\escolhaproduto|WideOr54~combout\)) # (!\escolhaproduto|saida~0_combout\ & ((\escolhaproduto|WideOr130~combout\))))) # 
-- (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (((\escolhaproduto|saida~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr54~combout\,
	datab => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datac => \escolhaproduto|WideOr130~combout\,
	datad => \escolhaproduto|saida~0_combout\,
	combout => \escolhaproduto|saida~1_combout\);

-- Location: LCCOMB_X87_Y66_N30
\escolhaproduto|reset_acucar\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|reset_acucar~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|saida~1_combout\))) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|reset_acucar~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|reset_acucar~combout\,
	datac => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	datad => \escolhaproduto|saida~1_combout\,
	combout => \escolhaproduto|reset_acucar~combout\);

-- Location: FF_X88_Y66_N3
\time_resetauto|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~0_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(0));

-- Location: LCCOMB_X88_Y66_N4
\time_resetauto|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~2_combout\ = (\time_resetauto|s_counter\(1) & (!\time_resetauto|Add0~1\)) # (!\time_resetauto|s_counter\(1) & ((\time_resetauto|Add0~1\) # (GND)))
-- \time_resetauto|Add0~3\ = CARRY((!\time_resetauto|Add0~1\) # (!\time_resetauto|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(1),
	datad => VCC,
	cin => \time_resetauto|Add0~1\,
	combout => \time_resetauto|Add0~2_combout\,
	cout => \time_resetauto|Add0~3\);

-- Location: FF_X88_Y66_N5
\time_resetauto|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~2_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(1));

-- Location: LCCOMB_X88_Y66_N6
\time_resetauto|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~4_combout\ = (\time_resetauto|s_counter\(2) & (\time_resetauto|Add0~3\ $ (GND))) # (!\time_resetauto|s_counter\(2) & (!\time_resetauto|Add0~3\ & VCC))
-- \time_resetauto|Add0~5\ = CARRY((\time_resetauto|s_counter\(2) & !\time_resetauto|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(2),
	datad => VCC,
	cin => \time_resetauto|Add0~3\,
	combout => \time_resetauto|Add0~4_combout\,
	cout => \time_resetauto|Add0~5\);

-- Location: FF_X88_Y66_N7
\time_resetauto|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~4_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(2));

-- Location: LCCOMB_X88_Y66_N8
\time_resetauto|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~6_combout\ = (\time_resetauto|s_counter\(3) & (!\time_resetauto|Add0~5\)) # (!\time_resetauto|s_counter\(3) & ((\time_resetauto|Add0~5\) # (GND)))
-- \time_resetauto|Add0~7\ = CARRY((!\time_resetauto|Add0~5\) # (!\time_resetauto|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(3),
	datad => VCC,
	cin => \time_resetauto|Add0~5\,
	combout => \time_resetauto|Add0~6_combout\,
	cout => \time_resetauto|Add0~7\);

-- Location: FF_X88_Y66_N9
\time_resetauto|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~6_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(3));

-- Location: LCCOMB_X88_Y66_N10
\time_resetauto|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~8_combout\ = (\time_resetauto|s_counter\(4) & (\time_resetauto|Add0~7\ $ (GND))) # (!\time_resetauto|s_counter\(4) & (!\time_resetauto|Add0~7\ & VCC))
-- \time_resetauto|Add0~9\ = CARRY((\time_resetauto|s_counter\(4) & !\time_resetauto|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(4),
	datad => VCC,
	cin => \time_resetauto|Add0~7\,
	combout => \time_resetauto|Add0~8_combout\,
	cout => \time_resetauto|Add0~9\);

-- Location: FF_X88_Y66_N11
\time_resetauto|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~8_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(4));

-- Location: LCCOMB_X88_Y66_N12
\time_resetauto|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~10_combout\ = (\time_resetauto|s_counter\(5) & (!\time_resetauto|Add0~9\)) # (!\time_resetauto|s_counter\(5) & ((\time_resetauto|Add0~9\) # (GND)))
-- \time_resetauto|Add0~11\ = CARRY((!\time_resetauto|Add0~9\) # (!\time_resetauto|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(5),
	datad => VCC,
	cin => \time_resetauto|Add0~9\,
	combout => \time_resetauto|Add0~10_combout\,
	cout => \time_resetauto|Add0~11\);

-- Location: FF_X88_Y66_N13
\time_resetauto|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~10_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(5));

-- Location: LCCOMB_X88_Y66_N14
\time_resetauto|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~12_combout\ = (\time_resetauto|s_counter\(6) & (\time_resetauto|Add0~11\ $ (GND))) # (!\time_resetauto|s_counter\(6) & (!\time_resetauto|Add0~11\ & VCC))
-- \time_resetauto|Add0~13\ = CARRY((\time_resetauto|s_counter\(6) & !\time_resetauto|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(6),
	datad => VCC,
	cin => \time_resetauto|Add0~11\,
	combout => \time_resetauto|Add0~12_combout\,
	cout => \time_resetauto|Add0~13\);

-- Location: LCCOMB_X87_Y66_N4
\time_resetauto|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~6_combout\ = (\time_resetauto|Add0~12_combout\ & (((!\time_resetauto|s_counter\(25)) # (!\time_resetauto|Equal0~9_combout\)) # (!\time_resetauto|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Add0~12_combout\,
	datab => \time_resetauto|Equal0~4_combout\,
	datac => \time_resetauto|Equal0~9_combout\,
	datad => \time_resetauto|s_counter\(25),
	combout => \time_resetauto|s_counter~6_combout\);

-- Location: FF_X87_Y66_N5
\time_resetauto|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~6_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(6));

-- Location: LCCOMB_X88_Y66_N16
\time_resetauto|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~14_combout\ = (\time_resetauto|s_counter\(7) & (!\time_resetauto|Add0~13\)) # (!\time_resetauto|s_counter\(7) & ((\time_resetauto|Add0~13\) # (GND)))
-- \time_resetauto|Add0~15\ = CARRY((!\time_resetauto|Add0~13\) # (!\time_resetauto|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(7),
	datad => VCC,
	cin => \time_resetauto|Add0~13\,
	combout => \time_resetauto|Add0~14_combout\,
	cout => \time_resetauto|Add0~15\);

-- Location: FF_X88_Y66_N17
\time_resetauto|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~14_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(7));

-- Location: LCCOMB_X88_Y66_N18
\time_resetauto|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~16_combout\ = (\time_resetauto|s_counter\(8) & (\time_resetauto|Add0~15\ $ (GND))) # (!\time_resetauto|s_counter\(8) & (!\time_resetauto|Add0~15\ & VCC))
-- \time_resetauto|Add0~17\ = CARRY((\time_resetauto|s_counter\(8) & !\time_resetauto|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(8),
	datad => VCC,
	cin => \time_resetauto|Add0~15\,
	combout => \time_resetauto|Add0~16_combout\,
	cout => \time_resetauto|Add0~17\);

-- Location: LCCOMB_X87_Y66_N14
\time_resetauto|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~9_combout\ = (\time_resetauto|Add0~16_combout\ & (((!\time_resetauto|s_counter\(25)) # (!\time_resetauto|Equal0~9_combout\)) # (!\time_resetauto|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Add0~16_combout\,
	datab => \time_resetauto|Equal0~4_combout\,
	datac => \time_resetauto|Equal0~9_combout\,
	datad => \time_resetauto|s_counter\(25),
	combout => \time_resetauto|s_counter~9_combout\);

-- Location: FF_X87_Y66_N15
\time_resetauto|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~9_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(8));

-- Location: LCCOMB_X88_Y66_N20
\time_resetauto|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~18_combout\ = (\time_resetauto|s_counter\(9) & (!\time_resetauto|Add0~17\)) # (!\time_resetauto|s_counter\(9) & ((\time_resetauto|Add0~17\) # (GND)))
-- \time_resetauto|Add0~19\ = CARRY((!\time_resetauto|Add0~17\) # (!\time_resetauto|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(9),
	datad => VCC,
	cin => \time_resetauto|Add0~17\,
	combout => \time_resetauto|Add0~18_combout\,
	cout => \time_resetauto|Add0~19\);

-- Location: FF_X88_Y66_N21
\time_resetauto|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~18_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(9));

-- Location: LCCOMB_X88_Y66_N22
\time_resetauto|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~20_combout\ = (\time_resetauto|s_counter\(10) & (\time_resetauto|Add0~19\ $ (GND))) # (!\time_resetauto|s_counter\(10) & (!\time_resetauto|Add0~19\ & VCC))
-- \time_resetauto|Add0~21\ = CARRY((\time_resetauto|s_counter\(10) & !\time_resetauto|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(10),
	datad => VCC,
	cin => \time_resetauto|Add0~19\,
	combout => \time_resetauto|Add0~20_combout\,
	cout => \time_resetauto|Add0~21\);

-- Location: LCCOMB_X88_Y66_N24
\time_resetauto|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~22_combout\ = (\time_resetauto|s_counter\(11) & (!\time_resetauto|Add0~21\)) # (!\time_resetauto|s_counter\(11) & ((\time_resetauto|Add0~21\) # (GND)))
-- \time_resetauto|Add0~23\ = CARRY((!\time_resetauto|Add0~21\) # (!\time_resetauto|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(11),
	datad => VCC,
	cin => \time_resetauto|Add0~21\,
	combout => \time_resetauto|Add0~22_combout\,
	cout => \time_resetauto|Add0~23\);

-- Location: FF_X88_Y66_N25
\time_resetauto|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~22_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(11));

-- Location: LCCOMB_X88_Y66_N26
\time_resetauto|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~24_combout\ = (\time_resetauto|s_counter\(12) & (\time_resetauto|Add0~23\ $ (GND))) # (!\time_resetauto|s_counter\(12) & (!\time_resetauto|Add0~23\ & VCC))
-- \time_resetauto|Add0~25\ = CARRY((\time_resetauto|s_counter\(12) & !\time_resetauto|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(12),
	datad => VCC,
	cin => \time_resetauto|Add0~23\,
	combout => \time_resetauto|Add0~24_combout\,
	cout => \time_resetauto|Add0~25\);

-- Location: FF_X88_Y66_N27
\time_resetauto|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~24_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(12));

-- Location: LCCOMB_X88_Y66_N28
\time_resetauto|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~26_combout\ = (\time_resetauto|s_counter\(13) & (!\time_resetauto|Add0~25\)) # (!\time_resetauto|s_counter\(13) & ((\time_resetauto|Add0~25\) # (GND)))
-- \time_resetauto|Add0~27\ = CARRY((!\time_resetauto|Add0~25\) # (!\time_resetauto|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(13),
	datad => VCC,
	cin => \time_resetauto|Add0~25\,
	combout => \time_resetauto|Add0~26_combout\,
	cout => \time_resetauto|Add0~27\);

-- Location: LCCOMB_X87_Y66_N12
\time_resetauto|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~11_combout\ = (\time_resetauto|Add0~26_combout\ & (((!\time_resetauto|s_counter\(25)) # (!\time_resetauto|Equal0~4_combout\)) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Add0~26_combout\,
	datab => \time_resetauto|Equal0~9_combout\,
	datac => \time_resetauto|Equal0~4_combout\,
	datad => \time_resetauto|s_counter\(25),
	combout => \time_resetauto|s_counter~11_combout\);

-- Location: FF_X87_Y66_N13
\time_resetauto|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~11_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(13));

-- Location: LCCOMB_X88_Y66_N30
\time_resetauto|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~28_combout\ = (\time_resetauto|s_counter\(14) & (\time_resetauto|Add0~27\ $ (GND))) # (!\time_resetauto|s_counter\(14) & (!\time_resetauto|Add0~27\ & VCC))
-- \time_resetauto|Add0~29\ = CARRY((\time_resetauto|s_counter\(14) & !\time_resetauto|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(14),
	datad => VCC,
	cin => \time_resetauto|Add0~27\,
	combout => \time_resetauto|Add0~28_combout\,
	cout => \time_resetauto|Add0~29\);

-- Location: FF_X88_Y66_N31
\time_resetauto|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~28_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(14));

-- Location: LCCOMB_X88_Y65_N0
\time_resetauto|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~30_combout\ = (\time_resetauto|s_counter\(15) & (!\time_resetauto|Add0~29\)) # (!\time_resetauto|s_counter\(15) & ((\time_resetauto|Add0~29\) # (GND)))
-- \time_resetauto|Add0~31\ = CARRY((!\time_resetauto|Add0~29\) # (!\time_resetauto|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(15),
	datad => VCC,
	cin => \time_resetauto|Add0~29\,
	combout => \time_resetauto|Add0~30_combout\,
	cout => \time_resetauto|Add0~31\);

-- Location: LCCOMB_X87_Y66_N6
\time_resetauto|s_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~12_combout\ = (\time_resetauto|Add0~30_combout\ & (((!\time_resetauto|s_counter\(25)) # (!\time_resetauto|Equal0~4_combout\)) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~9_combout\,
	datab => \time_resetauto|Equal0~4_combout\,
	datac => \time_resetauto|Add0~30_combout\,
	datad => \time_resetauto|s_counter\(25),
	combout => \time_resetauto|s_counter~12_combout\);

-- Location: FF_X87_Y66_N7
\time_resetauto|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~12_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(15));

-- Location: LCCOMB_X88_Y65_N2
\time_resetauto|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~32_combout\ = (\time_resetauto|s_counter\(16) & (\time_resetauto|Add0~31\ $ (GND))) # (!\time_resetauto|s_counter\(16) & (!\time_resetauto|Add0~31\ & VCC))
-- \time_resetauto|Add0~33\ = CARRY((\time_resetauto|s_counter\(16) & !\time_resetauto|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(16),
	datad => VCC,
	cin => \time_resetauto|Add0~31\,
	combout => \time_resetauto|Add0~32_combout\,
	cout => \time_resetauto|Add0~33\);

-- Location: FF_X88_Y65_N3
\time_resetauto|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~32_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(16));

-- Location: LCCOMB_X88_Y65_N4
\time_resetauto|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~34_combout\ = (\time_resetauto|s_counter\(17) & (!\time_resetauto|Add0~33\)) # (!\time_resetauto|s_counter\(17) & ((\time_resetauto|Add0~33\) # (GND)))
-- \time_resetauto|Add0~35\ = CARRY((!\time_resetauto|Add0~33\) # (!\time_resetauto|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(17),
	datad => VCC,
	cin => \time_resetauto|Add0~33\,
	combout => \time_resetauto|Add0~34_combout\,
	cout => \time_resetauto|Add0~35\);

-- Location: LCCOMB_X87_Y66_N20
\time_resetauto|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~7_combout\ = (\time_resetauto|Add0~34_combout\ & (((!\time_resetauto|Equal0~4_combout\) # (!\time_resetauto|s_counter\(25))) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~9_combout\,
	datab => \time_resetauto|s_counter\(25),
	datac => \time_resetauto|Equal0~4_combout\,
	datad => \time_resetauto|Add0~34_combout\,
	combout => \time_resetauto|s_counter~7_combout\);

-- Location: FF_X87_Y66_N21
\time_resetauto|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~7_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(17));

-- Location: LCCOMB_X87_Y66_N10
\time_resetauto|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~1_combout\ = (\time_resetauto|s_counter\(17) & (!\time_resetauto|s_counter\(11) & (\time_resetauto|s_counter\(0) & \time_resetauto|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(17),
	datab => \time_resetauto|s_counter\(11),
	datac => \time_resetauto|s_counter\(0),
	datad => \time_resetauto|s_counter\(1),
	combout => \time_resetauto|Equal0~1_combout\);

-- Location: LCCOMB_X88_Y66_N0
\time_resetauto|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~0_combout\ = (\time_resetauto|s_counter\(2) & (\time_resetauto|s_counter\(4) & (!\time_resetauto|s_counter\(6) & \time_resetauto|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(2),
	datab => \time_resetauto|s_counter\(4),
	datac => \time_resetauto|s_counter\(6),
	datad => \time_resetauto|s_counter\(3),
	combout => \time_resetauto|Equal0~0_combout\);

-- Location: LCCOMB_X88_Y65_N6
\time_resetauto|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~36_combout\ = (\time_resetauto|s_counter\(18) & (\time_resetauto|Add0~35\ $ (GND))) # (!\time_resetauto|s_counter\(18) & (!\time_resetauto|Add0~35\ & VCC))
-- \time_resetauto|Add0~37\ = CARRY((\time_resetauto|s_counter\(18) & !\time_resetauto|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(18),
	datad => VCC,
	cin => \time_resetauto|Add0~35\,
	combout => \time_resetauto|Add0~36_combout\,
	cout => \time_resetauto|Add0~37\);

-- Location: LCCOMB_X87_Y66_N2
\time_resetauto|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~8_combout\ = (\time_resetauto|Add0~36_combout\ & (((!\time_resetauto|Equal0~4_combout\) # (!\time_resetauto|s_counter\(25))) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~9_combout\,
	datab => \time_resetauto|s_counter\(25),
	datac => \time_resetauto|Equal0~4_combout\,
	datad => \time_resetauto|Add0~36_combout\,
	combout => \time_resetauto|s_counter~8_combout\);

-- Location: FF_X87_Y66_N3
\time_resetauto|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~8_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(18));

-- Location: LCCOMB_X88_Y65_N8
\time_resetauto|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~38_combout\ = (\time_resetauto|s_counter\(19) & (!\time_resetauto|Add0~37\)) # (!\time_resetauto|s_counter\(19) & ((\time_resetauto|Add0~37\) # (GND)))
-- \time_resetauto|Add0~39\ = CARRY((!\time_resetauto|Add0~37\) # (!\time_resetauto|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(19),
	datad => VCC,
	cin => \time_resetauto|Add0~37\,
	combout => \time_resetauto|Add0~38_combout\,
	cout => \time_resetauto|Add0~39\);

-- Location: LCCOMB_X87_Y66_N22
\time_resetauto|s_counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~13_combout\ = (\time_resetauto|Add0~38_combout\ & (((!\time_resetauto|Equal0~4_combout\) # (!\time_resetauto|s_counter\(25))) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~9_combout\,
	datab => \time_resetauto|s_counter\(25),
	datac => \time_resetauto|Equal0~4_combout\,
	datad => \time_resetauto|Add0~38_combout\,
	combout => \time_resetauto|s_counter~13_combout\);

-- Location: FF_X87_Y66_N23
\time_resetauto|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~13_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(19));

-- Location: LCCOMB_X88_Y65_N10
\time_resetauto|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~40_combout\ = (\time_resetauto|s_counter\(20) & (\time_resetauto|Add0~39\ $ (GND))) # (!\time_resetauto|s_counter\(20) & (!\time_resetauto|Add0~39\ & VCC))
-- \time_resetauto|Add0~41\ = CARRY((\time_resetauto|s_counter\(20) & !\time_resetauto|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(20),
	datad => VCC,
	cin => \time_resetauto|Add0~39\,
	combout => \time_resetauto|Add0~40_combout\,
	cout => \time_resetauto|Add0~41\);

-- Location: FF_X88_Y65_N11
\time_resetauto|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~40_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(20));

-- Location: LCCOMB_X88_Y65_N12
\time_resetauto|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~42_combout\ = (\time_resetauto|s_counter\(21) & (!\time_resetauto|Add0~41\)) # (!\time_resetauto|s_counter\(21) & ((\time_resetauto|Add0~41\) # (GND)))
-- \time_resetauto|Add0~43\ = CARRY((!\time_resetauto|Add0~41\) # (!\time_resetauto|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(21),
	datad => VCC,
	cin => \time_resetauto|Add0~41\,
	combout => \time_resetauto|Add0~42_combout\,
	cout => \time_resetauto|Add0~43\);

-- Location: LCCOMB_X87_Y66_N26
\time_resetauto|s_counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~14_combout\ = (\time_resetauto|Add0~42_combout\ & (((!\time_resetauto|s_counter\(25)) # (!\time_resetauto|Equal0~4_combout\)) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~9_combout\,
	datab => \time_resetauto|Equal0~4_combout\,
	datac => \time_resetauto|Add0~42_combout\,
	datad => \time_resetauto|s_counter\(25),
	combout => \time_resetauto|s_counter~14_combout\);

-- Location: FF_X87_Y66_N27
\time_resetauto|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~14_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(21));

-- Location: LCCOMB_X88_Y65_N14
\time_resetauto|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~44_combout\ = (\time_resetauto|s_counter\(22) & (\time_resetauto|Add0~43\ $ (GND))) # (!\time_resetauto|s_counter\(22) & (!\time_resetauto|Add0~43\ & VCC))
-- \time_resetauto|Add0~45\ = CARRY((\time_resetauto|s_counter\(22) & !\time_resetauto|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(22),
	datad => VCC,
	cin => \time_resetauto|Add0~43\,
	combout => \time_resetauto|Add0~44_combout\,
	cout => \time_resetauto|Add0~45\);

-- Location: FF_X88_Y65_N15
\time_resetauto|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~44_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(22));

-- Location: LCCOMB_X88_Y65_N16
\time_resetauto|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~46_combout\ = (\time_resetauto|s_counter\(23) & (!\time_resetauto|Add0~45\)) # (!\time_resetauto|s_counter\(23) & ((\time_resetauto|Add0~45\) # (GND)))
-- \time_resetauto|Add0~47\ = CARRY((!\time_resetauto|Add0~45\) # (!\time_resetauto|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(23),
	datad => VCC,
	cin => \time_resetauto|Add0~45\,
	combout => \time_resetauto|Add0~46_combout\,
	cout => \time_resetauto|Add0~47\);

-- Location: LCCOMB_X87_Y66_N28
\time_resetauto|s_counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~15_combout\ = (\time_resetauto|Add0~46_combout\ & (((!\time_resetauto|Equal0~4_combout\) # (!\time_resetauto|s_counter\(25))) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~9_combout\,
	datab => \time_resetauto|s_counter\(25),
	datac => \time_resetauto|Equal0~4_combout\,
	datad => \time_resetauto|Add0~46_combout\,
	combout => \time_resetauto|s_counter~15_combout\);

-- Location: FF_X87_Y66_N29
\time_resetauto|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~15_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(23));

-- Location: LCCOMB_X88_Y65_N18
\time_resetauto|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~48_combout\ = (\time_resetauto|s_counter\(24) & (\time_resetauto|Add0~47\ $ (GND))) # (!\time_resetauto|s_counter\(24) & (!\time_resetauto|Add0~47\ & VCC))
-- \time_resetauto|Add0~49\ = CARRY((\time_resetauto|s_counter\(24) & !\time_resetauto|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(24),
	datad => VCC,
	cin => \time_resetauto|Add0~47\,
	combout => \time_resetauto|Add0~48_combout\,
	cout => \time_resetauto|Add0~49\);

-- Location: FF_X88_Y65_N19
\time_resetauto|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~48_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(24));

-- Location: LCCOMB_X88_Y65_N20
\time_resetauto|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~50_combout\ = (\time_resetauto|s_counter\(25) & (!\time_resetauto|Add0~49\)) # (!\time_resetauto|s_counter\(25) & ((\time_resetauto|Add0~49\) # (GND)))
-- \time_resetauto|Add0~51\ = CARRY((!\time_resetauto|Add0~49\) # (!\time_resetauto|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(25),
	datad => VCC,
	cin => \time_resetauto|Add0~49\,
	combout => \time_resetauto|Add0~50_combout\,
	cout => \time_resetauto|Add0~51\);

-- Location: LCCOMB_X88_Y65_N22
\time_resetauto|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~52_combout\ = (\time_resetauto|s_counter\(26) & (\time_resetauto|Add0~51\ $ (GND))) # (!\time_resetauto|s_counter\(26) & (!\time_resetauto|Add0~51\ & VCC))
-- \time_resetauto|Add0~53\ = CARRY((\time_resetauto|s_counter\(26) & !\time_resetauto|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(26),
	datad => VCC,
	cin => \time_resetauto|Add0~51\,
	combout => \time_resetauto|Add0~52_combout\,
	cout => \time_resetauto|Add0~53\);

-- Location: FF_X88_Y65_N23
\time_resetauto|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~52_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(26));

-- Location: LCCOMB_X88_Y65_N24
\time_resetauto|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~54_combout\ = (\time_resetauto|s_counter\(27) & (!\time_resetauto|Add0~53\)) # (!\time_resetauto|s_counter\(27) & ((\time_resetauto|Add0~53\) # (GND)))
-- \time_resetauto|Add0~55\ = CARRY((!\time_resetauto|Add0~53\) # (!\time_resetauto|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(27),
	datad => VCC,
	cin => \time_resetauto|Add0~53\,
	combout => \time_resetauto|Add0~54_combout\,
	cout => \time_resetauto|Add0~55\);

-- Location: FF_X88_Y65_N25
\time_resetauto|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~54_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(27));

-- Location: LCCOMB_X88_Y65_N26
\time_resetauto|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~56_combout\ = (\time_resetauto|s_counter\(28) & (\time_resetauto|Add0~55\ $ (GND))) # (!\time_resetauto|s_counter\(28) & (!\time_resetauto|Add0~55\ & VCC))
-- \time_resetauto|Add0~57\ = CARRY((\time_resetauto|s_counter\(28) & !\time_resetauto|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(28),
	datad => VCC,
	cin => \time_resetauto|Add0~55\,
	combout => \time_resetauto|Add0~56_combout\,
	cout => \time_resetauto|Add0~57\);

-- Location: FF_X88_Y65_N27
\time_resetauto|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~56_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(28));

-- Location: LCCOMB_X88_Y65_N28
\time_resetauto|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~58_combout\ = (\time_resetauto|s_counter\(29) & (!\time_resetauto|Add0~57\)) # (!\time_resetauto|s_counter\(29) & ((\time_resetauto|Add0~57\) # (GND)))
-- \time_resetauto|Add0~59\ = CARRY((!\time_resetauto|Add0~57\) # (!\time_resetauto|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \time_resetauto|s_counter\(29),
	datad => VCC,
	cin => \time_resetauto|Add0~57\,
	combout => \time_resetauto|Add0~58_combout\,
	cout => \time_resetauto|Add0~59\);

-- Location: FF_X88_Y65_N29
\time_resetauto|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~58_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(29));

-- Location: LCCOMB_X88_Y65_N30
\time_resetauto|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Add0~60_combout\ = \time_resetauto|s_counter\(30) $ (!\time_resetauto|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(30),
	cin => \time_resetauto|Add0~59\,
	combout => \time_resetauto|Add0~60_combout\);

-- Location: FF_X88_Y65_N31
\time_resetauto|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|Add0~60_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(30));

-- Location: LCCOMB_X87_Y65_N6
\time_resetauto|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~3_combout\ = (!\time_resetauto|s_counter\(30) & !\time_resetauto|s_counter\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \time_resetauto|s_counter\(30),
	datad => \time_resetauto|s_counter\(29),
	combout => \time_resetauto|Equal0~3_combout\);

-- Location: LCCOMB_X87_Y65_N0
\time_resetauto|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~2_combout\ = (!\time_resetauto|s_counter\(28) & (!\time_resetauto|s_counter\(27) & (\time_resetauto|s_counter\(18) & !\time_resetauto|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(28),
	datab => \time_resetauto|s_counter\(27),
	datac => \time_resetauto|s_counter\(18),
	datad => \time_resetauto|s_counter\(26),
	combout => \time_resetauto|Equal0~2_combout\);

-- Location: LCCOMB_X87_Y66_N8
\time_resetauto|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~4_combout\ = (\time_resetauto|Equal0~1_combout\ & (\time_resetauto|Equal0~0_combout\ & (\time_resetauto|Equal0~3_combout\ & \time_resetauto|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~1_combout\,
	datab => \time_resetauto|Equal0~0_combout\,
	datac => \time_resetauto|Equal0~3_combout\,
	datad => \time_resetauto|Equal0~2_combout\,
	combout => \time_resetauto|Equal0~4_combout\);

-- Location: LCCOMB_X87_Y66_N0
\time_resetauto|s_counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~16_combout\ = (\time_resetauto|Add0~50_combout\ & (((!\time_resetauto|s_counter\(25)) # (!\time_resetauto|Equal0~4_combout\)) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~9_combout\,
	datab => \time_resetauto|Equal0~4_combout\,
	datac => \time_resetauto|s_counter\(25),
	datad => \time_resetauto|Add0~50_combout\,
	combout => \time_resetauto|s_counter~16_combout\);

-- Location: FF_X87_Y66_N1
\time_resetauto|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~16_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(25));

-- Location: LCCOMB_X87_Y66_N18
\time_resetauto|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|s_counter~10_combout\ = (\time_resetauto|Add0~20_combout\ & (((!\time_resetauto|Equal0~4_combout\) # (!\time_resetauto|s_counter\(25))) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~9_combout\,
	datab => \time_resetauto|s_counter\(25),
	datac => \time_resetauto|Equal0~4_combout\,
	datad => \time_resetauto|Add0~20_combout\,
	combout => \time_resetauto|s_counter~10_combout\);

-- Location: FF_X87_Y66_N19
\time_resetauto|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|s_counter~10_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|s_counter\(10));

-- Location: LCCOMB_X89_Y66_N12
\time_resetauto|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~6_combout\ = (\time_resetauto|s_counter\(10) & (\time_resetauto|s_counter\(13) & (!\time_resetauto|s_counter\(12) & !\time_resetauto|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(10),
	datab => \time_resetauto|s_counter\(13),
	datac => \time_resetauto|s_counter\(12),
	datad => \time_resetauto|s_counter\(14),
	combout => \time_resetauto|Equal0~6_combout\);

-- Location: LCCOMB_X89_Y66_N8
\time_resetauto|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~8_combout\ = (\time_resetauto|s_counter\(21) & (!\time_resetauto|s_counter\(24) & (\time_resetauto|s_counter\(23) & !\time_resetauto|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(21),
	datab => \time_resetauto|s_counter\(24),
	datac => \time_resetauto|s_counter\(23),
	datad => \time_resetauto|s_counter\(22),
	combout => \time_resetauto|Equal0~8_combout\);

-- Location: LCCOMB_X89_Y66_N22
\time_resetauto|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~7_combout\ = (!\time_resetauto|s_counter\(20) & (\time_resetauto|s_counter\(19) & (\time_resetauto|s_counter\(15) & !\time_resetauto|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(20),
	datab => \time_resetauto|s_counter\(19),
	datac => \time_resetauto|s_counter\(15),
	datad => \time_resetauto|s_counter\(16),
	combout => \time_resetauto|Equal0~7_combout\);

-- Location: LCCOMB_X89_Y66_N2
\time_resetauto|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~5_combout\ = (\time_resetauto|s_counter\(5) & (\time_resetauto|s_counter\(8) & (!\time_resetauto|s_counter\(7) & !\time_resetauto|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(5),
	datab => \time_resetauto|s_counter\(8),
	datac => \time_resetauto|s_counter\(7),
	datad => \time_resetauto|s_counter\(9),
	combout => \time_resetauto|Equal0~5_combout\);

-- Location: LCCOMB_X89_Y66_N10
\time_resetauto|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|Equal0~9_combout\ = (\time_resetauto|Equal0~6_combout\ & (\time_resetauto|Equal0~8_combout\ & (\time_resetauto|Equal0~7_combout\ & \time_resetauto|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~6_combout\,
	datab => \time_resetauto|Equal0~8_combout\,
	datac => \time_resetauto|Equal0~7_combout\,
	datad => \time_resetauto|Equal0~5_combout\,
	combout => \time_resetauto|Equal0~9_combout\);

-- Location: LCCOMB_X89_Y66_N26
\time_resetauto|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|clkOut~3_combout\ = (\time_resetauto|s_counter\(12) & (\time_resetauto|s_counter\(14) & (!\time_resetauto|s_counter\(13) & !\time_resetauto|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(12),
	datab => \time_resetauto|s_counter\(14),
	datac => \time_resetauto|s_counter\(13),
	datad => \time_resetauto|s_counter\(10),
	combout => \time_resetauto|clkOut~3_combout\);

-- Location: LCCOMB_X89_Y66_N18
\time_resetauto|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|clkOut~5_combout\ = (!\time_resetauto|s_counter\(21) & (!\time_resetauto|s_counter\(23) & (\time_resetauto|s_counter\(24) & \time_resetauto|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(21),
	datab => \time_resetauto|s_counter\(23),
	datac => \time_resetauto|s_counter\(24),
	datad => \time_resetauto|s_counter\(22),
	combout => \time_resetauto|clkOut~5_combout\);

-- Location: LCCOMB_X89_Y66_N4
\time_resetauto|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|clkOut~2_combout\ = (\time_resetauto|s_counter\(7) & (\time_resetauto|s_counter\(9) & (!\time_resetauto|s_counter\(8) & !\time_resetauto|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(7),
	datab => \time_resetauto|s_counter\(9),
	datac => \time_resetauto|s_counter\(8),
	datad => \time_resetauto|s_counter\(5),
	combout => \time_resetauto|clkOut~2_combout\);

-- Location: LCCOMB_X89_Y66_N20
\time_resetauto|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|clkOut~4_combout\ = (\time_resetauto|s_counter\(20) & (!\time_resetauto|s_counter\(19) & (!\time_resetauto|s_counter\(15) & \time_resetauto|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(20),
	datab => \time_resetauto|s_counter\(19),
	datac => \time_resetauto|s_counter\(15),
	datad => \time_resetauto|s_counter\(16),
	combout => \time_resetauto|clkOut~4_combout\);

-- Location: LCCOMB_X89_Y66_N24
\time_resetauto|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|clkOut~6_combout\ = (\time_resetauto|clkOut~3_combout\ & (\time_resetauto|clkOut~5_combout\ & (\time_resetauto|clkOut~2_combout\ & \time_resetauto|clkOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|clkOut~3_combout\,
	datab => \time_resetauto|clkOut~5_combout\,
	datac => \time_resetauto|clkOut~2_combout\,
	datad => \time_resetauto|clkOut~4_combout\,
	combout => \time_resetauto|clkOut~6_combout\);

-- Location: LCCOMB_X87_Y66_N24
\time_resetauto|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|clkOut~7_combout\ = (\time_resetauto|clkOut~q\) # ((!\time_resetauto|s_counter\(25) & (\time_resetauto|Equal0~4_combout\ & \time_resetauto|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|s_counter\(25),
	datab => \time_resetauto|Equal0~4_combout\,
	datac => \time_resetauto|clkOut~q\,
	datad => \time_resetauto|clkOut~6_combout\,
	combout => \time_resetauto|clkOut~7_combout\);

-- Location: LCCOMB_X87_Y66_N16
\time_resetauto|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_resetauto|clkOut~8_combout\ = (\time_resetauto|clkOut~7_combout\ & (((!\time_resetauto|s_counter\(25)) # (!\time_resetauto|Equal0~4_combout\)) # (!\time_resetauto|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_resetauto|Equal0~9_combout\,
	datab => \time_resetauto|clkOut~7_combout\,
	datac => \time_resetauto|Equal0~4_combout\,
	datad => \time_resetauto|s_counter\(25),
	combout => \time_resetauto|clkOut~8_combout\);

-- Location: FF_X87_Y66_N17
\time_resetauto|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \time_resetauto|clkOut~8_combout\,
	ena => \escolhaproduto|reset_acucar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_resetauto|clkOut~q\);

-- Location: CLKCTRL_G14
\time_resetauto|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \time_resetauto|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \time_resetauto|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X97_Y20_N6
\escolhaproduto|contador[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|contador[0]~1_combout\ = !\escolhaproduto|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \escolhaproduto|contador\(0),
	combout => \escolhaproduto|contador[0]~1_combout\);

-- Location: FF_X97_Y20_N7
\escolhaproduto|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \time_resetauto|clkOut~clkctrl_outclk\,
	d => \escolhaproduto|contador[0]~1_combout\,
	clrn => \escolhaproduto|ALT_INV_contador_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|contador\(0));

-- Location: LCCOMB_X96_Y20_N24
\escolhaproduto|NS.E180~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E180~0_combout\ = (\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|PS.E180~q\) # ((\escolhaproduto|PS.E80~q\ & \escolhaproduto|NS~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E80~q\,
	datab => \escolhaproduto|NS~3_combout\,
	datac => \escolhaproduto|PS.E180~q\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|NS.E180~0_combout\);

-- Location: LCCOMB_X97_Y20_N20
\escolhaproduto|NS.E180_1884\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E180_1884~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|NS.E180~0_combout\))) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E180_1884~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E180_1884~combout\,
	datac => \escolhaproduto|NS.E180~0_combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|NS.E180_1884~combout\);

-- Location: LCCOMB_X97_Y20_N28
\escolhaproduto|PS~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|PS~35_combout\ = (!\SW[17]~input_o\ & (\escolhaproduto|NS.E180_1884~combout\ & ((!\escolhaproduto|contador\(1)) # (!\escolhaproduto|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|contador\(0),
	datab => \SW[17]~input_o\,
	datac => \escolhaproduto|contador\(1),
	datad => \escolhaproduto|NS.E180_1884~combout\,
	combout => \escolhaproduto|PS~35_combout\);

-- Location: FF_X97_Y20_N29
\escolhaproduto|PS.E180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \escolhaproduto|PS~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \escolhaproduto|PS.E180~q\);

-- Location: LCCOMB_X96_Y19_N26
\escolhaproduto|atual[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[7]~27_combout\ = ((\produtodisplay|Mux1~0_combout\ & ((\escolhaproduto|PS.E180~q\) # (\escolhaproduto|PS.E190~q\)))) # (!\escolhaproduto|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E180~q\,
	datab => \escolhaproduto|WideOr4~0_combout\,
	datac => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|PS.E190~q\,
	combout => \escolhaproduto|atual[7]~27_combout\);

-- Location: LCCOMB_X97_Y17_N30
\escolhaproduto|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|Equal4~0_combout\ = (\SW[3]~input_o\ & (!\SW[0]~input_o\ & (!\SW[2]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \escolhaproduto|Equal4~0_combout\);

-- Location: LCCOMB_X96_Y20_N14
\escolhaproduto|WideOr0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr0~7_combout\ = (\escolhaproduto|WideOr59~0_combout\ & (!\escolhaproduto|PS.E190~q\ & !\escolhaproduto|PS.E180~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr59~0_combout\,
	datac => \escolhaproduto|PS.E190~q\,
	datad => \escolhaproduto|PS.E180~q\,
	combout => \escolhaproduto|WideOr0~7_combout\);

-- Location: LCCOMB_X97_Y17_N2
\escolhaproduto|atual[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[7]~17_combout\ = (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (((!\escolhaproduto|NS.E130~2_combout\)))) # (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (\escolhaproduto|WideOr0~6_combout\ & 
-- ((\escolhaproduto|WideOr0~7_combout\) # (\escolhaproduto|NS.E130~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr0~7_combout\,
	datab => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datac => \escolhaproduto|WideOr0~6_combout\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|atual[7]~17_combout\);

-- Location: LCCOMB_X97_Y17_N10
\escolhaproduto|atual[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[7]~18_combout\ = (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & ((\escolhaproduto|atual[7]~17_combout\ & ((\escolhaproduto|WideOr25~0_combout\))) # (!\escolhaproduto|atual[7]~17_combout\ & (\escolhaproduto|Equal4~0_combout\)))) 
-- # (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (((\escolhaproduto|atual[7]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|Equal4~0_combout\,
	datab => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datac => \escolhaproduto|WideOr25~0_combout\,
	datad => \escolhaproduto|atual[7]~17_combout\,
	combout => \escolhaproduto|atual[7]~18_combout\);

-- Location: CLKCTRL_G5
\escolhaproduto|atual[7]~18clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \escolhaproduto|atual[7]~18clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \escolhaproduto|atual[7]~18clkctrl_outclk\);

-- Location: LCCOMB_X106_Y19_N4
\escolhaproduto|atual[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual\(7) = (GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & (\escolhaproduto|atual[7]~27_combout\)) # (!GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & ((\escolhaproduto|atual\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|atual[7]~27_combout\,
	datac => \escolhaproduto|atual\(7),
	datad => \escolhaproduto|atual[7]~18clkctrl_outclk\,
	combout => \escolhaproduto|atual\(7));

-- Location: LCCOMB_X95_Y17_N8
\escolhaproduto|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr6~0_combout\ = (!\escolhaproduto|PS.E60~q\ & !\escolhaproduto|PS.E70~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|PS.E60~q\,
	datac => \escolhaproduto|PS.E70~q\,
	combout => \escolhaproduto|WideOr6~0_combout\);

-- Location: LCCOMB_X95_Y17_N6
\escolhaproduto|atual[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[5]~19_combout\ = ((\escolhaproduto|PS.E30~q\) # ((\escolhaproduto|PS.E20~q\) # (!\escolhaproduto|troco~2_combout\))) # (!\escolhaproduto|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr6~0_combout\,
	datab => \escolhaproduto|PS.E30~q\,
	datac => \escolhaproduto|troco~2_combout\,
	datad => \escolhaproduto|PS.E20~q\,
	combout => \escolhaproduto|atual[5]~19_combout\);

-- Location: LCCOMB_X95_Y17_N24
\escolhaproduto|atual[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[5]~20_combout\ = (\escolhaproduto|atual[5]~19_combout\) # ((\produtodisplay|Mux1~0_combout\ & ((\escolhaproduto|PS.E160~q\) # (\escolhaproduto|PS.E170~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual[5]~19_combout\,
	datab => \escolhaproduto|PS.E160~q\,
	datac => \escolhaproduto|PS.E170~q\,
	datad => \produtodisplay|Mux1~0_combout\,
	combout => \escolhaproduto|atual[5]~20_combout\);

-- Location: LCCOMB_X95_Y17_N22
\escolhaproduto|atual[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual\(5) = (GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & ((\escolhaproduto|atual[5]~20_combout\))) # (!GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & (\escolhaproduto|atual\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual\(5),
	datac => \escolhaproduto|atual[5]~20_combout\,
	datad => \escolhaproduto|atual[7]~18clkctrl_outclk\,
	combout => \escolhaproduto|atual\(5));

-- Location: LCCOMB_X95_Y19_N12
\escolhaproduto|atual[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[6]~21_combout\ = (\escolhaproduto|NS.E130~2_combout\ & (((!\escolhaproduto|WideOr59~0_combout\)))) # (!\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|PS.E140~q\) # ((\escolhaproduto|PS.E150~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E140~q\,
	datab => \escolhaproduto|WideOr59~0_combout\,
	datac => \escolhaproduto|PS.E150~q\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|atual[6]~21_combout\);

-- Location: LCCOMB_X96_Y19_N0
\escolhaproduto|atual[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[6]~26_combout\ = (\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|PS.E180~q\) # ((\escolhaproduto|PS.E190~q\) # (!\escolhaproduto|WideOr59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E180~q\,
	datab => \escolhaproduto|WideOr59~0_combout\,
	datac => \escolhaproduto|NS.E130~2_combout\,
	datad => \escolhaproduto|PS.E190~q\,
	combout => \escolhaproduto|atual[6]~26_combout\);

-- Location: LCCOMB_X96_Y19_N14
\escolhaproduto|atual[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[6]~22_combout\ = ((\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (\escolhaproduto|atual[6]~21_combout\)) # (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & ((\escolhaproduto|atual[6]~26_combout\)))) # 
-- (!\escolhaproduto|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual[6]~21_combout\,
	datab => \escolhaproduto|atual[6]~26_combout\,
	datac => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datad => \escolhaproduto|WideOr11~0_combout\,
	combout => \escolhaproduto|atual[6]~22_combout\);

-- Location: LCCOMB_X103_Y19_N8
\escolhaproduto|atual[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual\(6) = (GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & (\escolhaproduto|atual[6]~22_combout\)) # (!GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & ((\escolhaproduto|atual\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual[6]~22_combout\,
	datac => \escolhaproduto|atual\(6),
	datad => \escolhaproduto|atual[7]~18clkctrl_outclk\,
	combout => \escolhaproduto|atual\(6));

-- Location: LCCOMB_X97_Y17_N14
\escolhaproduto|WideOr107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr107~0_combout\ = (\escolhaproduto|PS.E160~q\) # ((\escolhaproduto|PS.E180~q\) # (\escolhaproduto|PS.E200~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E160~q\,
	datab => \escolhaproduto|PS.E180~q\,
	datad => \escolhaproduto|PS.E200~q\,
	combout => \escolhaproduto|WideOr107~0_combout\);

-- Location: LCCOMB_X97_Y17_N26
\escolhaproduto|atual[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[4]~13_combout\ = (!\escolhaproduto|PS.E100~q\ & ((\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (!\escolhaproduto|WideOr107~0_combout\)) # (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & 
-- ((\escolhaproduto|WideOr0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E100~q\,
	datab => \escolhaproduto|WideOr107~0_combout\,
	datac => \escolhaproduto|WideOr0~6_combout\,
	datad => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	combout => \escolhaproduto|atual[4]~13_combout\);

-- Location: LCCOMB_X95_Y18_N16
\escolhaproduto|atual[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[4]~14_combout\ = (!\escolhaproduto|PS.E20~q\ & (!\escolhaproduto|PS.E60~q\ & (!\escolhaproduto|PS.E40~q\ & \escolhaproduto|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E20~q\,
	datab => \escolhaproduto|PS.E60~q\,
	datac => \escolhaproduto|PS.E40~q\,
	datad => \escolhaproduto|PS.E0~q\,
	combout => \escolhaproduto|atual[4]~14_combout\);

-- Location: LCCOMB_X95_Y18_N26
\escolhaproduto|atual[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[4]~15_combout\ = (!\escolhaproduto|PS.E80~q\ & (!\escolhaproduto|PS.E140~q\ & (\escolhaproduto|atual[4]~14_combout\ & !\escolhaproduto|PS.E120~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E80~q\,
	datab => \escolhaproduto|PS.E140~q\,
	datac => \escolhaproduto|atual[4]~14_combout\,
	datad => \escolhaproduto|PS.E120~q\,
	combout => \escolhaproduto|atual[4]~15_combout\);

-- Location: LCCOMB_X97_Y19_N18
\escolhaproduto|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr8~0_combout\ = (!\escolhaproduto|PS.E130~q\ & (!\escolhaproduto|PS.E70~q\ & (!\escolhaproduto|PS.E90~q\ & !\escolhaproduto|PS.E110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E130~q\,
	datab => \escolhaproduto|PS.E70~q\,
	datac => \escolhaproduto|PS.E90~q\,
	datad => \escolhaproduto|PS.E110~q\,
	combout => \escolhaproduto|WideOr8~0_combout\);

-- Location: LCCOMB_X97_Y17_N20
\escolhaproduto|atual[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[4]~12_combout\ = (((\escolhaproduto|PS.E150~q\ & \escolhaproduto|produtoUsadoDisplay[0]~0_combout\)) # (!\escolhaproduto|WideOr14~0_combout\)) # (!\escolhaproduto|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E150~q\,
	datab => \escolhaproduto|WideOr8~0_combout\,
	datac => \escolhaproduto|WideOr14~0_combout\,
	datad => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	combout => \escolhaproduto|atual[4]~12_combout\);

-- Location: LCCOMB_X96_Y17_N18
\escolhaproduto|atual[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[4]~16_combout\ = (\escolhaproduto|NS.E130~2_combout\ & (\escolhaproduto|atual[4]~13_combout\ & (\escolhaproduto|atual[4]~15_combout\))) # (!\escolhaproduto|NS.E130~2_combout\ & (((\escolhaproduto|atual[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E130~2_combout\,
	datab => \escolhaproduto|atual[4]~13_combout\,
	datac => \escolhaproduto|atual[4]~15_combout\,
	datad => \escolhaproduto|atual[4]~12_combout\,
	combout => \escolhaproduto|atual[4]~16_combout\);

-- Location: LCCOMB_X96_Y17_N30
\escolhaproduto|atual[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual\(4) = (GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & ((\escolhaproduto|atual[4]~16_combout\))) # (!GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & (\escolhaproduto|atual\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual\(4),
	datac => \escolhaproduto|atual[4]~16_combout\,
	datad => \escolhaproduto|atual[7]~18clkctrl_outclk\,
	combout => \escolhaproduto|atual\(4));

-- Location: LCCOMB_X114_Y22_N12
\atual_meio|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_meio|Mux6~0_combout\ = (\escolhaproduto|atual\(7) & (\escolhaproduto|atual\(4) & ((\escolhaproduto|atual\(5)) # (\escolhaproduto|atual\(6))))) # (!\escolhaproduto|atual\(7) & (!\escolhaproduto|atual\(5) & (\escolhaproduto|atual\(6) $ 
-- (\escolhaproduto|atual\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual\(7),
	datab => \escolhaproduto|atual\(5),
	datac => \escolhaproduto|atual\(6),
	datad => \escolhaproduto|atual\(4),
	combout => \atual_meio|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\atual_meio|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_meio|Mux5~0_combout\ = (\escolhaproduto|atual\(6) & (\escolhaproduto|atual\(7) $ (\escolhaproduto|atual\(5) $ (\escolhaproduto|atual\(4))))) # (!\escolhaproduto|atual\(6) & (\escolhaproduto|atual\(7) & (\escolhaproduto|atual\(5) & 
-- \escolhaproduto|atual\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual\(7),
	datab => \escolhaproduto|atual\(5),
	datac => \escolhaproduto|atual\(6),
	datad => \escolhaproduto|atual\(4),
	combout => \atual_meio|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y22_N16
\atual_meio|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_meio|Mux4~0_combout\ = (\escolhaproduto|atual\(7) & (\escolhaproduto|atual\(6) & (\escolhaproduto|atual\(5) $ (!\escolhaproduto|atual\(4))))) # (!\escolhaproduto|atual\(7) & (\escolhaproduto|atual\(5) & (!\escolhaproduto|atual\(6) & 
-- !\escolhaproduto|atual\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual\(7),
	datab => \escolhaproduto|atual\(5),
	datac => \escolhaproduto|atual\(6),
	datad => \escolhaproduto|atual\(4),
	combout => \atual_meio|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\atual_meio|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_meio|Mux3~0_combout\ = (\escolhaproduto|atual\(5) & ((\escolhaproduto|atual\(6) & ((\escolhaproduto|atual\(4)))) # (!\escolhaproduto|atual\(6) & (\escolhaproduto|atual\(7) & !\escolhaproduto|atual\(4))))) # (!\escolhaproduto|atual\(5) & 
-- (!\escolhaproduto|atual\(7) & (\escolhaproduto|atual\(6) $ (\escolhaproduto|atual\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual\(7),
	datab => \escolhaproduto|atual\(5),
	datac => \escolhaproduto|atual\(6),
	datad => \escolhaproduto|atual\(4),
	combout => \atual_meio|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\atual_meio|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_meio|Mux2~0_combout\ = (\escolhaproduto|atual\(7) & (\escolhaproduto|atual\(4) & (\escolhaproduto|atual\(5) $ (!\escolhaproduto|atual\(6))))) # (!\escolhaproduto|atual\(7) & ((\escolhaproduto|atual\(4)) # ((!\escolhaproduto|atual\(5) & 
-- \escolhaproduto|atual\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual\(7),
	datab => \escolhaproduto|atual\(5),
	datac => \escolhaproduto|atual\(6),
	datad => \escolhaproduto|atual\(4),
	combout => \atual_meio|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y22_N26
\atual_meio|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_meio|Mux1~0_combout\ = (\escolhaproduto|atual\(5) & ((\escolhaproduto|atual\(6) & ((\escolhaproduto|atual\(4)))) # (!\escolhaproduto|atual\(6) & (!\escolhaproduto|atual\(7))))) # (!\escolhaproduto|atual\(5) & (\escolhaproduto|atual\(4) & 
-- (\escolhaproduto|atual\(7) $ (!\escolhaproduto|atual\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual\(7),
	datab => \escolhaproduto|atual\(5),
	datac => \escolhaproduto|atual\(6),
	datad => \escolhaproduto|atual\(4),
	combout => \atual_meio|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\atual_meio|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_meio|Mux0~0_combout\ = (\escolhaproduto|atual\(6) & ((\escolhaproduto|atual\(4) & ((!\escolhaproduto|atual\(5)))) # (!\escolhaproduto|atual\(4) & (!\escolhaproduto|atual\(7))))) # (!\escolhaproduto|atual\(6) & ((\escolhaproduto|atual\(7)) # 
-- ((\escolhaproduto|atual\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual\(7),
	datab => \escolhaproduto|atual\(5),
	datac => \escolhaproduto|atual\(6),
	datad => \escolhaproduto|atual\(4),
	combout => \atual_meio|Mux0~0_combout\);

-- Location: LCCOMB_X97_Y17_N18
\escolhaproduto|atual[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[9]~28_combout\ = (!\escolhaproduto|WideOr0~6_combout\ & (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr0~6_combout\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \escolhaproduto|atual[9]~28_combout\);

-- Location: LCCOMB_X100_Y17_N4
\escolhaproduto|atual[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual\(9) = (GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & (\escolhaproduto|atual[9]~28_combout\)) # (!GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & ((\escolhaproduto|atual\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|atual[9]~28_combout\,
	datac => \escolhaproduto|atual\(9),
	datad => \escolhaproduto|atual[7]~18clkctrl_outclk\,
	combout => \escolhaproduto|atual\(9));

-- Location: LCCOMB_X97_Y17_N8
\escolhaproduto|atual[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[8]~23_combout\ = (!\SW[0]~input_o\ & ((\SW[2]~input_o\) # (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \escolhaproduto|atual[8]~23_combout\);

-- Location: LCCOMB_X96_Y17_N16
\escolhaproduto|atual[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[8]~24_combout\ = (\escolhaproduto|atual[8]~23_combout\ & (((\escolhaproduto|PS.E140~q\) # (!\escolhaproduto|WideOr23~0_combout\)))) # (!\escolhaproduto|atual[8]~23_combout\ & (\SW[0]~input_o\ & 
-- ((!\escolhaproduto|WideOr23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual[8]~23_combout\,
	datab => \SW[0]~input_o\,
	datac => \escolhaproduto|PS.E140~q\,
	datad => \escolhaproduto|WideOr23~0_combout\,
	combout => \escolhaproduto|atual[8]~24_combout\);

-- Location: LCCOMB_X95_Y17_N18
\escolhaproduto|atual[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual[8]~25_combout\ = (\escolhaproduto|atual[8]~24_combout\) # ((\produtodisplay|Mux1~0_combout\ & \escolhaproduto|WideOr94~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual[8]~24_combout\,
	datac => \produtodisplay|Mux1~0_combout\,
	datad => \escolhaproduto|WideOr94~combout\,
	combout => \escolhaproduto|atual[8]~25_combout\);

-- Location: LCCOMB_X95_Y17_N4
\escolhaproduto|atual[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|atual\(8) = (GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & (\escolhaproduto|atual[8]~25_combout\)) # (!GLOBAL(\escolhaproduto|atual[7]~18clkctrl_outclk\) & ((\escolhaproduto|atual\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|atual[8]~25_combout\,
	datac => \escolhaproduto|atual\(8),
	datad => \escolhaproduto|atual[7]~18clkctrl_outclk\,
	combout => \escolhaproduto|atual\(8));

-- Location: LCCOMB_X114_Y19_N20
\atual_esqe|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_esqe|Mux1~0_combout\ = (!\escolhaproduto|atual\(9) & \escolhaproduto|atual\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|atual\(9),
	datad => \escolhaproduto|atual\(8),
	combout => \atual_esqe|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y19_N2
\atual_esqe|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_esqe|Mux1~1_combout\ = (\escolhaproduto|atual\(9) & !\escolhaproduto|atual\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|atual\(9),
	datad => \escolhaproduto|atual\(8),
	combout => \atual_esqe|Mux1~1_combout\);

-- Location: LCCOMB_X114_Y19_N0
\atual_esqe|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual_esqe|Mux1~2_combout\ = (\escolhaproduto|atual\(9)) # (\escolhaproduto|atual\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|atual\(9),
	datad => \escolhaproduto|atual\(8),
	combout => \atual_esqe|Mux1~2_combout\);

-- Location: LCCOMB_X112_Y15_N20
\produtodisplay|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \produtodisplay|Mux5~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\SW[2]~input_o\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \produtodisplay|Mux5~0_combout\);

-- Location: LCCOMB_X97_Y17_N6
\produtodisplay|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \produtodisplay|Mux4~0_combout\ = (\SW[1]~input_o\) # ((\SW[0]~input_o\) # ((!\SW[2]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \produtodisplay|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y15_N14
\produtodisplay|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \produtodisplay|Mux3~0_combout\ = (\SW[0]~input_o\) # ((!\SW[1]~input_o\ & (!\SW[2]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \produtodisplay|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y15_N4
\produtodisplay|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \produtodisplay|Mux2~0_combout\ = (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \produtodisplay|Mux2~0_combout\);

-- Location: LCCOMB_X90_Y54_N2
\clockMoedasACair|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~0_combout\ = \clockMoedasACair|s_counter\(0) $ (VCC)
-- \clockMoedasACair|Add0~1\ = CARRY(\clockMoedasACair|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(0),
	datad => VCC,
	combout => \clockMoedasACair|Add0~0_combout\,
	cout => \clockMoedasACair|Add0~1\);

-- Location: FF_X90_Y54_N3
\clockMoedasACair|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(0));

-- Location: LCCOMB_X90_Y54_N4
\clockMoedasACair|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~2_combout\ = (\clockMoedasACair|s_counter\(1) & (!\clockMoedasACair|Add0~1\)) # (!\clockMoedasACair|s_counter\(1) & ((\clockMoedasACair|Add0~1\) # (GND)))
-- \clockMoedasACair|Add0~3\ = CARRY((!\clockMoedasACair|Add0~1\) # (!\clockMoedasACair|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(1),
	datad => VCC,
	cin => \clockMoedasACair|Add0~1\,
	combout => \clockMoedasACair|Add0~2_combout\,
	cout => \clockMoedasACair|Add0~3\);

-- Location: FF_X90_Y54_N5
\clockMoedasACair|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(1));

-- Location: LCCOMB_X90_Y54_N6
\clockMoedasACair|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~4_combout\ = (\clockMoedasACair|s_counter\(2) & (\clockMoedasACair|Add0~3\ $ (GND))) # (!\clockMoedasACair|s_counter\(2) & (!\clockMoedasACair|Add0~3\ & VCC))
-- \clockMoedasACair|Add0~5\ = CARRY((\clockMoedasACair|s_counter\(2) & !\clockMoedasACair|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(2),
	datad => VCC,
	cin => \clockMoedasACair|Add0~3\,
	combout => \clockMoedasACair|Add0~4_combout\,
	cout => \clockMoedasACair|Add0~5\);

-- Location: FF_X90_Y54_N7
\clockMoedasACair|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(2));

-- Location: LCCOMB_X90_Y54_N8
\clockMoedasACair|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~6_combout\ = (\clockMoedasACair|s_counter\(3) & (!\clockMoedasACair|Add0~5\)) # (!\clockMoedasACair|s_counter\(3) & ((\clockMoedasACair|Add0~5\) # (GND)))
-- \clockMoedasACair|Add0~7\ = CARRY((!\clockMoedasACair|Add0~5\) # (!\clockMoedasACair|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(3),
	datad => VCC,
	cin => \clockMoedasACair|Add0~5\,
	combout => \clockMoedasACair|Add0~6_combout\,
	cout => \clockMoedasACair|Add0~7\);

-- Location: FF_X90_Y54_N9
\clockMoedasACair|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(3));

-- Location: LCCOMB_X90_Y54_N10
\clockMoedasACair|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~8_combout\ = (\clockMoedasACair|s_counter\(4) & (\clockMoedasACair|Add0~7\ $ (GND))) # (!\clockMoedasACair|s_counter\(4) & (!\clockMoedasACair|Add0~7\ & VCC))
-- \clockMoedasACair|Add0~9\ = CARRY((\clockMoedasACair|s_counter\(4) & !\clockMoedasACair|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(4),
	datad => VCC,
	cin => \clockMoedasACair|Add0~7\,
	combout => \clockMoedasACair|Add0~8_combout\,
	cout => \clockMoedasACair|Add0~9\);

-- Location: FF_X90_Y54_N11
\clockMoedasACair|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(4));

-- Location: LCCOMB_X90_Y54_N12
\clockMoedasACair|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~10_combout\ = (\clockMoedasACair|s_counter\(5) & (!\clockMoedasACair|Add0~9\)) # (!\clockMoedasACair|s_counter\(5) & ((\clockMoedasACair|Add0~9\) # (GND)))
-- \clockMoedasACair|Add0~11\ = CARRY((!\clockMoedasACair|Add0~9\) # (!\clockMoedasACair|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(5),
	datad => VCC,
	cin => \clockMoedasACair|Add0~9\,
	combout => \clockMoedasACair|Add0~10_combout\,
	cout => \clockMoedasACair|Add0~11\);

-- Location: FF_X90_Y54_N13
\clockMoedasACair|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(5));

-- Location: LCCOMB_X90_Y54_N14
\clockMoedasACair|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~12_combout\ = (\clockMoedasACair|s_counter\(6) & (\clockMoedasACair|Add0~11\ $ (GND))) # (!\clockMoedasACair|s_counter\(6) & (!\clockMoedasACair|Add0~11\ & VCC))
-- \clockMoedasACair|Add0~13\ = CARRY((\clockMoedasACair|s_counter\(6) & !\clockMoedasACair|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(6),
	datad => VCC,
	cin => \clockMoedasACair|Add0~11\,
	combout => \clockMoedasACair|Add0~12_combout\,
	cout => \clockMoedasACair|Add0~13\);

-- Location: LCCOMB_X91_Y53_N12
\clockMoedasACair|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~0_combout\ = (\clockMoedasACair|Add0~12_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Add0~12_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~0_combout\);

-- Location: FF_X91_Y53_N13
\clockMoedasACair|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(6));

-- Location: LCCOMB_X90_Y54_N16
\clockMoedasACair|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~14_combout\ = (\clockMoedasACair|s_counter\(7) & (!\clockMoedasACair|Add0~13\)) # (!\clockMoedasACair|s_counter\(7) & ((\clockMoedasACair|Add0~13\) # (GND)))
-- \clockMoedasACair|Add0~15\ = CARRY((!\clockMoedasACair|Add0~13\) # (!\clockMoedasACair|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(7),
	datad => VCC,
	cin => \clockMoedasACair|Add0~13\,
	combout => \clockMoedasACair|Add0~14_combout\,
	cout => \clockMoedasACair|Add0~15\);

-- Location: FF_X90_Y54_N17
\clockMoedasACair|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(7));

-- Location: LCCOMB_X90_Y54_N18
\clockMoedasACair|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~16_combout\ = (\clockMoedasACair|s_counter\(8) & (\clockMoedasACair|Add0~15\ $ (GND))) # (!\clockMoedasACair|s_counter\(8) & (!\clockMoedasACair|Add0~15\ & VCC))
-- \clockMoedasACair|Add0~17\ = CARRY((\clockMoedasACair|s_counter\(8) & !\clockMoedasACair|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(8),
	datad => VCC,
	cin => \clockMoedasACair|Add0~15\,
	combout => \clockMoedasACair|Add0~16_combout\,
	cout => \clockMoedasACair|Add0~17\);

-- Location: FF_X90_Y54_N19
\clockMoedasACair|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(8));

-- Location: LCCOMB_X90_Y54_N20
\clockMoedasACair|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~18_combout\ = (\clockMoedasACair|s_counter\(9) & (!\clockMoedasACair|Add0~17\)) # (!\clockMoedasACair|s_counter\(9) & ((\clockMoedasACair|Add0~17\) # (GND)))
-- \clockMoedasACair|Add0~19\ = CARRY((!\clockMoedasACair|Add0~17\) # (!\clockMoedasACair|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(9),
	datad => VCC,
	cin => \clockMoedasACair|Add0~17\,
	combout => \clockMoedasACair|Add0~18_combout\,
	cout => \clockMoedasACair|Add0~19\);

-- Location: LCCOMB_X89_Y53_N0
\clockMoedasACair|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~10_combout\ = (!\clockMoedasACair|Equal0~9_combout\ & \clockMoedasACair|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|Equal0~9_combout\,
	datad => \clockMoedasACair|Add0~18_combout\,
	combout => \clockMoedasACair|s_counter~10_combout\);

-- Location: FF_X89_Y53_N1
\clockMoedasACair|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(9));

-- Location: LCCOMB_X90_Y54_N22
\clockMoedasACair|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~20_combout\ = (\clockMoedasACair|s_counter\(10) & (\clockMoedasACair|Add0~19\ $ (GND))) # (!\clockMoedasACair|s_counter\(10) & (!\clockMoedasACair|Add0~19\ & VCC))
-- \clockMoedasACair|Add0~21\ = CARRY((\clockMoedasACair|s_counter\(10) & !\clockMoedasACair|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(10),
	datad => VCC,
	cin => \clockMoedasACair|Add0~19\,
	combout => \clockMoedasACair|Add0~20_combout\,
	cout => \clockMoedasACair|Add0~21\);

-- Location: FF_X90_Y54_N23
\clockMoedasACair|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(10));

-- Location: LCCOMB_X90_Y54_N24
\clockMoedasACair|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~22_combout\ = (\clockMoedasACair|s_counter\(11) & (!\clockMoedasACair|Add0~21\)) # (!\clockMoedasACair|s_counter\(11) & ((\clockMoedasACair|Add0~21\) # (GND)))
-- \clockMoedasACair|Add0~23\ = CARRY((!\clockMoedasACair|Add0~21\) # (!\clockMoedasACair|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(11),
	datad => VCC,
	cin => \clockMoedasACair|Add0~21\,
	combout => \clockMoedasACair|Add0~22_combout\,
	cout => \clockMoedasACair|Add0~23\);

-- Location: FF_X90_Y54_N25
\clockMoedasACair|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(11));

-- Location: LCCOMB_X90_Y54_N26
\clockMoedasACair|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~24_combout\ = (\clockMoedasACair|s_counter\(12) & (\clockMoedasACair|Add0~23\ $ (GND))) # (!\clockMoedasACair|s_counter\(12) & (!\clockMoedasACair|Add0~23\ & VCC))
-- \clockMoedasACair|Add0~25\ = CARRY((\clockMoedasACair|s_counter\(12) & !\clockMoedasACair|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(12),
	datad => VCC,
	cin => \clockMoedasACair|Add0~23\,
	combout => \clockMoedasACair|Add0~24_combout\,
	cout => \clockMoedasACair|Add0~25\);

-- Location: LCCOMB_X89_Y53_N24
\clockMoedasACair|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~11_combout\ = (\clockMoedasACair|Add0~24_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Add0~24_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~11_combout\);

-- Location: FF_X89_Y53_N25
\clockMoedasACair|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(12));

-- Location: LCCOMB_X90_Y54_N28
\clockMoedasACair|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~26_combout\ = (\clockMoedasACair|s_counter\(13) & (!\clockMoedasACair|Add0~25\)) # (!\clockMoedasACair|s_counter\(13) & ((\clockMoedasACair|Add0~25\) # (GND)))
-- \clockMoedasACair|Add0~27\ = CARRY((!\clockMoedasACair|Add0~25\) # (!\clockMoedasACair|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(13),
	datad => VCC,
	cin => \clockMoedasACair|Add0~25\,
	combout => \clockMoedasACair|Add0~26_combout\,
	cout => \clockMoedasACair|Add0~27\);

-- Location: FF_X90_Y54_N29
\clockMoedasACair|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(13));

-- Location: LCCOMB_X90_Y54_N30
\clockMoedasACair|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~28_combout\ = (\clockMoedasACair|s_counter\(14) & (\clockMoedasACair|Add0~27\ $ (GND))) # (!\clockMoedasACair|s_counter\(14) & (!\clockMoedasACair|Add0~27\ & VCC))
-- \clockMoedasACair|Add0~29\ = CARRY((\clockMoedasACair|s_counter\(14) & !\clockMoedasACair|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(14),
	datad => VCC,
	cin => \clockMoedasACair|Add0~27\,
	combout => \clockMoedasACair|Add0~28_combout\,
	cout => \clockMoedasACair|Add0~29\);

-- Location: LCCOMB_X91_Y53_N0
\clockMoedasACair|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~1_combout\ = (\clockMoedasACair|Add0~28_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Add0~28_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~1_combout\);

-- Location: FF_X91_Y53_N1
\clockMoedasACair|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(14));

-- Location: LCCOMB_X90_Y53_N0
\clockMoedasACair|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~30_combout\ = (\clockMoedasACair|s_counter\(15) & (!\clockMoedasACair|Add0~29\)) # (!\clockMoedasACair|s_counter\(15) & ((\clockMoedasACair|Add0~29\) # (GND)))
-- \clockMoedasACair|Add0~31\ = CARRY((!\clockMoedasACair|Add0~29\) # (!\clockMoedasACair|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(15),
	datad => VCC,
	cin => \clockMoedasACair|Add0~29\,
	combout => \clockMoedasACair|Add0~30_combout\,
	cout => \clockMoedasACair|Add0~31\);

-- Location: LCCOMB_X91_Y53_N22
\clockMoedasACair|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~2_combout\ = (\clockMoedasACair|Add0~30_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Add0~30_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~2_combout\);

-- Location: FF_X91_Y53_N23
\clockMoedasACair|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(15));

-- Location: LCCOMB_X90_Y53_N2
\clockMoedasACair|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~32_combout\ = (\clockMoedasACair|s_counter\(16) & (\clockMoedasACair|Add0~31\ $ (GND))) # (!\clockMoedasACair|s_counter\(16) & (!\clockMoedasACair|Add0~31\ & VCC))
-- \clockMoedasACair|Add0~33\ = CARRY((\clockMoedasACair|s_counter\(16) & !\clockMoedasACair|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(16),
	datad => VCC,
	cin => \clockMoedasACair|Add0~31\,
	combout => \clockMoedasACair|Add0~32_combout\,
	cout => \clockMoedasACair|Add0~33\);

-- Location: LCCOMB_X91_Y53_N20
\clockMoedasACair|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~3_combout\ = (\clockMoedasACair|Add0~32_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|Add0~32_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~3_combout\);

-- Location: FF_X91_Y53_N21
\clockMoedasACair|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(16));

-- Location: LCCOMB_X90_Y53_N4
\clockMoedasACair|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~34_combout\ = (\clockMoedasACair|s_counter\(17) & (!\clockMoedasACair|Add0~33\)) # (!\clockMoedasACair|s_counter\(17) & ((\clockMoedasACair|Add0~33\) # (GND)))
-- \clockMoedasACair|Add0~35\ = CARRY((!\clockMoedasACair|Add0~33\) # (!\clockMoedasACair|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(17),
	datad => VCC,
	cin => \clockMoedasACair|Add0~33\,
	combout => \clockMoedasACair|Add0~34_combout\,
	cout => \clockMoedasACair|Add0~35\);

-- Location: LCCOMB_X91_Y53_N18
\clockMoedasACair|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~4_combout\ = (\clockMoedasACair|Add0~34_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Add0~34_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~4_combout\);

-- Location: FF_X91_Y53_N19
\clockMoedasACair|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(17));

-- Location: LCCOMB_X90_Y53_N6
\clockMoedasACair|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~36_combout\ = (\clockMoedasACair|s_counter\(18) & (\clockMoedasACair|Add0~35\ $ (GND))) # (!\clockMoedasACair|s_counter\(18) & (!\clockMoedasACair|Add0~35\ & VCC))
-- \clockMoedasACair|Add0~37\ = CARRY((\clockMoedasACair|s_counter\(18) & !\clockMoedasACair|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(18),
	datad => VCC,
	cin => \clockMoedasACair|Add0~35\,
	combout => \clockMoedasACair|Add0~36_combout\,
	cout => \clockMoedasACair|Add0~37\);

-- Location: LCCOMB_X91_Y53_N30
\clockMoedasACair|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~5_combout\ = (\clockMoedasACair|Add0~36_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Add0~36_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~5_combout\);

-- Location: FF_X91_Y53_N31
\clockMoedasACair|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(18));

-- Location: LCCOMB_X90_Y53_N8
\clockMoedasACair|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~38_combout\ = (\clockMoedasACair|s_counter\(19) & (!\clockMoedasACair|Add0~37\)) # (!\clockMoedasACair|s_counter\(19) & ((\clockMoedasACair|Add0~37\) # (GND)))
-- \clockMoedasACair|Add0~39\ = CARRY((!\clockMoedasACair|Add0~37\) # (!\clockMoedasACair|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(19),
	datad => VCC,
	cin => \clockMoedasACair|Add0~37\,
	combout => \clockMoedasACair|Add0~38_combout\,
	cout => \clockMoedasACair|Add0~39\);

-- Location: LCCOMB_X91_Y53_N16
\clockMoedasACair|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~6_combout\ = (!\clockMoedasACair|Equal0~9_combout\ & \clockMoedasACair|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Equal0~9_combout\,
	datad => \clockMoedasACair|Add0~38_combout\,
	combout => \clockMoedasACair|s_counter~6_combout\);

-- Location: FF_X91_Y53_N17
\clockMoedasACair|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(19));

-- Location: LCCOMB_X90_Y53_N10
\clockMoedasACair|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~40_combout\ = (\clockMoedasACair|s_counter\(20) & (\clockMoedasACair|Add0~39\ $ (GND))) # (!\clockMoedasACair|s_counter\(20) & (!\clockMoedasACair|Add0~39\ & VCC))
-- \clockMoedasACair|Add0~41\ = CARRY((\clockMoedasACair|s_counter\(20) & !\clockMoedasACair|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(20),
	datad => VCC,
	cin => \clockMoedasACair|Add0~39\,
	combout => \clockMoedasACair|Add0~40_combout\,
	cout => \clockMoedasACair|Add0~41\);

-- Location: LCCOMB_X89_Y53_N14
\clockMoedasACair|s_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~12_combout\ = (\clockMoedasACair|Add0~40_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Add0~40_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~12_combout\);

-- Location: FF_X89_Y53_N15
\clockMoedasACair|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(20));

-- Location: LCCOMB_X90_Y53_N12
\clockMoedasACair|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~42_combout\ = (\clockMoedasACair|s_counter\(21) & (!\clockMoedasACair|Add0~41\)) # (!\clockMoedasACair|s_counter\(21) & ((\clockMoedasACair|Add0~41\) # (GND)))
-- \clockMoedasACair|Add0~43\ = CARRY((!\clockMoedasACair|Add0~41\) # (!\clockMoedasACair|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(21),
	datad => VCC,
	cin => \clockMoedasACair|Add0~41\,
	combout => \clockMoedasACair|Add0~42_combout\,
	cout => \clockMoedasACair|Add0~43\);

-- Location: FF_X90_Y53_N13
\clockMoedasACair|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(21));

-- Location: LCCOMB_X89_Y53_N10
\clockMoedasACair|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~8_combout\ = (\clockMoedasACair|s_counter\(20) & (\clockMoedasACair|s_counter\(12) & (!\clockMoedasACair|s_counter\(21) & !\clockMoedasACair|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(20),
	datab => \clockMoedasACair|s_counter\(12),
	datac => \clockMoedasACair|s_counter\(21),
	datad => \clockMoedasACair|s_counter\(13),
	combout => \clockMoedasACair|Equal0~8_combout\);

-- Location: LCCOMB_X89_Y53_N26
\clockMoedasACair|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~7_combout\ = (!\clockMoedasACair|s_counter\(11) & (\clockMoedasACair|s_counter\(9) & (\clockMoedasACair|s_counter\(5) & !\clockMoedasACair|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(11),
	datab => \clockMoedasACair|s_counter\(9),
	datac => \clockMoedasACair|s_counter\(5),
	datad => \clockMoedasACair|s_counter\(8),
	combout => \clockMoedasACair|Equal0~7_combout\);

-- Location: LCCOMB_X90_Y53_N20
\clockMoedasACair|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~50_combout\ = (\clockMoedasACair|s_counter\(25) & (!\clockMoedasACair|Add0~49\)) # (!\clockMoedasACair|s_counter\(25) & ((\clockMoedasACair|Add0~49\) # (GND)))
-- \clockMoedasACair|Add0~51\ = CARRY((!\clockMoedasACair|Add0~49\) # (!\clockMoedasACair|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(25),
	datad => VCC,
	cin => \clockMoedasACair|Add0~49\,
	combout => \clockMoedasACair|Add0~50_combout\,
	cout => \clockMoedasACair|Add0~51\);

-- Location: LCCOMB_X90_Y53_N22
\clockMoedasACair|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~52_combout\ = (\clockMoedasACair|s_counter\(26) & (\clockMoedasACair|Add0~51\ $ (GND))) # (!\clockMoedasACair|s_counter\(26) & (!\clockMoedasACair|Add0~51\ & VCC))
-- \clockMoedasACair|Add0~53\ = CARRY((\clockMoedasACair|s_counter\(26) & !\clockMoedasACair|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(26),
	datad => VCC,
	cin => \clockMoedasACair|Add0~51\,
	combout => \clockMoedasACair|Add0~52_combout\,
	cout => \clockMoedasACair|Add0~53\);

-- Location: FF_X90_Y53_N23
\clockMoedasACair|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(26));

-- Location: LCCOMB_X90_Y53_N24
\clockMoedasACair|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~54_combout\ = (\clockMoedasACair|s_counter\(27) & (!\clockMoedasACair|Add0~53\)) # (!\clockMoedasACair|s_counter\(27) & ((\clockMoedasACair|Add0~53\) # (GND)))
-- \clockMoedasACair|Add0~55\ = CARRY((!\clockMoedasACair|Add0~53\) # (!\clockMoedasACair|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(27),
	datad => VCC,
	cin => \clockMoedasACair|Add0~53\,
	combout => \clockMoedasACair|Add0~54_combout\,
	cout => \clockMoedasACair|Add0~55\);

-- Location: FF_X90_Y53_N25
\clockMoedasACair|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(27));

-- Location: LCCOMB_X90_Y53_N26
\clockMoedasACair|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~56_combout\ = (\clockMoedasACair|s_counter\(28) & (\clockMoedasACair|Add0~55\ $ (GND))) # (!\clockMoedasACair|s_counter\(28) & (!\clockMoedasACair|Add0~55\ & VCC))
-- \clockMoedasACair|Add0~57\ = CARRY((\clockMoedasACair|s_counter\(28) & !\clockMoedasACair|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(28),
	datad => VCC,
	cin => \clockMoedasACair|Add0~55\,
	combout => \clockMoedasACair|Add0~56_combout\,
	cout => \clockMoedasACair|Add0~57\);

-- Location: FF_X90_Y53_N27
\clockMoedasACair|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(28));

-- Location: LCCOMB_X90_Y53_N28
\clockMoedasACair|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~58_combout\ = (\clockMoedasACair|s_counter\(29) & (!\clockMoedasACair|Add0~57\)) # (!\clockMoedasACair|s_counter\(29) & ((\clockMoedasACair|Add0~57\) # (GND)))
-- \clockMoedasACair|Add0~59\ = CARRY((!\clockMoedasACair|Add0~57\) # (!\clockMoedasACair|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(29),
	datad => VCC,
	cin => \clockMoedasACair|Add0~57\,
	combout => \clockMoedasACair|Add0~58_combout\,
	cout => \clockMoedasACair|Add0~59\);

-- Location: FF_X90_Y53_N29
\clockMoedasACair|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(29));

-- Location: LCCOMB_X90_Y53_N30
\clockMoedasACair|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~60_combout\ = \clockMoedasACair|s_counter\(30) $ (!\clockMoedasACair|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(30),
	cin => \clockMoedasACair|Add0~59\,
	combout => \clockMoedasACair|Add0~60_combout\);

-- Location: FF_X90_Y53_N31
\clockMoedasACair|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(30));

-- Location: LCCOMB_X89_Y53_N22
\clockMoedasACair|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~5_combout\ = (\clockMoedasACair|s_counter\(24) & (!\clockMoedasACair|s_counter\(27) & (!\clockMoedasACair|s_counter\(28) & !\clockMoedasACair|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(24),
	datab => \clockMoedasACair|s_counter\(27),
	datac => \clockMoedasACair|s_counter\(28),
	datad => \clockMoedasACair|s_counter\(26),
	combout => \clockMoedasACair|Equal0~5_combout\);

-- Location: LCCOMB_X91_Y53_N24
\clockMoedasACair|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~2_combout\ = (\clockMoedasACair|s_counter\(17) & (\clockMoedasACair|s_counter\(16) & (\clockMoedasACair|s_counter\(15) & \clockMoedasACair|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(17),
	datab => \clockMoedasACair|s_counter\(16),
	datac => \clockMoedasACair|s_counter\(15),
	datad => \clockMoedasACair|s_counter\(14),
	combout => \clockMoedasACair|Equal0~2_combout\);

-- Location: LCCOMB_X90_Y53_N14
\clockMoedasACair|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~44_combout\ = (\clockMoedasACair|s_counter\(22) & (\clockMoedasACair|Add0~43\ $ (GND))) # (!\clockMoedasACair|s_counter\(22) & (!\clockMoedasACair|Add0~43\ & VCC))
-- \clockMoedasACair|Add0~45\ = CARRY((\clockMoedasACair|s_counter\(22) & !\clockMoedasACair|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(22),
	datad => VCC,
	cin => \clockMoedasACair|Add0~43\,
	combout => \clockMoedasACair|Add0~44_combout\,
	cout => \clockMoedasACair|Add0~45\);

-- Location: LCCOMB_X91_Y53_N26
\clockMoedasACair|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~7_combout\ = (!\clockMoedasACair|Equal0~9_combout\ & \clockMoedasACair|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Equal0~9_combout\,
	datad => \clockMoedasACair|Add0~44_combout\,
	combout => \clockMoedasACair|s_counter~7_combout\);

-- Location: FF_X91_Y53_N27
\clockMoedasACair|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(22));

-- Location: LCCOMB_X90_Y53_N16
\clockMoedasACair|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~46_combout\ = (\clockMoedasACair|s_counter\(23) & (!\clockMoedasACair|Add0~45\)) # (!\clockMoedasACair|s_counter\(23) & ((\clockMoedasACair|Add0~45\) # (GND)))
-- \clockMoedasACair|Add0~47\ = CARRY((!\clockMoedasACair|Add0~45\) # (!\clockMoedasACair|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(23),
	datad => VCC,
	cin => \clockMoedasACair|Add0~45\,
	combout => \clockMoedasACair|Add0~46_combout\,
	cout => \clockMoedasACair|Add0~47\);

-- Location: LCCOMB_X91_Y53_N28
\clockMoedasACair|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~8_combout\ = (\clockMoedasACair|Add0~46_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Add0~46_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~8_combout\);

-- Location: FF_X91_Y53_N29
\clockMoedasACair|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(23));

-- Location: LCCOMB_X91_Y53_N10
\clockMoedasACair|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~3_combout\ = (\clockMoedasACair|s_counter\(18) & (\clockMoedasACair|s_counter\(19) & (\clockMoedasACair|s_counter\(22) & \clockMoedasACair|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(18),
	datab => \clockMoedasACair|s_counter\(19),
	datac => \clockMoedasACair|s_counter\(22),
	datad => \clockMoedasACair|s_counter\(23),
	combout => \clockMoedasACair|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y54_N0
\clockMoedasACair|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~1_combout\ = (\clockMoedasACair|s_counter\(2) & (\clockMoedasACair|s_counter\(3) & (!\clockMoedasACair|s_counter\(10) & \clockMoedasACair|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(2),
	datab => \clockMoedasACair|s_counter\(3),
	datac => \clockMoedasACair|s_counter\(10),
	datad => \clockMoedasACair|s_counter\(4),
	combout => \clockMoedasACair|Equal0~1_combout\);

-- Location: LCCOMB_X91_Y53_N14
\clockMoedasACair|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~0_combout\ = (!\clockMoedasACair|s_counter\(6) & (\clockMoedasACair|s_counter\(1) & (!\clockMoedasACair|s_counter\(7) & \clockMoedasACair|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(6),
	datab => \clockMoedasACair|s_counter\(1),
	datac => \clockMoedasACair|s_counter\(7),
	datad => \clockMoedasACair|s_counter\(0),
	combout => \clockMoedasACair|Equal0~0_combout\);

-- Location: LCCOMB_X89_Y53_N12
\clockMoedasACair|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~4_combout\ = (\clockMoedasACair|Equal0~2_combout\ & (\clockMoedasACair|Equal0~3_combout\ & (\clockMoedasACair|Equal0~1_combout\ & \clockMoedasACair|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|Equal0~2_combout\,
	datab => \clockMoedasACair|Equal0~3_combout\,
	datac => \clockMoedasACair|Equal0~1_combout\,
	datad => \clockMoedasACair|Equal0~0_combout\,
	combout => \clockMoedasACair|Equal0~4_combout\);

-- Location: LCCOMB_X89_Y53_N18
\clockMoedasACair|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~6_combout\ = (!\clockMoedasACair|s_counter\(29) & (!\clockMoedasACair|s_counter\(30) & (\clockMoedasACair|Equal0~5_combout\ & \clockMoedasACair|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(29),
	datab => \clockMoedasACair|s_counter\(30),
	datac => \clockMoedasACair|Equal0~5_combout\,
	datad => \clockMoedasACair|Equal0~4_combout\,
	combout => \clockMoedasACair|Equal0~6_combout\);

-- Location: LCCOMB_X89_Y53_N20
\clockMoedasACair|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Equal0~9_combout\ = (\clockMoedasACair|Equal0~8_combout\ & (\clockMoedasACair|s_counter\(25) & (\clockMoedasACair|Equal0~7_combout\ & \clockMoedasACair|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|Equal0~8_combout\,
	datab => \clockMoedasACair|s_counter\(25),
	datac => \clockMoedasACair|Equal0~7_combout\,
	datad => \clockMoedasACair|Equal0~6_combout\,
	combout => \clockMoedasACair|Equal0~9_combout\);

-- Location: LCCOMB_X90_Y53_N18
\clockMoedasACair|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|Add0~48_combout\ = (\clockMoedasACair|s_counter\(24) & (\clockMoedasACair|Add0~47\ $ (GND))) # (!\clockMoedasACair|s_counter\(24) & (!\clockMoedasACair|Add0~47\ & VCC))
-- \clockMoedasACair|Add0~49\ = CARRY((\clockMoedasACair|s_counter\(24) & !\clockMoedasACair|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(24),
	datad => VCC,
	cin => \clockMoedasACair|Add0~47\,
	combout => \clockMoedasACair|Add0~48_combout\,
	cout => \clockMoedasACair|Add0~49\);

-- Location: LCCOMB_X89_Y53_N6
\clockMoedasACair|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~9_combout\ = (!\clockMoedasACair|Equal0~9_combout\ & \clockMoedasACair|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|Equal0~9_combout\,
	datad => \clockMoedasACair|Add0~48_combout\,
	combout => \clockMoedasACair|s_counter~9_combout\);

-- Location: FF_X89_Y53_N7
\clockMoedasACair|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(24));

-- Location: LCCOMB_X89_Y53_N16
\clockMoedasACair|s_counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|s_counter~13_combout\ = (\clockMoedasACair|Add0~50_combout\ & !\clockMoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockMoedasACair|Add0~50_combout\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|s_counter~13_combout\);

-- Location: FF_X89_Y53_N17
\clockMoedasACair|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|s_counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|s_counter\(25));

-- Location: LCCOMB_X89_Y53_N4
\clockMoedasACair|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|clkOut~0_combout\ = (\clockMoedasACair|s_counter\(11) & (!\clockMoedasACair|s_counter\(9) & (!\clockMoedasACair|s_counter\(5) & \clockMoedasACair|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(11),
	datab => \clockMoedasACair|s_counter\(9),
	datac => \clockMoedasACair|s_counter\(5),
	datad => \clockMoedasACair|s_counter\(8),
	combout => \clockMoedasACair|clkOut~0_combout\);

-- Location: LCCOMB_X89_Y53_N28
\clockMoedasACair|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|clkOut~1_combout\ = (!\clockMoedasACair|s_counter\(20) & (!\clockMoedasACair|s_counter\(12) & (\clockMoedasACair|s_counter\(21) & \clockMoedasACair|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(20),
	datab => \clockMoedasACair|s_counter\(12),
	datac => \clockMoedasACair|s_counter\(21),
	datad => \clockMoedasACair|s_counter\(13),
	combout => \clockMoedasACair|clkOut~1_combout\);

-- Location: LCCOMB_X89_Y53_N30
\clockMoedasACair|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|clkOut~2_combout\ = (!\clockMoedasACair|s_counter\(25) & (\clockMoedasACair|clkOut~0_combout\ & \clockMoedasACair|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|s_counter\(25),
	datac => \clockMoedasACair|clkOut~0_combout\,
	datad => \clockMoedasACair|clkOut~1_combout\,
	combout => \clockMoedasACair|clkOut~2_combout\);

-- Location: LCCOMB_X89_Y53_N8
\clockMoedasACair|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|clkOut~3_combout\ = (!\clockMoedasACair|Equal0~9_combout\ & ((\clockMoedasACair|clkOut~q\) # ((\clockMoedasACair|clkOut~2_combout\ & \clockMoedasACair|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|clkOut~2_combout\,
	datab => \clockMoedasACair|Equal0~6_combout\,
	datac => \clockMoedasACair|clkOut~q\,
	datad => \clockMoedasACair|Equal0~9_combout\,
	combout => \clockMoedasACair|clkOut~3_combout\);

-- Location: LCCOMB_X89_Y53_N2
\clockMoedasACair|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockMoedasACair|clkOut~feeder_combout\ = \clockMoedasACair|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockMoedasACair|clkOut~3_combout\,
	combout => \clockMoedasACair|clkOut~feeder_combout\);

-- Location: FF_X89_Y53_N3
\clockMoedasACair|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clockMoedasACair|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockMoedasACair|clkOut~q\);

-- Location: CLKCTRL_G8
\clockMoedasACair|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockMoedasACair|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockMoedasACair|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X96_Y20_N28
\escolhaproduto|troco~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco~15_combout\ = (!\escolhaproduto|PS.E150~q\ & !\escolhaproduto|PS.E140~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|PS.E150~q\,
	datac => \escolhaproduto|PS.E140~q\,
	combout => \escolhaproduto|troco~15_combout\);

-- Location: LCCOMB_X96_Y17_N26
\escolhaproduto|troco[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[7]~14_combout\ = (\escolhaproduto|NS.E130~2_combout\ & (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (!\escolhaproduto|WideOr100~0_combout\))) # (!\escolhaproduto|NS.E130~2_combout\ & 
-- ((\escolhaproduto|produtoUsadoDisplay[0]~0_combout\) # ((!\escolhaproduto|troco~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E130~2_combout\,
	datab => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datac => \escolhaproduto|WideOr100~0_combout\,
	datad => \escolhaproduto|troco~2_combout\,
	combout => \escolhaproduto|troco[7]~14_combout\);

-- Location: LCCOMB_X96_Y17_N8
\escolhaproduto|troco[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[7]~16_combout\ = (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & ((\escolhaproduto|troco[7]~14_combout\ & (!\escolhaproduto|troco~15_combout\)) # (!\escolhaproduto|troco[7]~14_combout\ & 
-- ((!\escolhaproduto|WideOr0~6_combout\))))) # (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (((\escolhaproduto|troco[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datab => \escolhaproduto|troco~15_combout\,
	datac => \escolhaproduto|troco[7]~14_combout\,
	datad => \escolhaproduto|WideOr0~6_combout\,
	combout => \escolhaproduto|troco[7]~16_combout\);

-- Location: LCCOMB_X97_Y19_N22
\escolhaproduto|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr2~combout\ = ((\escolhaproduto|PS.E40~q\) # (!\escolhaproduto|WideOr0~8_combout\)) # (!\escolhaproduto|WideOr57~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|WideOr57~0_combout\,
	datac => \escolhaproduto|WideOr0~8_combout\,
	datad => \escolhaproduto|PS.E40~q\,
	combout => \escolhaproduto|WideOr2~combout\);

-- Location: LCCOMB_X97_Y19_N2
\escolhaproduto|WideOr57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr57~1_combout\ = (\escolhaproduto|PS.E100~q\) # ((\escolhaproduto|PS.E20~q\) # ((\escolhaproduto|PS.E30~q\) # (\escolhaproduto|PS.E10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E100~q\,
	datab => \escolhaproduto|PS.E20~q\,
	datac => \escolhaproduto|PS.E30~q\,
	datad => \escolhaproduto|PS.E10~q\,
	combout => \escolhaproduto|WideOr57~1_combout\);

-- Location: LCCOMB_X97_Y19_N14
\escolhaproduto|WideOr57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr57~2_combout\ = ((\escolhaproduto|WideOr57~1_combout\) # ((!\escolhaproduto|WideOr0~6_combout\) # (!\escolhaproduto|WideOr11~0_combout\))) # (!\escolhaproduto|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr4~0_combout\,
	datab => \escolhaproduto|WideOr57~1_combout\,
	datac => \escolhaproduto|WideOr11~0_combout\,
	datad => \escolhaproduto|WideOr0~6_combout\,
	combout => \escolhaproduto|WideOr57~2_combout\);

-- Location: LCCOMB_X97_Y19_N6
\escolhaproduto|troco[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[7]~8_combout\ = (\escolhaproduto|NS.E130~2_combout\ & (((!\escolhaproduto|WideOr57~2_combout\ & !\escolhaproduto|produtoUsadoDisplay[0]~0_combout\)))) # (!\escolhaproduto|NS.E130~2_combout\ & 
-- (((\escolhaproduto|produtoUsadoDisplay[0]~0_combout\)) # (!\escolhaproduto|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr2~combout\,
	datab => \escolhaproduto|NS.E130~2_combout\,
	datac => \escolhaproduto|WideOr57~2_combout\,
	datad => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	combout => \escolhaproduto|troco[7]~8_combout\);

-- Location: LCCOMB_X97_Y17_N24
\escolhaproduto|WideOr96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr96~0_combout\ = (\escolhaproduto|PS.E130~q\) # (!\escolhaproduto|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E130~q\,
	datad => \escolhaproduto|PS.E0~q\,
	combout => \escolhaproduto|WideOr96~0_combout\);

-- Location: LCCOMB_X97_Y17_N22
\escolhaproduto|troco[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[7]~7_combout\ = (\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((\escolhaproduto|WideOr96~0_combout\) # (!\escolhaproduto|WideOr0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \escolhaproduto|WideOr0~8_combout\,
	datad => \escolhaproduto|WideOr96~0_combout\,
	combout => \escolhaproduto|troco[7]~7_combout\);

-- Location: LCCOMB_X97_Y18_N18
\escolhaproduto|WideOr27\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr27~combout\ = (\escolhaproduto|PS.E60~q\) # (((!\escolhaproduto|WideOr14~0_combout\) # (!\escolhaproduto|WideOr27~0_combout\)) # (!\escolhaproduto|WideOr25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E60~q\,
	datab => \escolhaproduto|WideOr25~0_combout\,
	datac => \escolhaproduto|WideOr27~0_combout\,
	datad => \escolhaproduto|WideOr14~0_combout\,
	combout => \escolhaproduto|WideOr27~combout\);

-- Location: LCCOMB_X97_Y19_N4
\escolhaproduto|troco[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[7]~9_combout\ = (\escolhaproduto|troco[7]~8_combout\ & (((!\escolhaproduto|WideOr27~combout\)) # (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\))) # (!\escolhaproduto|troco[7]~8_combout\ & 
-- (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (\escolhaproduto|troco[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco[7]~8_combout\,
	datab => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datac => \escolhaproduto|troco[7]~7_combout\,
	datad => \escolhaproduto|WideOr27~combout\,
	combout => \escolhaproduto|troco[7]~9_combout\);

-- Location: LCCOMB_X96_Y17_N2
\escolhaproduto|troco[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco\(7) = (\escolhaproduto|troco[7]~9_combout\ & (\escolhaproduto|troco[7]~16_combout\)) # (!\escolhaproduto|troco[7]~9_combout\ & ((\escolhaproduto|troco\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|troco[7]~16_combout\,
	datac => \escolhaproduto|troco[7]~9_combout\,
	datad => \escolhaproduto|troco\(7),
	combout => \escolhaproduto|troco\(7));

-- Location: LCCOMB_X97_Y19_N12
\escolhaproduto|WideOr31\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr31~combout\ = (\escolhaproduto|PS.E80~q\) # ((\escolhaproduto|PS.E120~q\) # ((\escolhaproduto|PS.E90~q\) # (\escolhaproduto|PS.E130~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E80~q\,
	datab => \escolhaproduto|PS.E120~q\,
	datac => \escolhaproduto|PS.E90~q\,
	datad => \escolhaproduto|PS.E130~q\,
	combout => \escolhaproduto|WideOr31~combout\);

-- Location: LCCOMB_X96_Y20_N30
\escolhaproduto|WideOr100\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr100~combout\ = (\escolhaproduto|PS.E140~q\) # ((\escolhaproduto|PS.E150~q\) # ((\escolhaproduto|PS.E190~q\) # (\escolhaproduto|PS.E180~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E140~q\,
	datab => \escolhaproduto|PS.E150~q\,
	datac => \escolhaproduto|PS.E190~q\,
	datad => \escolhaproduto|PS.E180~q\,
	combout => \escolhaproduto|WideOr100~combout\);

-- Location: LCCOMB_X97_Y19_N30
\escolhaproduto|WideOr61\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr61~combout\ = (\escolhaproduto|PS.E130~q\) # ((\escolhaproduto|PS.E120~q\) # ((\escolhaproduto|PS.E170~q\) # (\escolhaproduto|PS.E160~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E130~q\,
	datab => \escolhaproduto|PS.E120~q\,
	datac => \escolhaproduto|PS.E170~q\,
	datad => \escolhaproduto|PS.E160~q\,
	combout => \escolhaproduto|WideOr61~combout\);

-- Location: LCCOMB_X97_Y19_N16
\escolhaproduto|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr6~combout\ = (\escolhaproduto|PS.E100~q\) # ((\escolhaproduto|PS.E110~q\) # ((\escolhaproduto|PS.E60~q\) # (\escolhaproduto|PS.E70~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E100~q\,
	datab => \escolhaproduto|PS.E110~q\,
	datac => \escolhaproduto|PS.E60~q\,
	datad => \escolhaproduto|PS.E70~q\,
	combout => \escolhaproduto|WideOr6~combout\);

-- Location: LCCOMB_X97_Y19_N24
\escolhaproduto|troco[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[5]~10_combout\ = (\escolhaproduto|NS.E130~2_combout\ & (\escolhaproduto|WideOr61~combout\ & ((!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\)))) # (!\escolhaproduto|NS.E130~2_combout\ & (((\escolhaproduto|WideOr6~combout\) # 
-- (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr61~combout\,
	datab => \escolhaproduto|WideOr6~combout\,
	datac => \escolhaproduto|NS.E130~2_combout\,
	datad => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	combout => \escolhaproduto|troco[5]~10_combout\);

-- Location: LCCOMB_X97_Y19_N0
\escolhaproduto|troco[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[5]~11_combout\ = (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & ((\escolhaproduto|troco[5]~10_combout\ & (\escolhaproduto|WideOr31~combout\)) # (!\escolhaproduto|troco[5]~10_combout\ & ((\escolhaproduto|WideOr100~combout\))))) 
-- # (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (((\escolhaproduto|troco[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr31~combout\,
	datab => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datac => \escolhaproduto|WideOr100~combout\,
	datad => \escolhaproduto|troco[5]~10_combout\,
	combout => \escolhaproduto|troco[5]~11_combout\);

-- Location: LCCOMB_X97_Y19_N20
\escolhaproduto|troco[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco\(5) = (\escolhaproduto|troco[7]~9_combout\ & ((\escolhaproduto|troco[5]~11_combout\))) # (!\escolhaproduto|troco[7]~9_combout\ & (\escolhaproduto|troco\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|troco\(5),
	datac => \escolhaproduto|troco[7]~9_combout\,
	datad => \escolhaproduto|troco[5]~11_combout\,
	combout => \escolhaproduto|troco\(5));

-- Location: LCCOMB_X96_Y18_N8
\escolhaproduto|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr4~combout\ = (\escolhaproduto|PS.E110~q\) # ((\escolhaproduto|PS.E100~q\) # ((\escolhaproduto|PS.E90~q\) # (\escolhaproduto|PS.E80~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E110~q\,
	datab => \escolhaproduto|PS.E100~q\,
	datac => \escolhaproduto|PS.E90~q\,
	datad => \escolhaproduto|PS.E80~q\,
	combout => \escolhaproduto|WideOr4~combout\);

-- Location: LCCOMB_X96_Y18_N4
\escolhaproduto|troco[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[6]~12_combout\ = (\escolhaproduto|NS.E130~2_combout\ & (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & ((!\escolhaproduto|WideOr59~0_combout\)))) # (!\escolhaproduto|NS.E130~2_combout\ & 
-- ((\escolhaproduto|produtoUsadoDisplay[0]~0_combout\) # ((\escolhaproduto|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E130~2_combout\,
	datab => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datac => \escolhaproduto|WideOr4~combout\,
	datad => \escolhaproduto|WideOr59~0_combout\,
	combout => \escolhaproduto|troco[6]~12_combout\);

-- Location: LCCOMB_X97_Y20_N8
\escolhaproduto|WideOr98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|WideOr98~0_combout\ = (!\escolhaproduto|PS.E190~q\ & (!\escolhaproduto|PS.E180~q\ & (!\escolhaproduto|PS.E160~q\ & !\escolhaproduto|PS.E170~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E190~q\,
	datab => \escolhaproduto|PS.E180~q\,
	datac => \escolhaproduto|PS.E160~q\,
	datad => \escolhaproduto|PS.E170~q\,
	combout => \escolhaproduto|WideOr98~0_combout\);

-- Location: LCCOMB_X96_Y18_N14
\escolhaproduto|troco[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[6]~13_combout\ = (\escolhaproduto|troco[6]~12_combout\ & (((!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\)) # (!\escolhaproduto|WideOr23~0_combout\))) # (!\escolhaproduto|troco[6]~12_combout\ & 
-- (((\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & !\escolhaproduto|WideOr98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr23~0_combout\,
	datab => \escolhaproduto|troco[6]~12_combout\,
	datac => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datad => \escolhaproduto|WideOr98~0_combout\,
	combout => \escolhaproduto|troco[6]~13_combout\);

-- Location: LCCOMB_X96_Y18_N22
\escolhaproduto|troco[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco\(6) = (\escolhaproduto|troco[7]~9_combout\ & ((\escolhaproduto|troco[6]~13_combout\))) # (!\escolhaproduto|troco[7]~9_combout\ & (\escolhaproduto|troco\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(6),
	datac => \escolhaproduto|troco[6]~13_combout\,
	datad => \escolhaproduto|troco[7]~9_combout\,
	combout => \escolhaproduto|troco\(6));

-- Location: LCCOMB_X97_Y16_N4
\escolhaproduto|troco[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[4]~3_combout\ = (\escolhaproduto|PS.E170~q\) # ((\escolhaproduto|PS.E190~q\) # (\escolhaproduto|PS.E130~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|PS.E170~q\,
	datac => \escolhaproduto|PS.E190~q\,
	datad => \escolhaproduto|PS.E130~q\,
	combout => \escolhaproduto|troco[4]~3_combout\);

-- Location: LCCOMB_X97_Y16_N12
\escolhaproduto|troco[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[4]~4_combout\ = (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & ((\escolhaproduto|PS.E210~q\) # ((!\escolhaproduto|NS.E130~2_combout\)))) # (!\escolhaproduto|produtoUsadoDisplay[0]~0_combout\ & (((\escolhaproduto|PS.E110~q\ & 
-- \escolhaproduto|NS.E130~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|PS.E210~q\,
	datab => \escolhaproduto|PS.E110~q\,
	datac => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datad => \escolhaproduto|NS.E130~2_combout\,
	combout => \escolhaproduto|troco[4]~4_combout\);

-- Location: LCCOMB_X97_Y16_N10
\escolhaproduto|troco[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[4]~5_combout\ = (\escolhaproduto|NS.E130~2_combout\ & (((\escolhaproduto|PS.E150~q\) # (\escolhaproduto|troco[4]~4_combout\)))) # (!\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|troco[4]~4_combout\ & 
-- ((\escolhaproduto|PS.E150~q\))) # (!\escolhaproduto|troco[4]~4_combout\ & (\escolhaproduto|PS.E50~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|NS.E130~2_combout\,
	datab => \escolhaproduto|PS.E50~q\,
	datac => \escolhaproduto|PS.E150~q\,
	datad => \escolhaproduto|troco[4]~4_combout\,
	combout => \escolhaproduto|troco[4]~5_combout\);

-- Location: LCCOMB_X97_Y16_N24
\escolhaproduto|troco[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco[4]~6_combout\ = (\escolhaproduto|troco[4]~5_combout\) # ((\escolhaproduto|NS.E130~2_combout\ & ((\escolhaproduto|troco[4]~3_combout\))) # (!\escolhaproduto|NS.E130~2_combout\ & (!\escolhaproduto|WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr8~0_combout\,
	datab => \escolhaproduto|NS.E130~2_combout\,
	datac => \escolhaproduto|troco[4]~3_combout\,
	datad => \escolhaproduto|troco[4]~5_combout\,
	combout => \escolhaproduto|troco[4]~6_combout\);

-- Location: LCCOMB_X97_Y16_N18
\escolhaproduto|troco[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|troco\(4) = (\escolhaproduto|troco[7]~9_combout\ & ((\escolhaproduto|troco[4]~6_combout\))) # (!\escolhaproduto|troco[7]~9_combout\ & (\escolhaproduto|troco\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|troco\(4),
	datac => \escolhaproduto|troco[7]~9_combout\,
	datad => \escolhaproduto|troco[4]~6_combout\,
	combout => \escolhaproduto|troco\(4));

-- Location: LCCOMB_X97_Y16_N20
\MoedasACair|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~1_combout\ = (!\escolhaproduto|troco\(5) & (!\escolhaproduto|troco\(6) & (\escolhaproduto|troco\(7) & !\escolhaproduto|troco\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(5),
	datab => \escolhaproduto|troco\(6),
	datac => \escolhaproduto|troco\(7),
	datad => \escolhaproduto|troco\(4),
	combout => \MoedasACair|Equal0~1_combout\);

-- Location: LCCOMB_X96_Y15_N28
\MoedasACair|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~0_combout\ = (!\escolhaproduto|troco\(4) & (!\escolhaproduto|troco\(5) & (!\escolhaproduto|troco\(6) & !\escolhaproduto|troco\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(4),
	datab => \escolhaproduto|troco\(5),
	datac => \escolhaproduto|troco\(6),
	datad => \escolhaproduto|troco\(7),
	combout => \MoedasACair|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y15_N26
\MoedasACair|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~7_combout\ = (!\escolhaproduto|troco\(7) & (!\escolhaproduto|troco\(5) & (\escolhaproduto|troco\(6) & \escolhaproduto|troco\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(7),
	datab => \escolhaproduto|troco\(5),
	datac => \escolhaproduto|troco\(6),
	datad => \escolhaproduto|troco\(4),
	combout => \MoedasACair|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y15_N10
\MoedasACair|NS.E50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E50~0_combout\ = (!\MoedasACair|PS.E0~q\ & \MoedasACair|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|Equal0~7_combout\,
	combout => \MoedasACair|NS.E50~0_combout\);

-- Location: LCCOMB_X97_Y16_N28
\MoedasACair|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~2_combout\ = (!\escolhaproduto|troco\(5) & (!\escolhaproduto|troco\(6) & (\escolhaproduto|troco\(7) & \escolhaproduto|troco\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(5),
	datab => \escolhaproduto|troco\(6),
	datac => \escolhaproduto|troco\(7),
	datad => \escolhaproduto|troco\(4),
	combout => \MoedasACair|Equal0~2_combout\);

-- Location: LCCOMB_X97_Y16_N30
\MoedasACair|NS.E20especial~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E20especial~0_combout\ = (\MoedasACair|Equal0~2_combout\) # ((\MoedasACair|Equal0~1_combout\) # (!\escolhaproduto|troco\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|Equal0~2_combout\,
	datac => \escolhaproduto|troco\(7),
	datad => \MoedasACair|Equal0~1_combout\,
	combout => \MoedasACair|NS.E20especial~0_combout\);

-- Location: LCCOMB_X97_Y15_N4
\MoedasACair|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|comb~0_combout\ = (!\MoedasACair|PS.E0~q\ & ((\MoedasACair|Equal0~7_combout\) # (!\MoedasACair|NS.E20especial~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|Equal0~7_combout\,
	datab => \MoedasACair|NS.E20especial~0_combout\,
	datac => \MoedasACair|PS.E0~q\,
	combout => \MoedasACair|comb~0_combout\);

-- Location: LCCOMB_X97_Y15_N24
\MoedasACair|NS.E50_437\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E50_437~combout\ = (\MoedasACair|comb~0_combout\ & ((\MoedasACair|NS.E50~0_combout\) # (\MoedasACair|NS.E50_437~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|NS.E50~0_combout\,
	datac => \MoedasACair|comb~0_combout\,
	datad => \MoedasACair|NS.E50_437~combout\,
	combout => \MoedasACair|NS.E50_437~combout\);

-- Location: LCCOMB_X97_Y15_N30
\MoedasACair|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~19_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E50_437~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E50_437~combout\,
	combout => \MoedasACair|PS~19_combout\);

-- Location: FF_X96_Y15_N1
\MoedasACair|PS.E50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	asdata => \MoedasACair|PS~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E50~q\);

-- Location: LCCOMB_X96_Y15_N12
\MoedasACair|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~3_combout\ = (!\escolhaproduto|troco\(4) & (\escolhaproduto|troco\(5) & (!\escolhaproduto|troco\(6) & !\escolhaproduto|troco\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(4),
	datab => \escolhaproduto|troco\(5),
	datac => \escolhaproduto|troco\(6),
	datad => \escolhaproduto|troco\(7),
	combout => \MoedasACair|Equal0~3_combout\);

-- Location: LCCOMB_X97_Y15_N0
\MoedasACair|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~8_combout\ = (!\escolhaproduto|troco\(7) & (\escolhaproduto|troco\(5) & (\escolhaproduto|troco\(6) & \escolhaproduto|troco\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(7),
	datab => \escolhaproduto|troco\(5),
	datac => \escolhaproduto|troco\(6),
	datad => \escolhaproduto|troco\(4),
	combout => \MoedasACair|Equal0~8_combout\);

-- Location: LCCOMB_X97_Y15_N28
\MoedasACair|NS.E70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E70~0_combout\ = (!\MoedasACair|PS.E0~q\ & \MoedasACair|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MoedasACair|PS.E0~q\,
	datad => \MoedasACair|Equal0~8_combout\,
	combout => \MoedasACair|NS.E70~0_combout\);

-- Location: LCCOMB_X97_Y15_N22
\MoedasACair|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|comb~1_combout\ = (!\MoedasACair|PS.E0~q\ & ((\MoedasACair|Equal0~8_combout\) # (!\MoedasACair|NS.E20especial~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|NS.E20especial~0_combout\,
	datad => \MoedasACair|Equal0~8_combout\,
	combout => \MoedasACair|comb~1_combout\);

-- Location: LCCOMB_X97_Y15_N18
\MoedasACair|NS.E70_389\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E70_389~combout\ = (\MoedasACair|comb~1_combout\ & ((\MoedasACair|NS.E70~0_combout\) # (\MoedasACair|NS.E70_389~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|NS.E70~0_combout\,
	datac => \MoedasACair|comb~1_combout\,
	datad => \MoedasACair|NS.E70_389~combout\,
	combout => \MoedasACair|NS.E70_389~combout\);

-- Location: LCCOMB_X97_Y15_N12
\MoedasACair|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~20_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E70_389~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E70_389~combout\,
	combout => \MoedasACair|PS~20_combout\);

-- Location: FF_X96_Y15_N21
\MoedasACair|PS.E70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	asdata => \MoedasACair|PS~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E70~q\);

-- Location: LCCOMB_X96_Y15_N20
\MoedasACair|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Selector6~0_combout\ = (\MoedasACair|PS.E70~q\) # ((\MoedasACair|PS.E20especial~q\) # ((\MoedasACair|Equal0~3_combout\ & !\MoedasACair|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|Equal0~3_combout\,
	datab => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|PS.E70~q\,
	datad => \MoedasACair|PS.E20especial~q\,
	combout => \MoedasACair|Selector6~0_combout\);

-- Location: LCCOMB_X96_Y15_N18
\MoedasACair|NS.E20_518\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E20_518~combout\ = (GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & ((\MoedasACair|Selector6~0_combout\))) # (!GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & (\MoedasACair|NS.E20_518~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|NS.E20_518~combout\,
	datac => \MoedasACair|Selector11~0clkctrl_outclk\,
	datad => \MoedasACair|Selector6~0_combout\,
	combout => \MoedasACair|NS.E20_518~combout\);

-- Location: LCCOMB_X96_Y15_N30
\MoedasACair|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~15_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E20_518~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E20_518~combout\,
	combout => \MoedasACair|PS~15_combout\);

-- Location: FF_X96_Y15_N31
\MoedasACair|PS.E20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	d => \MoedasACair|PS~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E20~q\);

-- Location: LCCOMB_X96_Y15_N22
\MoedasACair|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~6_combout\ = (\escolhaproduto|troco\(4) & (!\escolhaproduto|troco\(5) & (!\escolhaproduto|troco\(6) & !\escolhaproduto|troco\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(4),
	datab => \escolhaproduto|troco\(5),
	datac => \escolhaproduto|troco\(6),
	datad => \escolhaproduto|troco\(7),
	combout => \MoedasACair|Equal0~6_combout\);

-- Location: LCCOMB_X97_Y16_N2
\MoedasACair|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~9_combout\ = (!\escolhaproduto|troco\(7) & (!\escolhaproduto|troco\(4) & (\escolhaproduto|troco\(6) & \escolhaproduto|troco\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(7),
	datab => \escolhaproduto|troco\(4),
	datac => \escolhaproduto|troco\(6),
	datad => \escolhaproduto|troco\(5),
	combout => \MoedasACair|Equal0~9_combout\);

-- Location: LCCOMB_X97_Y16_N0
\MoedasACair|NS.E60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E60~0_combout\ = (!\MoedasACair|PS.E0~q\ & \MoedasACair|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MoedasACair|PS.E0~q\,
	datad => \MoedasACair|Equal0~9_combout\,
	combout => \MoedasACair|NS.E60~0_combout\);

-- Location: LCCOMB_X97_Y16_N22
\MoedasACair|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|comb~5_combout\ = (!\MoedasACair|PS.E0~q\ & ((\MoedasACair|Equal0~9_combout\) # (!\MoedasACair|NS.E20especial~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|NS.E20especial~0_combout\,
	datab => \MoedasACair|Equal0~9_combout\,
	datac => \MoedasACair|PS.E0~q\,
	combout => \MoedasACair|comb~5_combout\);

-- Location: LCCOMB_X97_Y16_N26
\MoedasACair|NS.E60_413\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E60_413~combout\ = (\MoedasACair|comb~5_combout\ & ((\MoedasACair|NS.E60~0_combout\) # (\MoedasACair|NS.E60_413~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|NS.E60~0_combout\,
	datac => \MoedasACair|comb~5_combout\,
	datad => \MoedasACair|NS.E60_413~combout\,
	combout => \MoedasACair|NS.E60_413~combout\);

-- Location: LCCOMB_X97_Y15_N8
\MoedasACair|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~23_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E60_413~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E60_413~combout\,
	combout => \MoedasACair|PS~23_combout\);

-- Location: FF_X96_Y15_N7
\MoedasACair|PS.E60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	asdata => \MoedasACair|PS~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E60~q\);

-- Location: LCCOMB_X97_Y16_N8
\MoedasACair|NS.E80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E80~0_combout\ = (!\MoedasACair|PS.E0~q\ & \MoedasACair|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MoedasACair|PS.E0~q\,
	datad => \MoedasACair|Equal0~1_combout\,
	combout => \MoedasACair|NS.E80~0_combout\);

-- Location: LCCOMB_X97_Y16_N14
\MoedasACair|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|comb~2_combout\ = (!\MoedasACair|PS.E0~q\ & ((\MoedasACair|Equal0~1_combout\) # ((\escolhaproduto|troco\(7) & !\MoedasACair|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(7),
	datab => \MoedasACair|Equal0~2_combout\,
	datac => \MoedasACair|PS.E0~q\,
	datad => \MoedasACair|Equal0~1_combout\,
	combout => \MoedasACair|comb~2_combout\);

-- Location: LCCOMB_X97_Y16_N16
\MoedasACair|NS.E80_365\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E80_365~combout\ = (\MoedasACair|comb~2_combout\ & ((\MoedasACair|NS.E80~0_combout\) # (\MoedasACair|NS.E80_365~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|NS.E80~0_combout\,
	datac => \MoedasACair|comb~2_combout\,
	datad => \MoedasACair|NS.E80_365~combout\,
	combout => \MoedasACair|NS.E80_365~combout\);

-- Location: LCCOMB_X97_Y15_N14
\MoedasACair|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~21_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E80_365~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E80_365~combout\,
	combout => \MoedasACair|PS~21_combout\);

-- Location: FF_X97_Y15_N3
\MoedasACair|PS.E80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	asdata => \MoedasACair|PS~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E80~q\);

-- Location: LCCOMB_X97_Y15_N20
\MoedasACair|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~4_combout\ = (\escolhaproduto|troco\(4) & (\escolhaproduto|troco\(5) & (!\escolhaproduto|troco\(6) & !\escolhaproduto|troco\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(4),
	datab => \escolhaproduto|troco\(5),
	datac => \escolhaproduto|troco\(6),
	datad => \escolhaproduto|troco\(7),
	combout => \MoedasACair|Equal0~4_combout\);

-- Location: LCCOMB_X97_Y15_N2
\MoedasACair|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Selector4~0_combout\ = (\MoedasACair|PS.E80~q\) # ((!\MoedasACair|PS.E0~q\ & \MoedasACair|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|PS.E80~q\,
	datad => \MoedasACair|Equal0~4_combout\,
	combout => \MoedasACair|Selector4~0_combout\);

-- Location: LCCOMB_X97_Y15_N6
\MoedasACair|NS.E30_491\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E30_491~combout\ = (GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & ((\MoedasACair|Selector4~0_combout\))) # (!GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & (\MoedasACair|NS.E30_491~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|NS.E30_491~combout\,
	datac => \MoedasACair|Selector11~0clkctrl_outclk\,
	datad => \MoedasACair|Selector4~0_combout\,
	combout => \MoedasACair|NS.E30_491~combout\);

-- Location: LCCOMB_X97_Y15_N16
\MoedasACair|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~16_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E30_491~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E30_491~combout\,
	combout => \MoedasACair|PS~16_combout\);

-- Location: FF_X97_Y15_N17
\MoedasACair|PS.E30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	d => \MoedasACair|PS~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E30~q\);

-- Location: LCCOMB_X96_Y15_N6
\MoedasACair|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Selector8~0_combout\ = (\MoedasACair|PS.E60~q\) # ((\MoedasACair|PS.E30~q\) # ((\MoedasACair|Equal0~6_combout\ & !\MoedasACair|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|Equal0~6_combout\,
	datab => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|PS.E60~q\,
	datad => \MoedasACair|PS.E30~q\,
	combout => \MoedasACair|Selector8~0_combout\);

-- Location: LCCOMB_X96_Y15_N16
\MoedasACair|NS.E10_545\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E10_545~combout\ = (GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & ((\MoedasACair|Selector8~0_combout\))) # (!GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & (\MoedasACair|NS.E10_545~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|NS.E10_545~combout\,
	datac => \MoedasACair|Selector11~0clkctrl_outclk\,
	datad => \MoedasACair|Selector8~0_combout\,
	combout => \MoedasACair|NS.E10_545~combout\);

-- Location: LCCOMB_X96_Y15_N10
\MoedasACair|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~18_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E10_545~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E10_545~combout\,
	combout => \MoedasACair|PS~18_combout\);

-- Location: FF_X96_Y15_N11
\MoedasACair|PS.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	d => \MoedasACair|PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E10~q\);

-- Location: LCCOMB_X96_Y15_N24
\MoedasACair|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Selector10~0_combout\ = (\MoedasACair|PS.E20~q\) # (\MoedasACair|PS.E10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MoedasACair|PS.E20~q\,
	datad => \MoedasACair|PS.E10~q\,
	combout => \MoedasACair|Selector10~0_combout\);

-- Location: LCCOMB_X96_Y15_N0
\MoedasACair|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Selector10~1_combout\ = (\MoedasACair|PS.E50~q\) # ((\MoedasACair|Selector10~0_combout\) # ((!\MoedasACair|PS.E0~q\ & \MoedasACair|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|PS.E0~q\,
	datab => \MoedasACair|Equal0~0_combout\,
	datac => \MoedasACair|PS.E50~q\,
	datad => \MoedasACair|Selector10~0_combout\,
	combout => \MoedasACair|Selector10~1_combout\);

-- Location: LCCOMB_X96_Y15_N2
\MoedasACair|NS.E0_572\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E0_572~combout\ = (GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & ((\MoedasACair|Selector10~1_combout\))) # (!GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & (\MoedasACair|NS.E0_572~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|NS.E0_572~combout\,
	datac => \MoedasACair|Selector11~0clkctrl_outclk\,
	datad => \MoedasACair|Selector10~1_combout\,
	combout => \MoedasACair|NS.E0_572~combout\);

-- Location: LCCOMB_X96_Y15_N26
\MoedasACair|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~13_combout\ = (!\SW[17]~input_o\ & !\MoedasACair|NS.E0_572~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E0_572~combout\,
	combout => \MoedasACair|PS~13_combout\);

-- Location: FF_X96_Y15_N27
\MoedasACair|PS.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~q\,
	d => \MoedasACair|PS~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E0~q\);

-- Location: LCCOMB_X97_Y16_N6
\MoedasACair|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Selector11~0_combout\ = ((\MoedasACair|Equal0~1_combout\) # ((\MoedasACair|PS.E0~q\) # (\MoedasACair|Equal0~2_combout\))) # (!\escolhaproduto|troco\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(7),
	datab => \MoedasACair|Equal0~1_combout\,
	datac => \MoedasACair|PS.E0~q\,
	datad => \MoedasACair|Equal0~2_combout\,
	combout => \MoedasACair|Selector11~0_combout\);

-- Location: CLKCTRL_G9
\MoedasACair|Selector11~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MoedasACair|Selector11~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MoedasACair|Selector11~0clkctrl_outclk\);

-- Location: LCCOMB_X95_Y15_N0
\MoedasACair|NS.E90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E90~0_combout\ = (\escolhaproduto|troco\(7) & ((\escolhaproduto|troco\(6)) # ((\escolhaproduto|troco\(5)) # (\escolhaproduto|troco\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(6),
	datab => \escolhaproduto|troco\(7),
	datac => \escolhaproduto|troco\(5),
	datad => \escolhaproduto|troco\(4),
	combout => \MoedasACair|NS.E90~0_combout\);

-- Location: LCCOMB_X95_Y15_N4
\MoedasACair|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|comb~4_combout\ = (\MoedasACair|PS.E0~q\) # ((!\MoedasACair|NS.E90~0_combout\) # (!\MoedasACair|NS.E20especial~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|NS.E20especial~0_combout\,
	datad => \MoedasACair|NS.E90~0_combout\,
	combout => \MoedasACair|comb~4_combout\);

-- Location: LCCOMB_X95_Y15_N26
\MoedasACair|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|comb~3_combout\ = (!\MoedasACair|PS.E0~q\ & ((\MoedasACair|NS.E90~0_combout\) # (!\MoedasACair|NS.E20especial~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|NS.E20especial~0_combout\,
	datad => \MoedasACair|NS.E90~0_combout\,
	combout => \MoedasACair|comb~3_combout\);

-- Location: LCCOMB_X95_Y15_N18
\MoedasACair|NS.E90_341\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E90_341~combout\ = (\MoedasACair|comb~3_combout\ & ((\MoedasACair|NS.E90_341~combout\) # (!\MoedasACair|comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|comb~4_combout\,
	datac => \MoedasACair|comb~3_combout\,
	datad => \MoedasACair|NS.E90_341~combout\,
	combout => \MoedasACair|NS.E90_341~combout\);

-- Location: LCCOMB_X95_Y15_N10
\MoedasACair|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~22_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E90_341~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E90_341~combout\,
	combout => \MoedasACair|PS~22_combout\);

-- Location: FF_X95_Y15_N3
\MoedasACair|PS.E90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	asdata => \MoedasACair|PS~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E90~q\);

-- Location: LCCOMB_X95_Y15_N12
\MoedasACair|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Equal0~5_combout\ = (!\escolhaproduto|troco\(4) & (!\escolhaproduto|troco\(5) & (\escolhaproduto|troco\(6) & !\escolhaproduto|troco\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(4),
	datab => \escolhaproduto|troco\(5),
	datac => \escolhaproduto|troco\(6),
	datad => \escolhaproduto|troco\(7),
	combout => \MoedasACair|Equal0~5_combout\);

-- Location: LCCOMB_X95_Y15_N2
\MoedasACair|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|Selector2~0_combout\ = (\MoedasACair|PS.E90~q\) # ((!\MoedasACair|PS.E0~q\ & \MoedasACair|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|PS.E90~q\,
	datad => \MoedasACair|Equal0~5_combout\,
	combout => \MoedasACair|Selector2~0_combout\);

-- Location: LCCOMB_X95_Y15_N16
\MoedasACair|NS.E40_464\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E40_464~combout\ = (GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & ((\MoedasACair|Selector2~0_combout\))) # (!GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & (\MoedasACair|NS.E40_464~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|NS.E40_464~combout\,
	datac => \MoedasACair|Selector11~0clkctrl_outclk\,
	datad => \MoedasACair|Selector2~0_combout\,
	combout => \MoedasACair|NS.E40_464~combout\);

-- Location: LCCOMB_X95_Y15_N14
\MoedasACair|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~17_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E40_464~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E40_464~combout\,
	combout => \MoedasACair|PS~17_combout\);

-- Location: FF_X95_Y15_N15
\MoedasACair|PS.E40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	d => \MoedasACair|PS~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E40~q\);

-- Location: LCCOMB_X95_Y15_N6
\MoedasACair|NS.E20especial_317\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|NS.E20especial_317~combout\ = (GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & ((\MoedasACair|PS.E40~q\))) # (!GLOBAL(\MoedasACair|Selector11~0clkctrl_outclk\) & (\MoedasACair|NS.E20especial_317~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|NS.E20especial_317~combout\,
	datac => \MoedasACair|PS.E40~q\,
	datad => \MoedasACair|Selector11~0clkctrl_outclk\,
	combout => \MoedasACair|NS.E20especial_317~combout\);

-- Location: LCCOMB_X95_Y15_N8
\MoedasACair|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|PS~14_combout\ = (!\SW[17]~input_o\ & \MoedasACair|NS.E20especial_317~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \MoedasACair|NS.E20especial_317~combout\,
	combout => \MoedasACair|PS~14_combout\);

-- Location: FF_X95_Y15_N9
\MoedasACair|PS.E20especial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockMoedasACair|clkOut~clkctrl_outclk\,
	d => \MoedasACair|PS~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MoedasACair|PS.E20especial~q\);

-- Location: LCCOMB_X95_Y4_N24
\MoedasACair|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|WideOr8~0_combout\ = (!\MoedasACair|PS.E20especial~q\ & \MoedasACair|PS.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MoedasACair|PS.E20especial~q\,
	datad => \MoedasACair|PS.E0~q\,
	combout => \MoedasACair|WideOr8~0_combout\);

-- Location: LCCOMB_X96_Y15_N4
\MoedasACair|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|WideOr7~combout\ = (\MoedasACair|PS.E40~q\) # ((\MoedasACair|PS.E20~q\) # ((\MoedasACair|PS.E10~q\) # (\MoedasACair|PS.E30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|PS.E40~q\,
	datab => \MoedasACair|PS.E20~q\,
	datac => \MoedasACair|PS.E10~q\,
	datad => \MoedasACair|PS.E30~q\,
	combout => \MoedasACair|WideOr7~combout\);

-- Location: LCCOMB_X96_Y15_N8
\MoedasACair|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair|WideOr7~0_combout\ = (!\MoedasACair|PS.E40~q\ & (!\MoedasACair|PS.E20~q\ & !\MoedasACair|PS.E30~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|PS.E40~q\,
	datab => \MoedasACair|PS.E20~q\,
	datad => \MoedasACair|PS.E30~q\,
	combout => \MoedasACair|WideOr7~0_combout\);

-- Location: LCCOMB_X95_Y4_N30
\MoedasACair_Displayesq|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair_Displayesq|Mux6~2_combout\ = \MoedasACair|WideOr7~combout\ $ ((((\MoedasACair|PS.E20especial~q\) # (!\MoedasACair|WideOr7~0_combout\)) # (!\MoedasACair|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|WideOr7~combout\,
	datab => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|PS.E20especial~q\,
	datad => \MoedasACair|WideOr7~0_combout\,
	combout => \MoedasACair_Displayesq|Mux6~2_combout\);

-- Location: LCCOMB_X95_Y4_N0
\MoedasACair_Displayesq|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair_Displayesq|Mux4~4_combout\ = \MoedasACair|WideOr7~0_combout\ $ (((\MoedasACair|PS.E0~q\ & !\MoedasACair|PS.E20especial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MoedasACair|PS.E0~q\,
	datac => \MoedasACair|PS.E20especial~q\,
	datad => \MoedasACair|WideOr7~0_combout\,
	combout => \MoedasACair_Displayesq|Mux4~4_combout\);

-- Location: LCCOMB_X95_Y4_N2
\MoedasACair_Displayesq|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair_Displayesq|Mux3~2_combout\ = (\MoedasACair|PS.E20especial~q\) # (((\MoedasACair|WideOr7~0_combout\ & \MoedasACair|PS.E10~q\)) # (!\MoedasACair|PS.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|WideOr7~0_combout\,
	datab => \MoedasACair|PS.E10~q\,
	datac => \MoedasACair|PS.E20especial~q\,
	datad => \MoedasACair|PS.E0~q\,
	combout => \MoedasACair_Displayesq|Mux3~2_combout\);

-- Location: LCCOMB_X95_Y4_N20
\MoedasACair_Displayesq|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MoedasACair_Displayesq|Mux1~2_combout\ = \MoedasACair|WideOr7~combout\ $ (((\MoedasACair|PS.E20especial~q\) # (!\MoedasACair|PS.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MoedasACair|WideOr7~combout\,
	datac => \MoedasACair|PS.E20especial~q\,
	datad => \MoedasACair|PS.E0~q\,
	combout => \MoedasACair_Displayesq|Mux1~2_combout\);

-- Location: LCCOMB_X95_Y15_N20
\troco_esqe|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \troco_esqe|Mux6~0_combout\ = (\escolhaproduto|troco\(7) & (\escolhaproduto|troco\(4) & ((\escolhaproduto|troco\(6)) # (\escolhaproduto|troco\(5))))) # (!\escolhaproduto|troco\(7) & (!\escolhaproduto|troco\(5) & (\escolhaproduto|troco\(6) $ 
-- (\escolhaproduto|troco\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(6),
	datab => \escolhaproduto|troco\(7),
	datac => \escolhaproduto|troco\(5),
	datad => \escolhaproduto|troco\(4),
	combout => \troco_esqe|Mux6~0_combout\);

-- Location: LCCOMB_X96_Y15_N14
\troco_esqe|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \troco_esqe|Mux5~0_combout\ = (\escolhaproduto|troco\(6) & (\escolhaproduto|troco\(4) $ (\escolhaproduto|troco\(7) $ (\escolhaproduto|troco\(5))))) # (!\escolhaproduto|troco\(6) & (\escolhaproduto|troco\(4) & (\escolhaproduto|troco\(7) & 
-- \escolhaproduto|troco\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(4),
	datab => \escolhaproduto|troco\(7),
	datac => \escolhaproduto|troco\(5),
	datad => \escolhaproduto|troco\(6),
	combout => \troco_esqe|Mux5~0_combout\);

-- Location: LCCOMB_X95_Y15_N30
\troco_esqe|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \troco_esqe|Mux4~0_combout\ = (\escolhaproduto|troco\(6) & (\escolhaproduto|troco\(7) & (\escolhaproduto|troco\(5) $ (!\escolhaproduto|troco\(4))))) # (!\escolhaproduto|troco\(6) & (!\escolhaproduto|troco\(7) & (\escolhaproduto|troco\(5) & 
-- !\escolhaproduto|troco\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(6),
	datab => \escolhaproduto|troco\(7),
	datac => \escolhaproduto|troco\(5),
	datad => \escolhaproduto|troco\(4),
	combout => \troco_esqe|Mux4~0_combout\);

-- Location: LCCOMB_X95_Y15_N24
\troco_esqe|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \troco_esqe|Mux3~0_combout\ = (\escolhaproduto|troco\(5) & ((\escolhaproduto|troco\(6) & ((\escolhaproduto|troco\(4)))) # (!\escolhaproduto|troco\(6) & (\escolhaproduto|troco\(7) & !\escolhaproduto|troco\(4))))) # (!\escolhaproduto|troco\(5) & 
-- (!\escolhaproduto|troco\(7) & (\escolhaproduto|troco\(6) $ (\escolhaproduto|troco\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(6),
	datab => \escolhaproduto|troco\(7),
	datac => \escolhaproduto|troco\(5),
	datad => \escolhaproduto|troco\(4),
	combout => \troco_esqe|Mux3~0_combout\);

-- Location: LCCOMB_X95_Y16_N24
\troco_esqe|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \troco_esqe|Mux2~0_combout\ = (\escolhaproduto|troco\(5) & (\escolhaproduto|troco\(4) & ((\escolhaproduto|troco\(6)) # (!\escolhaproduto|troco\(7))))) # (!\escolhaproduto|troco\(5) & ((\escolhaproduto|troco\(6) & ((!\escolhaproduto|troco\(7)))) # 
-- (!\escolhaproduto|troco\(6) & (\escolhaproduto|troco\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(5),
	datab => \escolhaproduto|troco\(4),
	datac => \escolhaproduto|troco\(7),
	datad => \escolhaproduto|troco\(6),
	combout => \troco_esqe|Mux2~0_combout\);

-- Location: LCCOMB_X95_Y15_N22
\troco_esqe|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \troco_esqe|Mux1~0_combout\ = (\escolhaproduto|troco\(6) & (\escolhaproduto|troco\(4) & ((\escolhaproduto|troco\(7)) # (\escolhaproduto|troco\(5))))) # (!\escolhaproduto|troco\(6) & (!\escolhaproduto|troco\(7) & ((\escolhaproduto|troco\(5)) # 
-- (\escolhaproduto|troco\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(6),
	datab => \escolhaproduto|troco\(7),
	datac => \escolhaproduto|troco\(5),
	datad => \escolhaproduto|troco\(4),
	combout => \troco_esqe|Mux1~0_combout\);

-- Location: LCCOMB_X95_Y15_N28
\troco_esqe|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \troco_esqe|Mux0~0_combout\ = (\escolhaproduto|troco\(6) & ((\escolhaproduto|troco\(4) & ((!\escolhaproduto|troco\(5)))) # (!\escolhaproduto|troco\(4) & (!\escolhaproduto|troco\(7))))) # (!\escolhaproduto|troco\(6) & ((\escolhaproduto|troco\(7)) # 
-- ((\escolhaproduto|troco\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|troco\(6),
	datab => \escolhaproduto|troco\(7),
	datac => \escolhaproduto|troco\(5),
	datad => \escolhaproduto|troco\(4),
	combout => \troco_esqe|Mux0~0_combout\);

-- Location: LCCOMB_X98_Y19_N14
\escolhaproduto|produto_A\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|produto_A~combout\ = (GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & (\escolhaproduto|NS.E90~2_combout\)) # (!GLOBAL(\codificadorPr|decodedOut[2]~0clkctrl_outclk\) & ((\escolhaproduto|produto_A~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \escolhaproduto|NS.E90~2_combout\,
	datac => \escolhaproduto|produto_A~combout\,
	datad => \codificadorPr|decodedOut[2]~0clkctrl_outclk\,
	combout => \escolhaproduto|produto_A~combout\);

-- Location: LCCOMB_X97_Y18_N22
\escolhaproduto|produto_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|produto_B~0_combout\ = (\escolhaproduto|WideOr54~combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \escolhaproduto|WideOr54~combout\,
	combout => \escolhaproduto|produto_B~0_combout\);

-- Location: LCCOMB_X97_Y18_N8
\escolhaproduto|produto_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|produto_A~0_combout\ = (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \escolhaproduto|produto_A~0_combout\);

-- Location: LCCOMB_X97_Y18_N10
\escolhaproduto|produto_B\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|produto_B~combout\ = (!\SW[0]~input_o\ & ((\escolhaproduto|produto_A~0_combout\ & ((\escolhaproduto|produto_B~combout\))) # (!\escolhaproduto|produto_A~0_combout\ & (!\escolhaproduto|produto_B~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|produto_B~0_combout\,
	datab => \escolhaproduto|produto_B~combout\,
	datac => \escolhaproduto|produto_A~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \escolhaproduto|produto_B~combout\);

-- Location: LCCOMB_X96_Y18_N10
\codificadorPr|decodedOut[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \codificadorPr|decodedOut[2]~1_combout\ = (!\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \codificadorPr|decodedOut[2]~1_combout\);

-- Location: LCCOMB_X96_Y18_N24
\escolhaproduto|NS.E210~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|NS.E210~0_combout\ = (\escolhaproduto|produtoUsadoDisplay[0]~0_combout\) # ((\escolhaproduto|WideOr23~0_combout\ & (\escolhaproduto|WideOr100~0_combout\ & \escolhaproduto|WideOr59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|WideOr23~0_combout\,
	datab => \escolhaproduto|produtoUsadoDisplay[0]~0_combout\,
	datac => \escolhaproduto|WideOr100~0_combout\,
	datad => \escolhaproduto|WideOr59~0_combout\,
	combout => \escolhaproduto|NS.E210~0_combout\);

-- Location: LCCOMB_X96_Y18_N2
\escolhaproduto|produto_C\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|produto_C~combout\ = (\escolhaproduto|NS.E130~2_combout\ & ((\codificadorPr|decodedOut[2]~1_combout\ & ((\escolhaproduto|produto_C~combout\))) # (!\codificadorPr|decodedOut[2]~1_combout\ & (!\escolhaproduto|NS.E210~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codificadorPr|decodedOut[2]~1_combout\,
	datab => \escolhaproduto|NS.E210~0_combout\,
	datac => \escolhaproduto|NS.E130~2_combout\,
	datad => \escolhaproduto|produto_C~combout\,
	combout => \escolhaproduto|produto_C~combout\);

-- Location: LCCOMB_X96_Y17_N14
\escolhaproduto|produto_D\ : cycloneive_lcell_comb
-- Equation(s):
-- \escolhaproduto|produto_D~combout\ = (\produtodisplay|Mux1~0_combout\ & ((\escolhaproduto|Equal4~0_combout\ & ((\escolhaproduto|WideOr130~combout\))) # (!\escolhaproduto|Equal4~0_combout\ & (\escolhaproduto|produto_D~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|Equal4~0_combout\,
	datab => \escolhaproduto|produto_D~combout\,
	datac => \escolhaproduto|WideOr130~combout\,
	datad => \produtodisplay|Mux1~0_combout\,
	combout => \escolhaproduto|produto_D~combout\);

-- Location: LCCOMB_X91_Y52_N2
\clock_acucar|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~1_cout\ = CARRY((\clockMoedasACair|s_counter\(1) & \clockMoedasACair|s_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockMoedasACair|s_counter\(1),
	datab => \clockMoedasACair|s_counter\(0),
	datad => VCC,
	cout => \clock_acucar|Add0~1_cout\);

-- Location: LCCOMB_X91_Y52_N4
\clock_acucar|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~2_combout\ = (\clock_acucar|s_counter\(2) & (!\clock_acucar|Add0~1_cout\)) # (!\clock_acucar|s_counter\(2) & ((\clock_acucar|Add0~1_cout\) # (GND)))
-- \clock_acucar|Add0~3\ = CARRY((!\clock_acucar|Add0~1_cout\) # (!\clock_acucar|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(2),
	datad => VCC,
	cin => \clock_acucar|Add0~1_cout\,
	combout => \clock_acucar|Add0~2_combout\,
	cout => \clock_acucar|Add0~3\);

-- Location: FF_X91_Y52_N5
\clock_acucar|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(2));

-- Location: LCCOMB_X91_Y52_N6
\clock_acucar|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~4_combout\ = (\clock_acucar|s_counter\(3) & (\clock_acucar|Add0~3\ $ (GND))) # (!\clock_acucar|s_counter\(3) & (!\clock_acucar|Add0~3\ & VCC))
-- \clock_acucar|Add0~5\ = CARRY((\clock_acucar|s_counter\(3) & !\clock_acucar|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(3),
	datad => VCC,
	cin => \clock_acucar|Add0~3\,
	combout => \clock_acucar|Add0~4_combout\,
	cout => \clock_acucar|Add0~5\);

-- Location: FF_X91_Y52_N7
\clock_acucar|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(3));

-- Location: LCCOMB_X91_Y52_N8
\clock_acucar|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~6_combout\ = (\clock_acucar|s_counter\(4) & (!\clock_acucar|Add0~5\)) # (!\clock_acucar|s_counter\(4) & ((\clock_acucar|Add0~5\) # (GND)))
-- \clock_acucar|Add0~7\ = CARRY((!\clock_acucar|Add0~5\) # (!\clock_acucar|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(4),
	datad => VCC,
	cin => \clock_acucar|Add0~5\,
	combout => \clock_acucar|Add0~6_combout\,
	cout => \clock_acucar|Add0~7\);

-- Location: FF_X91_Y52_N9
\clock_acucar|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(4));

-- Location: LCCOMB_X91_Y52_N10
\clock_acucar|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~8_combout\ = (\clock_acucar|s_counter\(5) & (\clock_acucar|Add0~7\ $ (GND))) # (!\clock_acucar|s_counter\(5) & (!\clock_acucar|Add0~7\ & VCC))
-- \clock_acucar|Add0~9\ = CARRY((\clock_acucar|s_counter\(5) & !\clock_acucar|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(5),
	datad => VCC,
	cin => \clock_acucar|Add0~7\,
	combout => \clock_acucar|Add0~8_combout\,
	cout => \clock_acucar|Add0~9\);

-- Location: FF_X91_Y52_N11
\clock_acucar|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(5));

-- Location: LCCOMB_X91_Y52_N12
\clock_acucar|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~10_combout\ = (\clock_acucar|s_counter\(6) & (!\clock_acucar|Add0~9\)) # (!\clock_acucar|s_counter\(6) & ((\clock_acucar|Add0~9\) # (GND)))
-- \clock_acucar|Add0~11\ = CARRY((!\clock_acucar|Add0~9\) # (!\clock_acucar|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(6),
	datad => VCC,
	cin => \clock_acucar|Add0~9\,
	combout => \clock_acucar|Add0~10_combout\,
	cout => \clock_acucar|Add0~11\);

-- Location: FF_X91_Y52_N13
\clock_acucar|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(6));

-- Location: LCCOMB_X91_Y52_N14
\clock_acucar|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~12_combout\ = (\clock_acucar|s_counter\(7) & (\clock_acucar|Add0~11\ $ (GND))) # (!\clock_acucar|s_counter\(7) & (!\clock_acucar|Add0~11\ & VCC))
-- \clock_acucar|Add0~13\ = CARRY((\clock_acucar|s_counter\(7) & !\clock_acucar|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(7),
	datad => VCC,
	cin => \clock_acucar|Add0~11\,
	combout => \clock_acucar|Add0~12_combout\,
	cout => \clock_acucar|Add0~13\);

-- Location: LCCOMB_X90_Y51_N12
\clock_acucar|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~0_combout\ = (\clock_acucar|Add0~12_combout\ & !\clock_acucar|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|Add0~12_combout\,
	datad => \clock_acucar|Equal0~9_combout\,
	combout => \clock_acucar|s_counter~0_combout\);

-- Location: FF_X90_Y51_N13
\clock_acucar|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(7));

-- Location: LCCOMB_X91_Y52_N16
\clock_acucar|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~14_combout\ = (\clock_acucar|s_counter\(8) & (!\clock_acucar|Add0~13\)) # (!\clock_acucar|s_counter\(8) & ((\clock_acucar|Add0~13\) # (GND)))
-- \clock_acucar|Add0~15\ = CARRY((!\clock_acucar|Add0~13\) # (!\clock_acucar|s_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(8),
	datad => VCC,
	cin => \clock_acucar|Add0~13\,
	combout => \clock_acucar|Add0~14_combout\,
	cout => \clock_acucar|Add0~15\);

-- Location: FF_X91_Y52_N17
\clock_acucar|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(8));

-- Location: LCCOMB_X91_Y52_N18
\clock_acucar|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~16_combout\ = (\clock_acucar|s_counter\(9) & (\clock_acucar|Add0~15\ $ (GND))) # (!\clock_acucar|s_counter\(9) & (!\clock_acucar|Add0~15\ & VCC))
-- \clock_acucar|Add0~17\ = CARRY((\clock_acucar|s_counter\(9) & !\clock_acucar|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(9),
	datad => VCC,
	cin => \clock_acucar|Add0~15\,
	combout => \clock_acucar|Add0~16_combout\,
	cout => \clock_acucar|Add0~17\);

-- Location: FF_X91_Y52_N19
\clock_acucar|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(9));

-- Location: LCCOMB_X91_Y52_N20
\clock_acucar|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~18_combout\ = (\clock_acucar|s_counter\(10) & (!\clock_acucar|Add0~17\)) # (!\clock_acucar|s_counter\(10) & ((\clock_acucar|Add0~17\) # (GND)))
-- \clock_acucar|Add0~19\ = CARRY((!\clock_acucar|Add0~17\) # (!\clock_acucar|s_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(10),
	datad => VCC,
	cin => \clock_acucar|Add0~17\,
	combout => \clock_acucar|Add0~18_combout\,
	cout => \clock_acucar|Add0~19\);

-- Location: FF_X91_Y52_N21
\clock_acucar|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(10));

-- Location: LCCOMB_X91_Y52_N22
\clock_acucar|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~20_combout\ = (\clock_acucar|s_counter\(11) & (\clock_acucar|Add0~19\ $ (GND))) # (!\clock_acucar|s_counter\(11) & (!\clock_acucar|Add0~19\ & VCC))
-- \clock_acucar|Add0~21\ = CARRY((\clock_acucar|s_counter\(11) & !\clock_acucar|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(11),
	datad => VCC,
	cin => \clock_acucar|Add0~19\,
	combout => \clock_acucar|Add0~20_combout\,
	cout => \clock_acucar|Add0~21\);

-- Location: FF_X91_Y52_N23
\clock_acucar|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(11));

-- Location: LCCOMB_X91_Y52_N24
\clock_acucar|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~22_combout\ = (\clock_acucar|s_counter\(12) & (!\clock_acucar|Add0~21\)) # (!\clock_acucar|s_counter\(12) & ((\clock_acucar|Add0~21\) # (GND)))
-- \clock_acucar|Add0~23\ = CARRY((!\clock_acucar|Add0~21\) # (!\clock_acucar|s_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(12),
	datad => VCC,
	cin => \clock_acucar|Add0~21\,
	combout => \clock_acucar|Add0~22_combout\,
	cout => \clock_acucar|Add0~23\);

-- Location: LCCOMB_X90_Y51_N0
\clock_acucar|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~1_combout\ = (!\clock_acucar|Equal0~9_combout\ & \clock_acucar|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_acucar|Equal0~9_combout\,
	datad => \clock_acucar|Add0~22_combout\,
	combout => \clock_acucar|s_counter~1_combout\);

-- Location: FF_X90_Y51_N1
\clock_acucar|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(12));

-- Location: LCCOMB_X91_Y52_N26
\clock_acucar|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~24_combout\ = (\clock_acucar|s_counter\(13) & (\clock_acucar|Add0~23\ $ (GND))) # (!\clock_acucar|s_counter\(13) & (!\clock_acucar|Add0~23\ & VCC))
-- \clock_acucar|Add0~25\ = CARRY((\clock_acucar|s_counter\(13) & !\clock_acucar|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(13),
	datad => VCC,
	cin => \clock_acucar|Add0~23\,
	combout => \clock_acucar|Add0~24_combout\,
	cout => \clock_acucar|Add0~25\);

-- Location: LCCOMB_X90_Y51_N14
\clock_acucar|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~2_combout\ = (!\clock_acucar|Equal0~9_combout\ & \clock_acucar|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_acucar|Equal0~9_combout\,
	datad => \clock_acucar|Add0~24_combout\,
	combout => \clock_acucar|s_counter~2_combout\);

-- Location: FF_X90_Y51_N15
\clock_acucar|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(13));

-- Location: LCCOMB_X91_Y52_N28
\clock_acucar|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~26_combout\ = (\clock_acucar|s_counter\(14) & (!\clock_acucar|Add0~25\)) # (!\clock_acucar|s_counter\(14) & ((\clock_acucar|Add0~25\) # (GND)))
-- \clock_acucar|Add0~27\ = CARRY((!\clock_acucar|Add0~25\) # (!\clock_acucar|s_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(14),
	datad => VCC,
	cin => \clock_acucar|Add0~25\,
	combout => \clock_acucar|Add0~26_combout\,
	cout => \clock_acucar|Add0~27\);

-- Location: LCCOMB_X91_Y52_N0
\clock_acucar|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~3_combout\ = (\clock_acucar|Add0~26_combout\ & !\clock_acucar|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|Add0~26_combout\,
	datad => \clock_acucar|Equal0~9_combout\,
	combout => \clock_acucar|s_counter~3_combout\);

-- Location: FF_X91_Y52_N1
\clock_acucar|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(14));

-- Location: LCCOMB_X91_Y52_N30
\clock_acucar|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~28_combout\ = (\clock_acucar|s_counter\(15) & (\clock_acucar|Add0~27\ $ (GND))) # (!\clock_acucar|s_counter\(15) & (!\clock_acucar|Add0~27\ & VCC))
-- \clock_acucar|Add0~29\ = CARRY((\clock_acucar|s_counter\(15) & !\clock_acucar|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(15),
	datad => VCC,
	cin => \clock_acucar|Add0~27\,
	combout => \clock_acucar|Add0~28_combout\,
	cout => \clock_acucar|Add0~29\);

-- Location: LCCOMB_X92_Y51_N24
\clock_acucar|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~8_combout\ = (!\clock_acucar|Equal0~9_combout\ & \clock_acucar|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|Equal0~9_combout\,
	datac => \clock_acucar|Add0~28_combout\,
	combout => \clock_acucar|s_counter~8_combout\);

-- Location: FF_X92_Y51_N25
\clock_acucar|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(15));

-- Location: LCCOMB_X91_Y51_N0
\clock_acucar|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~30_combout\ = (\clock_acucar|s_counter\(16) & (!\clock_acucar|Add0~29\)) # (!\clock_acucar|s_counter\(16) & ((\clock_acucar|Add0~29\) # (GND)))
-- \clock_acucar|Add0~31\ = CARRY((!\clock_acucar|Add0~29\) # (!\clock_acucar|s_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(16),
	datad => VCC,
	cin => \clock_acucar|Add0~29\,
	combout => \clock_acucar|Add0~30_combout\,
	cout => \clock_acucar|Add0~31\);

-- Location: FF_X91_Y51_N1
\clock_acucar|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(16));

-- Location: LCCOMB_X92_Y51_N12
\clock_acucar|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~7_combout\ = (\clock_acucar|s_counter\(6) & (\clock_acucar|s_counter\(15) & (!\clock_acucar|s_counter\(16) & !\clock_acucar|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(6),
	datab => \clock_acucar|s_counter\(15),
	datac => \clock_acucar|s_counter\(16),
	datad => \clock_acucar|s_counter\(11),
	combout => \clock_acucar|Equal0~7_combout\);

-- Location: LCCOMB_X91_Y51_N2
\clock_acucar|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~32_combout\ = (\clock_acucar|s_counter\(17) & (\clock_acucar|Add0~31\ $ (GND))) # (!\clock_acucar|s_counter\(17) & (!\clock_acucar|Add0~31\ & VCC))
-- \clock_acucar|Add0~33\ = CARRY((\clock_acucar|s_counter\(17) & !\clock_acucar|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(17),
	datad => VCC,
	cin => \clock_acucar|Add0~31\,
	combout => \clock_acucar|Add0~32_combout\,
	cout => \clock_acucar|Add0~33\);

-- Location: LCCOMB_X92_Y51_N6
\clock_acucar|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~9_combout\ = (!\clock_acucar|Equal0~9_combout\ & \clock_acucar|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_acucar|Equal0~9_combout\,
	datad => \clock_acucar|Add0~32_combout\,
	combout => \clock_acucar|s_counter~9_combout\);

-- Location: FF_X92_Y51_N7
\clock_acucar|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(17));

-- Location: LCCOMB_X91_Y51_N4
\clock_acucar|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~34_combout\ = (\clock_acucar|s_counter\(18) & (!\clock_acucar|Add0~33\)) # (!\clock_acucar|s_counter\(18) & ((\clock_acucar|Add0~33\) # (GND)))
-- \clock_acucar|Add0~35\ = CARRY((!\clock_acucar|Add0~33\) # (!\clock_acucar|s_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(18),
	datad => VCC,
	cin => \clock_acucar|Add0~33\,
	combout => \clock_acucar|Add0~34_combout\,
	cout => \clock_acucar|Add0~35\);

-- Location: FF_X91_Y51_N5
\clock_acucar|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(18));

-- Location: LCCOMB_X91_Y51_N6
\clock_acucar|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~36_combout\ = (\clock_acucar|s_counter\(19) & (\clock_acucar|Add0~35\ $ (GND))) # (!\clock_acucar|s_counter\(19) & (!\clock_acucar|Add0~35\ & VCC))
-- \clock_acucar|Add0~37\ = CARRY((\clock_acucar|s_counter\(19) & !\clock_acucar|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(19),
	datad => VCC,
	cin => \clock_acucar|Add0~35\,
	combout => \clock_acucar|Add0~36_combout\,
	cout => \clock_acucar|Add0~37\);

-- Location: LCCOMB_X90_Y51_N6
\clock_acucar|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~4_combout\ = (!\clock_acucar|Equal0~9_combout\ & \clock_acucar|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_acucar|Equal0~9_combout\,
	datad => \clock_acucar|Add0~36_combout\,
	combout => \clock_acucar|s_counter~4_combout\);

-- Location: FF_X90_Y51_N7
\clock_acucar|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(19));

-- Location: LCCOMB_X91_Y51_N8
\clock_acucar|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~38_combout\ = (\clock_acucar|s_counter\(20) & (!\clock_acucar|Add0~37\)) # (!\clock_acucar|s_counter\(20) & ((\clock_acucar|Add0~37\) # (GND)))
-- \clock_acucar|Add0~39\ = CARRY((!\clock_acucar|Add0~37\) # (!\clock_acucar|s_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(20),
	datad => VCC,
	cin => \clock_acucar|Add0~37\,
	combout => \clock_acucar|Add0~38_combout\,
	cout => \clock_acucar|Add0~39\);

-- Location: LCCOMB_X90_Y51_N16
\clock_acucar|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~5_combout\ = (\clock_acucar|Add0~38_combout\ & !\clock_acucar|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_acucar|Add0~38_combout\,
	datad => \clock_acucar|Equal0~9_combout\,
	combout => \clock_acucar|s_counter~5_combout\);

-- Location: FF_X90_Y51_N17
\clock_acucar|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(20));

-- Location: LCCOMB_X91_Y51_N10
\clock_acucar|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~40_combout\ = (\clock_acucar|s_counter\(21) & (\clock_acucar|Add0~39\ $ (GND))) # (!\clock_acucar|s_counter\(21) & (!\clock_acucar|Add0~39\ & VCC))
-- \clock_acucar|Add0~41\ = CARRY((\clock_acucar|s_counter\(21) & !\clock_acucar|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(21),
	datad => VCC,
	cin => \clock_acucar|Add0~39\,
	combout => \clock_acucar|Add0~40_combout\,
	cout => \clock_acucar|Add0~41\);

-- Location: LCCOMB_X90_Y51_N26
\clock_acucar|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~6_combout\ = (\clock_acucar|Add0~40_combout\ & !\clock_acucar|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_acucar|Add0~40_combout\,
	datad => \clock_acucar|Equal0~9_combout\,
	combout => \clock_acucar|s_counter~6_combout\);

-- Location: FF_X90_Y51_N27
\clock_acucar|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(21));

-- Location: LCCOMB_X91_Y51_N12
\clock_acucar|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~42_combout\ = (\clock_acucar|s_counter\(22) & (!\clock_acucar|Add0~41\)) # (!\clock_acucar|s_counter\(22) & ((\clock_acucar|Add0~41\) # (GND)))
-- \clock_acucar|Add0~43\ = CARRY((!\clock_acucar|Add0~41\) # (!\clock_acucar|s_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(22),
	datad => VCC,
	cin => \clock_acucar|Add0~41\,
	combout => \clock_acucar|Add0~42_combout\,
	cout => \clock_acucar|Add0~43\);

-- Location: LCCOMB_X92_Y51_N22
\clock_acucar|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~7_combout\ = (!\clock_acucar|Equal0~9_combout\ & \clock_acucar|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_acucar|Equal0~9_combout\,
	datad => \clock_acucar|Add0~42_combout\,
	combout => \clock_acucar|s_counter~7_combout\);

-- Location: FF_X92_Y51_N23
\clock_acucar|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(22));

-- Location: LCCOMB_X91_Y51_N14
\clock_acucar|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~44_combout\ = (\clock_acucar|s_counter\(23) & (\clock_acucar|Add0~43\ $ (GND))) # (!\clock_acucar|s_counter\(23) & (!\clock_acucar|Add0~43\ & VCC))
-- \clock_acucar|Add0~45\ = CARRY((\clock_acucar|s_counter\(23) & !\clock_acucar|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(23),
	datad => VCC,
	cin => \clock_acucar|Add0~43\,
	combout => \clock_acucar|Add0~44_combout\,
	cout => \clock_acucar|Add0~45\);

-- Location: LCCOMB_X91_Y51_N30
\clock_acucar|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~10_combout\ = (\clock_acucar|Add0~44_combout\ & !\clock_acucar|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_acucar|Add0~44_combout\,
	datad => \clock_acucar|Equal0~9_combout\,
	combout => \clock_acucar|s_counter~10_combout\);

-- Location: FF_X91_Y51_N31
\clock_acucar|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(23));

-- Location: LCCOMB_X91_Y51_N16
\clock_acucar|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~46_combout\ = (\clock_acucar|s_counter\(24) & (!\clock_acucar|Add0~45\)) # (!\clock_acucar|s_counter\(24) & ((\clock_acucar|Add0~45\) # (GND)))
-- \clock_acucar|Add0~47\ = CARRY((!\clock_acucar|Add0~45\) # (!\clock_acucar|s_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(24),
	datad => VCC,
	cin => \clock_acucar|Add0~45\,
	combout => \clock_acucar|Add0~46_combout\,
	cout => \clock_acucar|Add0~47\);

-- Location: FF_X91_Y51_N17
\clock_acucar|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(24));

-- Location: LCCOMB_X91_Y51_N18
\clock_acucar|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~48_combout\ = (\clock_acucar|s_counter\(25) & (\clock_acucar|Add0~47\ $ (GND))) # (!\clock_acucar|s_counter\(25) & (!\clock_acucar|Add0~47\ & VCC))
-- \clock_acucar|Add0~49\ = CARRY((\clock_acucar|s_counter\(25) & !\clock_acucar|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(25),
	datad => VCC,
	cin => \clock_acucar|Add0~47\,
	combout => \clock_acucar|Add0~48_combout\,
	cout => \clock_acucar|Add0~49\);

-- Location: LCCOMB_X92_Y51_N18
\clock_acucar|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|s_counter~11_combout\ = (!\clock_acucar|Equal0~9_combout\ & \clock_acucar|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_acucar|Equal0~9_combout\,
	datad => \clock_acucar|Add0~48_combout\,
	combout => \clock_acucar|s_counter~11_combout\);

-- Location: FF_X92_Y51_N19
\clock_acucar|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(25));

-- Location: LCCOMB_X92_Y51_N30
\clock_acucar|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~8_combout\ = (!\clock_acucar|s_counter\(24) & (\clock_acucar|s_counter\(23) & (!\clock_acucar|s_counter\(18) & \clock_acucar|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(24),
	datab => \clock_acucar|s_counter\(23),
	datac => \clock_acucar|s_counter\(18),
	datad => \clock_acucar|s_counter\(17),
	combout => \clock_acucar|Equal0~8_combout\);

-- Location: LCCOMB_X91_Y51_N20
\clock_acucar|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~50_combout\ = (\clock_acucar|s_counter\(26) & (!\clock_acucar|Add0~49\)) # (!\clock_acucar|s_counter\(26) & ((\clock_acucar|Add0~49\) # (GND)))
-- \clock_acucar|Add0~51\ = CARRY((!\clock_acucar|Add0~49\) # (!\clock_acucar|s_counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(26),
	datad => VCC,
	cin => \clock_acucar|Add0~49\,
	combout => \clock_acucar|Add0~50_combout\,
	cout => \clock_acucar|Add0~51\);

-- Location: FF_X91_Y51_N21
\clock_acucar|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(26));

-- Location: LCCOMB_X91_Y51_N22
\clock_acucar|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~52_combout\ = (\clock_acucar|s_counter\(27) & (\clock_acucar|Add0~51\ $ (GND))) # (!\clock_acucar|s_counter\(27) & (!\clock_acucar|Add0~51\ & VCC))
-- \clock_acucar|Add0~53\ = CARRY((\clock_acucar|s_counter\(27) & !\clock_acucar|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(27),
	datad => VCC,
	cin => \clock_acucar|Add0~51\,
	combout => \clock_acucar|Add0~52_combout\,
	cout => \clock_acucar|Add0~53\);

-- Location: FF_X91_Y51_N23
\clock_acucar|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(27));

-- Location: LCCOMB_X91_Y51_N24
\clock_acucar|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~54_combout\ = (\clock_acucar|s_counter\(28) & (!\clock_acucar|Add0~53\)) # (!\clock_acucar|s_counter\(28) & ((\clock_acucar|Add0~53\) # (GND)))
-- \clock_acucar|Add0~55\ = CARRY((!\clock_acucar|Add0~53\) # (!\clock_acucar|s_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|s_counter\(28),
	datad => VCC,
	cin => \clock_acucar|Add0~53\,
	combout => \clock_acucar|Add0~54_combout\,
	cout => \clock_acucar|Add0~55\);

-- Location: FF_X91_Y51_N25
\clock_acucar|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(28));

-- Location: LCCOMB_X91_Y51_N26
\clock_acucar|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~56_combout\ = (\clock_acucar|s_counter\(29) & (\clock_acucar|Add0~55\ $ (GND))) # (!\clock_acucar|s_counter\(29) & (!\clock_acucar|Add0~55\ & VCC))
-- \clock_acucar|Add0~57\ = CARRY((\clock_acucar|s_counter\(29) & !\clock_acucar|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(29),
	datad => VCC,
	cin => \clock_acucar|Add0~55\,
	combout => \clock_acucar|Add0~56_combout\,
	cout => \clock_acucar|Add0~57\);

-- Location: FF_X91_Y51_N27
\clock_acucar|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(29));

-- Location: LCCOMB_X91_Y51_N28
\clock_acucar|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Add0~58_combout\ = \clock_acucar|Add0~57\ $ (\clock_acucar|s_counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_acucar|s_counter\(30),
	cin => \clock_acucar|Add0~57\,
	combout => \clock_acucar|Add0~58_combout\);

-- Location: FF_X91_Y51_N29
\clock_acucar|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|s_counter\(30));

-- Location: LCCOMB_X92_Y51_N8
\clock_acucar|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~5_combout\ = (!\clock_acucar|s_counter\(26) & (!\clock_acucar|s_counter\(27) & (\clock_acucar|s_counter\(22) & !\clock_acucar|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(26),
	datab => \clock_acucar|s_counter\(27),
	datac => \clock_acucar|s_counter\(22),
	datad => \clock_acucar|s_counter\(28),
	combout => \clock_acucar|Equal0~5_combout\);

-- Location: LCCOMB_X90_Y51_N30
\clock_acucar|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~0_combout\ = (!\clock_acucar|s_counter\(7) & (\clockMoedasACair|s_counter\(0) & (\clockMoedasACair|s_counter\(1) & !\clock_acucar|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(7),
	datab => \clockMoedasACair|s_counter\(0),
	datac => \clockMoedasACair|s_counter\(1),
	datad => \clock_acucar|s_counter\(8),
	combout => \clock_acucar|Equal0~0_combout\);

-- Location: LCCOMB_X90_Y51_N28
\clock_acucar|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~3_combout\ = (\clock_acucar|s_counter\(19) & (\clock_acucar|s_counter\(20) & (\clock_acucar|s_counter\(21) & \clock_acucar|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(19),
	datab => \clock_acucar|s_counter\(20),
	datac => \clock_acucar|s_counter\(21),
	datad => \clock_acucar|s_counter\(14),
	combout => \clock_acucar|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y52_N12
\clock_acucar|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~1_combout\ = (\clock_acucar|s_counter\(2) & (\clock_acucar|s_counter\(5) & (\clock_acucar|s_counter\(4) & \clock_acucar|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(2),
	datab => \clock_acucar|s_counter\(5),
	datac => \clock_acucar|s_counter\(4),
	datad => \clock_acucar|s_counter\(3),
	combout => \clock_acucar|Equal0~1_combout\);

-- Location: LCCOMB_X90_Y51_N24
\clock_acucar|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~2_combout\ = (\clock_acucar|s_counter\(12) & (\clock_acucar|s_counter\(13) & (!\clock_acucar|s_counter\(9) & !\clock_acucar|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(12),
	datab => \clock_acucar|s_counter\(13),
	datac => \clock_acucar|s_counter\(9),
	datad => \clock_acucar|s_counter\(10),
	combout => \clock_acucar|Equal0~2_combout\);

-- Location: LCCOMB_X90_Y51_N10
\clock_acucar|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~4_combout\ = (\clock_acucar|Equal0~0_combout\ & (\clock_acucar|Equal0~3_combout\ & (\clock_acucar|Equal0~1_combout\ & \clock_acucar|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|Equal0~0_combout\,
	datab => \clock_acucar|Equal0~3_combout\,
	datac => \clock_acucar|Equal0~1_combout\,
	datad => \clock_acucar|Equal0~2_combout\,
	combout => \clock_acucar|Equal0~4_combout\);

-- Location: LCCOMB_X92_Y51_N2
\clock_acucar|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~6_combout\ = (!\clock_acucar|s_counter\(29) & (!\clock_acucar|s_counter\(30) & (\clock_acucar|Equal0~5_combout\ & \clock_acucar|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(29),
	datab => \clock_acucar|s_counter\(30),
	datac => \clock_acucar|Equal0~5_combout\,
	datad => \clock_acucar|Equal0~4_combout\,
	combout => \clock_acucar|Equal0~6_combout\);

-- Location: LCCOMB_X92_Y51_N4
\clock_acucar|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|Equal0~9_combout\ = (\clock_acucar|Equal0~7_combout\ & (\clock_acucar|s_counter\(25) & (\clock_acucar|Equal0~8_combout\ & \clock_acucar|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|Equal0~7_combout\,
	datab => \clock_acucar|s_counter\(25),
	datac => \clock_acucar|Equal0~8_combout\,
	datad => \clock_acucar|Equal0~6_combout\,
	combout => \clock_acucar|Equal0~9_combout\);

-- Location: LCCOMB_X92_Y51_N10
\clock_acucar|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|clkOut~1_combout\ = (\clock_acucar|s_counter\(24) & (!\clock_acucar|s_counter\(23) & (\clock_acucar|s_counter\(18) & !\clock_acucar|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(24),
	datab => \clock_acucar|s_counter\(23),
	datac => \clock_acucar|s_counter\(18),
	datad => \clock_acucar|s_counter\(17),
	combout => \clock_acucar|clkOut~1_combout\);

-- Location: LCCOMB_X92_Y51_N28
\clock_acucar|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|clkOut~0_combout\ = (\clock_acucar|s_counter\(16) & (\clock_acucar|s_counter\(11) & (!\clock_acucar|s_counter\(6) & !\clock_acucar|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|s_counter\(16),
	datab => \clock_acucar|s_counter\(11),
	datac => \clock_acucar|s_counter\(6),
	datad => \clock_acucar|s_counter\(15),
	combout => \clock_acucar|clkOut~0_combout\);

-- Location: LCCOMB_X92_Y51_N26
\clock_acucar|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|clkOut~2_combout\ = (\clock_acucar|clkOut~1_combout\ & (\clock_acucar|clkOut~0_combout\ & (!\clock_acucar|s_counter\(25) & \clock_acucar|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_acucar|clkOut~1_combout\,
	datab => \clock_acucar|clkOut~0_combout\,
	datac => \clock_acucar|s_counter\(25),
	datad => \clock_acucar|Equal0~6_combout\,
	combout => \clock_acucar|clkOut~2_combout\);

-- Location: LCCOMB_X92_Y51_N16
\clock_acucar|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|clkOut~3_combout\ = (!\clock_acucar|Equal0~9_combout\ & ((\clock_acucar|clkOut~2_combout\) # (\clock_acucar|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_acucar|Equal0~9_combout\,
	datac => \clock_acucar|clkOut~2_combout\,
	datad => \clock_acucar|clkOut~q\,
	combout => \clock_acucar|clkOut~3_combout\);

-- Location: LCCOMB_X92_Y51_N20
\clock_acucar|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_acucar|clkOut~feeder_combout\ = \clock_acucar|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock_acucar|clkOut~3_combout\,
	combout => \clock_acucar|clkOut~feeder_combout\);

-- Location: FF_X92_Y51_N21
\clock_acucar|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_acucar|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_acucar|clkOut~q\);

-- Location: CLKCTRL_G6
\clock_acucar|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_acucar|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_acucar|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X86_Y70_N12
\acucar|s_shiftregister[0]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[0]~_Duplicate_1feeder_combout\ = \acucar|s_shiftregister[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acucar|s_shiftregister[0]~2_combout\,
	combout => \acucar|s_shiftregister[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X86_Y70_N13
\acucar|s_shiftregister[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister[0]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister[0]~_Duplicate_1_q\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X86_Y70_N22
\acucar|s_shiftregister~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~1_combout\ = (\SW[15]~input_o\) # ((\SW[16]~input_o\) # ((\SW[17]~input_o\) # (\escolhaproduto|reset_acucar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \escolhaproduto|reset_acucar~combout\,
	combout => \acucar|s_shiftregister~1_combout\);

-- Location: LCCOMB_X75_Y70_N6
\acucar|s_shiftregister~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~3_combout\ = (!\SW[17]~input_o\ & !\escolhaproduto|reset_acucar~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \escolhaproduto|reset_acucar~combout\,
	combout => \acucar|s_shiftregister~3_combout\);

-- Location: LCCOMB_X75_Y70_N12
\acucar|s_shiftregister~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~10_combout\ = (\acucar|s_shiftregister~3_combout\ & ((\SW[15]~input_o\) # ((\SW[16]~input_o\) # (\acucar|s_shiftregister[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \acucar|s_shiftregister[7]~_Duplicate_1_q\,
	datad => \acucar|s_shiftregister~3_combout\,
	combout => \acucar|s_shiftregister~10_combout\);

-- Location: LCCOMB_X75_Y70_N14
\acucar|s_shiftregister~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~11_combout\ = (\acucar|s_shiftregister~10_combout\ & (((\SW[16]~input_o\) # (\acucar|s_shiftregister[6]~_Duplicate_1_q\)) # (!\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \acucar|s_shiftregister[6]~_Duplicate_1_q\,
	datad => \acucar|s_shiftregister~10_combout\,
	combout => \acucar|s_shiftregister~11_combout\);

-- Location: LCCOMB_X75_Y70_N4
\acucar|s_shiftregister[7]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[7]~_Duplicate_1feeder_combout\ = \acucar|s_shiftregister~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acucar|s_shiftregister~11_combout\,
	combout => \acucar|s_shiftregister[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X75_Y70_N5
\acucar|s_shiftregister[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister[7]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X73_Y70_N24
\acucar|s_shiftregister~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~9_combout\ = (\acucar|s_shiftregister~3_combout\ & ((\SW[16]~input_o\ & ((\acucar|s_shiftregister[7]~_Duplicate_1_q\))) # (!\SW[16]~input_o\ & (\acucar|s_shiftregister[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \acucar|s_shiftregister[5]~_Duplicate_1_q\,
	datac => \acucar|s_shiftregister~3_combout\,
	datad => \acucar|s_shiftregister[7]~_Duplicate_1_q\,
	combout => \acucar|s_shiftregister~9_combout\);

-- Location: LCCOMB_X73_Y70_N22
\acucar|s_shiftregister[6]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[6]~_Duplicate_1feeder_combout\ = \acucar|s_shiftregister~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \acucar|s_shiftregister~9_combout\,
	combout => \acucar|s_shiftregister[6]~_Duplicate_1feeder_combout\);

-- Location: FF_X73_Y70_N23
\acucar|s_shiftregister[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister[6]~_Duplicate_1feeder_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X73_Y70_N10
\acucar|s_shiftregister~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~8_combout\ = (\acucar|s_shiftregister~3_combout\ & ((\SW[16]~input_o\ & (\acucar|s_shiftregister[6]~_Duplicate_1_q\)) # (!\SW[16]~input_o\ & ((\acucar|s_shiftregister[4]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acucar|s_shiftregister[6]~_Duplicate_1_q\,
	datab => \acucar|s_shiftregister[4]~_Duplicate_1_q\,
	datac => \acucar|s_shiftregister~3_combout\,
	datad => \SW[16]~input_o\,
	combout => \acucar|s_shiftregister~8_combout\);

-- Location: LCCOMB_X73_Y70_N16
\acucar|s_shiftregister[5]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[5]~_Duplicate_1feeder_combout\ = \acucar|s_shiftregister~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \acucar|s_shiftregister~8_combout\,
	combout => \acucar|s_shiftregister[5]~_Duplicate_1feeder_combout\);

-- Location: FF_X73_Y70_N17
\acucar|s_shiftregister[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister[5]~_Duplicate_1feeder_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X73_Y70_N12
\acucar|s_shiftregister~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~7_combout\ = (\acucar|s_shiftregister~3_combout\ & ((\SW[16]~input_o\ & (\acucar|s_shiftregister[5]~_Duplicate_1_q\)) # (!\SW[16]~input_o\ & ((\acucar|s_shiftregister[3]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \acucar|s_shiftregister[5]~_Duplicate_1_q\,
	datac => \acucar|s_shiftregister~3_combout\,
	datad => \acucar|s_shiftregister[3]~_Duplicate_1_q\,
	combout => \acucar|s_shiftregister~7_combout\);

-- Location: LCCOMB_X73_Y70_N2
\acucar|s_shiftregister[4]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[4]~_Duplicate_1feeder_combout\ = \acucar|s_shiftregister~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \acucar|s_shiftregister~7_combout\,
	combout => \acucar|s_shiftregister[4]~_Duplicate_1feeder_combout\);

-- Location: FF_X73_Y70_N3
\acucar|s_shiftregister[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister[4]~_Duplicate_1feeder_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X86_Y70_N20
\acucar|s_shiftregister~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~6_combout\ = (\acucar|s_shiftregister~3_combout\ & ((\SW[16]~input_o\ & ((\acucar|s_shiftregister[4]~_Duplicate_1_q\))) # (!\SW[16]~input_o\ & (\acucar|s_shiftregister[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acucar|s_shiftregister[2]~_Duplicate_1_q\,
	datab => \SW[16]~input_o\,
	datac => \acucar|s_shiftregister~3_combout\,
	datad => \acucar|s_shiftregister[4]~_Duplicate_1_q\,
	combout => \acucar|s_shiftregister~6_combout\);

-- Location: LCCOMB_X73_Y70_N0
\acucar|s_shiftregister[3]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[3]~_Duplicate_1feeder_combout\ = \acucar|s_shiftregister~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \acucar|s_shiftregister~6_combout\,
	combout => \acucar|s_shiftregister[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X73_Y70_N1
\acucar|s_shiftregister[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister[3]~_Duplicate_1feeder_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X85_Y70_N6
\acucar|s_shiftregister~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~5_combout\ = (\acucar|s_shiftregister~3_combout\ & ((\SW[16]~input_o\ & ((\acucar|s_shiftregister[3]~_Duplicate_1_q\))) # (!\SW[16]~input_o\ & (\acucar|s_shiftregister[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acucar|s_shiftregister[1]~_Duplicate_1_q\,
	datab => \SW[16]~input_o\,
	datac => \acucar|s_shiftregister~3_combout\,
	datad => \acucar|s_shiftregister[3]~_Duplicate_1_q\,
	combout => \acucar|s_shiftregister~5_combout\);

-- Location: LCCOMB_X85_Y70_N16
\acucar|s_shiftregister[2]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[2]~_Duplicate_1feeder_combout\ = \acucar|s_shiftregister~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \acucar|s_shiftregister~5_combout\,
	combout => \acucar|s_shiftregister[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X85_Y70_N17
\acucar|s_shiftregister[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister[2]~_Duplicate_1feeder_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X86_Y70_N14
\acucar|s_shiftregister~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister~4_combout\ = (\acucar|s_shiftregister~3_combout\ & ((\SW[16]~input_o\ & ((\acucar|s_shiftregister[2]~_Duplicate_1_q\))) # (!\SW[16]~input_o\ & (\acucar|s_shiftregister[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acucar|s_shiftregister[0]~_Duplicate_1_q\,
	datab => \SW[16]~input_o\,
	datac => \acucar|s_shiftregister[2]~_Duplicate_1_q\,
	datad => \acucar|s_shiftregister~3_combout\,
	combout => \acucar|s_shiftregister~4_combout\);

-- Location: LCCOMB_X86_Y70_N6
\acucar|s_shiftregister[1]~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[1]~_Duplicate_1feeder_combout\ = \acucar|s_shiftregister~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acucar|s_shiftregister~4_combout\,
	combout => \acucar|s_shiftregister[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X86_Y70_N7
\acucar|s_shiftregister[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister[1]~_Duplicate_1feeder_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X86_Y70_N16
\acucar|s_shiftregister[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[0]~0_combout\ = (!\escolhaproduto|reset_acucar~combout\ & (\SW[16]~input_o\ & (!\SW[17]~input_o\ & \acucar|s_shiftregister[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escolhaproduto|reset_acucar~combout\,
	datab => \SW[16]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \acucar|s_shiftregister[1]~_Duplicate_1_q\,
	combout => \acucar|s_shiftregister[0]~0_combout\);

-- Location: LCCOMB_X86_Y70_N4
\acucar|s_shiftregister[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \acucar|s_shiftregister[0]~2_combout\ = (\acucar|s_shiftregister[0]~0_combout\) # ((\acucar|s_shiftregister[0]~_Duplicate_1_q\ & !\acucar|s_shiftregister~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acucar|s_shiftregister[0]~_Duplicate_1_q\,
	datac => \acucar|s_shiftregister~1_combout\,
	datad => \acucar|s_shiftregister[0]~0_combout\,
	combout => \acucar|s_shiftregister[0]~2_combout\);

-- Location: DDIOOUTCELL_X107_Y73_N11
\acucar|s_shiftregister[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister\(0));

-- Location: DDIOOUTCELL_X111_Y73_N11
\acucar|s_shiftregister[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister~4_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister\(1));

-- Location: DDIOOUTCELL_X83_Y73_N4
\acucar|s_shiftregister[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister~5_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister\(2));

-- Location: DDIOOUTCELL_X85_Y73_N25
\acucar|s_shiftregister[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister~6_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister\(3));

-- Location: DDIOOUTCELL_X72_Y73_N18
\acucar|s_shiftregister[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister~7_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister\(4));

-- Location: DDIOOUTCELL_X74_Y73_N18
\acucar|s_shiftregister[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister~8_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister\(5));

-- Location: DDIOOUTCELL_X72_Y73_N25
\acucar|s_shiftregister[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister~9_combout\,
	ena => \acucar|s_shiftregister~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister\(6));

-- Location: DDIOOUTCELL_X74_Y73_N25
\acucar|s_shiftregister[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_acucar|clkOut~clkctrl_outclk\,
	d => \acucar|s_shiftregister~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acucar|s_shiftregister\(7));

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;
END structure;


