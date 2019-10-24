-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/24/2019 16:11:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topLevel IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	outCPU : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END topLevel;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- outCPU[0]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outCPU[1]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outCPU[2]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outCPU[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_outCPU : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|edgeDetectorClock|saida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
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
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
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
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
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
SIGNAL \outCPU[0]~output_o\ : std_logic;
SIGNAL \outCPU[1]~output_o\ : std_logic;
SIGNAL \outCPU[2]~output_o\ : std_logic;
SIGNAL \outCPU[3]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CPU|edgeDetectorClock|saidaQ~0_combout\ : std_logic;
SIGNAL \CPU|edgeDetectorClock|saidaQ~q\ : std_logic;
SIGNAL \CPU|edgeDetectorClock|saida~combout\ : std_logic;
SIGNAL \CPU|edgeDetectorClock|saida~clkctrl_outclk\ : std_logic;
SIGNAL \CPU|PC|toout[2]~15_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|PC|toout[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \CPU|PC|toout[3]~5_combout\ : std_logic;
SIGNAL \CPU|PC|toout[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \CPU|PC|toout[3]~6\ : std_logic;
SIGNAL \CPU|PC|toout[4]~7_combout\ : std_logic;
SIGNAL \CPU|PC|toout[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \CPU|PC|toout[4]~8\ : std_logic;
SIGNAL \CPU|PC|toout[5]~9_combout\ : std_logic;
SIGNAL \CPU|PC|toout[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \CPU|PC|toout[5]~10\ : std_logic;
SIGNAL \CPU|PC|toout[6]~11_combout\ : std_logic;
SIGNAL \CPU|PC|toout[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \CPU|PC|toout[6]~12\ : std_logic;
SIGNAL \CPU|PC|toout[7]~13_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~72feeder_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1081_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~72_q\ : std_logic;
SIGNAL \CPU|ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1077_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~40_q\ : std_logic;
SIGNAL \CPU|BR|Equal1~1_combout\ : std_logic;
SIGNAL \CPU|BR|saidaS[2]~45_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1082_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~328_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1076_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~296_q\ : std_logic;
SIGNAL \CPU|BR|saidaS[2]~49_combout\ : std_logic;
SIGNAL \CPU|BR|saidaS[2]~50_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CPU|ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|BR|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1080_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~200_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1079_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~168_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1067_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1068_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1083_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~456_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1078_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~424_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1069_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1070_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~15_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~16_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~327_q\ : std_logic;
SIGNAL \CPU|BR|saidaS[1]~18_combout\ : std_logic;
SIGNAL \CPU|BR|saidaS[1]~47_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~454_q\ : std_logic;
SIGNAL \CPU|ULA|Add0~4_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~70_q\ : std_logic;
SIGNAL \CPU|BR|registrador~198_q\ : std_logic;
SIGNAL \CPU|ULA|Add0~2_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~294_q\ : std_logic;
SIGNAL \CPU|BR|registrador~38_q\ : std_logic;
SIGNAL \CPU|BR|registrador~422feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~422_q\ : std_logic;
SIGNAL \CPU|BR|registrador~166_q\ : std_logic;
SIGNAL \CPU|ULA|Add0~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~3_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~8_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~326_q\ : std_logic;
SIGNAL \CPU|BR|saidaS[0]~3_combout\ : std_logic;
SIGNAL \CPU|BR|saidaS[0]~46_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~12_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~423feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~423_q\ : std_logic;
SIGNAL \CPU|BR|registrador~455_q\ : std_logic;
SIGNAL \CPU|BR|registrador~199feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~199_q\ : std_logic;
SIGNAL \CPU|BR|registrador~167_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1062_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1063_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~295_q\ : std_logic;
SIGNAL \CPU|BR|registrador~71feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~71_q\ : std_logic;
SIGNAL \CPU|BR|registrador~39_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1064_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1065_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1066_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~11_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~13\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~329_q\ : std_logic;
SIGNAL \CPU|BR|saidaS[3]~33_combout\ : std_logic;
SIGNAL \CPU|BR|saidaS[3]~48_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~73feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~73_q\ : std_logic;
SIGNAL \CPU|BR|registrador~41_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1073_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~297_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1074_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~425_q\ : std_logic;
SIGNAL \CPU|BR|registrador~457_q\ : std_logic;
SIGNAL \CPU|BR|registrador~201feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~201_q\ : std_logic;
SIGNAL \CPU|BR|registrador~169_q\ : std_logic;
SIGNAL \CPU|BR|registrador~1071_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1072_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~1075_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~19_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~20_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|toout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DISPLAY6|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_toout[2]~_Duplicate_1_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
outCPU <= ww_outCPU;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\CPU|edgeDetectorClock|saida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CPU|edgeDetectorClock|saida~combout\);
\CPU|PC|ALT_INV_toout[2]~_Duplicate_1_q\ <= NOT \CPU|PC|toout[2]~_Duplicate_1_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \DISPLAY6|saida7seg\(0),
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
	i => \DISPLAY6|saida7seg\(1),
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
	i => \DISPLAY6|saida7seg\(2),
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
	i => \DISPLAY6|saida7seg\(3),
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
	i => \DISPLAY6|saida7seg\(4),
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
	i => \DISPLAY6|saida7seg\(5),
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
	i => \DISPLAY6|saida7seg\(6),
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => \CPU|PC|toout\(2),
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
	i => \CPU|PC|toout\(3),
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
	i => \CPU|PC|toout\(4),
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
	i => \CPU|PC|toout\(5),
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
	i => \CPU|PC|toout\(6),
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
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
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
	i => \SW[1]~input_o\,
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
	i => GND,
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
	i => GND,
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

-- Location: IOOBUF_X115_Y11_N2
\outCPU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|Add0~9_combout\,
	devoe => ww_devoe,
	o => \outCPU[0]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\outCPU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|Add0~12_combout\,
	devoe => ww_devoe,
	o => \outCPU[1]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\outCPU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|Add0~17_combout\,
	devoe => ww_devoe,
	o => \outCPU[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\outCPU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|Add0~20_combout\,
	devoe => ww_devoe,
	o => \outCPU[3]~output_o\);

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

-- Location: LCCOMB_X114_Y37_N18
\CPU|edgeDetectorClock|saidaQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|edgeDetectorClock|saidaQ~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \CPU|edgeDetectorClock|saidaQ~0_combout\);

-- Location: FF_X114_Y37_N19
\CPU|edgeDetectorClock|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|edgeDetectorClock|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|edgeDetectorClock|saidaQ~q\);

-- Location: LCCOMB_X114_Y37_N2
\CPU|edgeDetectorClock|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|edgeDetectorClock|saida~combout\ = LCELL((!\KEY[1]~input_o\ & !\CPU|edgeDetectorClock|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \CPU|edgeDetectorClock|saidaQ~q\,
	combout => \CPU|edgeDetectorClock|saida~combout\);

-- Location: CLKCTRL_G9
\CPU|edgeDetectorClock|saida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CPU|edgeDetectorClock|saida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y8_N30
\CPU|PC|toout[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[2]~15_combout\ = !\CPU|PC|toout[2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|toout[2]~_Duplicate_1_q\,
	combout => \CPU|PC|toout[2]~15_combout\);

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

-- Location: FF_X69_Y8_N13
\CPU|PC|toout[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|PC|toout[2]~15_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y8_N16
\CPU|PC|toout[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[3]~5_combout\ = (\CPU|PC|toout[2]~_Duplicate_1_q\ & (\CPU|PC|toout[3]~_Duplicate_1_q\ $ (VCC))) # (!\CPU|PC|toout[2]~_Duplicate_1_q\ & (\CPU|PC|toout[3]~_Duplicate_1_q\ & VCC))
-- \CPU|PC|toout[3]~6\ = CARRY((\CPU|PC|toout[2]~_Duplicate_1_q\ & \CPU|PC|toout[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[2]~_Duplicate_1_q\,
	datab => \CPU|PC|toout[3]~_Duplicate_1_q\,
	datad => VCC,
	combout => \CPU|PC|toout[3]~5_combout\,
	cout => \CPU|PC|toout[3]~6\);

-- Location: FF_X69_Y8_N9
\CPU|PC|toout[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|PC|toout[3]~5_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y8_N18
\CPU|PC|toout[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[4]~7_combout\ = (\CPU|PC|toout[4]~_Duplicate_1_q\ & (!\CPU|PC|toout[3]~6\)) # (!\CPU|PC|toout[4]~_Duplicate_1_q\ & ((\CPU|PC|toout[3]~6\) # (GND)))
-- \CPU|PC|toout[4]~8\ = CARRY((!\CPU|PC|toout[3]~6\) # (!\CPU|PC|toout[4]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|toout[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \CPU|PC|toout[3]~6\,
	combout => \CPU|PC|toout[4]~7_combout\,
	cout => \CPU|PC|toout[4]~8\);

-- Location: FF_X69_Y8_N15
\CPU|PC|toout[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|PC|toout[4]~7_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y8_N20
\CPU|PC|toout[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[5]~9_combout\ = (\CPU|PC|toout[5]~_Duplicate_1_q\ & (\CPU|PC|toout[4]~8\ $ (GND))) # (!\CPU|PC|toout[5]~_Duplicate_1_q\ & (!\CPU|PC|toout[4]~8\ & VCC))
-- \CPU|PC|toout[5]~10\ = CARRY((\CPU|PC|toout[5]~_Duplicate_1_q\ & !\CPU|PC|toout[4]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \CPU|PC|toout[4]~8\,
	combout => \CPU|PC|toout[5]~9_combout\,
	cout => \CPU|PC|toout[5]~10\);

-- Location: FF_X69_Y8_N1
\CPU|PC|toout[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|PC|toout[5]~9_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y8_N22
\CPU|PC|toout[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[6]~11_combout\ = (\CPU|PC|toout[6]~_Duplicate_1_q\ & (!\CPU|PC|toout[5]~10\)) # (!\CPU|PC|toout[6]~_Duplicate_1_q\ & ((\CPU|PC|toout[5]~10\) # (GND)))
-- \CPU|PC|toout[6]~12\ = CARRY((!\CPU|PC|toout[5]~10\) # (!\CPU|PC|toout[6]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \CPU|PC|toout[5]~10\,
	combout => \CPU|PC|toout[6]~11_combout\,
	cout => \CPU|PC|toout[6]~12\);

-- Location: FF_X69_Y8_N31
\CPU|PC|toout[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|PC|toout[6]~11_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X69_Y8_N24
\CPU|PC|toout[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[7]~13_combout\ = \CPU|PC|toout[6]~12\ $ (!\CPU|PC|toout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|toout\(7),
	cin => \CPU|PC|toout[6]~12\,
	combout => \CPU|PC|toout[7]~13_combout\);

-- Location: FF_X69_Y8_N25
\CPU|PC|toout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|PC|toout[7]~13_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(7));

-- Location: LCCOMB_X69_Y8_N2
\CPU|ROM|memROM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~5_combout\ = (!\CPU|PC|toout[5]~_Duplicate_1_q\ & (!\CPU|PC|toout[4]~_Duplicate_1_q\ & (\CPU|PC|toout[3]~_Duplicate_1_q\ $ (\CPU|PC|toout[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[5]~_Duplicate_1_q\,
	datab => \CPU|PC|toout[4]~_Duplicate_1_q\,
	datac => \CPU|PC|toout[3]~_Duplicate_1_q\,
	datad => \CPU|PC|toout[2]~_Duplicate_1_q\,
	combout => \CPU|ROM|memROM~5_combout\);

-- Location: LCCOMB_X69_Y8_N14
\CPU|ROM|memROM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~6_combout\ = (!\CPU|PC|toout[6]~_Duplicate_1_q\ & (!\CPU|PC|toout\(7) & \CPU|ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[6]~_Duplicate_1_q\,
	datab => \CPU|PC|toout\(7),
	datad => \CPU|ROM|memROM~5_combout\,
	combout => \CPU|ROM|memROM~6_combout\);

-- Location: LCCOMB_X66_Y8_N8
\CPU|BR|registrador~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~72feeder_combout\ = \CPU|ULA|Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA|Add0~17_combout\,
	combout => \CPU|BR|registrador~72feeder_combout\);

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

-- Location: LCCOMB_X69_Y8_N6
\CPU|ROM|memROM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~2_combout\ = (!\CPU|PC|toout[5]~_Duplicate_1_q\ & (!\CPU|PC|toout[6]~_Duplicate_1_q\ & (!\CPU|PC|toout[4]~_Duplicate_1_q\ & !\CPU|PC|toout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[5]~_Duplicate_1_q\,
	datab => \CPU|PC|toout[6]~_Duplicate_1_q\,
	datac => \CPU|PC|toout[4]~_Duplicate_1_q\,
	datad => \CPU|PC|toout\(7),
	combout => \CPU|ROM|memROM~2_combout\);

-- Location: LCCOMB_X66_Y8_N28
\CPU|ROM|memROM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~7_combout\ = (\CPU|PC|toout[2]~_Duplicate_1_q\ & \CPU|ROM|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|toout[2]~_Duplicate_1_q\,
	datad => \CPU|ROM|memROM~2_combout\,
	combout => \CPU|ROM|memROM~7_combout\);

-- Location: LCCOMB_X66_Y8_N0
\CPU|ROM|memROM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~8_combout\ = (\CPU|PC|toout[3]~_Duplicate_1_q\ & \CPU|ROM|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|toout[3]~_Duplicate_1_q\,
	datad => \CPU|ROM|memROM~2_combout\,
	combout => \CPU|ROM|memROM~8_combout\);

-- Location: LCCOMB_X69_Y8_N0
\CPU|ROM|memROM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~0_combout\ = (!\CPU|PC|toout[4]~_Duplicate_1_q\ & (!\CPU|PC|toout[5]~_Duplicate_1_q\ & ((\CPU|PC|toout[3]~_Duplicate_1_q\) # (\CPU|PC|toout[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[3]~_Duplicate_1_q\,
	datab => \CPU|PC|toout[4]~_Duplicate_1_q\,
	datac => \CPU|PC|toout[5]~_Duplicate_1_q\,
	datad => \CPU|PC|toout[2]~_Duplicate_1_q\,
	combout => \CPU|ROM|memROM~0_combout\);

-- Location: LCCOMB_X69_Y8_N8
\CPU|ROM|memROM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~1_combout\ = (!\CPU|PC|toout[6]~_Duplicate_1_q\ & (!\CPU|PC|toout\(7) & \CPU|ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[6]~_Duplicate_1_q\,
	datab => \CPU|PC|toout\(7),
	datad => \CPU|ROM|memROM~0_combout\,
	combout => \CPU|ROM|memROM~1_combout\);

-- Location: LCCOMB_X66_Y8_N18
\CPU|BR|registrador~1081\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1081_combout\ = (\SW[1]~input_o\ & (\CPU|ROM|memROM~7_combout\ & (!\CPU|ROM|memROM~8_combout\ & !\CPU|ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \CPU|ROM|memROM~7_combout\,
	datac => \CPU|ROM|memROM~8_combout\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|BR|registrador~1081_combout\);

-- Location: FF_X66_Y8_N9
\CPU|BR|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|BR|registrador~72feeder_combout\,
	ena => \CPU|BR|registrador~1081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~72_q\);

-- Location: LCCOMB_X69_Y8_N28
\CPU|ROM|memROM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~3_combout\ = (\CPU|PC|toout[2]~_Duplicate_1_q\ & (\CPU|PC|toout[3]~_Duplicate_1_q\ & \CPU|ROM|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[2]~_Duplicate_1_q\,
	datac => \CPU|PC|toout[3]~_Duplicate_1_q\,
	datad => \CPU|ROM|memROM~2_combout\,
	combout => \CPU|ROM|memROM~3_combout\);

-- Location: LCCOMB_X65_Y8_N22
\CPU|BR|registrador~1077\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1077_combout\ = (\SW[1]~input_o\ & (!\CPU|ROM|memROM~1_combout\ & (!\CPU|ROM|memROM~8_combout\ & !\CPU|ROM|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \CPU|ROM|memROM~1_combout\,
	datac => \CPU|ROM|memROM~8_combout\,
	datad => \CPU|ROM|memROM~7_combout\,
	combout => \CPU|BR|registrador~1077_combout\);

-- Location: FF_X68_Y8_N1
\CPU|BR|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~17_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~40_q\);

-- Location: LCCOMB_X68_Y8_N10
\CPU|BR|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|Equal1~1_combout\ = (\CPU|PC|toout\(7)) # ((\CPU|PC|toout[6]~_Duplicate_1_q\) # ((!\CPU|ROM|memROM~0_combout\ & !\CPU|ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(7),
	datab => \CPU|PC|toout[6]~_Duplicate_1_q\,
	datac => \CPU|ROM|memROM~0_combout\,
	datad => \CPU|ROM|memROM~5_combout\,
	combout => \CPU|BR|Equal1~1_combout\);

-- Location: LCCOMB_X68_Y8_N0
\CPU|BR|saidaS[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaS[2]~45_combout\ = (\CPU|BR|Equal1~1_combout\ & ((\CPU|ROM|memROM~3_combout\ & (\CPU|BR|registrador~72_q\)) # (!\CPU|ROM|memROM~3_combout\ & ((\CPU|BR|registrador~40_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~72_q\,
	datab => \CPU|ROM|memROM~3_combout\,
	datac => \CPU|BR|registrador~40_q\,
	datad => \CPU|BR|Equal1~1_combout\,
	combout => \CPU|BR|saidaS[2]~45_combout\);

-- Location: LCCOMB_X66_Y8_N16
\CPU|BR|registrador~1082\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1082_combout\ = (\SW[1]~input_o\ & (\CPU|ROM|memROM~7_combout\ & (!\CPU|ROM|memROM~8_combout\ & \CPU|ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \CPU|ROM|memROM~7_combout\,
	datac => \CPU|ROM|memROM~8_combout\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|BR|registrador~1082_combout\);

-- Location: FF_X67_Y8_N3
\CPU|BR|registrador~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~17_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~328_q\);

-- Location: LCCOMB_X65_Y8_N24
\CPU|BR|registrador~1076\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1076_combout\ = (\SW[1]~input_o\ & (\CPU|ROM|memROM~1_combout\ & (!\CPU|ROM|memROM~8_combout\ & !\CPU|ROM|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \CPU|ROM|memROM~1_combout\,
	datac => \CPU|ROM|memROM~8_combout\,
	datad => \CPU|ROM|memROM~7_combout\,
	combout => \CPU|BR|registrador~1076_combout\);

-- Location: FF_X68_Y8_N15
\CPU|BR|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~17_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~296_q\);

-- Location: LCCOMB_X68_Y8_N14
\CPU|BR|saidaS[2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaS[2]~49_combout\ = (\CPU|ROM|memROM~3_combout\ & ((\CPU|BR|registrador~328_q\) # ((!\CPU|ROM|memROM~1_combout\)))) # (!\CPU|ROM|memROM~3_combout\ & (((\CPU|BR|registrador~296_q\ & \CPU|ROM|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~328_q\,
	datab => \CPU|ROM|memROM~3_combout\,
	datac => \CPU|BR|registrador~296_q\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|BR|saidaS[2]~49_combout\);

-- Location: LCCOMB_X68_Y8_N6
\CPU|BR|saidaS[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaS[2]~50_combout\ = (\CPU|BR|saidaS[2]~45_combout\ & ((\CPU|ROM|memROM~6_combout\) # ((\CPU|BR|saidaS[2]~49_combout\) # (\CPU|ROM|memROM~1_combout\)))) # (!\CPU|BR|saidaS[2]~45_combout\ & (\CPU|ROM|memROM~1_combout\ & 
-- ((\CPU|ROM|memROM~6_combout\) # (\CPU|BR|saidaS[2]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~6_combout\,
	datab => \CPU|BR|saidaS[2]~45_combout\,
	datac => \CPU|BR|saidaS[2]~49_combout\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|BR|saidaS[2]~50_combout\);

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

-- Location: LCCOMB_X69_Y8_N30
\CPU|ROM|memROM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~4_combout\ = (\CPU|PC|toout[2]~_Duplicate_1_q\ & (!\CPU|PC|toout[3]~_Duplicate_1_q\ & \CPU|ROM|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[2]~_Duplicate_1_q\,
	datab => \CPU|PC|toout[3]~_Duplicate_1_q\,
	datad => \CPU|ROM|memROM~2_combout\,
	combout => \CPU|ROM|memROM~4_combout\);

-- Location: LCCOMB_X68_Y8_N8
\CPU|BR|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|Equal1~0_combout\ = (!\CPU|ROM|memROM~4_combout\ & (!\CPU|ROM|memROM~3_combout\ & (!\CPU|ROM|memROM~1_combout\ & !\CPU|ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~4_combout\,
	datab => \CPU|ROM|memROM~3_combout\,
	datac => \CPU|ROM|memROM~1_combout\,
	datad => \CPU|ROM|memROM~6_combout\,
	combout => \CPU|BR|Equal1~0_combout\);

-- Location: LCCOMB_X68_Y8_N30
\CPU|ULA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~14_combout\ = (\CPU|ROM|memROM~1_combout\ & ((!\CPU|ROM|memROM~3_combout\) # (!\CPU|ROM|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~4_combout\,
	datab => \CPU|ROM|memROM~1_combout\,
	datad => \CPU|ROM|memROM~3_combout\,
	combout => \CPU|ULA|Add0~14_combout\);

-- Location: LCCOMB_X66_Y8_N4
\CPU|BR|registrador~1080\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1080_combout\ = (\SW[1]~input_o\ & (\CPU|ROM|memROM~7_combout\ & (\CPU|ROM|memROM~8_combout\ & !\CPU|ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \CPU|ROM|memROM~7_combout\,
	datac => \CPU|ROM|memROM~8_combout\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|BR|registrador~1080_combout\);

-- Location: FF_X70_Y8_N5
\CPU|BR|registrador~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~17_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~200_q\);

-- Location: LCCOMB_X66_Y8_N10
\CPU|BR|registrador~1079\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1079_combout\ = (\SW[1]~input_o\ & (!\CPU|ROM|memROM~7_combout\ & (\CPU|ROM|memROM~8_combout\ & !\CPU|ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \CPU|ROM|memROM~7_combout\,
	datac => \CPU|ROM|memROM~8_combout\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|BR|registrador~1079_combout\);

-- Location: FF_X69_Y8_N11
\CPU|BR|registrador~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~17_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~168_q\);

-- Location: LCCOMB_X69_Y8_N10
\CPU|BR|registrador~1067\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1067_combout\ = (\CPU|ROM|memROM~6_combout\ & (((\CPU|ROM|memROM~3_combout\)))) # (!\CPU|ROM|memROM~6_combout\ & ((\CPU|ROM|memROM~3_combout\ & ((\CPU|BR|registrador~168_q\))) # (!\CPU|ROM|memROM~3_combout\ & 
-- (\CPU|BR|registrador~40_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~6_combout\,
	datab => \CPU|BR|registrador~40_q\,
	datac => \CPU|BR|registrador~168_q\,
	datad => \CPU|ROM|memROM~3_combout\,
	combout => \CPU|BR|registrador~1067_combout\);

-- Location: LCCOMB_X70_Y8_N4
\CPU|BR|registrador~1068\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1068_combout\ = (\CPU|ROM|memROM~6_combout\ & ((\CPU|BR|registrador~1067_combout\ & ((\CPU|BR|registrador~200_q\))) # (!\CPU|BR|registrador~1067_combout\ & (\CPU|BR|registrador~72_q\)))) # (!\CPU|ROM|memROM~6_combout\ & 
-- (((\CPU|BR|registrador~1067_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~6_combout\,
	datab => \CPU|BR|registrador~72_q\,
	datac => \CPU|BR|registrador~200_q\,
	datad => \CPU|BR|registrador~1067_combout\,
	combout => \CPU|BR|registrador~1068_combout\);

-- Location: LCCOMB_X66_Y8_N26
\CPU|BR|registrador~1083\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1083_combout\ = (\SW[1]~input_o\ & (\CPU|ROM|memROM~7_combout\ & (\CPU|ROM|memROM~8_combout\ & \CPU|ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \CPU|ROM|memROM~7_combout\,
	datac => \CPU|ROM|memROM~8_combout\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|BR|registrador~1083_combout\);

-- Location: FF_X67_Y8_N1
\CPU|BR|registrador~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~17_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~456_q\);

-- Location: LCCOMB_X65_Y8_N28
\CPU|BR|registrador~1078\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1078_combout\ = (\SW[1]~input_o\ & (\CPU|ROM|memROM~1_combout\ & (\CPU|ROM|memROM~8_combout\ & !\CPU|ROM|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \CPU|ROM|memROM~1_combout\,
	datac => \CPU|ROM|memROM~8_combout\,
	datad => \CPU|ROM|memROM~7_combout\,
	combout => \CPU|BR|registrador~1078_combout\);

-- Location: FF_X66_Y8_N15
\CPU|BR|registrador~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~17_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~424_q\);

-- Location: LCCOMB_X66_Y8_N14
\CPU|BR|registrador~1069\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1069_combout\ = (\CPU|ROM|memROM~6_combout\ & (((\CPU|ROM|memROM~3_combout\)))) # (!\CPU|ROM|memROM~6_combout\ & ((\CPU|ROM|memROM~3_combout\ & ((\CPU|BR|registrador~424_q\))) # (!\CPU|ROM|memROM~3_combout\ & 
-- (\CPU|BR|registrador~296_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~6_combout\,
	datab => \CPU|BR|registrador~296_q\,
	datac => \CPU|BR|registrador~424_q\,
	datad => \CPU|ROM|memROM~3_combout\,
	combout => \CPU|BR|registrador~1069_combout\);

-- Location: LCCOMB_X67_Y8_N2
\CPU|BR|registrador~1070\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1070_combout\ = (\CPU|ROM|memROM~6_combout\ & ((\CPU|BR|registrador~1069_combout\ & (\CPU|BR|registrador~456_q\)) # (!\CPU|BR|registrador~1069_combout\ & ((\CPU|BR|registrador~328_q\))))) # (!\CPU|ROM|memROM~6_combout\ & 
-- (((\CPU|BR|registrador~1069_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~6_combout\,
	datab => \CPU|BR|registrador~456_q\,
	datac => \CPU|BR|registrador~328_q\,
	datad => \CPU|BR|registrador~1069_combout\,
	combout => \CPU|BR|registrador~1070_combout\);

-- Location: LCCOMB_X67_Y8_N6
\CPU|ULA|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~15_combout\ = (\CPU|ULA|Add0~14_combout\ & ((\CPU|ROM|memROM~4_combout\) # ((\CPU|BR|registrador~1070_combout\)))) # (!\CPU|ULA|Add0~14_combout\ & (!\CPU|ROM|memROM~4_combout\ & (\CPU|BR|registrador~1068_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~14_combout\,
	datab => \CPU|ROM|memROM~4_combout\,
	datac => \CPU|BR|registrador~1068_combout\,
	datad => \CPU|BR|registrador~1070_combout\,
	combout => \CPU|ULA|Add0~15_combout\);

-- Location: LCCOMB_X67_Y8_N4
\CPU|ULA|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~16_combout\ = \SW[0]~input_o\ $ (((!\CPU|BR|Equal1~0_combout\ & \CPU|ULA|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \CPU|BR|Equal1~0_combout\,
	datad => \CPU|ULA|Add0~15_combout\,
	combout => \CPU|ULA|Add0~16_combout\);

-- Location: FF_X67_Y8_N23
\CPU|BR|registrador~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~12_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~327_q\);

-- Location: LCCOMB_X68_Y8_N20
\CPU|BR|saidaS[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaS[1]~18_combout\ = (!\CPU|PC|toout\(7) & (!\CPU|PC|toout[6]~_Duplicate_1_q\ & (!\CPU|PC|toout[5]~_Duplicate_1_q\ & \CPU|BR|registrador~327_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(7),
	datab => \CPU|PC|toout[6]~_Duplicate_1_q\,
	datac => \CPU|PC|toout[5]~_Duplicate_1_q\,
	datad => \CPU|BR|registrador~327_q\,
	combout => \CPU|BR|saidaS[1]~18_combout\);

-- Location: LCCOMB_X69_Y8_N12
\CPU|BR|saidaS[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaS[1]~47_combout\ = (\CPU|PC|toout[3]~_Duplicate_1_q\ & (!\CPU|PC|toout[4]~_Duplicate_1_q\ & (\CPU|PC|toout[2]~_Duplicate_1_q\ & \CPU|BR|saidaS[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[3]~_Duplicate_1_q\,
	datab => \CPU|PC|toout[4]~_Duplicate_1_q\,
	datac => \CPU|PC|toout[2]~_Duplicate_1_q\,
	datad => \CPU|BR|saidaS[1]~18_combout\,
	combout => \CPU|BR|saidaS[1]~47_combout\);

-- Location: FF_X67_Y8_N5
\CPU|BR|registrador~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~9_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~454_q\);

-- Location: LCCOMB_X67_Y8_N30
\CPU|ULA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~4_combout\ = (\CPU|ROM|memROM~3_combout\ & ((\CPU|BR|registrador~454_q\) # ((\CPU|ROM|memROM~4_combout\)))) # (!\CPU|ROM|memROM~3_combout\ & (((\CPU|BR|registrador~326_q\ & !\CPU|ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~3_combout\,
	datab => \CPU|BR|registrador~454_q\,
	datac => \CPU|BR|registrador~326_q\,
	datad => \CPU|ROM|memROM~4_combout\,
	combout => \CPU|ULA|Add0~4_combout\);

-- Location: LCCOMB_X67_Y8_N26
\CPU|ULA|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_combout\ = (\CPU|ROM|memROM~6_combout\ & (\CPU|ROM|memROM~4_combout\ $ (((\CPU|ROM|memROM~1_combout\ & !\CPU|ULA|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~6_combout\,
	datab => \CPU|ROM|memROM~1_combout\,
	datac => \CPU|ULA|Add0~4_combout\,
	datad => \CPU|ROM|memROM~4_combout\,
	combout => \CPU|ULA|Add0~5_combout\);

-- Location: FF_X66_Y8_N31
\CPU|BR|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~9_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~70_q\);

-- Location: FF_X70_Y8_N9
\CPU|BR|registrador~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~9_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~198_q\);

-- Location: LCCOMB_X70_Y8_N8
\CPU|ULA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~2_combout\ = (!\CPU|ROM|memROM~1_combout\ & ((\CPU|ROM|memROM~3_combout\ & ((!\CPU|BR|registrador~198_q\))) # (!\CPU|ROM|memROM~3_combout\ & (!\CPU|BR|registrador~70_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~70_q\,
	datab => \CPU|ROM|memROM~3_combout\,
	datac => \CPU|BR|registrador~198_q\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|ULA|Add0~2_combout\);

-- Location: FF_X68_Y8_N31
\CPU|BR|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~9_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~294_q\);

-- Location: FF_X68_Y8_N25
\CPU|BR|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~9_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~38_q\);

-- Location: LCCOMB_X66_Y8_N24
\CPU|BR|registrador~422feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~422feeder_combout\ = \CPU|ULA|Add0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA|Add0~9_combout\,
	combout => \CPU|BR|registrador~422feeder_combout\);

-- Location: FF_X66_Y8_N25
\CPU|BR|registrador~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|BR|registrador~422feeder_combout\,
	ena => \CPU|BR|registrador~1078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~422_q\);

-- Location: FF_X69_Y8_N27
\CPU|BR|registrador~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~9_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~166_q\);

-- Location: LCCOMB_X69_Y8_N26
\CPU|ULA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~0_combout\ = (\CPU|ROM|memROM~1_combout\ & ((\CPU|BR|registrador~422_q\) # ((!\CPU|ROM|memROM~3_combout\)))) # (!\CPU|ROM|memROM~1_combout\ & (((\CPU|BR|registrador~166_q\ & \CPU|ROM|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~1_combout\,
	datab => \CPU|BR|registrador~422_q\,
	datac => \CPU|BR|registrador~166_q\,
	datad => \CPU|ROM|memROM~3_combout\,
	combout => \CPU|ULA|Add0~0_combout\);

-- Location: LCCOMB_X68_Y8_N24
\CPU|ULA|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_combout\ = (\CPU|ROM|memROM~3_combout\ & (((!\CPU|ULA|Add0~0_combout\)))) # (!\CPU|ROM|memROM~3_combout\ & ((\CPU|ULA|Add0~0_combout\ & (!\CPU|BR|registrador~294_q\)) # (!\CPU|ULA|Add0~0_combout\ & ((!\CPU|BR|registrador~38_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~294_q\,
	datab => \CPU|ROM|memROM~3_combout\,
	datac => \CPU|BR|registrador~38_q\,
	datad => \CPU|ULA|Add0~0_combout\,
	combout => \CPU|ULA|Add0~1_combout\);

-- Location: LCCOMB_X67_Y8_N20
\CPU|ULA|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~3_combout\ = (\CPU|ROM|memROM~6_combout\ & (((\CPU|ULA|Add0~2_combout\)))) # (!\CPU|ROM|memROM~6_combout\ & ((\CPU|ROM|memROM~4_combout\) # ((\CPU|ULA|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~6_combout\,
	datab => \CPU|ROM|memROM~4_combout\,
	datac => \CPU|ULA|Add0~2_combout\,
	datad => \CPU|ULA|Add0~1_combout\,
	combout => \CPU|ULA|Add0~3_combout\);

-- Location: LCCOMB_X67_Y8_N24
\CPU|ULA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~6_combout\ = \SW[0]~input_o\ $ (((!\CPU|BR|Equal1~0_combout\ & (!\CPU|ULA|Add0~5_combout\ & !\CPU|ULA|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \CPU|BR|Equal1~0_combout\,
	datac => \CPU|ULA|Add0~5_combout\,
	datad => \CPU|ULA|Add0~3_combout\,
	combout => \CPU|ULA|Add0~6_combout\);

-- Location: LCCOMB_X67_Y8_N10
\CPU|ULA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~8_cout\ = CARRY(\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => VCC,
	cout => \CPU|ULA|Add0~8_cout\);

-- Location: LCCOMB_X67_Y8_N12
\CPU|ULA|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_combout\ = (\CPU|BR|saidaS[0]~46_combout\ & ((\CPU|ULA|Add0~6_combout\ & (\CPU|ULA|Add0~8_cout\ & VCC)) # (!\CPU|ULA|Add0~6_combout\ & (!\CPU|ULA|Add0~8_cout\)))) # (!\CPU|BR|saidaS[0]~46_combout\ & ((\CPU|ULA|Add0~6_combout\ & 
-- (!\CPU|ULA|Add0~8_cout\)) # (!\CPU|ULA|Add0~6_combout\ & ((\CPU|ULA|Add0~8_cout\) # (GND)))))
-- \CPU|ULA|Add0~10\ = CARRY((\CPU|BR|saidaS[0]~46_combout\ & (!\CPU|ULA|Add0~6_combout\ & !\CPU|ULA|Add0~8_cout\)) # (!\CPU|BR|saidaS[0]~46_combout\ & ((!\CPU|ULA|Add0~8_cout\) # (!\CPU|ULA|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaS[0]~46_combout\,
	datab => \CPU|ULA|Add0~6_combout\,
	datad => VCC,
	cin => \CPU|ULA|Add0~8_cout\,
	combout => \CPU|ULA|Add0~9_combout\,
	cout => \CPU|ULA|Add0~10\);

-- Location: FF_X67_Y8_N31
\CPU|BR|registrador~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~9_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~326_q\);

-- Location: LCCOMB_X68_Y8_N2
\CPU|BR|saidaS[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaS[0]~3_combout\ = (!\CPU|PC|toout\(7) & (!\CPU|PC|toout[6]~_Duplicate_1_q\ & (!\CPU|PC|toout[5]~_Duplicate_1_q\ & \CPU|BR|registrador~326_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(7),
	datab => \CPU|PC|toout[6]~_Duplicate_1_q\,
	datac => \CPU|PC|toout[5]~_Duplicate_1_q\,
	datad => \CPU|BR|registrador~326_q\,
	combout => \CPU|BR|saidaS[0]~3_combout\);

-- Location: LCCOMB_X68_Y8_N4
\CPU|BR|saidaS[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaS[0]~46_combout\ = (!\CPU|PC|toout[4]~_Duplicate_1_q\ & (\CPU|PC|toout[3]~_Duplicate_1_q\ & (\CPU|PC|toout[2]~_Duplicate_1_q\ & \CPU|BR|saidaS[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[4]~_Duplicate_1_q\,
	datab => \CPU|PC|toout[3]~_Duplicate_1_q\,
	datac => \CPU|PC|toout[2]~_Duplicate_1_q\,
	datad => \CPU|BR|saidaS[0]~3_combout\,
	combout => \CPU|BR|saidaS[0]~46_combout\);

-- Location: LCCOMB_X67_Y8_N14
\CPU|ULA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~12_combout\ = ((\CPU|ULA|Add0~11_combout\ $ (\CPU|BR|saidaS[1]~47_combout\ $ (!\CPU|ULA|Add0~10\)))) # (GND)
-- \CPU|ULA|Add0~13\ = CARRY((\CPU|ULA|Add0~11_combout\ & ((\CPU|BR|saidaS[1]~47_combout\) # (!\CPU|ULA|Add0~10\))) # (!\CPU|ULA|Add0~11_combout\ & (\CPU|BR|saidaS[1]~47_combout\ & !\CPU|ULA|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~11_combout\,
	datab => \CPU|BR|saidaS[1]~47_combout\,
	datad => VCC,
	cin => \CPU|ULA|Add0~10\,
	combout => \CPU|ULA|Add0~12_combout\,
	cout => \CPU|ULA|Add0~13\);

-- Location: LCCOMB_X66_Y8_N12
\CPU|BR|registrador~423feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~423feeder_combout\ = \CPU|ULA|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA|Add0~12_combout\,
	combout => \CPU|BR|registrador~423feeder_combout\);

-- Location: FF_X66_Y8_N13
\CPU|BR|registrador~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|BR|registrador~423feeder_combout\,
	ena => \CPU|BR|registrador~1078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~423_q\);

-- Location: FF_X67_Y8_N9
\CPU|BR|registrador~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~12_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~455_q\);

-- Location: LCCOMB_X70_Y8_N6
\CPU|BR|registrador~199feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~199feeder_combout\ = \CPU|ULA|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA|Add0~12_combout\,
	combout => \CPU|BR|registrador~199feeder_combout\);

-- Location: FF_X70_Y8_N7
\CPU|BR|registrador~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|BR|registrador~199feeder_combout\,
	ena => \CPU|BR|registrador~1080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~199_q\);

-- Location: FF_X69_Y8_N5
\CPU|BR|registrador~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~12_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~167_q\);

-- Location: LCCOMB_X69_Y8_N4
\CPU|BR|registrador~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1062_combout\ = (\CPU|ROM|memROM~1_combout\ & (((\CPU|ROM|memROM~6_combout\)))) # (!\CPU|ROM|memROM~1_combout\ & ((\CPU|ROM|memROM~6_combout\ & (\CPU|BR|registrador~199_q\)) # (!\CPU|ROM|memROM~6_combout\ & 
-- ((\CPU|BR|registrador~167_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~1_combout\,
	datab => \CPU|BR|registrador~199_q\,
	datac => \CPU|BR|registrador~167_q\,
	datad => \CPU|ROM|memROM~6_combout\,
	combout => \CPU|BR|registrador~1062_combout\);

-- Location: LCCOMB_X67_Y8_N8
\CPU|BR|registrador~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1063_combout\ = (\CPU|ROM|memROM~1_combout\ & ((\CPU|BR|registrador~1062_combout\ & ((\CPU|BR|registrador~455_q\))) # (!\CPU|BR|registrador~1062_combout\ & (\CPU|BR|registrador~423_q\)))) # (!\CPU|ROM|memROM~1_combout\ & 
-- (((\CPU|BR|registrador~1062_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~1_combout\,
	datab => \CPU|BR|registrador~423_q\,
	datac => \CPU|BR|registrador~455_q\,
	datad => \CPU|BR|registrador~1062_combout\,
	combout => \CPU|BR|registrador~1063_combout\);

-- Location: FF_X68_Y8_N29
\CPU|BR|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~12_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~295_q\);

-- Location: LCCOMB_X66_Y8_N2
\CPU|BR|registrador~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~71feeder_combout\ = \CPU|ULA|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA|Add0~12_combout\,
	combout => \CPU|BR|registrador~71feeder_combout\);

-- Location: FF_X66_Y8_N3
\CPU|BR|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|BR|registrador~71feeder_combout\,
	ena => \CPU|BR|registrador~1081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~71_q\);

-- Location: FF_X68_Y8_N19
\CPU|BR|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~12_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~39_q\);

-- Location: LCCOMB_X68_Y8_N18
\CPU|BR|registrador~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1064_combout\ = (\CPU|ROM|memROM~1_combout\ & (((\CPU|ROM|memROM~6_combout\)))) # (!\CPU|ROM|memROM~1_combout\ & ((\CPU|ROM|memROM~6_combout\ & (\CPU|BR|registrador~71_q\)) # (!\CPU|ROM|memROM~6_combout\ & 
-- ((\CPU|BR|registrador~39_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~71_q\,
	datab => \CPU|ROM|memROM~1_combout\,
	datac => \CPU|BR|registrador~39_q\,
	datad => \CPU|ROM|memROM~6_combout\,
	combout => \CPU|BR|registrador~1064_combout\);

-- Location: LCCOMB_X68_Y8_N28
\CPU|BR|registrador~1065\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1065_combout\ = (\CPU|ROM|memROM~1_combout\ & ((\CPU|BR|registrador~1064_combout\ & (\CPU|BR|registrador~327_q\)) # (!\CPU|BR|registrador~1064_combout\ & ((\CPU|BR|registrador~295_q\))))) # (!\CPU|ROM|memROM~1_combout\ & 
-- (((\CPU|BR|registrador~1064_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~327_q\,
	datab => \CPU|ROM|memROM~1_combout\,
	datac => \CPU|BR|registrador~295_q\,
	datad => \CPU|BR|registrador~1064_combout\,
	combout => \CPU|BR|registrador~1065_combout\);

-- Location: LCCOMB_X67_Y8_N28
\CPU|BR|registrador~1066\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1066_combout\ = (!\CPU|ROM|memROM~4_combout\ & ((\CPU|ROM|memROM~3_combout\ & (\CPU|BR|registrador~1063_combout\)) # (!\CPU|ROM|memROM~3_combout\ & ((\CPU|BR|registrador~1065_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~3_combout\,
	datab => \CPU|ROM|memROM~4_combout\,
	datac => \CPU|BR|registrador~1063_combout\,
	datad => \CPU|BR|registrador~1065_combout\,
	combout => \CPU|BR|registrador~1066_combout\);

-- Location: LCCOMB_X67_Y8_N22
\CPU|ULA|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~11_combout\ = \SW[0]~input_o\ $ (((!\CPU|BR|Equal1~0_combout\ & \CPU|BR|registrador~1066_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \CPU|BR|Equal1~0_combout\,
	datad => \CPU|BR|registrador~1066_combout\,
	combout => \CPU|ULA|Add0~11_combout\);

-- Location: LCCOMB_X67_Y8_N16
\CPU|ULA|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_combout\ = (\CPU|BR|saidaS[2]~50_combout\ & ((\CPU|ULA|Add0~16_combout\ & (\CPU|ULA|Add0~13\ & VCC)) # (!\CPU|ULA|Add0~16_combout\ & (!\CPU|ULA|Add0~13\)))) # (!\CPU|BR|saidaS[2]~50_combout\ & ((\CPU|ULA|Add0~16_combout\ & 
-- (!\CPU|ULA|Add0~13\)) # (!\CPU|ULA|Add0~16_combout\ & ((\CPU|ULA|Add0~13\) # (GND)))))
-- \CPU|ULA|Add0~18\ = CARRY((\CPU|BR|saidaS[2]~50_combout\ & (!\CPU|ULA|Add0~16_combout\ & !\CPU|ULA|Add0~13\)) # (!\CPU|BR|saidaS[2]~50_combout\ & ((!\CPU|ULA|Add0~13\) # (!\CPU|ULA|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaS[2]~50_combout\,
	datab => \CPU|ULA|Add0~16_combout\,
	datad => VCC,
	cin => \CPU|ULA|Add0~13\,
	combout => \CPU|ULA|Add0~17_combout\,
	cout => \CPU|ULA|Add0~18\);

-- Location: FF_X67_Y8_N19
\CPU|BR|registrador~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|ULA|Add0~20_combout\,
	ena => \CPU|BR|registrador~1082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~329_q\);

-- Location: LCCOMB_X66_Y8_N22
\CPU|BR|saidaS[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaS[3]~33_combout\ = (!\CPU|PC|toout[5]~_Duplicate_1_q\ & (!\CPU|PC|toout[6]~_Duplicate_1_q\ & (!\CPU|PC|toout\(7) & \CPU|BR|registrador~329_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout[5]~_Duplicate_1_q\,
	datab => \CPU|PC|toout[6]~_Duplicate_1_q\,
	datac => \CPU|PC|toout\(7),
	datad => \CPU|BR|registrador~329_q\,
	combout => \CPU|BR|saidaS[3]~33_combout\);

-- Location: LCCOMB_X66_Y8_N20
\CPU|BR|saidaS[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaS[3]~48_combout\ = (\CPU|BR|saidaS[3]~33_combout\ & (\CPU|PC|toout[2]~_Duplicate_1_q\ & (\CPU|PC|toout[3]~_Duplicate_1_q\ & !\CPU|PC|toout[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaS[3]~33_combout\,
	datab => \CPU|PC|toout[2]~_Duplicate_1_q\,
	datac => \CPU|PC|toout[3]~_Duplicate_1_q\,
	datad => \CPU|PC|toout[4]~_Duplicate_1_q\,
	combout => \CPU|BR|saidaS[3]~48_combout\);

-- Location: LCCOMB_X66_Y8_N6
\CPU|BR|registrador~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~73feeder_combout\ = \CPU|ULA|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA|Add0~20_combout\,
	combout => \CPU|BR|registrador~73feeder_combout\);

-- Location: FF_X66_Y8_N7
\CPU|BR|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|BR|registrador~73feeder_combout\,
	ena => \CPU|BR|registrador~1081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~73_q\);

-- Location: FF_X68_Y8_N13
\CPU|BR|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~20_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~41_q\);

-- Location: LCCOMB_X68_Y8_N12
\CPU|BR|registrador~1073\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1073_combout\ = (\CPU|ROM|memROM~1_combout\ & (((\CPU|ROM|memROM~6_combout\)))) # (!\CPU|ROM|memROM~1_combout\ & ((\CPU|ROM|memROM~6_combout\ & (\CPU|BR|registrador~73_q\)) # (!\CPU|ROM|memROM~6_combout\ & 
-- ((\CPU|BR|registrador~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~73_q\,
	datab => \CPU|ROM|memROM~1_combout\,
	datac => \CPU|BR|registrador~41_q\,
	datad => \CPU|ROM|memROM~6_combout\,
	combout => \CPU|BR|registrador~1073_combout\);

-- Location: FF_X68_Y8_N27
\CPU|BR|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~20_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~297_q\);

-- Location: LCCOMB_X68_Y8_N26
\CPU|BR|registrador~1074\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1074_combout\ = (\CPU|BR|registrador~1073_combout\ & ((\CPU|BR|registrador~329_q\) # ((!\CPU|ROM|memROM~1_combout\)))) # (!\CPU|BR|registrador~1073_combout\ & (((\CPU|BR|registrador~297_q\ & \CPU|ROM|memROM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~1073_combout\,
	datab => \CPU|BR|registrador~329_q\,
	datac => \CPU|BR|registrador~297_q\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|BR|registrador~1074_combout\);

-- Location: FF_X66_Y8_N29
\CPU|BR|registrador~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~20_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~425_q\);

-- Location: FF_X67_Y8_N17
\CPU|BR|registrador~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~20_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~457_q\);

-- Location: LCCOMB_X70_Y8_N26
\CPU|BR|registrador~201feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~201feeder_combout\ = \CPU|ULA|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA|Add0~20_combout\,
	combout => \CPU|BR|registrador~201feeder_combout\);

-- Location: FF_X70_Y8_N27
\CPU|BR|registrador~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|BR|registrador~201feeder_combout\,
	ena => \CPU|BR|registrador~1080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~201_q\);

-- Location: FF_X70_Y8_N21
\CPU|BR|registrador~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	asdata => \CPU|ULA|Add0~20_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~1079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~169_q\);

-- Location: LCCOMB_X70_Y8_N20
\CPU|BR|registrador~1071\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1071_combout\ = (\CPU|ROM|memROM~1_combout\ & (((\CPU|ROM|memROM~6_combout\)))) # (!\CPU|ROM|memROM~1_combout\ & ((\CPU|ROM|memROM~6_combout\ & (\CPU|BR|registrador~201_q\)) # (!\CPU|ROM|memROM~6_combout\ & 
-- ((\CPU|BR|registrador~169_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~1_combout\,
	datab => \CPU|BR|registrador~201_q\,
	datac => \CPU|BR|registrador~169_q\,
	datad => \CPU|ROM|memROM~6_combout\,
	combout => \CPU|BR|registrador~1071_combout\);

-- Location: LCCOMB_X68_Y8_N16
\CPU|BR|registrador~1072\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1072_combout\ = (\CPU|ROM|memROM~1_combout\ & ((\CPU|BR|registrador~1071_combout\ & ((\CPU|BR|registrador~457_q\))) # (!\CPU|BR|registrador~1071_combout\ & (\CPU|BR|registrador~425_q\)))) # (!\CPU|ROM|memROM~1_combout\ & 
-- (((\CPU|BR|registrador~1071_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~425_q\,
	datab => \CPU|ROM|memROM~1_combout\,
	datac => \CPU|BR|registrador~457_q\,
	datad => \CPU|BR|registrador~1071_combout\,
	combout => \CPU|BR|registrador~1072_combout\);

-- Location: LCCOMB_X68_Y8_N22
\CPU|BR|registrador~1075\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~1075_combout\ = (!\CPU|ROM|memROM~4_combout\ & ((\CPU|ROM|memROM~3_combout\ & ((\CPU|BR|registrador~1072_combout\))) # (!\CPU|ROM|memROM~3_combout\ & (\CPU|BR|registrador~1074_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~4_combout\,
	datab => \CPU|ROM|memROM~3_combout\,
	datac => \CPU|BR|registrador~1074_combout\,
	datad => \CPU|BR|registrador~1072_combout\,
	combout => \CPU|BR|registrador~1075_combout\);

-- Location: LCCOMB_X67_Y8_N0
\CPU|ULA|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~19_combout\ = \SW[0]~input_o\ $ (((!\CPU|BR|Equal1~0_combout\ & \CPU|BR|registrador~1075_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \CPU|BR|Equal1~0_combout\,
	datad => \CPU|BR|registrador~1075_combout\,
	combout => \CPU|ULA|Add0~19_combout\);

-- Location: LCCOMB_X67_Y8_N18
\CPU|ULA|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~20_combout\ = \CPU|BR|saidaS[3]~48_combout\ $ (\CPU|ULA|Add0~18\ $ (!\CPU|ULA|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|BR|saidaS[3]~48_combout\,
	datad => \CPU|ULA|Add0~19_combout\,
	cin => \CPU|ULA|Add0~18\,
	combout => \CPU|ULA|Add0~20_combout\);

-- Location: LCCOMB_X89_Y2_N20
\DISPLAY6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[0]~0_combout\ = (\CPU|ULA|Add0~17_combout\ & ((\CPU|ULA|Add0~9_combout\ & (!\CPU|ULA|Add0~12_combout\ & \CPU|ULA|Add0~20_combout\)) # (!\CPU|ULA|Add0~9_combout\ & (\CPU|ULA|Add0~12_combout\ $ (!\CPU|ULA|Add0~20_combout\))))) # 
-- (!\CPU|ULA|Add0~17_combout\ & (\CPU|ULA|Add0~9_combout\ & (\CPU|ULA|Add0~12_combout\ $ (!\CPU|ULA|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~17_combout\,
	datab => \CPU|ULA|Add0~9_combout\,
	datac => \CPU|ULA|Add0~12_combout\,
	datad => \CPU|ULA|Add0~20_combout\,
	combout => \DISPLAY6|rascSaida7seg[0]~0_combout\);

-- Location: DDIOOUTCELL_X89_Y0_N25
\DISPLAY6|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY6|rascSaida7seg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY6|saida7seg\(0));

-- Location: LCCOMB_X66_Y1_N28
\DISPLAY6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[1]~1_combout\ = (\CPU|ULA|Add0~20_combout\ & (\CPU|ULA|Add0~17_combout\ $ (((\CPU|ULA|Add0~9_combout\ & \CPU|ULA|Add0~12_combout\))))) # (!\CPU|ULA|Add0~20_combout\ & (\CPU|ULA|Add0~17_combout\ & (\CPU|ULA|Add0~9_combout\ $ 
-- (\CPU|ULA|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~20_combout\,
	datab => \CPU|ULA|Add0~9_combout\,
	datac => \CPU|ULA|Add0~12_combout\,
	datad => \CPU|ULA|Add0~17_combout\,
	combout => \DISPLAY6|rascSaida7seg[1]~1_combout\);

-- Location: DDIOOUTCELL_X65_Y0_N4
\DISPLAY6|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY6|rascSaida7seg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY6|saida7seg\(1));

-- Location: LCCOMB_X66_Y1_N30
\DISPLAY6|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[2]~2_combout\ = (\CPU|ULA|Add0~20_combout\ & (((\CPU|ULA|Add0~17_combout\)))) # (!\CPU|ULA|Add0~20_combout\ & (!\CPU|ULA|Add0~9_combout\ & (\CPU|ULA|Add0~12_combout\ & !\CPU|ULA|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~20_combout\,
	datab => \CPU|ULA|Add0~9_combout\,
	datac => \CPU|ULA|Add0~12_combout\,
	datad => \CPU|ULA|Add0~17_combout\,
	combout => \DISPLAY6|rascSaida7seg[2]~2_combout\);

-- Location: DDIOOUTCELL_X65_Y0_N11
\DISPLAY6|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY6|rascSaida7seg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY6|saida7seg\(2));

-- Location: LCCOMB_X89_Y2_N26
\DISPLAY6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[3]~3_combout\ = (\CPU|ULA|Add0~9_combout\ & (\CPU|ULA|Add0~17_combout\ $ (((!\CPU|ULA|Add0~12_combout\ & !\CPU|ULA|Add0~20_combout\))))) # (!\CPU|ULA|Add0~9_combout\ & ((\CPU|ULA|Add0~12_combout\ & ((\CPU|ULA|Add0~20_combout\))) # 
-- (!\CPU|ULA|Add0~12_combout\ & (\CPU|ULA|Add0~17_combout\ & !\CPU|ULA|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~17_combout\,
	datab => \CPU|ULA|Add0~9_combout\,
	datac => \CPU|ULA|Add0~12_combout\,
	datad => \CPU|ULA|Add0~20_combout\,
	combout => \DISPLAY6|rascSaida7seg[3]~3_combout\);

-- Location: DDIOOUTCELL_X89_Y0_N18
\DISPLAY6|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY6|rascSaida7seg[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY6|saida7seg\(3));

-- Location: LCCOMB_X67_Y1_N20
\DISPLAY6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[4]~4_combout\ = (\CPU|ULA|Add0~9_combout\ & (((!\CPU|ULA|Add0~20_combout\)) # (!\CPU|ULA|Add0~12_combout\))) # (!\CPU|ULA|Add0~9_combout\ & (\CPU|ULA|Add0~17_combout\ & (\CPU|ULA|Add0~12_combout\ $ (!\CPU|ULA|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~12_combout\,
	datab => \CPU|ULA|Add0~9_combout\,
	datac => \CPU|ULA|Add0~17_combout\,
	datad => \CPU|ULA|Add0~20_combout\,
	combout => \DISPLAY6|rascSaida7seg[4]~4_combout\);

-- Location: DDIOOUTCELL_X67_Y0_N18
\DISPLAY6|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY6|rascSaida7seg[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY6|saida7seg\(4));

-- Location: LCCOMB_X67_Y1_N18
\DISPLAY6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[5]~5_combout\ = (\CPU|ULA|Add0~12_combout\ & (\CPU|ULA|Add0~20_combout\ $ (((\CPU|ULA|Add0~9_combout\) # (!\CPU|ULA|Add0~17_combout\))))) # (!\CPU|ULA|Add0~12_combout\ & (\CPU|ULA|Add0~9_combout\ & (\CPU|ULA|Add0~17_combout\ $ 
-- (!\CPU|ULA|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~12_combout\,
	datab => \CPU|ULA|Add0~9_combout\,
	datac => \CPU|ULA|Add0~17_combout\,
	datad => \CPU|ULA|Add0~20_combout\,
	combout => \DISPLAY6|rascSaida7seg[5]~5_combout\);

-- Location: DDIOOUTCELL_X67_Y0_N25
\DISPLAY6|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY6|rascSaida7seg[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY6|saida7seg\(5));

-- Location: LCCOMB_X73_Y2_N28
\DISPLAY6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[6]~6_combout\ = (\CPU|ULA|Add0~12_combout\ & (\CPU|ULA|Add0~9_combout\ & (!\CPU|ULA|Add0~20_combout\ & \CPU|ULA|Add0~17_combout\))) # (!\CPU|ULA|Add0~12_combout\ & ((\CPU|ULA|Add0~20_combout\ $ (!\CPU|ULA|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~12_combout\,
	datab => \CPU|ULA|Add0~9_combout\,
	datac => \CPU|ULA|Add0~20_combout\,
	datad => \CPU|ULA|Add0~17_combout\,
	combout => \DISPLAY6|rascSaida7seg[6]~6_combout\);

-- Location: DDIOOUTCELL_X74_Y0_N25
\DISPLAY6|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY6|rascSaida7seg[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY6|saida7seg\(6));

-- Location: DDIOOUTCELL_X83_Y73_N4
\CPU|PC|toout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|PC|ALT_INV_toout[2]~_Duplicate_1_q\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(2));

-- Location: DDIOOUTCELL_X85_Y73_N25
\CPU|PC|toout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|PC|toout[3]~5_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(3));

-- Location: DDIOOUTCELL_X72_Y73_N18
\CPU|PC|toout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|PC|toout[4]~7_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(4));

-- Location: DDIOOUTCELL_X74_Y73_N18
\CPU|PC|toout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|PC|toout[5]~9_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(5));

-- Location: DDIOOUTCELL_X72_Y73_N25
\CPU|PC|toout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU|edgeDetectorClock|saida~clkctrl_outclk\,
	d => \CPU|PC|toout[6]~11_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(6));

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

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

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

ww_outCPU(0) <= \outCPU[0]~output_o\;

ww_outCPU(1) <= \outCPU[1]~output_o\;

ww_outCPU(2) <= \outCPU[2]~output_o\;

ww_outCPU(3) <= \outCPU[3]~output_o\;
END structure;


