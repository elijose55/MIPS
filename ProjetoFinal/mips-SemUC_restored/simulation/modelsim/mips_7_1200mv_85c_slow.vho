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

-- DATE "11/29/2019 14:20:43"

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
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	mips IS
    PORT (
	clk : IN std_logic;
	saidaUla : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaPC : BUFFER std_logic_vector(31 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- saidaUla[0]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[1]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[2]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[4]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[7]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[8]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[10]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[12]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[13]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[14]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[15]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[16]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[17]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[18]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[19]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[20]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[21]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[22]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[23]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[24]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[25]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[26]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[27]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[28]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[29]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[30]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaUla[31]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[0]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[1]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[5]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[8]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[9]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[10]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[11]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[13]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[14]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[16]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[17]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[18]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[19]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[20]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[21]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[22]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[23]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[24]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[25]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[26]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[27]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[28]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[29]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[30]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaPC[31]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_saidaUla : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaPC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \saidaUla[0]~output_o\ : std_logic;
SIGNAL \saidaUla[1]~output_o\ : std_logic;
SIGNAL \saidaUla[2]~output_o\ : std_logic;
SIGNAL \saidaUla[3]~output_o\ : std_logic;
SIGNAL \saidaUla[4]~output_o\ : std_logic;
SIGNAL \saidaUla[5]~output_o\ : std_logic;
SIGNAL \saidaUla[6]~output_o\ : std_logic;
SIGNAL \saidaUla[7]~output_o\ : std_logic;
SIGNAL \saidaUla[8]~output_o\ : std_logic;
SIGNAL \saidaUla[9]~output_o\ : std_logic;
SIGNAL \saidaUla[10]~output_o\ : std_logic;
SIGNAL \saidaUla[11]~output_o\ : std_logic;
SIGNAL \saidaUla[12]~output_o\ : std_logic;
SIGNAL \saidaUla[13]~output_o\ : std_logic;
SIGNAL \saidaUla[14]~output_o\ : std_logic;
SIGNAL \saidaUla[15]~output_o\ : std_logic;
SIGNAL \saidaUla[16]~output_o\ : std_logic;
SIGNAL \saidaUla[17]~output_o\ : std_logic;
SIGNAL \saidaUla[18]~output_o\ : std_logic;
SIGNAL \saidaUla[19]~output_o\ : std_logic;
SIGNAL \saidaUla[20]~output_o\ : std_logic;
SIGNAL \saidaUla[21]~output_o\ : std_logic;
SIGNAL \saidaUla[22]~output_o\ : std_logic;
SIGNAL \saidaUla[23]~output_o\ : std_logic;
SIGNAL \saidaUla[24]~output_o\ : std_logic;
SIGNAL \saidaUla[25]~output_o\ : std_logic;
SIGNAL \saidaUla[26]~output_o\ : std_logic;
SIGNAL \saidaUla[27]~output_o\ : std_logic;
SIGNAL \saidaUla[28]~output_o\ : std_logic;
SIGNAL \saidaUla[29]~output_o\ : std_logic;
SIGNAL \saidaUla[30]~output_o\ : std_logic;
SIGNAL \saidaUla[31]~output_o\ : std_logic;
SIGNAL \saidaPC[0]~output_o\ : std_logic;
SIGNAL \saidaPC[1]~output_o\ : std_logic;
SIGNAL \saidaPC[2]~output_o\ : std_logic;
SIGNAL \saidaPC[3]~output_o\ : std_logic;
SIGNAL \saidaPC[4]~output_o\ : std_logic;
SIGNAL \saidaPC[5]~output_o\ : std_logic;
SIGNAL \saidaPC[6]~output_o\ : std_logic;
SIGNAL \saidaPC[7]~output_o\ : std_logic;
SIGNAL \saidaPC[8]~output_o\ : std_logic;
SIGNAL \saidaPC[9]~output_o\ : std_logic;
SIGNAL \saidaPC[10]~output_o\ : std_logic;
SIGNAL \saidaPC[11]~output_o\ : std_logic;
SIGNAL \saidaPC[12]~output_o\ : std_logic;
SIGNAL \saidaPC[13]~output_o\ : std_logic;
SIGNAL \saidaPC[14]~output_o\ : std_logic;
SIGNAL \saidaPC[15]~output_o\ : std_logic;
SIGNAL \saidaPC[16]~output_o\ : std_logic;
SIGNAL \saidaPC[17]~output_o\ : std_logic;
SIGNAL \saidaPC[18]~output_o\ : std_logic;
SIGNAL \saidaPC[19]~output_o\ : std_logic;
SIGNAL \saidaPC[20]~output_o\ : std_logic;
SIGNAL \saidaPC[21]~output_o\ : std_logic;
SIGNAL \saidaPC[22]~output_o\ : std_logic;
SIGNAL \saidaPC[23]~output_o\ : std_logic;
SIGNAL \saidaPC[24]~output_o\ : std_logic;
SIGNAL \saidaPC[25]~output_o\ : std_logic;
SIGNAL \saidaPC[26]~output_o\ : std_logic;
SIGNAL \saidaPC[27]~output_o\ : std_logic;
SIGNAL \saidaPC[28]~output_o\ : std_logic;
SIGNAL \saidaPC[29]~output_o\ : std_logic;
SIGNAL \saidaPC[30]~output_o\ : std_logic;
SIGNAL \saidaPC[31]~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[5]~7\ : std_logic;
SIGNAL \FD|Somador|saida[6]~8_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~22_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|REG_P2|data_s[141]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~26_combout\ : std_logic;
SIGNAL \FD|Somador|saida[6]~9\ : std_logic;
SIGNAL \FD|Somador|saida[7]~10_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~15_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~30_combout\ : std_logic;
SIGNAL \FD|REG_P1|data_s[5]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~29_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~28_combout\ : std_logic;
SIGNAL \FD|REG_P2|data_s[11]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~19_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~20_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[72]~31\ : std_logic;
SIGNAL \FD|REG_P3|data_s[73]~33\ : std_logic;
SIGNAL \FD|REG_P3|data_s[74]~35\ : std_logic;
SIGNAL \FD|REG_P3|data_s[75]~37\ : std_logic;
SIGNAL \FD|REG_P3|data_s[76]~39\ : std_logic;
SIGNAL \FD|REG_P3|data_s[77]~40_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[7]~57_combout\ : std_logic;
SIGNAL \FD|PC|data_s[7]~feeder_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[10]~1_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~32_combout\ : std_logic;
SIGNAL \FD|REG_P1|data_s[16]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~27_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~33_combout\ : std_logic;
SIGNAL \FD|REG_P1|data_s[19]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|Equal1~0_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[7]~3_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[106]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[70]~feeder_combout\ : std_logic;
SIGNAL \UC|Equal4~0_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[6]~4_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[102]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \UC|Equal2~0_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[1]~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[1]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[0]~1_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[3]~3_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[3]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~41_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FD|ROM|memROM~25_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~31_combout\ : std_logic;
SIGNAL \FD|BR|Equal0~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~60_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[9]~0_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~0_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~1_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~16_combout\ : std_logic;
SIGNAL \FD|UCULA|Equal3~1_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~2_combout\ : std_logic;
SIGNAL \FD|UCULA|Equal3~0_combout\ : std_logic;
SIGNAL \FD|UCULA|Equal3~2_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~3_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~7_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~38_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~58_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~56_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~52_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~50_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~48_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~46_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~62_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~34_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~58_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~56_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[49]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[61]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~3_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[31]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~2_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~3_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~5_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~4_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~4_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~5_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[30]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~11_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[63]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~12_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~13_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[26]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[59]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~16_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~17_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[24]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~19_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[23]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~21_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[22]~10_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[21]~11_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[20]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~29_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[18]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~31_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[17]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~32_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~33_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~32_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~33_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[16]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~34_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~35_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[15]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~36_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~37_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~39_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~40_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~41_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~42_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~43_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[11]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~42_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~43_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~44_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~45_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~46_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~47_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~48_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~49_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[8]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~50_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~51_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[7]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~52_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~53_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[6]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~54_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[5]~27_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[4]~28_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[3]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~60_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~61_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[1]~31_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~1\ : std_logic;
SIGNAL \FD|ULA|Add1~3\ : std_logic;
SIGNAL \FD|ULA|Add1~5\ : std_logic;
SIGNAL \FD|ULA|Add1~7\ : std_logic;
SIGNAL \FD|ULA|Add1~9\ : std_logic;
SIGNAL \FD|ULA|Add1~11\ : std_logic;
SIGNAL \FD|ULA|Add1~13\ : std_logic;
SIGNAL \FD|ULA|Add1~15\ : std_logic;
SIGNAL \FD|ULA|Add1~17\ : std_logic;
SIGNAL \FD|ULA|Add1~19\ : std_logic;
SIGNAL \FD|ULA|Add1~21\ : std_logic;
SIGNAL \FD|ULA|Add1~23\ : std_logic;
SIGNAL \FD|ULA|Add1~25\ : std_logic;
SIGNAL \FD|ULA|Add1~27\ : std_logic;
SIGNAL \FD|ULA|Add1~29\ : std_logic;
SIGNAL \FD|ULA|Add1~31\ : std_logic;
SIGNAL \FD|ULA|Add1~33\ : std_logic;
SIGNAL \FD|ULA|Add1~35\ : std_logic;
SIGNAL \FD|ULA|Add1~37\ : std_logic;
SIGNAL \FD|ULA|Add1~39\ : std_logic;
SIGNAL \FD|ULA|Add1~41\ : std_logic;
SIGNAL \FD|ULA|Add1~43\ : std_logic;
SIGNAL \FD|ULA|Add1~45\ : std_logic;
SIGNAL \FD|ULA|Add1~47\ : std_logic;
SIGNAL \FD|ULA|Add1~49\ : std_logic;
SIGNAL \FD|ULA|Add1~51\ : std_logic;
SIGNAL \FD|ULA|Add1~53\ : std_logic;
SIGNAL \FD|ULA|Add1~55\ : std_logic;
SIGNAL \FD|ULA|Add1~57\ : std_logic;
SIGNAL \FD|ULA|Add1~59\ : std_logic;
SIGNAL \FD|ULA|Add1~61\ : std_logic;
SIGNAL \FD|ULA|Add1~62_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~1\ : std_logic;
SIGNAL \FD|ULA|soma[1]~3\ : std_logic;
SIGNAL \FD|ULA|soma[2]~5\ : std_logic;
SIGNAL \FD|ULA|soma[3]~7\ : std_logic;
SIGNAL \FD|ULA|soma[4]~9\ : std_logic;
SIGNAL \FD|ULA|soma[5]~11\ : std_logic;
SIGNAL \FD|ULA|soma[6]~13\ : std_logic;
SIGNAL \FD|ULA|soma[7]~15\ : std_logic;
SIGNAL \FD|ULA|soma[8]~17\ : std_logic;
SIGNAL \FD|ULA|soma[9]~19\ : std_logic;
SIGNAL \FD|ULA|soma[10]~21\ : std_logic;
SIGNAL \FD|ULA|soma[11]~23\ : std_logic;
SIGNAL \FD|ULA|soma[12]~25\ : std_logic;
SIGNAL \FD|ULA|soma[13]~27\ : std_logic;
SIGNAL \FD|ULA|soma[14]~29\ : std_logic;
SIGNAL \FD|ULA|soma[15]~31\ : std_logic;
SIGNAL \FD|ULA|soma[16]~33\ : std_logic;
SIGNAL \FD|ULA|soma[17]~35\ : std_logic;
SIGNAL \FD|ULA|soma[18]~37\ : std_logic;
SIGNAL \FD|ULA|soma[19]~39\ : std_logic;
SIGNAL \FD|ULA|soma[20]~41\ : std_logic;
SIGNAL \FD|ULA|soma[21]~43\ : std_logic;
SIGNAL \FD|ULA|soma[22]~45\ : std_logic;
SIGNAL \FD|ULA|soma[23]~47\ : std_logic;
SIGNAL \FD|ULA|soma[24]~49\ : std_logic;
SIGNAL \FD|ULA|soma[25]~51\ : std_logic;
SIGNAL \FD|ULA|soma[26]~53\ : std_logic;
SIGNAL \FD|ULA|soma[27]~55\ : std_logic;
SIGNAL \FD|ULA|soma[28]~57\ : std_logic;
SIGNAL \FD|ULA|soma[29]~59\ : std_logic;
SIGNAL \FD|ULA|soma[30]~61\ : std_logic;
SIGNAL \FD|ULA|soma[31]~62_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~3_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[36]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[27]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[28]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[30]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[31]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[33]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[35]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[36]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[31]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~60_combout\ : std_logic;
SIGNAL \FD|ULA|soma[30]~60_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~3_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[35]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[30]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~9_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[28]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~56_combout\ : std_logic;
SIGNAL \FD|ULA|soma[28]~56_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[28]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~23_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[26]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|ULA|Add1~54_combout\ : std_logic;
SIGNAL \FD|ULA|soma[27]~54_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~2_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~13_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~52_combout\ : std_logic;
SIGNAL \FD|ULA|soma[26]~52_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[31]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[26]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~15_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[25]~7_combout\ : std_logic;
SIGNAL \FD|ULA|soma[25]~50_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~50_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[30]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[25]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~17_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~48_combout\ : std_logic;
SIGNAL \FD|ULA|soma[24]~48_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[24]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~19_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~46_combout\ : std_logic;
SIGNAL \FD|ULA|soma[23]~46_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[23]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~20_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~21_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~44_combout\ : std_logic;
SIGNAL \FD|ULA|soma[22]~44_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[22]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~22_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~23_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~42_combout\ : std_logic;
SIGNAL \FD|ULA|soma[21]~42_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[21]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~25_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|ULA|Add1~40_combout\ : std_logic;
SIGNAL \FD|ULA|soma[20]~40_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[25]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[20]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~27_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[19]~13_combout\ : std_logic;
SIGNAL \FD|ULA|soma[19]~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[19]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~57_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[10]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[11]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[12]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[13]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[14]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[15]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[16]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[17]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[19]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[22]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[23]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|ULA|soma[18]~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[23]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[18]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~31_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~34_combout\ : std_logic;
SIGNAL \FD|ULA|soma[17]~34_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[22]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[17]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~59_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|ULA|soma[16]~32_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~32_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[21]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[16]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~35_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~30_combout\ : std_logic;
SIGNAL \FD|ULA|soma[15]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[15]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~36_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~37_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[14]~18_combout\ : std_logic;
SIGNAL \FD|ULA|soma[14]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[14]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~39_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[13]~19_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~26_combout\ : std_logic;
SIGNAL \FD|ULA|soma[13]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[13]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~40_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~41_combout\ : std_logic;
SIGNAL \FD|ULA|soma[12]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~24_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[17]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~63_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[6]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|ULA|soma[11]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~22_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[16]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[11]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~44_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~45_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[10]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~20_combout\ : std_logic;
SIGNAL \FD|ULA|soma[10]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~4_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[10]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~47_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[9]~23_combout\ : std_logic;
SIGNAL \FD|ULA|soma[9]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[9]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~49_combout\ : std_logic;
SIGNAL \FD|ULA|soma[8]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~16_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[13]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[8]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~51_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~14_combout\ : std_logic;
SIGNAL \FD|ULA|soma[7]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[7]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~53_combout\ : std_logic;
SIGNAL \FD|ULA|soma[6]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~12_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[6]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~54_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~55_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~10_combout\ : std_logic;
SIGNAL \FD|ULA|soma[5]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[10]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[5]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~57_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~8_combout\ : std_logic;
SIGNAL \FD|ULA|soma[4]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[9]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[4]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~59_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~6_combout\ : std_logic;
SIGNAL \FD|ULA|soma[3]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[3]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~61_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[2]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~4_combout\ : std_logic;
SIGNAL \FD|ULA|soma[2]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[7]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[2]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~62_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~63_combout\ : std_logic;
SIGNAL \FD|ULA|soma[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[6]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[1]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~1_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~7_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[29]~3_combout\ : std_logic;
SIGNAL \FD|ULA|soma[29]~58_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~2_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[34]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[29]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~7_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~58_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~5_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~6_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~7_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~8_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~9_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~10_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[72]~30_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[2]~58_combout\ : std_logic;
SIGNAL \FD|PC|data_s[2]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~23_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~24_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[1]~2_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[104]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[76]~38_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[6]~56_combout\ : std_logic;
SIGNAL \FD|PC|data_s[6]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~14_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~21_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[73]~32_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~1\ : std_logic;
SIGNAL \FD|Somador|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[3]~59_combout\ : std_logic;
SIGNAL \FD|PC|data_s[3]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~18_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[74]~34_combout\ : std_logic;
SIGNAL \FD|Somador|saida[3]~3\ : std_logic;
SIGNAL \FD|Somador|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[4]~60_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[4]~5\ : std_logic;
SIGNAL \FD|Somador|saida[5]~6_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[75]~36_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[5]~61_combout\ : std_logic;
SIGNAL \FD|PC|data_s[5]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~17_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[2]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P4|data_s[2]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~39_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~4_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~7_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~9_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~11_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[71]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_beq|saida[1]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[7]~11\ : std_logic;
SIGNAL \FD|Somador|saida[8]~12_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[77]~41\ : std_logic;
SIGNAL \FD|REG_P3|data_s[78]~42_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[8]~62_combout\ : std_logic;
SIGNAL \FD|PC|data_s[8]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[78]~43\ : std_logic;
SIGNAL \FD|REG_P3|data_s[79]~44_combout\ : std_logic;
SIGNAL \FD|Somador|saida[8]~13\ : std_logic;
SIGNAL \FD|Somador|saida[9]~14_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[9]~63_combout\ : std_logic;
SIGNAL \FD|PC|data_s[9]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[79]~45\ : std_logic;
SIGNAL \FD|REG_P3|data_s[80]~46_combout\ : std_logic;
SIGNAL \FD|Somador|saida[9]~15\ : std_logic;
SIGNAL \FD|Somador|saida[10]~16_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[10]~64_combout\ : std_logic;
SIGNAL \FD|PC|data_s[10]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[80]~47\ : std_logic;
SIGNAL \FD|REG_P3|data_s[81]~48_combout\ : std_logic;
SIGNAL \FD|Somador|saida[10]~17\ : std_logic;
SIGNAL \FD|Somador|saida[11]~18_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[11]~65_combout\ : std_logic;
SIGNAL \FD|PC|data_s[11]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[81]~49\ : std_logic;
SIGNAL \FD|REG_P3|data_s[82]~50_combout\ : std_logic;
SIGNAL \FD|Somador|saida[11]~19\ : std_logic;
SIGNAL \FD|Somador|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[12]~66_combout\ : std_logic;
SIGNAL \FD|PC|data_s[12]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[82]~51\ : std_logic;
SIGNAL \FD|REG_P3|data_s[83]~52_combout\ : std_logic;
SIGNAL \FD|Somador|saida[12]~21\ : std_logic;
SIGNAL \FD|Somador|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[13]~67_combout\ : std_logic;
SIGNAL \FD|PC|data_s[13]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[83]~53\ : std_logic;
SIGNAL \FD|REG_P3|data_s[84]~54_combout\ : std_logic;
SIGNAL \FD|Somador|saida[13]~23\ : std_logic;
SIGNAL \FD|Somador|saida[14]~24_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[14]~68_combout\ : std_logic;
SIGNAL \FD|PC|data_s[14]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[84]~55\ : std_logic;
SIGNAL \FD|REG_P3|data_s[85]~56_combout\ : std_logic;
SIGNAL \FD|Somador|saida[14]~25\ : std_logic;
SIGNAL \FD|Somador|saida[15]~26_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[15]~69_combout\ : std_logic;
SIGNAL \FD|PC|data_s[15]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[85]~57\ : std_logic;
SIGNAL \FD|REG_P3|data_s[86]~58_combout\ : std_logic;
SIGNAL \FD|Somador|saida[15]~27\ : std_logic;
SIGNAL \FD|Somador|saida[16]~28_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[16]~70_combout\ : std_logic;
SIGNAL \FD|PC|data_s[16]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[86]~59\ : std_logic;
SIGNAL \FD|REG_P3|data_s[87]~60_combout\ : std_logic;
SIGNAL \FD|Somador|saida[16]~29\ : std_logic;
SIGNAL \FD|Somador|saida[17]~30_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[17]~71_combout\ : std_logic;
SIGNAL \FD|PC|data_s[17]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[87]~61\ : std_logic;
SIGNAL \FD|REG_P3|data_s[88]~62_combout\ : std_logic;
SIGNAL \FD|Somador|saida[17]~31\ : std_logic;
SIGNAL \FD|Somador|saida[18]~32_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[18]~72_combout\ : std_logic;
SIGNAL \FD|PC|data_s[18]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[18]~33\ : std_logic;
SIGNAL \FD|Somador|saida[19]~34_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[88]~63\ : std_logic;
SIGNAL \FD|REG_P3|data_s[89]~64_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[19]~73_combout\ : std_logic;
SIGNAL \FD|PC|data_s[19]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[89]~65\ : std_logic;
SIGNAL \FD|REG_P3|data_s[90]~66_combout\ : std_logic;
SIGNAL \FD|Somador|saida[19]~35\ : std_logic;
SIGNAL \FD|Somador|saida[20]~36_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[20]~74_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[90]~67\ : std_logic;
SIGNAL \FD|REG_P3|data_s[91]~68_combout\ : std_logic;
SIGNAL \FD|Somador|saida[20]~37\ : std_logic;
SIGNAL \FD|Somador|saida[21]~38_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[21]~75_combout\ : std_logic;
SIGNAL \FD|PC|data_s[21]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[91]~69\ : std_logic;
SIGNAL \FD|REG_P3|data_s[92]~70_combout\ : std_logic;
SIGNAL \FD|Somador|saida[21]~39\ : std_logic;
SIGNAL \FD|Somador|saida[22]~40_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[22]~76_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[92]~71\ : std_logic;
SIGNAL \FD|REG_P3|data_s[93]~72_combout\ : std_logic;
SIGNAL \FD|Somador|saida[22]~41\ : std_logic;
SIGNAL \FD|Somador|saida[23]~42_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[23]~77_combout\ : std_logic;
SIGNAL \FD|PC|data_s[23]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[93]~73\ : std_logic;
SIGNAL \FD|REG_P3|data_s[94]~74_combout\ : std_logic;
SIGNAL \FD|Somador|saida[23]~43\ : std_logic;
SIGNAL \FD|Somador|saida[24]~44_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[24]~78_combout\ : std_logic;
SIGNAL \FD|Somador|saida[24]~45\ : std_logic;
SIGNAL \FD|Somador|saida[25]~46_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[94]~75\ : std_logic;
SIGNAL \FD|REG_P3|data_s[95]~76_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[25]~79_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[95]~77\ : std_logic;
SIGNAL \FD|REG_P3|data_s[96]~78_combout\ : std_logic;
SIGNAL \FD|Somador|saida[25]~47\ : std_logic;
SIGNAL \FD|Somador|saida[26]~48_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[26]~80_combout\ : std_logic;
SIGNAL \FD|PC|data_s[26]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[96]~79\ : std_logic;
SIGNAL \FD|REG_P3|data_s[97]~80_combout\ : std_logic;
SIGNAL \FD|Somador|saida[26]~49\ : std_logic;
SIGNAL \FD|Somador|saida[27]~50_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[27]~81_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[97]~81\ : std_logic;
SIGNAL \FD|REG_P3|data_s[98]~82_combout\ : std_logic;
SIGNAL \FD|Somador|saida[27]~51\ : std_logic;
SIGNAL \FD|Somador|saida[28]~52_combout\ : std_logic;
SIGNAL \FD|sel_mux_beq~combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[28]~52_combout\ : std_logic;
SIGNAL \FD|Somador|saida[28]~53\ : std_logic;
SIGNAL \FD|Somador|saida[29]~54_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[98]~83\ : std_logic;
SIGNAL \FD|REG_P3|data_s[99]~84_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[29]~53_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[99]~85\ : std_logic;
SIGNAL \FD|REG_P3|data_s[100]~86_combout\ : std_logic;
SIGNAL \FD|Somador|saida[29]~55\ : std_logic;
SIGNAL \FD|Somador|saida[30]~56_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[30]~54_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[100]~87\ : std_logic;
SIGNAL \FD|REG_P3|data_s[101]~88_combout\ : std_logic;
SIGNAL \FD|Somador|saida[30]~57\ : std_logic;
SIGNAL \FD|Somador|saida[31]~58_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[31]~55_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DISPLAY1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg~2_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY6|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DISPLAY7|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY7|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DISPLAY7|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DISPLAY7|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DISPLAY7|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY7|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DISPLAY7|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|REG_P1|data_s\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \FD|REG_P3|data_s\ : std_logic_vector(107 DOWNTO 0);
SIGNAL \FD|REG_P4|data_s\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \FD|REG_P2|data_s\ : std_logic_vector(148 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \DISPLAY6|ALT_INV_rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY6|ALT_INV_rascSaida7seg[1]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
saidaUla <= ww_saidaUla;
saidaPC <= ww_saidaPC;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~1_combout\ & \FD|mux_Ula_Memoria|saida[30]~2_combout\ & \FD|mux_Ula_Memoria|saida[29]~3_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~4_combout\ & \FD|mux_Ula_Memoria|saida[27]~5_combout\ & \FD|mux_Ula_Memoria|saida[26]~6_combout\ & \FD|mux_Ula_Memoria|saida[25]~7_combout\ & \FD|mux_Ula_Memoria|saida[24]~8_combout\ & \FD|mux_Ula_Memoria|saida[23]~9_combout\
& \FD|mux_Ula_Memoria|saida[22]~10_combout\ & \FD|mux_Ula_Memoria|saida[21]~11_combout\ & \FD|mux_Ula_Memoria|saida[20]~12_combout\ & \FD|mux_Ula_Memoria|saida[19]~13_combout\ & \FD|mux_Ula_Memoria|saida[18]~14_combout\ & 
\FD|mux_Ula_Memoria|saida[17]~15_combout\ & \FD|mux_Ula_Memoria|saida[16]~16_combout\ & \FD|mux_Ula_Memoria|saida[15]~17_combout\ & \FD|mux_Ula_Memoria|saida[14]~18_combout\ & \FD|mux_Ula_Memoria|saida[13]~19_combout\ & 
\FD|mux_Ula_Memoria|saida[12]~20_combout\ & \FD|mux_Ula_Memoria|saida[11]~21_combout\ & \FD|mux_Ula_Memoria|saida[10]~22_combout\ & \FD|mux_Ula_Memoria|saida[9]~23_combout\ & \FD|mux_Ula_Memoria|saida[8]~24_combout\ & 
\FD|mux_Ula_Memoria|saida[7]~25_combout\ & \FD|mux_Ula_Memoria|saida[6]~26_combout\ & \FD|mux_Ula_Memoria|saida[5]~27_combout\ & \FD|mux_Ula_Memoria|saida[4]~28_combout\ & \FD|mux_Ula_Memoria|saida[3]~29_combout\ & \FD|mux_Ula_Memoria|saida[2]~30_combout\
& \FD|mux_Ula_Memoria|saida[1]~31_combout\ & \FD|mux_Ula_Memoria|saida[0]~0_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~1_combout\ & \FD|mux_Ula_Memoria|saida[30]~2_combout\ & \FD|mux_Ula_Memoria|saida[29]~3_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~4_combout\ & \FD|mux_Ula_Memoria|saida[27]~5_combout\ & \FD|mux_Ula_Memoria|saida[26]~6_combout\ & \FD|mux_Ula_Memoria|saida[25]~7_combout\ & \FD|mux_Ula_Memoria|saida[24]~8_combout\ & \FD|mux_Ula_Memoria|saida[23]~9_combout\
& \FD|mux_Ula_Memoria|saida[22]~10_combout\ & \FD|mux_Ula_Memoria|saida[21]~11_combout\ & \FD|mux_Ula_Memoria|saida[20]~12_combout\ & \FD|mux_Ula_Memoria|saida[19]~13_combout\ & \FD|mux_Ula_Memoria|saida[18]~14_combout\ & 
\FD|mux_Ula_Memoria|saida[17]~15_combout\ & \FD|mux_Ula_Memoria|saida[16]~16_combout\ & \FD|mux_Ula_Memoria|saida[15]~17_combout\ & \FD|mux_Ula_Memoria|saida[14]~18_combout\ & \FD|mux_Ula_Memoria|saida[13]~19_combout\ & 
\FD|mux_Ula_Memoria|saida[12]~20_combout\ & \FD|mux_Ula_Memoria|saida[11]~21_combout\ & \FD|mux_Ula_Memoria|saida[10]~22_combout\ & \FD|mux_Ula_Memoria|saida[9]~23_combout\ & \FD|mux_Ula_Memoria|saida[8]~24_combout\ & 
\FD|mux_Ula_Memoria|saida[7]~25_combout\ & \FD|mux_Ula_Memoria|saida[6]~26_combout\ & \FD|mux_Ula_Memoria|saida[5]~27_combout\ & \FD|mux_Ula_Memoria|saida[4]~28_combout\ & \FD|mux_Ula_Memoria|saida[3]~29_combout\ & \FD|mux_Ula_Memoria|saida[2]~30_combout\
& \FD|mux_Ula_Memoria|saida[1]~31_combout\ & \FD|mux_Ula_Memoria|saida[0]~0_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~33_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~32_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|REG_P3|data_s\(36) & \FD|REG_P3|data_s\(35) & \FD|REG_P3|data_s\(34) & \FD|REG_P3|data_s\(33) & \FD|REG_P3|data_s\(32) & \FD|REG_P3|data_s\(31) & 
\FD|REG_P3|data_s\(30) & \FD|REG_P3|data_s\(29) & \FD|REG_P3|data_s\(28) & \FD|REG_P3|data_s\(27) & \FD|REG_P3|data_s\(26) & \FD|REG_P3|data_s\(25) & \FD|REG_P3|data_s\(24) & \FD|REG_P3|data_s\(5));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\FD|REG_P3|data_s\(23) & \FD|REG_P3|data_s\(22) & \FD|REG_P3|data_s\(21) & \FD|REG_P3|data_s\(20) & \FD|REG_P3|data_s\(19) & \FD|REG_P3|data_s\(18) & \FD|REG_P3|data_s\(17) & 
\FD|REG_P3|data_s\(16) & \FD|REG_P3|data_s\(15) & \FD|REG_P3|data_s\(14) & \FD|REG_P3|data_s\(13) & \FD|REG_P3|data_s\(12) & \FD|REG_P3|data_s\(11) & \FD|REG_P3|data_s\(10) & \FD|REG_P3|data_s\(9) & \FD|REG_P3|data_s\(8) & 
\FD|REG_P3|data_s\(7) & \FD|REG_P3|data_s\(6));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(5);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(6);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(7);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(8);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(9);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(10);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(11);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(12);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(13);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(14);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(15);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(16);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(17);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\DISPLAY6|ALT_INV_rascSaida7seg[4]~4_combout\ <= NOT \DISPLAY6|rascSaida7seg[4]~4_combout\;
\DISPLAY6|ALT_INV_rascSaida7seg[1]~1_combout\ <= NOT \DISPLAY6|rascSaida7seg[1]~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X100_Y0_N16
\saidaUla[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux31~11_combout\,
	devoe => ww_devoe,
	o => \saidaUla[0]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\saidaUla[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux30~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[1]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\saidaUla[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux29~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\saidaUla[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux28~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[3]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\saidaUla[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux27~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[4]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\saidaUla[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux26~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[5]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\saidaUla[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux25~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[6]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\saidaUla[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux24~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[7]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\saidaUla[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux23~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[8]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\saidaUla[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux22~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[9]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\saidaUla[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux21~4_combout\,
	devoe => ww_devoe,
	o => \saidaUla[10]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\saidaUla[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux20~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[11]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\saidaUla[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux19~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[12]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\saidaUla[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux18~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[13]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\saidaUla[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux17~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[14]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\saidaUla[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux16~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[15]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\saidaUla[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux15~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[16]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\saidaUla[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux14~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[17]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\saidaUla[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux13~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[18]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\saidaUla[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux12~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[19]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\saidaUla[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux11~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[20]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\saidaUla[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux10~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[21]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\saidaUla[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux9~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[22]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\saidaUla[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[23]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\saidaUla[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[24]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\saidaUla[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[25]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\saidaUla[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[26]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\saidaUla[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[27]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\saidaUla[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[28]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\saidaUla[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \saidaUla[29]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\saidaUla[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \saidaUla[30]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\saidaUla[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \saidaUla[31]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\saidaPC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(1),
	devoe => ww_devoe,
	o => \saidaPC[0]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\saidaPC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(1),
	devoe => ww_devoe,
	o => \saidaPC[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\saidaPC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(2),
	devoe => ww_devoe,
	o => \saidaPC[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\saidaPC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(3),
	devoe => ww_devoe,
	o => \saidaPC[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\saidaPC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(4),
	devoe => ww_devoe,
	o => \saidaPC[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\saidaPC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(5),
	devoe => ww_devoe,
	o => \saidaPC[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\saidaPC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(6),
	devoe => ww_devoe,
	o => \saidaPC[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\saidaPC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(7),
	devoe => ww_devoe,
	o => \saidaPC[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\saidaPC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(8),
	devoe => ww_devoe,
	o => \saidaPC[8]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\saidaPC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(9),
	devoe => ww_devoe,
	o => \saidaPC[9]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\saidaPC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(10),
	devoe => ww_devoe,
	o => \saidaPC[10]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\saidaPC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(11),
	devoe => ww_devoe,
	o => \saidaPC[11]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\saidaPC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(12),
	devoe => ww_devoe,
	o => \saidaPC[12]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\saidaPC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(13),
	devoe => ww_devoe,
	o => \saidaPC[13]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\saidaPC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(14),
	devoe => ww_devoe,
	o => \saidaPC[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\saidaPC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(15),
	devoe => ww_devoe,
	o => \saidaPC[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\saidaPC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(16),
	devoe => ww_devoe,
	o => \saidaPC[16]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\saidaPC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(17),
	devoe => ww_devoe,
	o => \saidaPC[17]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\saidaPC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(18),
	devoe => ww_devoe,
	o => \saidaPC[18]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\saidaPC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(19),
	devoe => ww_devoe,
	o => \saidaPC[19]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\saidaPC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(20),
	devoe => ww_devoe,
	o => \saidaPC[20]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\saidaPC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(21),
	devoe => ww_devoe,
	o => \saidaPC[21]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\saidaPC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(22),
	devoe => ww_devoe,
	o => \saidaPC[22]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\saidaPC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(23),
	devoe => ww_devoe,
	o => \saidaPC[23]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\saidaPC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(24),
	devoe => ww_devoe,
	o => \saidaPC[24]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\saidaPC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(25),
	devoe => ww_devoe,
	o => \saidaPC[25]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\saidaPC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(26),
	devoe => ww_devoe,
	o => \saidaPC[26]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\saidaPC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(27),
	devoe => ww_devoe,
	o => \saidaPC[27]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\saidaPC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(28),
	devoe => ww_devoe,
	o => \saidaPC[28]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\saidaPC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(29),
	devoe => ww_devoe,
	o => \saidaPC[29]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\saidaPC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(30),
	devoe => ww_devoe,
	o => \saidaPC[30]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\saidaPC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(31),
	devoe => ww_devoe,
	o => \saidaPC[31]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY0|rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY0|rascSaida7seg[2]~2_combout\,
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
	i => \DISPLAY0|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY0|rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY0|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY0|rascSaida7seg[6]~6_combout\,
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
	i => \DISPLAY1|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY1|rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY1|rascSaida7seg[2]~2_combout\,
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
	i => \DISPLAY1|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY1|rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY1|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY1|rascSaida7seg[6]~6_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => \DISPLAY6|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY6|ALT_INV_rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY6|rascSaida7seg~2_combout\,
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
	i => \DISPLAY6|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY6|ALT_INV_rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY6|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY6|rascSaida7seg[6]~6_combout\,
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
	i => \DISPLAY7|rascSaida7seg[0]~0_combout\,
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
	i => \DISPLAY7|rascSaida7seg[1]~1_combout\,
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
	i => \DISPLAY7|rascSaida7seg[2]~2_combout\,
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
	i => \DISPLAY7|rascSaida7seg[3]~3_combout\,
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
	i => \DISPLAY7|rascSaida7seg[4]~4_combout\,
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
	i => \DISPLAY7|rascSaida7seg[5]~5_combout\,
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
	i => \DISPLAY7|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X58_Y0_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X82_Y5_N6
\FD|BR|bancoReg_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X82_Y5_N7
\FD|BR|bancoReg_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(12));

-- Location: LCCOMB_X68_Y4_N8
\FD|Somador|saida[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[5]~6_combout\ = (\FD|PC|data_s\(5) & (!\FD|Somador|saida[4]~5\)) # (!\FD|PC|data_s\(5) & ((\FD|Somador|saida[4]~5\) # (GND)))
-- \FD|Somador|saida[5]~7\ = CARRY((!\FD|Somador|saida[4]~5\) # (!\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datad => VCC,
	cin => \FD|Somador|saida[4]~5\,
	combout => \FD|Somador|saida[5]~6_combout\,
	cout => \FD|Somador|saida[5]~7\);

-- Location: LCCOMB_X68_Y4_N10
\FD|Somador|saida[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[6]~8_combout\ = (\FD|PC|data_s\(6) & (\FD|Somador|saida[5]~7\ $ (GND))) # (!\FD|PC|data_s\(6) & (!\FD|Somador|saida[5]~7\ & VCC))
-- \FD|Somador|saida[6]~9\ = CARRY((\FD|PC|data_s\(6) & !\FD|Somador|saida[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datad => VCC,
	cin => \FD|Somador|saida[5]~7\,
	combout => \FD|Somador|saida[6]~8_combout\,
	cout => \FD|Somador|saida[6]~9\);

-- Location: LCCOMB_X74_Y4_N6
\FD|ROM|memROM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~22_combout\ = (!\FD|PC|data_s\(3) & (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & \FD|ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|ROM|memROM~14_combout\,
	combout => \FD|ROM|memROM~22_combout\);

-- Location: LCCOMB_X68_Y4_N2
\FD|Somador|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[2]~0_combout\ = \FD|PC|data_s\(2) $ (VCC)
-- \FD|Somador|saida[2]~1\ = CARRY(\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(2),
	datad => VCC,
	combout => \FD|Somador|saida[2]~0_combout\,
	cout => \FD|Somador|saida[2]~1\);

-- Location: LCCOMB_X77_Y4_N16
\FD|REG_P2|data_s[141]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P2|data_s[141]~0_combout\ = ((\FD|ROM|memROM~22_combout\ & !\FD|ROM|memROM~21_combout\)) # (!\FD|ROM|memROM~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~22_combout\,
	datab => \FD|ROM|memROM~21_combout\,
	datac => \FD|ROM|memROM~24_combout\,
	combout => \FD|REG_P2|data_s[141]~0_combout\);

-- Location: FF_X80_Y7_N1
\FD|REG_P2|data_s[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s[141]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(138));

-- Location: LCCOMB_X77_Y8_N16
\FD|BR|bancoReg_rtl_1_bypass[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[29]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[29]~3_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\);

-- Location: FF_X77_Y8_N17
\FD|BR|bancoReg_rtl_1_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(69));

-- Location: LCCOMB_X73_Y4_N2
\FD|ROM|memROM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~26_combout\ = (\FD|PC|data_s\(2)) # ((\FD|PC|data_s\(5) & ((!\FD|PC|data_s\(3)) # (!\FD|PC|data_s\(4)))) # (!\FD|PC|data_s\(5) & ((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~26_combout\);

-- Location: LCCOMB_X68_Y4_N12
\FD|Somador|saida[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[7]~10_combout\ = (\FD|PC|data_s\(7) & (!\FD|Somador|saida[6]~9\)) # (!\FD|PC|data_s\(7) & ((\FD|Somador|saida[6]~9\) # (GND)))
-- \FD|Somador|saida[7]~11\ = CARRY((!\FD|Somador|saida[6]~9\) # (!\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(7),
	datad => VCC,
	cin => \FD|Somador|saida[6]~9\,
	combout => \FD|Somador|saida[7]~10_combout\,
	cout => \FD|Somador|saida[7]~11\);

-- Location: LCCOMB_X74_Y4_N12
\FD|ROM|memROM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~15_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~15_combout\);

-- Location: LCCOMB_X74_Y4_N14
\FD|ROM|memROM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~30_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|ROM|memROM~15_combout\,
	combout => \FD|ROM|memROM~30_combout\);

-- Location: LCCOMB_X76_Y7_N26
\FD|REG_P1|data_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P1|data_s[5]~feeder_combout\ = \FD|ROM|memROM~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|memROM~30_combout\,
	combout => \FD|REG_P1|data_s[5]~feeder_combout\);

-- Location: FF_X76_Y7_N27
\FD|REG_P1|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P1|data_s[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(5));

-- Location: FF_X76_Y7_N11
\FD|REG_P2|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P1|data_s\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(24));

-- Location: LCCOMB_X73_Y4_N10
\FD|ROM|memROM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = (\FD|PC|data_s\(4) & (((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(3))))) # (!\FD|PC|data_s\(4) & ((\FD|PC|data_s\(5)) # ((\FD|PC|data_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~12_combout\);

-- Location: LCCOMB_X73_Y4_N20
\FD|ROM|memROM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~29_combout\ = (!\FD|ROM|memROM~12_combout\ & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~12_combout\,
	datab => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~29_combout\);

-- Location: FF_X73_Y4_N21
\FD|REG_P1|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ROM|memROM~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(3));

-- Location: FF_X80_Y7_N17
\FD|REG_P2|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P1|data_s\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(13));

-- Location: LCCOMB_X73_Y4_N16
\FD|ROM|memROM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2) & (!\FD|PC|data_s\(5) & !\FD|PC|data_s\(4))) # (!\FD|PC|data_s\(2) & ((\FD|PC|data_s\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~13_combout\);

-- Location: LCCOMB_X73_Y4_N8
\FD|ROM|memROM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~28_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|ROM|memROM~13_combout\,
	combout => \FD|ROM|memROM~28_combout\);

-- Location: FF_X73_Y4_N9
\FD|REG_P1|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ROM|memROM~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(1));

-- Location: LCCOMB_X79_Y7_N8
\FD|REG_P2|data_s[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P2|data_s[11]~feeder_combout\ = \FD|REG_P1|data_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P1|data_s\(1),
	combout => \FD|REG_P2|data_s[11]~feeder_combout\);

-- Location: FF_X79_Y7_N9
\FD|REG_P2|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P2|data_s[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(11));

-- Location: LCCOMB_X73_Y4_N6
\FD|ROM|memROM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~19_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) & !\FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(3) & (!\FD|PC|data_s\(2) & \FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~19_combout\);

-- Location: LCCOMB_X73_Y4_N28
\FD|ROM|memROM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~20_combout\ = (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(5) & \FD|ROM|memROM~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(5),
	datad => \FD|ROM|memROM~19_combout\,
	combout => \FD|ROM|memROM~20_combout\);

-- Location: FF_X73_Y4_N29
\FD|REG_P1|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ROM|memROM~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(0));

-- Location: FF_X80_Y7_N3
\FD|REG_P2|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P1|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(10));

-- Location: LCCOMB_X72_Y4_N2
\FD|REG_P3|data_s[72]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[72]~30_combout\ = (\FD|REG_P2|data_s\(41) & (\FD|REG_P2|data_s\(10) $ (VCC))) # (!\FD|REG_P2|data_s\(41) & (\FD|REG_P2|data_s\(10) & VCC))
-- \FD|REG_P3|data_s[72]~31\ = CARRY((\FD|REG_P2|data_s\(41) & \FD|REG_P2|data_s\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(10),
	datad => VCC,
	combout => \FD|REG_P3|data_s[72]~30_combout\,
	cout => \FD|REG_P3|data_s[72]~31\);

-- Location: LCCOMB_X72_Y4_N4
\FD|REG_P3|data_s[73]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[73]~32_combout\ = (\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(11) & (\FD|REG_P3|data_s[72]~31\ & VCC)) # (!\FD|REG_P2|data_s\(11) & (!\FD|REG_P3|data_s[72]~31\)))) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(11) & 
-- (!\FD|REG_P3|data_s[72]~31\)) # (!\FD|REG_P2|data_s\(11) & ((\FD|REG_P3|data_s[72]~31\) # (GND)))))
-- \FD|REG_P3|data_s[73]~33\ = CARRY((\FD|REG_P2|data_s\(41) & (!\FD|REG_P2|data_s\(11) & !\FD|REG_P3|data_s[72]~31\)) # (!\FD|REG_P2|data_s\(41) & ((!\FD|REG_P3|data_s[72]~31\) # (!\FD|REG_P2|data_s\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(11),
	datad => VCC,
	cin => \FD|REG_P3|data_s[72]~31\,
	combout => \FD|REG_P3|data_s[73]~32_combout\,
	cout => \FD|REG_P3|data_s[73]~33\);

-- Location: LCCOMB_X72_Y4_N6
\FD|REG_P3|data_s[74]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[74]~34_combout\ = ((\FD|REG_P2|data_s\(12) $ (\FD|REG_P2|data_s\(41) $ (!\FD|REG_P3|data_s[73]~33\)))) # (GND)
-- \FD|REG_P3|data_s[74]~35\ = CARRY((\FD|REG_P2|data_s\(12) & ((\FD|REG_P2|data_s\(41)) # (!\FD|REG_P3|data_s[73]~33\))) # (!\FD|REG_P2|data_s\(12) & (\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[73]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(12),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[73]~33\,
	combout => \FD|REG_P3|data_s[74]~34_combout\,
	cout => \FD|REG_P3|data_s[74]~35\);

-- Location: LCCOMB_X72_Y4_N8
\FD|REG_P3|data_s[75]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[75]~36_combout\ = (\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(13) & (\FD|REG_P3|data_s[74]~35\ & VCC)) # (!\FD|REG_P2|data_s\(13) & (!\FD|REG_P3|data_s[74]~35\)))) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(13) & 
-- (!\FD|REG_P3|data_s[74]~35\)) # (!\FD|REG_P2|data_s\(13) & ((\FD|REG_P3|data_s[74]~35\) # (GND)))))
-- \FD|REG_P3|data_s[75]~37\ = CARRY((\FD|REG_P2|data_s\(41) & (!\FD|REG_P2|data_s\(13) & !\FD|REG_P3|data_s[74]~35\)) # (!\FD|REG_P2|data_s\(41) & ((!\FD|REG_P3|data_s[74]~35\) # (!\FD|REG_P2|data_s\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(13),
	datad => VCC,
	cin => \FD|REG_P3|data_s[74]~35\,
	combout => \FD|REG_P3|data_s[75]~36_combout\,
	cout => \FD|REG_P3|data_s[75]~37\);

-- Location: LCCOMB_X72_Y4_N10
\FD|REG_P3|data_s[76]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[76]~38_combout\ = (((!\FD|REG_P3|data_s[75]~37\))) # (GND)
-- \FD|REG_P3|data_s[76]~39\ = CARRY(\FD|REG_P2|data_s\(41))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[75]~37\,
	combout => \FD|REG_P3|data_s[76]~38_combout\,
	cout => \FD|REG_P3|data_s[76]~39\);

-- Location: LCCOMB_X72_Y4_N12
\FD|REG_P3|data_s[77]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[77]~40_combout\ = (\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(24) & (\FD|REG_P3|data_s[76]~39\ & VCC)) # (!\FD|REG_P2|data_s\(24) & (!\FD|REG_P3|data_s[76]~39\)))) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(24) & 
-- (!\FD|REG_P3|data_s[76]~39\)) # (!\FD|REG_P2|data_s\(24) & ((\FD|REG_P3|data_s[76]~39\) # (GND)))))
-- \FD|REG_P3|data_s[77]~41\ = CARRY((\FD|REG_P2|data_s\(41) & (!\FD|REG_P2|data_s\(24) & !\FD|REG_P3|data_s[76]~39\)) # (!\FD|REG_P2|data_s\(41) & ((!\FD|REG_P3|data_s[76]~39\) # (!\FD|REG_P2|data_s\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(24),
	datad => VCC,
	cin => \FD|REG_P3|data_s[76]~39\,
	combout => \FD|REG_P3|data_s[77]~40_combout\,
	cout => \FD|REG_P3|data_s[77]~41\);

-- Location: FF_X72_Y4_N13
\FD|REG_P3|data_s[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[77]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(77));

-- Location: LCCOMB_X69_Y4_N10
\FD|mux_jump|saida[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[7]~57_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(77)))) # (!\FD|REG_P3|data_s\(69) & (\FD|Somador|saida[7]~10_combout\)))) # (!\FD|REG_P3|data_s\(104) & (\FD|Somador|saida[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[7]~10_combout\,
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|REG_P3|data_s\(77),
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|mux_jump|saida[7]~57_combout\);

-- Location: LCCOMB_X70_Y4_N8
\FD|PC|data_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[7]~feeder_combout\ = \FD|mux_jump|saida[7]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[7]~57_combout\,
	combout => \FD|PC|data_s[7]~feeder_combout\);

-- Location: LCCOMB_X77_Y4_N30
\UC|pontosDeControle[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[10]~1_combout\ = (\FD|ROM|memROM~22_combout\ & (!\FD|ROM|memROM~21_combout\ & \FD|ROM|memROM~24_combout\)) # (!\FD|ROM|memROM~22_combout\ & ((!\FD|ROM|memROM~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~22_combout\,
	datab => \FD|ROM|memROM~21_combout\,
	datac => \FD|ROM|memROM~24_combout\,
	combout => \UC|pontosDeControle[10]~1_combout\);

-- Location: FF_X77_Y4_N31
\FD|REG_P2|data_s[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UC|pontosDeControle[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(141));

-- Location: FF_X70_Y4_N9
\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[7]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(5),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

-- Location: LCCOMB_X70_Y4_N16
\FD|ROM|memROM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~32_combout\ = (!\FD|PC|data_s\(6) & (!\FD|ROM|memROM~26_combout\ & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|ROM|memROM~26_combout\,
	datac => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~32_combout\);

-- Location: LCCOMB_X70_Y4_N28
\FD|REG_P1|data_s[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P1|data_s[16]~feeder_combout\ = \FD|ROM|memROM~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~32_combout\,
	combout => \FD|REG_P1|data_s[16]~feeder_combout\);

-- Location: FF_X70_Y4_N29
\FD|REG_P1|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P1|data_s[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(16));

-- Location: LCCOMB_X74_Y4_N16
\FD|ROM|memROM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~27_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((!\FD|PC|data_s\(5) & !\FD|PC|data_s\(4)))))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~27_combout\);

-- Location: LCCOMB_X70_Y4_N18
\FD|ROM|memROM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~33_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|ROM|memROM~27_combout\,
	combout => \FD|ROM|memROM~33_combout\);

-- Location: LCCOMB_X70_Y4_N30
\FD|REG_P1|data_s[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P1|data_s[19]~feeder_combout\ = \FD|ROM|memROM~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~33_combout\,
	combout => \FD|REG_P1|data_s[19]~feeder_combout\);

-- Location: FF_X70_Y4_N31
\FD|REG_P1|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P1|data_s[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(19));

-- Location: LCCOMB_X70_Y4_N26
\FD|BR|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal1~0_combout\ = (!\FD|REG_P1|data_s\(16) & (!\FD|REG_P1|data_s\(19) & !\FD|REG_P1|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P1|data_s\(16),
	datac => \FD|REG_P1|data_s\(19),
	datad => \FD|REG_P1|data_s\(5),
	combout => \FD|BR|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y4_N2
\UC|pontosDeControle[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[7]~3_combout\ = (\FD|ROM|memROM~24_combout\ & (((!\FD|ROM|memROM~21_combout\)))) # (!\FD|ROM|memROM~24_combout\ & ((\FD|ROM|memROM~22_combout\ & (\FD|PC|data_s\(2))) # (!\FD|ROM|memROM~22_combout\ & ((\FD|ROM|memROM~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|ROM|memROM~22_combout\,
	datac => \FD|ROM|memROM~21_combout\,
	datad => \FD|ROM|memROM~24_combout\,
	combout => \UC|pontosDeControle[7]~3_combout\);

-- Location: FF_X75_Y4_N3
\FD|REG_P2|data_s[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UC|pontosDeControle[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(147));

-- Location: LCCOMB_X75_Y4_N12
\FD|REG_P3|data_s[106]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[106]~feeder_combout\ = \FD|REG_P2|data_s\(147)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(147),
	combout => \FD|REG_P3|data_s[106]~feeder_combout\);

-- Location: FF_X75_Y4_N13
\FD|REG_P3|data_s[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[106]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(106));

-- Location: LCCOMB_X75_Y4_N20
\FD|REG_P4|data_s[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[70]~feeder_combout\ = \FD|REG_P3|data_s\(106)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(106),
	combout => \FD|REG_P4|data_s[70]~feeder_combout\);

-- Location: FF_X75_Y4_N21
\FD|REG_P4|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(70));

-- Location: LCCOMB_X75_Y4_N30
\UC|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal4~0_combout\ = (\FD|ROM|memROM~22_combout\) # ((\FD|ROM|memROM~21_combout\) # (!\FD|ROM|memROM~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~22_combout\,
	datac => \FD|ROM|memROM~21_combout\,
	datad => \FD|ROM|memROM~24_combout\,
	combout => \UC|Equal4~0_combout\);

-- Location: FF_X75_Y4_N31
\FD|REG_P2|data_s[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UC|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(146));

-- Location: FF_X75_Y4_N27
\FD|REG_P3|data_s[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(146),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(105));

-- Location: FF_X75_Y4_N11
\FD|REG_P4|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(105),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(69));

-- Location: FF_X82_Y4_N25
\FD|REG_P3|data_s[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux31~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(37));

-- Location: FF_X82_Y4_N1
\FD|REG_P4|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(5));

-- Location: LCCOMB_X75_Y4_N0
\UC|pontosDeControle[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[6]~4_combout\ = (\FD|ROM|memROM~22_combout\ & ((\FD|ROM|memROM~24_combout\ & ((!\FD|ROM|memROM~21_combout\))) # (!\FD|ROM|memROM~24_combout\ & (!\FD|PC|data_s\(2))))) # (!\FD|ROM|memROM~22_combout\ & (((\FD|ROM|memROM~21_combout\ & 
-- !\FD|ROM|memROM~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|ROM|memROM~22_combout\,
	datac => \FD|ROM|memROM~21_combout\,
	datad => \FD|ROM|memROM~24_combout\,
	combout => \UC|pontosDeControle[6]~4_combout\);

-- Location: FF_X75_Y4_N1
\FD|REG_P2|data_s[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UC|pontosDeControle[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(143));

-- Location: LCCOMB_X75_Y5_N4
\FD|REG_P3|data_s[102]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[102]~feeder_combout\ = \FD|REG_P2|data_s\(143)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(143),
	combout => \FD|REG_P3|data_s[102]~feeder_combout\);

-- Location: FF_X75_Y5_N5
\FD|REG_P3|data_s[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[102]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(102));

-- Location: FF_X79_Y4_N27
\FD|BR|bancoReg_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(11));

-- Location: FF_X76_Y7_N3
\FD|BR|bancoReg_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P4|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(9));

-- Location: LCCOMB_X79_Y4_N24
\FD|BR|bancoReg_rtl_1_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X79_Y4_N25
\FD|BR|bancoReg_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(12));

-- Location: LCCOMB_X75_Y4_N24
\UC|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~0_combout\ = ((\FD|ROM|memROM~24_combout\) # (!\FD|ROM|memROM~22_combout\)) # (!\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|ROM|memROM~22_combout\,
	datad => \FD|ROM|memROM~24_combout\,
	combout => \UC|Equal2~0_combout\);

-- Location: FF_X75_Y4_N25
\FD|REG_P2|data_s[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UC|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(142));

-- Location: LCCOMB_X75_Y4_N22
\FD|mux_Rd_Rt|saida[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[1]~2_combout\ = (\FD|mux_Rd_Rt|saida[2]~0_combout\) # ((\FD|ROM|memROM~30_combout\ & !\FD|REG_P2|data_s\(142)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~30_combout\,
	datab => \FD|mux_Rd_Rt|saida[2]~0_combout\,
	datad => \FD|REG_P2|data_s\(142),
	combout => \FD|mux_Rd_Rt|saida[1]~2_combout\);

-- Location: FF_X75_Y4_N23
\FD|REG_P3|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(1));

-- Location: LCCOMB_X75_Y8_N30
\FD|REG_P4|data_s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[1]~feeder_combout\ = \FD|REG_P3|data_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(1),
	combout => \FD|REG_P4|data_s[1]~feeder_combout\);

-- Location: FF_X75_Y8_N31
\FD|REG_P4|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(1));

-- Location: FF_X75_Y8_N11
\FD|BR|bancoReg_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P4|data_s\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(3));

-- Location: LCCOMB_X75_Y4_N28
\FD|mux_Rd_Rt|saida[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[0]~1_combout\ = (\FD|mux_Rd_Rt|saida[2]~0_combout\) # ((!\FD|ROM|memROM~26_combout\ & (!\FD|REG_P2|data_s\(142) & \FD|ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~26_combout\,
	datab => \FD|mux_Rd_Rt|saida[2]~0_combout\,
	datac => \FD|REG_P2|data_s\(142),
	datad => \FD|ROM|memROM~14_combout\,
	combout => \FD|mux_Rd_Rt|saida[0]~1_combout\);

-- Location: FF_X75_Y4_N29
\FD|REG_P3|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(0));

-- Location: LCCOMB_X75_Y8_N8
\FD|REG_P4|data_s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[0]~feeder_combout\ = \FD|REG_P3|data_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P3|data_s\(0),
	combout => \FD|REG_P4|data_s[0]~feeder_combout\);

-- Location: FF_X75_Y8_N9
\FD|REG_P4|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(0));

-- Location: FF_X75_Y8_N5
\FD|BR|bancoReg_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P4|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(1));

-- Location: FF_X75_Y8_N3
\FD|BR|bancoReg_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ROM|memROM~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(2));

-- Location: LCCOMB_X75_Y8_N28
\FD|BR|bancoReg_rtl_1_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\ = \FD|ROM|memROM~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|memROM~30_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\);

-- Location: FF_X75_Y8_N29
\FD|BR|bancoReg_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(4));

-- Location: LCCOMB_X75_Y8_N2
\FD|BR|bancoReg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~40_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(3) & (\FD|BR|bancoReg_rtl_1_bypass\(4) & (\FD|BR|bancoReg_rtl_1_bypass\(1) $ (!\FD|BR|bancoReg_rtl_1_bypass\(2))))) # (!\FD|BR|bancoReg_rtl_1_bypass\(3) & (!\FD|BR|bancoReg_rtl_1_bypass\(4) & 
-- (\FD|BR|bancoReg_rtl_1_bypass\(1) $ (!\FD|BR|bancoReg_rtl_1_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(3),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(1),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(2),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(4),
	combout => \FD|BR|bancoReg~40_combout\);

-- Location: LCCOMB_X79_Y7_N30
\FD|BR|bancoReg_rtl_1_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\ = \FD|ROM|memROM~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~33_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\);

-- Location: FF_X79_Y7_N31
\FD|BR|bancoReg_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(8));

-- Location: LCCOMB_X79_Y7_N18
\FD|BR|bancoReg_rtl_1_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\ = \FD|REG_P4|data_s\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P4|data_s\(70),
	combout => \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X79_Y7_N19
\FD|BR|bancoReg_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(0));

-- Location: LCCOMB_X74_Y4_N4
\FD|mux_Rd_Rt|saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[3]~3_combout\ = (\FD|ROM|memROM~14_combout\ & ((\FD|REG_P2|data_s\(142) & (\FD|ROM|memROM~15_combout\)) # (!\FD|REG_P2|data_s\(142) & ((!\FD|ROM|memROM~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~15_combout\,
	datab => \FD|ROM|memROM~27_combout\,
	datac => \FD|ROM|memROM~14_combout\,
	datad => \FD|REG_P2|data_s\(142),
	combout => \FD|mux_Rd_Rt|saida[3]~3_combout\);

-- Location: FF_X74_Y4_N5
\FD|REG_P3|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(3));

-- Location: LCCOMB_X75_Y7_N28
\FD|REG_P4|data_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[3]~feeder_combout\ = \FD|REG_P3|data_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(3),
	combout => \FD|REG_P4|data_s[3]~feeder_combout\);

-- Location: FF_X75_Y7_N29
\FD|REG_P4|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(3));

-- Location: FF_X79_Y7_N1
\FD|BR|bancoReg_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P4|data_s\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(7));

-- Location: LCCOMB_X79_Y7_N20
\FD|BR|bancoReg_rtl_1_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\ = \FD|REG_P4|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P4|data_s\(2),
	combout => \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\);

-- Location: FF_X79_Y7_N21
\FD|BR|bancoReg_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(5));

-- Location: LCCOMB_X79_Y7_N0
\FD|BR|bancoReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~41_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(0) & (!\FD|BR|bancoReg_rtl_1_bypass\(5) & (\FD|BR|bancoReg_rtl_1_bypass\(8) $ (!\FD|BR|bancoReg_rtl_1_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(8),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(0),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(7),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(5),
	combout => \FD|BR|bancoReg~41_combout\);

-- Location: LCCOMB_X79_Y4_N22
\FD|BR|saidaB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~0_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(12) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(12),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[0]~0_combout\);

-- Location: LCCOMB_X77_Y7_N22
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

-- Location: LCCOMB_X73_Y4_N12
\FD|ROM|memROM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~25_combout\ = (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (((\FD|PC|data_s\(2) & \FD|PC|data_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~25_combout\);

-- Location: LCCOMB_X73_Y4_N4
\FD|ROM|memROM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~31_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|ROM|memROM~25_combout\,
	combout => \FD|ROM|memROM~31_combout\);

-- Location: FF_X76_Y7_N17
\FD|REG_P1|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ROM|memROM~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(21));

-- Location: LCCOMB_X76_Y7_N10
\FD|BR|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal0~0_combout\ = (\FD|REG_P1|data_s\(5)) # (\FD|REG_P1|data_s\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P1|data_s\(5),
	datad => \FD|REG_P1|data_s\(21),
	combout => \FD|BR|Equal0~0_combout\);

-- Location: FF_X80_Y8_N7
\FD|BR|bancoReg_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[1]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(13));

-- Location: LCCOMB_X79_Y8_N28
\FD|BR|bancoReg_rtl_1_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[2]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[2]~30_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\);

-- Location: FF_X79_Y8_N29
\FD|BR|bancoReg_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(15));

-- Location: LCCOMB_X77_Y8_N28
\FD|BR|bancoReg_rtl_1_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X77_Y8_N29
\FD|BR|bancoReg_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(16));

-- Location: LCCOMB_X77_Y8_N30
\FD|BR|saidaB[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~60_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(16) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(16),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[2]~60_combout\);

-- Location: LCCOMB_X77_Y4_N20
\UC|pontosDeControle[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[9]~0_combout\ = (\FD|ROM|memROM~22_combout\ & ((\FD|ROM|memROM~24_combout\))) # (!\FD|ROM|memROM~22_combout\ & ((\FD|ROM|memROM~21_combout\) # (!\FD|ROM|memROM~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~22_combout\,
	datab => \FD|ROM|memROM~21_combout\,
	datac => \FD|ROM|memROM~24_combout\,
	combout => \UC|pontosDeControle[9]~0_combout\);

-- Location: FF_X77_Y4_N21
\FD|REG_P2|data_s[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UC|pontosDeControle[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(140));

-- Location: LCCOMB_X81_Y4_N12
\FD|UCULA|ALUctr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~0_combout\ = (!\FD|REG_P2|data_s\(141) & (\FD|REG_P2|data_s\(138) $ (\FD|REG_P2|data_s\(140))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(138),
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|REG_P2|data_s\(141),
	combout => \FD|UCULA|ALUctr[1]~0_combout\);

-- Location: LCCOMB_X81_Y4_N22
\FD|UCULA|ALUctr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~1_combout\ = (!\FD|REG_P2|data_s\(140) & !\FD|REG_P2|data_s\(141))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|REG_P2|data_s\(141),
	combout => \FD|UCULA|ALUctr[1]~1_combout\);

-- Location: LCCOMB_X74_Y4_N24
\FD|ROM|memROM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~16_combout\ = (\FD|PC|data_s\(3) & !\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~16_combout\);

-- Location: LCCOMB_X74_Y4_N22
\FD|UCULA|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Equal3~1_combout\ = (\FD|ROM|memROM~15_combout\ & (\FD|ROM|memROM~14_combout\ & ((!\FD|ROM|memROM~17_combout\) # (!\FD|ROM|memROM~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~15_combout\,
	datab => \FD|ROM|memROM~16_combout\,
	datac => \FD|ROM|memROM~14_combout\,
	datad => \FD|ROM|memROM~17_combout\,
	combout => \FD|UCULA|Equal3~1_combout\);

-- Location: LCCOMB_X73_Y4_N24
\FD|UCULA|ALUctr[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~2_combout\ = (!\FD|ROM|memROM~18_combout\ & (!\FD|ROM|memROM~20_combout\ & (\FD|ROM|memROM~28_combout\ & \FD|UCULA|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~18_combout\,
	datab => \FD|ROM|memROM~20_combout\,
	datac => \FD|ROM|memROM~28_combout\,
	datad => \FD|UCULA|Equal3~1_combout\,
	combout => \FD|UCULA|ALUctr[1]~2_combout\);

-- Location: LCCOMB_X73_Y4_N22
\FD|UCULA|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Equal3~0_combout\ = (\FD|PC|data_s\(7)) # ((\FD|PC|data_s\(6)) # ((\FD|ROM|memROM~12_combout\ & !\FD|ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~12_combout\,
	datab => \FD|ROM|memROM~13_combout\,
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(6),
	combout => \FD|UCULA|Equal3~0_combout\);

-- Location: LCCOMB_X73_Y4_N18
\FD|UCULA|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Equal3~2_combout\ = (\FD|UCULA|Equal3~0_combout\ & (!\FD|ROM|memROM~20_combout\ & (\FD|UCULA|Equal3~1_combout\ & !\FD|ROM|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~0_combout\,
	datab => \FD|ROM|memROM~20_combout\,
	datac => \FD|UCULA|Equal3~1_combout\,
	datad => \FD|ROM|memROM~18_combout\,
	combout => \FD|UCULA|Equal3~2_combout\);

-- Location: LCCOMB_X82_Y4_N22
\FD|UCULA|ALUctr[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~3_combout\ = (\FD|UCULA|ALUctr[1]~0_combout\) # ((\FD|UCULA|ALUctr[1]~1_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\) # (\FD|UCULA|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~0_combout\,
	datab => \FD|UCULA|ALUctr[1]~1_combout\,
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|UCULA|Equal3~2_combout\,
	combout => \FD|UCULA|ALUctr[1]~3_combout\);

-- Location: LCCOMB_X81_Y4_N18
\FD|UCULA|ALUctr[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~7_combout\ = (!\FD|REG_P2|data_s\(141) & (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(140)) # (\FD|UCULA|ALUctr[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(140),
	datab => \FD|REG_P2|data_s\(141),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|UCULA|ALUctr[2]~7_combout\);

-- Location: LCCOMB_X82_Y4_N0
\FD|ULA|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~5_combout\ = (!\FD|UCULA|ALUctr[1]~3_combout\ & !\FD|UCULA|ALUctr[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~3_combout\,
	datad => \FD|UCULA|ALUctr[2]~7_combout\,
	combout => \FD|ULA|Mux31~5_combout\);

-- Location: FF_X79_Y5_N5
\FD|BR|bancoReg_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[3]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(17));

-- Location: LCCOMB_X82_Y5_N22
\FD|BR|bancoReg_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X82_Y5_N23
\FD|BR|bancoReg_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(18));

-- Location: FF_X75_Y8_N7
\FD|BR|bancoReg_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P4|data_s\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(7));

-- Location: LCCOMB_X75_Y8_N18
\FD|BR|bancoReg_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[2]~feeder_combout\ = \FD|ROM|memROM~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~31_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X75_Y8_N19
\FD|BR|bancoReg_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(2));

-- Location: FF_X75_Y8_N21
\FD|BR|bancoReg_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ROM|memROM~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(8));

-- Location: FF_X75_Y8_N13
\FD|BR|bancoReg_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P4|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(1));

-- Location: LCCOMB_X75_Y8_N20
\FD|BR|bancoReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~38_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(7) & (\FD|BR|bancoReg_rtl_0_bypass\(8) & (\FD|BR|bancoReg_rtl_0_bypass\(2) $ (!\FD|BR|bancoReg_rtl_0_bypass\(1))))) # (!\FD|BR|bancoReg_rtl_0_bypass\(7) & (!\FD|BR|bancoReg_rtl_0_bypass\(8) & 
-- (\FD|BR|bancoReg_rtl_0_bypass\(2) $ (!\FD|BR|bancoReg_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(7),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(2),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(8),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(1),
	combout => \FD|BR|bancoReg~38_combout\);

-- Location: LCCOMB_X82_Y5_N8
\FD|BR|saidaA[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~58_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(18) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(18),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[3]~58_combout\);

-- Location: FF_X79_Y8_N23
\FD|BR|bancoReg_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(19));

-- Location: LCCOMB_X82_Y8_N0
\FD|BR|bancoReg_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X82_Y8_N1
\FD|BR|bancoReg_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(20));

-- Location: LCCOMB_X82_Y8_N2
\FD|BR|saidaA[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~56_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(20) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(20),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[4]~56_combout\);

-- Location: LCCOMB_X79_Y8_N26
\FD|BR|bancoReg_rtl_0_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[21]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[5]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[5]~27_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[21]~feeder_combout\);

-- Location: FF_X79_Y8_N27
\FD|BR|bancoReg_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(21));

-- Location: LCCOMB_X80_Y5_N10
\FD|BR|bancoReg_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X80_Y5_N11
\FD|BR|bancoReg_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(24));

-- Location: LCCOMB_X79_Y5_N10
\FD|BR|saidaA[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~52_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(24) & ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(24),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaA[6]~52_combout\);

-- Location: FF_X80_Y7_N11
\FD|BR|bancoReg_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[7]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(25));

-- Location: LCCOMB_X81_Y5_N12
\FD|BR|bancoReg_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X81_Y5_N13
\FD|BR|bancoReg_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(26));

-- Location: LCCOMB_X82_Y5_N12
\FD|BR|saidaA[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~50_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(26) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(26),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[7]~50_combout\);

-- Location: LCCOMB_X82_Y8_N28
\FD|BR|bancoReg_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X82_Y8_N29
\FD|BR|bancoReg_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(28));

-- Location: LCCOMB_X82_Y8_N18
\FD|BR|saidaA[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~48_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(28) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(28),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[8]~48_combout\);

-- Location: LCCOMB_X76_Y7_N18
\FD|BR|bancoReg_rtl_1_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X76_Y7_N19
\FD|BR|bancoReg_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(30));

-- Location: LCCOMB_X76_Y7_N12
\FD|BR|saidaB[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~46_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(30) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(30),
	combout => \FD|BR|saidaB[9]~46_combout\);

-- Location: LCCOMB_X79_Y8_N12
\FD|BR|bancoReg_rtl_1_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[1]~31_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\);

-- Location: FF_X79_Y8_N13
\FD|BR|bancoReg_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(13));

-- Location: LCCOMB_X79_Y7_N12
\FD|BR|bancoReg_rtl_1_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X79_Y7_N13
\FD|BR|bancoReg_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(14));

-- Location: LCCOMB_X79_Y7_N2
\FD|BR|saidaB[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~62_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(14) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(14),
	combout => \FD|BR|saidaB[1]~62_combout\);

-- Location: FF_X79_Y8_N31
\FD|BR|bancoReg_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(35));

-- Location: LCCOMB_X80_Y5_N14
\FD|BR|bancoReg_rtl_1_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\);

-- Location: FF_X80_Y5_N15
\FD|BR|bancoReg_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(38));

-- Location: LCCOMB_X80_Y5_N6
\FD|BR|saidaB[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(38) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(38),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[13]~38_combout\);

-- Location: LCCOMB_X79_Y8_N6
\FD|BR|bancoReg_rtl_1_bypass[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[13]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[13]~19_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\);

-- Location: FF_X79_Y8_N7
\FD|BR|bancoReg_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(37));

-- Location: FF_X77_Y7_N17
\FD|BR|bancoReg_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(41));

-- Location: LCCOMB_X77_Y5_N28
\FD|BR|bancoReg_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X77_Y5_N29
\FD|BR|bancoReg_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(42));

-- Location: LCCOMB_X77_Y5_N2
\FD|BR|saidaA[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~34_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(42) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(42),
	combout => \FD|BR|saidaA[15]~34_combout\);

-- Location: FF_X79_Y5_N11
\FD|REG_P3|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(44),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(7));

-- Location: LCCOMB_X79_Y9_N18
\FD|BR|bancoReg_rtl_1_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[3]~29_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\);

-- Location: FF_X79_Y9_N19
\FD|BR|bancoReg_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(17));

-- Location: LCCOMB_X79_Y4_N8
\FD|BR|bancoReg_rtl_1_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X79_Y4_N9
\FD|BR|bancoReg_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(18));

-- Location: LCCOMB_X79_Y4_N10
\FD|BR|saidaB[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~58_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(18) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(18),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[3]~58_combout\);

-- Location: LCCOMB_X79_Y8_N8
\FD|BR|bancoReg_rtl_1_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[4]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[4]~28_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\);

-- Location: FF_X79_Y8_N9
\FD|BR|bancoReg_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(19));

-- Location: LCCOMB_X79_Y7_N24
\FD|BR|bancoReg_rtl_1_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X79_Y7_N25
\FD|BR|bancoReg_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(20));

-- Location: LCCOMB_X79_Y7_N22
\FD|BR|saidaB[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~56_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(20) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(20),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[4]~56_combout\);

-- Location: LCCOMB_X80_Y4_N28
\FD|BR|bancoReg_rtl_1_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\);

-- Location: FF_X80_Y4_N29
\FD|BR|bancoReg_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(50));

-- Location: LCCOMB_X79_Y4_N14
\FD|BR|saidaB[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~26_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(50) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(50),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[19]~26_combout\);

-- Location: LCCOMB_X79_Y4_N20
\FD|BR|bancoReg_rtl_1_bypass[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[49]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[19]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[19]~13_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[49]~feeder_combout\);

-- Location: FF_X79_Y4_N21
\FD|BR|bancoReg_rtl_1_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(49));

-- Location: LCCOMB_X79_Y5_N18
\FD|REG_P3|data_s[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[24]~feeder_combout\ = \FD|REG_P2|data_s\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(61),
	combout => \FD|REG_P3|data_s[24]~feeder_combout\);

-- Location: FF_X79_Y5_N19
\FD|REG_P3|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(24));

-- Location: LCCOMB_X79_Y9_N10
\FD|BR|bancoReg_rtl_1_bypass[51]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[20]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[20]~12_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\);

-- Location: FF_X79_Y9_N11
\FD|BR|bancoReg_rtl_1_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(51));

-- Location: LCCOMB_X79_Y6_N2
\FD|BR|bancoReg_rtl_1_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\);

-- Location: FF_X79_Y6_N3
\FD|BR|bancoReg_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(52));

-- Location: LCCOMB_X79_Y6_N8
\FD|BR|saidaB[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~24_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(52) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(52),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[20]~24_combout\);

-- Location: FF_X77_Y6_N23
\FD|BR|bancoReg_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(57));

-- Location: FF_X79_Y5_N7
\FD|BR|bancoReg_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(59));

-- Location: LCCOMB_X82_Y5_N20
\FD|BR|bancoReg_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X82_Y5_N21
\FD|BR|bancoReg_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(60));

-- Location: LCCOMB_X82_Y5_N26
\FD|BR|saidaA[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~16_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(60) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(60),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[24]~16_combout\);

-- Location: LCCOMB_X77_Y8_N12
\FD|BR|bancoReg_rtl_1_bypass[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[61]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[25]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[25]~7_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[61]~feeder_combout\);

-- Location: FF_X77_Y8_N13
\FD|BR|bancoReg_rtl_1_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[61]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(61));

-- Location: LCCOMB_X80_Y3_N18
\FD|BR|bancoReg_rtl_1_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\);

-- Location: FF_X80_Y3_N19
\FD|BR|bancoReg_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(62));

-- Location: LCCOMB_X80_Y3_N0
\FD|BR|saidaB[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~14_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(62) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~40_combout\)) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(62),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaB[25]~14_combout\);

-- Location: LCCOMB_X77_Y6_N16
\FD|BR|bancoReg_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X77_Y6_N17
\FD|BR|bancoReg_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(64));

-- Location: LCCOMB_X77_Y6_N26
\FD|BR|saidaA[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~12_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(64) & ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(64),
	combout => \FD|BR|saidaA[26]~12_combout\);

-- Location: FF_X77_Y5_N11
\FD|BR|bancoReg_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(63));

-- Location: FF_X79_Y9_N21
\FD|BR|bancoReg_rtl_1_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[21]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(53));

-- Location: LCCOMB_X76_Y6_N18
\FD|BR|bancoReg_rtl_1_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\);

-- Location: FF_X76_Y6_N19
\FD|BR|bancoReg_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(54));

-- Location: LCCOMB_X76_Y6_N20
\FD|BR|saidaB[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~22_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(54) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(54),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[21]~22_combout\);

-- Location: FF_X79_Y6_N7
\FD|BR|bancoReg_rtl_1_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[28]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(67));

-- Location: LCCOMB_X79_Y6_N18
\FD|BR|bancoReg_rtl_1_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\);

-- Location: FF_X79_Y6_N19
\FD|BR|bancoReg_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(68));

-- Location: LCCOMB_X79_Y6_N4
\FD|BR|saidaB[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~8_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(68) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(68),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[28]~8_combout\);

-- Location: FF_X77_Y5_N27
\FD|BR|bancoReg_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(71));

-- Location: LCCOMB_X81_Y5_N14
\FD|BR|bancoReg_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X81_Y5_N15
\FD|BR|bancoReg_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(72));

-- Location: LCCOMB_X82_Y5_N10
\FD|BR|saidaA[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~4_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(72) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(72),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[30]~4_combout\);

-- Location: FF_X79_Y8_N15
\FD|BR|bancoReg_rtl_1_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(73));

-- Location: LCCOMB_X77_Y8_N24
\FD|BR|bancoReg_rtl_1_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\);

-- Location: FF_X77_Y8_N25
\FD|BR|bancoReg_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(74));

-- Location: LCCOMB_X77_Y8_N22
\FD|BR|saidaB[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~2_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(74) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(74),
	combout => \FD|BR|saidaB[31]~2_combout\);

-- Location: M9K_X78_Y7_N0
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000000D00000000C00000000B00000000A00000000900000000A000000006000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P4|data_s\(70),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X79_Y8_N0
\FD|BR|saidaB[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~3_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[31]~2_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\))) # (!\FD|BR|saidaB[31]~2_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(73),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[31]~2_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\,
	combout => \FD|BR|saidaB[31]~3_combout\);

-- Location: FF_X79_Y8_N1
\FD|REG_P2|data_s[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(73));

-- Location: LCCOMB_X80_Y5_N16
\FD|mux_Banco_Ula|saida[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[31]~1_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(73),
	datab => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[31]~1_combout\);

-- Location: FF_X79_Y8_N17
\FD|BR|bancoReg_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[31]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(73));

-- Location: M9K_X78_Y8_N0
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000000D00000000C00000000B00000000A00000000900000000A000000006000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P4|data_s\(70),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X82_Y8_N8
\FD|BR|bancoReg_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X82_Y8_N9
\FD|BR|bancoReg_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(74));

-- Location: LCCOMB_X82_Y8_N26
\FD|BR|saidaA[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~2_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(74) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(74),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[31]~2_combout\);

-- Location: LCCOMB_X81_Y8_N12
\FD|BR|saidaA[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~3_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[31]~2_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\))) # (!\FD|BR|saidaA[31]~2_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(73),
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|saidaA[31]~2_combout\,
	combout => \FD|BR|saidaA[31]~3_combout\);

-- Location: FF_X81_Y8_N13
\FD|REG_P2|data_s[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(105));

-- Location: LCCOMB_X81_Y4_N28
\FD|UCULA|ALUctr[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~5_combout\ = (!\FD|REG_P2|data_s\(138) & (\FD|ROM|memROM~30_combout\ & (\FD|UCULA|ALUctr[1]~1_combout\ & !\FD|ROM|memROM~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(138),
	datab => \FD|ROM|memROM~30_combout\,
	datac => \FD|UCULA|ALUctr[1]~1_combout\,
	datad => \FD|ROM|memROM~21_combout\,
	combout => \FD|UCULA|ALUctr[0]~5_combout\);

-- Location: LCCOMB_X73_Y4_N30
\FD|UCULA|ALUctr[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~4_combout\ = (\FD|ROM|memROM~18_combout\ & (!\FD|ROM|memROM~29_combout\ & (!\FD|ROM|memROM~28_combout\ & \FD|ROM|memROM~20_combout\))) # (!\FD|ROM|memROM~18_combout\ & (\FD|ROM|memROM~29_combout\ & (\FD|ROM|memROM~28_combout\ & 
-- !\FD|ROM|memROM~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~18_combout\,
	datab => \FD|ROM|memROM~29_combout\,
	datac => \FD|ROM|memROM~28_combout\,
	datad => \FD|ROM|memROM~20_combout\,
	combout => \FD|UCULA|ALUctr[0]~4_combout\);

-- Location: LCCOMB_X82_Y4_N2
\FD|UCULA|ALUctr[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~6_combout\ = (\FD|UCULA|ALUctr[0]~5_combout\ & (\FD|UCULA|ALUctr[0]~4_combout\ & !\FD|UCULA|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|ALUctr[0]~4_combout\,
	datad => \FD|UCULA|Equal3~2_combout\,
	combout => \FD|UCULA|ALUctr[0]~6_combout\);

-- Location: LCCOMB_X82_Y4_N10
\FD|ULA|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~0_combout\ = (\FD|UCULA|ALUctr[1]~3_combout\ & ((!\FD|UCULA|ALUctr[2]~7_combout\) # (!\FD|UCULA|ALUctr[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~6_combout\,
	datac => \FD|UCULA|ALUctr[1]~3_combout\,
	datad => \FD|UCULA|ALUctr[2]~7_combout\,
	combout => \FD|ULA|Mux21~0_combout\);

-- Location: LCCOMB_X82_Y4_N18
\FD|ULA|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~1_combout\ = (\FD|UCULA|ALUctr[2]~7_combout\) # ((\FD|UCULA|ALUctr[0]~6_combout\ & !\FD|UCULA|ALUctr[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~6_combout\,
	datac => \FD|UCULA|ALUctr[1]~3_combout\,
	datad => \FD|UCULA|ALUctr[2]~7_combout\,
	combout => \FD|ULA|Mux21~1_combout\);

-- Location: FF_X77_Y7_N23
\FD|BR|bancoReg_rtl_1_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[30]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(71));

-- Location: LCCOMB_X76_Y7_N30
\FD|BR|bancoReg_rtl_1_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\);

-- Location: FF_X76_Y7_N31
\FD|BR|bancoReg_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(72));

-- Location: LCCOMB_X76_Y7_N14
\FD|BR|saidaB[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~4_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(72) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(72),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[30]~4_combout\);

-- Location: LCCOMB_X77_Y7_N0
\FD|BR|saidaB[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~5_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[30]~4_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\))) # (!\FD|BR|saidaB[30]~4_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(71),
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\,
	datac => \FD|BR|saidaB[30]~4_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[30]~5_combout\);

-- Location: FF_X77_Y7_N1
\FD|REG_P2|data_s[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(72));

-- Location: LCCOMB_X80_Y7_N0
\FD|mux_Banco_Ula|saida[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[30]~2_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(41))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(41),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(72),
	combout => \FD|mux_Banco_Ula|saida[30]~2_combout\);

-- Location: LCCOMB_X80_Y8_N22
\FD|BR|bancoReg_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X80_Y8_N23
\FD|BR|bancoReg_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(68));

-- Location: LCCOMB_X80_Y8_N8
\FD|BR|saidaA[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~8_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(68) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(68),
	datab => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[28]~8_combout\);

-- Location: FF_X80_Y8_N9
\FD|BR|bancoReg_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[28]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(67));

-- Location: LCCOMB_X80_Y8_N16
\FD|BR|saidaA[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~9_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[28]~8_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\)) # (!\FD|BR|saidaA[28]~8_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(67))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[28]~8_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(67),
	combout => \FD|BR|saidaA[28]~9_combout\);

-- Location: FF_X80_Y8_N17
\FD|REG_P2|data_s[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(102));

-- Location: LCCOMB_X76_Y5_N24
\FD|BR|bancoReg_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X76_Y5_N25
\FD|BR|bancoReg_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(66));

-- Location: LCCOMB_X77_Y5_N24
\FD|BR|saidaA[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~10_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(66) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(66),
	combout => \FD|BR|saidaA[27]~10_combout\);

-- Location: FF_X77_Y5_N23
\FD|BR|bancoReg_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(65));

-- Location: LCCOMB_X77_Y5_N0
\FD|BR|saidaA[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~11_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[27]~10_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\)) # (!\FD|BR|saidaA[27]~10_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[27]~10_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(65),
	combout => \FD|BR|saidaA[27]~11_combout\);

-- Location: FF_X77_Y5_N1
\FD|REG_P2|data_s[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(101));

-- Location: FF_X77_Y5_N25
\FD|BR|bancoReg_rtl_1_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[27]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(65));

-- Location: LCCOMB_X80_Y5_N12
\FD|BR|bancoReg_rtl_1_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\);

-- Location: FF_X80_Y5_N13
\FD|BR|bancoReg_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(66));

-- Location: LCCOMB_X80_Y5_N8
\FD|BR|saidaB[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~10_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(66) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~40_combout\)) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(66),
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[27]~10_combout\);

-- Location: LCCOMB_X80_Y5_N20
\FD|BR|saidaB[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~11_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[27]~10_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\))) # (!\FD|BR|saidaB[27]~10_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(65),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[27]~10_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\,
	combout => \FD|BR|saidaB[27]~11_combout\);

-- Location: FF_X80_Y5_N21
\FD|REG_P2|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(69));

-- Location: LCCOMB_X80_Y5_N2
\FD|mux_Banco_Ula|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[27]~5_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(41))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(69))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(138),
	datab => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(69),
	combout => \FD|mux_Banco_Ula|saida[27]~5_combout\);

-- Location: LCCOMB_X77_Y5_N4
\FD|BR|bancoReg_rtl_1_bypass[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[63]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[26]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[26]~6_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[63]~feeder_combout\);

-- Location: FF_X77_Y5_N5
\FD|BR|bancoReg_rtl_1_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(63));

-- Location: LCCOMB_X79_Y4_N12
\FD|BR|bancoReg_rtl_1_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\);

-- Location: FF_X79_Y4_N13
\FD|BR|bancoReg_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(64));

-- Location: LCCOMB_X79_Y4_N2
\FD|BR|saidaB[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~12_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(64) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(64),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[26]~12_combout\);

-- Location: LCCOMB_X80_Y5_N22
\FD|BR|saidaB[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~13_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[26]~12_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\)) # (!\FD|BR|saidaB[26]~12_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(63),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[26]~12_combout\,
	combout => \FD|BR|saidaB[26]~13_combout\);

-- Location: FF_X80_Y5_N23
\FD|REG_P2|data_s[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(68));

-- Location: LCCOMB_X80_Y5_N0
\FD|mux_Banco_Ula|saida[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[26]~6_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(68)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(68),
	datab => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[26]~6_combout\);

-- Location: LCCOMB_X81_Y8_N28
\FD|BR|bancoReg_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X81_Y8_N29
\FD|BR|bancoReg_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(62));

-- Location: LCCOMB_X81_Y8_N10
\FD|BR|saidaA[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~14_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(62) & ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(62),
	combout => \FD|BR|saidaA[25]~14_combout\);

-- Location: FF_X77_Y8_N27
\FD|BR|bancoReg_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(61));

-- Location: LCCOMB_X81_Y8_N8
\FD|BR|saidaA[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~15_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[25]~14_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\))) # (!\FD|BR|saidaA[25]~14_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[25]~14_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(61),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\,
	combout => \FD|BR|saidaA[25]~15_combout\);

-- Location: FF_X81_Y8_N9
\FD|REG_P2|data_s[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(99));

-- Location: LCCOMB_X79_Y5_N28
\FD|BR|bancoReg_rtl_1_bypass[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[59]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[24]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[24]~8_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[59]~feeder_combout\);

-- Location: FF_X79_Y5_N29
\FD|BR|bancoReg_rtl_1_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[59]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(59));

-- Location: LCCOMB_X80_Y3_N6
\FD|BR|bancoReg_rtl_1_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\);

-- Location: FF_X80_Y3_N7
\FD|BR|bancoReg_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(60));

-- Location: LCCOMB_X80_Y3_N12
\FD|BR|saidaB[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~16_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(60) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(60),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaB[24]~16_combout\);

-- Location: LCCOMB_X80_Y3_N2
\FD|BR|saidaB[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~17_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[24]~16_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\))) # (!\FD|BR|saidaB[24]~16_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(59),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\,
	datad => \FD|BR|saidaB[24]~16_combout\,
	combout => \FD|BR|saidaB[24]~17_combout\);

-- Location: FF_X80_Y3_N3
\FD|REG_P2|data_s[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(66));

-- Location: LCCOMB_X80_Y3_N20
\FD|mux_Banco_Ula|saida[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[24]~8_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(66),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[24]~8_combout\);

-- Location: LCCOMB_X76_Y6_N28
\FD|BR|bancoReg_rtl_1_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\);

-- Location: FF_X76_Y6_N29
\FD|BR|bancoReg_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(58));

-- Location: LCCOMB_X76_Y6_N30
\FD|BR|saidaB[23]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~18_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(58) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~40_combout\)) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(58),
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[23]~18_combout\);

-- Location: FF_X77_Y6_N13
\FD|BR|bancoReg_rtl_1_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[23]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(57));

-- Location: LCCOMB_X76_Y6_N8
\FD|BR|saidaB[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~19_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[23]~18_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\))) # (!\FD|BR|saidaB[23]~18_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[23]~18_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(57),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\,
	combout => \FD|BR|saidaB[23]~19_combout\);

-- Location: FF_X76_Y6_N9
\FD|REG_P2|data_s[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(65));

-- Location: LCCOMB_X76_Y6_N26
\FD|mux_Banco_Ula|saida[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[23]~9_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(65),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[23]~9_combout\);

-- Location: LCCOMB_X76_Y6_N16
\FD|BR|bancoReg_rtl_1_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\);

-- Location: FF_X76_Y6_N17
\FD|BR|bancoReg_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(56));

-- Location: LCCOMB_X76_Y6_N22
\FD|BR|saidaB[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~20_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(56) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~40_combout\)) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(56),
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[22]~20_combout\);

-- Location: LCCOMB_X77_Y6_N2
\FD|BR|bancoReg_rtl_1_bypass[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[22]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[22]~10_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\);

-- Location: FF_X77_Y6_N3
\FD|BR|bancoReg_rtl_1_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(55));

-- Location: LCCOMB_X76_Y6_N12
\FD|BR|saidaB[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~21_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[22]~20_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\)) # (!\FD|BR|saidaB[22]~20_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[22]~20_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(55),
	combout => \FD|BR|saidaB[22]~21_combout\);

-- Location: FF_X76_Y6_N13
\FD|REG_P2|data_s[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(64));

-- Location: LCCOMB_X76_Y6_N14
\FD|mux_Banco_Ula|saida[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[22]~10_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(64),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[22]~10_combout\);

-- Location: LCCOMB_X79_Y6_N22
\FD|mux_Banco_Ula|saida[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[21]~11_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(138),
	datab => \FD|REG_P2|data_s\(63),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[21]~11_combout\);

-- Location: LCCOMB_X80_Y6_N16
\FD|mux_Banco_Ula|saida[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[20]~12_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(62),
	datab => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[20]~12_combout\);

-- Location: FF_X79_Y9_N9
\FD|BR|bancoReg_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(51));

-- Location: LCCOMB_X79_Y9_N14
\FD|BR|bancoReg_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X79_Y9_N15
\FD|BR|bancoReg_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(52));

-- Location: LCCOMB_X79_Y9_N28
\FD|BR|saidaA[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~24_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(52) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(52),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[20]~24_combout\);

-- Location: LCCOMB_X79_Y9_N22
\FD|BR|saidaA[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~25_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[20]~24_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\))) # (!\FD|BR|saidaA[20]~24_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(51),
	datab => \FD|BR|saidaA[20]~24_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\,
	combout => \FD|BR|saidaA[20]~25_combout\);

-- Location: FF_X79_Y9_N23
\FD|REG_P2|data_s[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(94));

-- Location: LCCOMB_X81_Y4_N14
\FD|BR|bancoReg_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X81_Y4_N15
\FD|BR|bancoReg_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(50));

-- Location: LCCOMB_X81_Y4_N20
\FD|BR|saidaA[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~26_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(50) & ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(50),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaA[19]~26_combout\);

-- Location: FF_X79_Y4_N5
\FD|BR|bancoReg_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(49));

-- Location: LCCOMB_X80_Y4_N24
\FD|BR|saidaA[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~27_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[19]~26_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\))) # (!\FD|BR|saidaA[19]~26_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[19]~26_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(49),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[19]~27_combout\);

-- Location: FF_X80_Y4_N25
\FD|REG_P2|data_s[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(93));

-- Location: LCCOMB_X79_Y9_N26
\FD|BR|bancoReg_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X79_Y9_N27
\FD|BR|bancoReg_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(48));

-- Location: LCCOMB_X79_Y9_N4
\FD|BR|saidaA[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~28_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(48) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(48),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[18]~28_combout\);

-- Location: FF_X79_Y6_N1
\FD|BR|bancoReg_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(47));

-- Location: LCCOMB_X79_Y6_N26
\FD|BR|saidaA[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~29_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[18]~28_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\))) # (!\FD|BR|saidaA[18]~28_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[18]~28_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(47),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\,
	combout => \FD|BR|saidaA[18]~29_combout\);

-- Location: FF_X80_Y6_N17
\FD|REG_P2|data_s[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|saidaA[18]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(92));

-- Location: LCCOMB_X79_Y6_N14
\FD|BR|bancoReg_rtl_1_bypass[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[18]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[18]~14_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\);

-- Location: FF_X79_Y6_N15
\FD|BR|bancoReg_rtl_1_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(47));

-- Location: LCCOMB_X76_Y6_N10
\FD|BR|bancoReg_rtl_1_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\);

-- Location: FF_X76_Y6_N11
\FD|BR|bancoReg_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(48));

-- Location: LCCOMB_X76_Y6_N0
\FD|BR|saidaB[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~28_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(48) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~40_combout\)) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(48),
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[18]~28_combout\);

-- Location: LCCOMB_X76_Y6_N4
\FD|BR|saidaB[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~29_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[18]~28_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\))) # (!\FD|BR|saidaB[18]~28_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(47),
	datab => \FD|BR|saidaB[18]~28_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\,
	combout => \FD|BR|saidaB[18]~29_combout\);

-- Location: FF_X76_Y6_N5
\FD|REG_P2|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[18]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(60));

-- Location: LCCOMB_X76_Y6_N6
\FD|mux_Banco_Ula|saida[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[18]~14_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(60),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[18]~14_combout\);

-- Location: FF_X77_Y6_N5
\FD|BR|bancoReg_rtl_1_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(45));

-- Location: LCCOMB_X79_Y4_N6
\FD|BR|bancoReg_rtl_1_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\);

-- Location: FF_X79_Y4_N7
\FD|BR|bancoReg_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(46));

-- Location: LCCOMB_X79_Y6_N16
\FD|BR|saidaB[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~30_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(46) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(46),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[17]~30_combout\);

-- Location: LCCOMB_X79_Y6_N30
\FD|BR|saidaB[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~31_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[17]~30_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\))) # (!\FD|BR|saidaB[17]~30_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(45),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\,
	datad => \FD|BR|saidaB[17]~30_combout\,
	combout => \FD|BR|saidaB[17]~31_combout\);

-- Location: FF_X79_Y6_N31
\FD|REG_P2|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[17]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(59));

-- Location: LCCOMB_X79_Y6_N24
\FD|mux_Banco_Ula|saida[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[17]~15_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(59),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[17]~15_combout\);

-- Location: LCCOMB_X80_Y4_N18
\FD|BR|bancoReg_rtl_0_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[16]~16_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\);

-- Location: FF_X80_Y4_N19
\FD|BR|bancoReg_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(43));

-- Location: LCCOMB_X81_Y4_N10
\FD|BR|bancoReg_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X81_Y4_N11
\FD|BR|bancoReg_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(44));

-- Location: LCCOMB_X81_Y4_N8
\FD|BR|saidaA[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~32_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(44) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(44),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[16]~32_combout\);

-- Location: LCCOMB_X81_Y4_N16
\FD|BR|saidaA[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~33_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[16]~32_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\))) # (!\FD|BR|saidaA[16]~32_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(43),
	datac => \FD|BR|saidaA[16]~32_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\,
	combout => \FD|BR|saidaA[16]~33_combout\);

-- Location: FF_X81_Y4_N17
\FD|REG_P2|data_s[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(90));

-- Location: LCCOMB_X80_Y3_N28
\FD|BR|bancoReg_rtl_1_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\);

-- Location: FF_X80_Y3_N29
\FD|BR|bancoReg_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(44));

-- Location: LCCOMB_X80_Y3_N26
\FD|BR|saidaB[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~32_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(44) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~40_combout\)) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(44),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaB[16]~32_combout\);

-- Location: LCCOMB_X80_Y3_N14
\FD|BR|bancoReg_rtl_1_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[16]~16_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\);

-- Location: FF_X80_Y3_N15
\FD|BR|bancoReg_rtl_1_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(43));

-- Location: LCCOMB_X80_Y3_N10
\FD|BR|saidaB[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~33_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[16]~32_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\))) # (!\FD|BR|saidaB[16]~32_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[16]~32_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(43),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\,
	combout => \FD|BR|saidaB[16]~33_combout\);

-- Location: FF_X80_Y3_N11
\FD|REG_P2|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(58));

-- Location: LCCOMB_X80_Y3_N16
\FD|mux_Banco_Ula|saida[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[16]~16_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(58),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[16]~16_combout\);

-- Location: LCCOMB_X75_Y7_N16
\FD|BR|bancoReg_rtl_1_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\);

-- Location: FF_X75_Y7_N17
\FD|BR|bancoReg_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(42));

-- Location: LCCOMB_X75_Y7_N6
\FD|BR|saidaB[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~34_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(42) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(42),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaB[15]~34_combout\);

-- Location: FF_X77_Y7_N25
\FD|BR|bancoReg_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[15]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(41));

-- Location: LCCOMB_X77_Y7_N6
\FD|BR|saidaB[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~35_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[15]~34_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\)) # (!\FD|BR|saidaB[15]~34_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[15]~34_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(41),
	combout => \FD|BR|saidaB[15]~35_combout\);

-- Location: FF_X77_Y7_N7
\FD|REG_P2|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(57));

-- Location: LCCOMB_X77_Y7_N24
\FD|mux_Banco_Ula|saida[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[15]~17_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(57),
	datab => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[15]~17_combout\);

-- Location: LCCOMB_X81_Y8_N24
\FD|BR|bancoReg_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X81_Y8_N25
\FD|BR|bancoReg_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(40));

-- Location: LCCOMB_X81_Y8_N6
\FD|BR|saidaA[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~36_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(40) & ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(40),
	combout => \FD|BR|saidaA[14]~36_combout\);

-- Location: FF_X77_Y8_N19
\FD|BR|bancoReg_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(39));

-- Location: LCCOMB_X81_Y8_N30
\FD|BR|saidaA[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~37_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[14]~36_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\))) # (!\FD|BR|saidaA[14]~36_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[14]~36_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(39),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\,
	combout => \FD|BR|saidaA[14]~37_combout\);

-- Location: FF_X81_Y8_N31
\FD|REG_P2|data_s[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(88));

-- Location: LCCOMB_X80_Y8_N4
\FD|BR|bancoReg_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X80_Y8_N5
\FD|BR|bancoReg_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(38));

-- Location: LCCOMB_X80_Y8_N14
\FD|BR|saidaA[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~38_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(38) & ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(38),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaA[13]~38_combout\);

-- Location: FF_X79_Y8_N5
\FD|BR|bancoReg_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(37));

-- Location: LCCOMB_X80_Y8_N30
\FD|BR|saidaA[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~39_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[13]~38_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\))) # (!\FD|BR|saidaA[13]~38_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[13]~38_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(37),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\,
	combout => \FD|BR|saidaA[13]~39_combout\);

-- Location: FF_X80_Y8_N31
\FD|REG_P2|data_s[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(87));

-- Location: FF_X79_Y7_N7
\FD|BR|bancoReg_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[12]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(35));

-- Location: LCCOMB_X79_Y4_N0
\FD|BR|bancoReg_rtl_1_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\);

-- Location: FF_X79_Y4_N1
\FD|BR|bancoReg_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(36));

-- Location: LCCOMB_X79_Y4_N18
\FD|BR|saidaB[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~40_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(36) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(36),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[12]~40_combout\);

-- Location: LCCOMB_X79_Y7_N6
\FD|BR|saidaB[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~41_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[12]~40_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\)) # (!\FD|BR|saidaB[12]~40_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(35),
	datad => \FD|BR|saidaB[12]~40_combout\,
	combout => \FD|BR|saidaB[12]~41_combout\);

-- Location: FF_X80_Y7_N27
\FD|REG_P2|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|saidaB[12]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(54));

-- Location: LCCOMB_X80_Y7_N2
\FD|mux_Banco_Ula|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[12]~20_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(54),
	datab => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[12]~20_combout\);

-- Location: LCCOMB_X77_Y8_N4
\FD|BR|bancoReg_rtl_1_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\);

-- Location: FF_X77_Y8_N5
\FD|BR|bancoReg_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(34));

-- Location: LCCOMB_X77_Y8_N2
\FD|BR|saidaB[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~42_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(34) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(34),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[11]~42_combout\);

-- Location: FF_X79_Y7_N17
\FD|BR|bancoReg_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[11]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(33));

-- Location: LCCOMB_X79_Y7_N16
\FD|BR|saidaB[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~43_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[11]~42_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\))) # (!\FD|BR|saidaB[11]~42_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[11]~42_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(33),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\,
	combout => \FD|BR|saidaB[11]~43_combout\);

-- Location: FF_X80_Y7_N9
\FD|REG_P2|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|saidaB[11]~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(53));

-- Location: LCCOMB_X80_Y7_N6
\FD|mux_Banco_Ula|saida[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[11]~21_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(53),
	datab => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[11]~21_combout\);

-- Location: LCCOMB_X80_Y5_N18
\FD|BR|bancoReg_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X80_Y5_N19
\FD|BR|bancoReg_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(34));

-- Location: LCCOMB_X79_Y5_N26
\FD|BR|saidaA[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~42_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(34) & ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(34),
	combout => \FD|BR|saidaA[11]~42_combout\);

-- Location: FF_X79_Y5_N17
\FD|BR|bancoReg_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(33));

-- Location: LCCOMB_X80_Y5_N28
\FD|BR|saidaA[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~43_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[11]~42_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\))) # (!\FD|BR|saidaA[11]~42_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[11]~42_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(33),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\,
	combout => \FD|BR|saidaA[11]~43_combout\);

-- Location: FF_X80_Y5_N29
\FD|REG_P2|data_s[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(85));

-- Location: LCCOMB_X82_Y5_N16
\FD|BR|bancoReg_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X82_Y5_N17
\FD|BR|bancoReg_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(32));

-- Location: LCCOMB_X82_Y5_N30
\FD|BR|saidaA[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~44_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(32) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(32),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[10]~44_combout\);

-- Location: FF_X77_Y7_N9
\FD|BR|bancoReg_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(31));

-- Location: LCCOMB_X82_Y7_N28
\FD|BR|saidaA[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~45_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[10]~44_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\)) # (!\FD|BR|saidaA[10]~44_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[10]~44_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(31),
	combout => \FD|BR|saidaA[10]~45_combout\);

-- Location: FF_X82_Y7_N29
\FD|REG_P2|data_s[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(84));

-- Location: LCCOMB_X82_Y5_N24
\FD|BR|bancoReg_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X82_Y5_N25
\FD|BR|bancoReg_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(30));

-- Location: LCCOMB_X82_Y5_N14
\FD|BR|saidaA[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~46_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(30) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(30),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[9]~46_combout\);

-- Location: FF_X77_Y7_N5
\FD|BR|bancoReg_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(29));

-- Location: LCCOMB_X82_Y7_N18
\FD|BR|saidaA[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~47_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[9]~46_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\)) # (!\FD|BR|saidaA[9]~46_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\,
	datab => \FD|BR|saidaA[9]~46_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(29),
	combout => \FD|BR|saidaA[9]~47_combout\);

-- Location: FF_X82_Y7_N19
\FD|REG_P2|data_s[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(83));

-- Location: LCCOMB_X75_Y7_N12
\FD|BR|bancoReg_rtl_1_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X75_Y7_N13
\FD|BR|bancoReg_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(28));

-- Location: LCCOMB_X75_Y7_N18
\FD|BR|saidaB[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~48_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(28) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(28),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaB[8]~48_combout\);

-- Location: FF_X79_Y8_N21
\FD|BR|bancoReg_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(27));

-- Location: LCCOMB_X79_Y7_N26
\FD|BR|saidaB[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~49_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[8]~48_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\))) # (!\FD|BR|saidaB[8]~48_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[8]~48_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(27),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\,
	combout => \FD|BR|saidaB[8]~49_combout\);

-- Location: FF_X80_Y7_N23
\FD|REG_P2|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|saidaB[8]~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(50));

-- Location: LCCOMB_X80_Y7_N22
\FD|mux_Banco_Ula|saida[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[8]~24_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(41))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(41),
	datac => \FD|REG_P2|data_s\(50),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[8]~24_combout\);

-- Location: LCCOMB_X75_Y7_N20
\FD|BR|bancoReg_rtl_1_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X75_Y7_N21
\FD|BR|bancoReg_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(26));

-- Location: LCCOMB_X75_Y7_N14
\FD|BR|saidaB[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~50_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(26) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(26),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaB[7]~50_combout\);

-- Location: FF_X79_Y7_N5
\FD|BR|bancoReg_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[7]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(25));

-- Location: LCCOMB_X79_Y7_N4
\FD|BR|saidaB[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~51_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[7]~50_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\))) # (!\FD|BR|saidaB[7]~50_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[7]~50_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(25),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\,
	combout => \FD|BR|saidaB[7]~51_combout\);

-- Location: FF_X80_Y7_N19
\FD|REG_P2|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|saidaB[7]~51_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(49));

-- Location: LCCOMB_X80_Y7_N16
\FD|mux_Banco_Ula|saida[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[7]~25_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(41))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(49),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[7]~25_combout\);

-- Location: LCCOMB_X79_Y4_N28
\FD|BR|bancoReg_rtl_1_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X79_Y4_N29
\FD|BR|bancoReg_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(24));

-- Location: LCCOMB_X79_Y4_N30
\FD|BR|saidaB[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~52_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(24) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(24),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaB[6]~52_combout\);

-- Location: FF_X79_Y7_N29
\FD|BR|bancoReg_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[6]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(23));

-- Location: LCCOMB_X80_Y7_N30
\FD|BR|saidaB[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~53_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[6]~52_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\))) # (!\FD|BR|saidaB[6]~52_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[6]~52_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(23),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[6]~53_combout\);

-- Location: FF_X80_Y7_N31
\FD|REG_P2|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[6]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(48));

-- Location: LCCOMB_X80_Y7_N24
\FD|mux_Banco_Ula|saida[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[6]~26_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(48),
	datab => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[6]~26_combout\);

-- Location: FF_X79_Y8_N25
\FD|BR|bancoReg_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(21));

-- Location: LCCOMB_X76_Y7_N20
\FD|BR|bancoReg_rtl_1_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X76_Y7_N21
\FD|BR|bancoReg_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(22));

-- Location: LCCOMB_X76_Y7_N8
\FD|BR|saidaB[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~54_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(22) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(22),
	combout => \FD|BR|saidaB[5]~54_combout\);

-- Location: LCCOMB_X76_Y7_N0
\FD|BR|saidaB[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~55_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[5]~54_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\))) # (!\FD|BR|saidaB[5]~54_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(21),
	datab => \FD|BR|saidaB[5]~54_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[5]~55_combout\);

-- Location: FF_X76_Y7_N1
\FD|REG_P2|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[5]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(47));

-- Location: LCCOMB_X76_Y7_N16
\FD|mux_Banco_Ula|saida[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[5]~27_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(24))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(24),
	datab => \FD|REG_P2|data_s\(47),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[5]~27_combout\);

-- Location: LCCOMB_X80_Y7_N10
\FD|mux_Banco_Ula|saida[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[4]~28_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(41))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(46),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[4]~28_combout\);

-- Location: LCCOMB_X80_Y7_N26
\FD|mux_Banco_Ula|saida[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[3]~29_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(13))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(13),
	datab => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(45),
	combout => \FD|mux_Banco_Ula|saida[3]~29_combout\);

-- Location: LCCOMB_X82_Y8_N20
\FD|BR|bancoReg_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X82_Y8_N21
\FD|BR|bancoReg_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(16));

-- Location: LCCOMB_X82_Y8_N6
\FD|BR|saidaA[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~60_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(16) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(16),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[2]~60_combout\);

-- Location: FF_X79_Y8_N19
\FD|BR|bancoReg_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(15));

-- Location: LCCOMB_X82_Y7_N2
\FD|BR|saidaA[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~61_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[2]~60_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\))) # (!\FD|BR|saidaA[2]~60_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[2]~60_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(15),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\,
	combout => \FD|BR|saidaA[2]~61_combout\);

-- Location: FF_X82_Y7_N3
\FD|REG_P2|data_s[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(76));

-- Location: LCCOMB_X79_Y7_N28
\FD|mux_Banco_Ula|saida[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[1]~31_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(11)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(43),
	datab => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(11),
	combout => \FD|mux_Banco_Ula|saida[1]~31_combout\);

-- Location: LCCOMB_X80_Y7_N18
\FD|mux_Banco_Ula|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[0]~0_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(10)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(42),
	datab => \FD|REG_P2|data_s\(10),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[0]~0_combout\);

-- Location: LCCOMB_X83_Y7_N0
\FD|ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~0_combout\ = (\FD|mux_Banco_Ula|saida[0]~0_combout\ & (\FD|REG_P2|data_s\(74) $ (VCC))) # (!\FD|mux_Banco_Ula|saida[0]~0_combout\ & ((\FD|REG_P2|data_s\(74)) # (GND)))
-- \FD|ULA|Add1~1\ = CARRY((\FD|REG_P2|data_s\(74)) # (!\FD|mux_Banco_Ula|saida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datab => \FD|REG_P2|data_s\(74),
	datad => VCC,
	combout => \FD|ULA|Add1~0_combout\,
	cout => \FD|ULA|Add1~1\);

-- Location: LCCOMB_X83_Y7_N2
\FD|ULA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~2_combout\ = (\FD|REG_P2|data_s\(75) & ((\FD|mux_Banco_Ula|saida[1]~31_combout\ & (!\FD|ULA|Add1~1\)) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & (\FD|ULA|Add1~1\ & VCC)))) # (!\FD|REG_P2|data_s\(75) & 
-- ((\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|ULA|Add1~1\) # (GND))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & (!\FD|ULA|Add1~1\))))
-- \FD|ULA|Add1~3\ = CARRY((\FD|REG_P2|data_s\(75) & (\FD|mux_Banco_Ula|saida[1]~31_combout\ & !\FD|ULA|Add1~1\)) # (!\FD|REG_P2|data_s\(75) & ((\FD|mux_Banco_Ula|saida[1]~31_combout\) # (!\FD|ULA|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(75),
	datab => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~1\,
	combout => \FD|ULA|Add1~2_combout\,
	cout => \FD|ULA|Add1~3\);

-- Location: LCCOMB_X83_Y7_N4
\FD|ULA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~4_combout\ = ((\FD|REG_P2|data_s\(76) $ (\FD|mux_Banco_Ula|saida[2]~30_combout\ $ (\FD|ULA|Add1~3\)))) # (GND)
-- \FD|ULA|Add1~5\ = CARRY((\FD|REG_P2|data_s\(76) & ((!\FD|ULA|Add1~3\) # (!\FD|mux_Banco_Ula|saida[2]~30_combout\))) # (!\FD|REG_P2|data_s\(76) & (!\FD|mux_Banco_Ula|saida[2]~30_combout\ & !\FD|ULA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(76),
	datab => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~3\,
	combout => \FD|ULA|Add1~4_combout\,
	cout => \FD|ULA|Add1~5\);

-- Location: LCCOMB_X83_Y7_N6
\FD|ULA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|REG_P2|data_s\(77) & (!\FD|ULA|Add1~5\)) # (!\FD|REG_P2|data_s\(77) & ((\FD|ULA|Add1~5\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|REG_P2|data_s\(77) & 
-- (\FD|ULA|Add1~5\ & VCC)) # (!\FD|REG_P2|data_s\(77) & (!\FD|ULA|Add1~5\))))
-- \FD|ULA|Add1~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((!\FD|ULA|Add1~5\) # (!\FD|REG_P2|data_s\(77)))) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & (!\FD|REG_P2|data_s\(77) & !\FD|ULA|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datab => \FD|REG_P2|data_s\(77),
	datad => VCC,
	cin => \FD|ULA|Add1~5\,
	combout => \FD|ULA|Add1~6_combout\,
	cout => \FD|ULA|Add1~7\);

-- Location: LCCOMB_X83_Y7_N8
\FD|ULA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~8_combout\ = ((\FD|mux_Banco_Ula|saida[4]~28_combout\ $ (\FD|REG_P2|data_s\(78) $ (\FD|ULA|Add1~7\)))) # (GND)
-- \FD|ULA|Add1~9\ = CARRY((\FD|mux_Banco_Ula|saida[4]~28_combout\ & (\FD|REG_P2|data_s\(78) & !\FD|ULA|Add1~7\)) # (!\FD|mux_Banco_Ula|saida[4]~28_combout\ & ((\FD|REG_P2|data_s\(78)) # (!\FD|ULA|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	datab => \FD|REG_P2|data_s\(78),
	datad => VCC,
	cin => \FD|ULA|Add1~7\,
	combout => \FD|ULA|Add1~8_combout\,
	cout => \FD|ULA|Add1~9\);

-- Location: LCCOMB_X83_Y7_N10
\FD|ULA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~10_combout\ = (\FD|REG_P2|data_s\(79) & ((\FD|mux_Banco_Ula|saida[5]~27_combout\ & (!\FD|ULA|Add1~9\)) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & (\FD|ULA|Add1~9\ & VCC)))) # (!\FD|REG_P2|data_s\(79) & 
-- ((\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|ULA|Add1~9\) # (GND))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & (!\FD|ULA|Add1~9\))))
-- \FD|ULA|Add1~11\ = CARRY((\FD|REG_P2|data_s\(79) & (\FD|mux_Banco_Ula|saida[5]~27_combout\ & !\FD|ULA|Add1~9\)) # (!\FD|REG_P2|data_s\(79) & ((\FD|mux_Banco_Ula|saida[5]~27_combout\) # (!\FD|ULA|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(79),
	datab => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~9\,
	combout => \FD|ULA|Add1~10_combout\,
	cout => \FD|ULA|Add1~11\);

-- Location: LCCOMB_X83_Y7_N12
\FD|ULA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~12_combout\ = ((\FD|REG_P2|data_s\(80) $ (\FD|mux_Banco_Ula|saida[6]~26_combout\ $ (\FD|ULA|Add1~11\)))) # (GND)
-- \FD|ULA|Add1~13\ = CARRY((\FD|REG_P2|data_s\(80) & ((!\FD|ULA|Add1~11\) # (!\FD|mux_Banco_Ula|saida[6]~26_combout\))) # (!\FD|REG_P2|data_s\(80) & (!\FD|mux_Banco_Ula|saida[6]~26_combout\ & !\FD|ULA|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(80),
	datab => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~11\,
	combout => \FD|ULA|Add1~12_combout\,
	cout => \FD|ULA|Add1~13\);

-- Location: LCCOMB_X83_Y7_N14
\FD|ULA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~14_combout\ = (\FD|REG_P2|data_s\(81) & ((\FD|mux_Banco_Ula|saida[7]~25_combout\ & (!\FD|ULA|Add1~13\)) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & (\FD|ULA|Add1~13\ & VCC)))) # (!\FD|REG_P2|data_s\(81) & 
-- ((\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|ULA|Add1~13\) # (GND))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & (!\FD|ULA|Add1~13\))))
-- \FD|ULA|Add1~15\ = CARRY((\FD|REG_P2|data_s\(81) & (\FD|mux_Banco_Ula|saida[7]~25_combout\ & !\FD|ULA|Add1~13\)) # (!\FD|REG_P2|data_s\(81) & ((\FD|mux_Banco_Ula|saida[7]~25_combout\) # (!\FD|ULA|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(81),
	datab => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~13\,
	combout => \FD|ULA|Add1~14_combout\,
	cout => \FD|ULA|Add1~15\);

-- Location: LCCOMB_X83_Y7_N16
\FD|ULA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~16_combout\ = ((\FD|REG_P2|data_s\(82) $ (\FD|mux_Banco_Ula|saida[8]~24_combout\ $ (\FD|ULA|Add1~15\)))) # (GND)
-- \FD|ULA|Add1~17\ = CARRY((\FD|REG_P2|data_s\(82) & ((!\FD|ULA|Add1~15\) # (!\FD|mux_Banco_Ula|saida[8]~24_combout\))) # (!\FD|REG_P2|data_s\(82) & (!\FD|mux_Banco_Ula|saida[8]~24_combout\ & !\FD|ULA|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(82),
	datab => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~15\,
	combout => \FD|ULA|Add1~16_combout\,
	cout => \FD|ULA|Add1~17\);

-- Location: LCCOMB_X83_Y7_N18
\FD|ULA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~18_combout\ = (\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|REG_P2|data_s\(83) & (!\FD|ULA|Add1~17\)) # (!\FD|REG_P2|data_s\(83) & ((\FD|ULA|Add1~17\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|REG_P2|data_s\(83) & 
-- (\FD|ULA|Add1~17\ & VCC)) # (!\FD|REG_P2|data_s\(83) & (!\FD|ULA|Add1~17\))))
-- \FD|ULA|Add1~19\ = CARRY((\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((!\FD|ULA|Add1~17\) # (!\FD|REG_P2|data_s\(83)))) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & (!\FD|REG_P2|data_s\(83) & !\FD|ULA|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datab => \FD|REG_P2|data_s\(83),
	datad => VCC,
	cin => \FD|ULA|Add1~17\,
	combout => \FD|ULA|Add1~18_combout\,
	cout => \FD|ULA|Add1~19\);

-- Location: LCCOMB_X83_Y7_N20
\FD|ULA|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~20_combout\ = ((\FD|mux_Banco_Ula|saida[10]~22_combout\ $ (\FD|REG_P2|data_s\(84) $ (\FD|ULA|Add1~19\)))) # (GND)
-- \FD|ULA|Add1~21\ = CARRY((\FD|mux_Banco_Ula|saida[10]~22_combout\ & (\FD|REG_P2|data_s\(84) & !\FD|ULA|Add1~19\)) # (!\FD|mux_Banco_Ula|saida[10]~22_combout\ & ((\FD|REG_P2|data_s\(84)) # (!\FD|ULA|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datab => \FD|REG_P2|data_s\(84),
	datad => VCC,
	cin => \FD|ULA|Add1~19\,
	combout => \FD|ULA|Add1~20_combout\,
	cout => \FD|ULA|Add1~21\);

-- Location: LCCOMB_X83_Y7_N22
\FD|ULA|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~22_combout\ = (\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|REG_P2|data_s\(85) & (!\FD|ULA|Add1~21\)) # (!\FD|REG_P2|data_s\(85) & ((\FD|ULA|Add1~21\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|REG_P2|data_s\(85) & 
-- (\FD|ULA|Add1~21\ & VCC)) # (!\FD|REG_P2|data_s\(85) & (!\FD|ULA|Add1~21\))))
-- \FD|ULA|Add1~23\ = CARRY((\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((!\FD|ULA|Add1~21\) # (!\FD|REG_P2|data_s\(85)))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & (!\FD|REG_P2|data_s\(85) & !\FD|ULA|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datab => \FD|REG_P2|data_s\(85),
	datad => VCC,
	cin => \FD|ULA|Add1~21\,
	combout => \FD|ULA|Add1~22_combout\,
	cout => \FD|ULA|Add1~23\);

-- Location: LCCOMB_X83_Y7_N24
\FD|ULA|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~24_combout\ = ((\FD|REG_P2|data_s\(86) $ (\FD|mux_Banco_Ula|saida[12]~20_combout\ $ (\FD|ULA|Add1~23\)))) # (GND)
-- \FD|ULA|Add1~25\ = CARRY((\FD|REG_P2|data_s\(86) & ((!\FD|ULA|Add1~23\) # (!\FD|mux_Banco_Ula|saida[12]~20_combout\))) # (!\FD|REG_P2|data_s\(86) & (!\FD|mux_Banco_Ula|saida[12]~20_combout\ & !\FD|ULA|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(86),
	datab => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~23\,
	combout => \FD|ULA|Add1~24_combout\,
	cout => \FD|ULA|Add1~25\);

-- Location: LCCOMB_X83_Y7_N26
\FD|ULA|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~26_combout\ = (\FD|REG_P2|data_s\(87) & ((\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|ULA|Add1~25\)) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & (\FD|ULA|Add1~25\ & VCC)))) # (!\FD|REG_P2|data_s\(87) & 
-- ((\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|ULA|Add1~25\) # (GND))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|ULA|Add1~25\))))
-- \FD|ULA|Add1~27\ = CARRY((\FD|REG_P2|data_s\(87) & (\FD|mux_Banco_Ula|saida[13]~19_combout\ & !\FD|ULA|Add1~25\)) # (!\FD|REG_P2|data_s\(87) & ((\FD|mux_Banco_Ula|saida[13]~19_combout\) # (!\FD|ULA|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(87),
	datab => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~25\,
	combout => \FD|ULA|Add1~26_combout\,
	cout => \FD|ULA|Add1~27\);

-- Location: LCCOMB_X83_Y7_N28
\FD|ULA|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~28_combout\ = ((\FD|mux_Banco_Ula|saida[14]~18_combout\ $ (\FD|REG_P2|data_s\(88) $ (\FD|ULA|Add1~27\)))) # (GND)
-- \FD|ULA|Add1~29\ = CARRY((\FD|mux_Banco_Ula|saida[14]~18_combout\ & (\FD|REG_P2|data_s\(88) & !\FD|ULA|Add1~27\)) # (!\FD|mux_Banco_Ula|saida[14]~18_combout\ & ((\FD|REG_P2|data_s\(88)) # (!\FD|ULA|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datab => \FD|REG_P2|data_s\(88),
	datad => VCC,
	cin => \FD|ULA|Add1~27\,
	combout => \FD|ULA|Add1~28_combout\,
	cout => \FD|ULA|Add1~29\);

-- Location: LCCOMB_X83_Y7_N30
\FD|ULA|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~30_combout\ = (\FD|REG_P2|data_s\(89) & ((\FD|mux_Banco_Ula|saida[15]~17_combout\ & (!\FD|ULA|Add1~29\)) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & (\FD|ULA|Add1~29\ & VCC)))) # (!\FD|REG_P2|data_s\(89) & 
-- ((\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|ULA|Add1~29\) # (GND))) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & (!\FD|ULA|Add1~29\))))
-- \FD|ULA|Add1~31\ = CARRY((\FD|REG_P2|data_s\(89) & (\FD|mux_Banco_Ula|saida[15]~17_combout\ & !\FD|ULA|Add1~29\)) # (!\FD|REG_P2|data_s\(89) & ((\FD|mux_Banco_Ula|saida[15]~17_combout\) # (!\FD|ULA|Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(89),
	datab => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~29\,
	combout => \FD|ULA|Add1~30_combout\,
	cout => \FD|ULA|Add1~31\);

-- Location: LCCOMB_X83_Y6_N0
\FD|ULA|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~32_combout\ = ((\FD|REG_P2|data_s\(90) $ (\FD|mux_Banco_Ula|saida[16]~16_combout\ $ (\FD|ULA|Add1~31\)))) # (GND)
-- \FD|ULA|Add1~33\ = CARRY((\FD|REG_P2|data_s\(90) & ((!\FD|ULA|Add1~31\) # (!\FD|mux_Banco_Ula|saida[16]~16_combout\))) # (!\FD|REG_P2|data_s\(90) & (!\FD|mux_Banco_Ula|saida[16]~16_combout\ & !\FD|ULA|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(90),
	datab => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~31\,
	combout => \FD|ULA|Add1~32_combout\,
	cout => \FD|ULA|Add1~33\);

-- Location: LCCOMB_X83_Y6_N2
\FD|ULA|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~34_combout\ = (\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|REG_P2|data_s\(91) & (!\FD|ULA|Add1~33\)) # (!\FD|REG_P2|data_s\(91) & ((\FD|ULA|Add1~33\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|REG_P2|data_s\(91) & 
-- (\FD|ULA|Add1~33\ & VCC)) # (!\FD|REG_P2|data_s\(91) & (!\FD|ULA|Add1~33\))))
-- \FD|ULA|Add1~35\ = CARRY((\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((!\FD|ULA|Add1~33\) # (!\FD|REG_P2|data_s\(91)))) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & (!\FD|REG_P2|data_s\(91) & !\FD|ULA|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datab => \FD|REG_P2|data_s\(91),
	datad => VCC,
	cin => \FD|ULA|Add1~33\,
	combout => \FD|ULA|Add1~34_combout\,
	cout => \FD|ULA|Add1~35\);

-- Location: LCCOMB_X83_Y6_N4
\FD|ULA|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~36_combout\ = ((\FD|REG_P2|data_s\(92) $ (\FD|mux_Banco_Ula|saida[18]~14_combout\ $ (\FD|ULA|Add1~35\)))) # (GND)
-- \FD|ULA|Add1~37\ = CARRY((\FD|REG_P2|data_s\(92) & ((!\FD|ULA|Add1~35\) # (!\FD|mux_Banco_Ula|saida[18]~14_combout\))) # (!\FD|REG_P2|data_s\(92) & (!\FD|mux_Banco_Ula|saida[18]~14_combout\ & !\FD|ULA|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(92),
	datab => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~35\,
	combout => \FD|ULA|Add1~36_combout\,
	cout => \FD|ULA|Add1~37\);

-- Location: LCCOMB_X83_Y6_N6
\FD|ULA|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~38_combout\ = (\FD|REG_P2|data_s\(93) & ((\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|ULA|Add1~37\)) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & (\FD|ULA|Add1~37\ & VCC)))) # (!\FD|REG_P2|data_s\(93) & 
-- ((\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|ULA|Add1~37\) # (GND))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|ULA|Add1~37\))))
-- \FD|ULA|Add1~39\ = CARRY((\FD|REG_P2|data_s\(93) & (\FD|mux_Banco_Ula|saida[19]~13_combout\ & !\FD|ULA|Add1~37\)) # (!\FD|REG_P2|data_s\(93) & ((\FD|mux_Banco_Ula|saida[19]~13_combout\) # (!\FD|ULA|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(93),
	datab => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~37\,
	combout => \FD|ULA|Add1~38_combout\,
	cout => \FD|ULA|Add1~39\);

-- Location: LCCOMB_X83_Y6_N8
\FD|ULA|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~40_combout\ = ((\FD|mux_Banco_Ula|saida[20]~12_combout\ $ (\FD|REG_P2|data_s\(94) $ (\FD|ULA|Add1~39\)))) # (GND)
-- \FD|ULA|Add1~41\ = CARRY((\FD|mux_Banco_Ula|saida[20]~12_combout\ & (\FD|REG_P2|data_s\(94) & !\FD|ULA|Add1~39\)) # (!\FD|mux_Banco_Ula|saida[20]~12_combout\ & ((\FD|REG_P2|data_s\(94)) # (!\FD|ULA|Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datab => \FD|REG_P2|data_s\(94),
	datad => VCC,
	cin => \FD|ULA|Add1~39\,
	combout => \FD|ULA|Add1~40_combout\,
	cout => \FD|ULA|Add1~41\);

-- Location: LCCOMB_X83_Y6_N10
\FD|ULA|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~42_combout\ = (\FD|REG_P2|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|ULA|Add1~41\)) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & (\FD|ULA|Add1~41\ & VCC)))) # (!\FD|REG_P2|data_s\(95) & 
-- ((\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|ULA|Add1~41\) # (GND))) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|ULA|Add1~41\))))
-- \FD|ULA|Add1~43\ = CARRY((\FD|REG_P2|data_s\(95) & (\FD|mux_Banco_Ula|saida[21]~11_combout\ & !\FD|ULA|Add1~41\)) # (!\FD|REG_P2|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~11_combout\) # (!\FD|ULA|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(95),
	datab => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~41\,
	combout => \FD|ULA|Add1~42_combout\,
	cout => \FD|ULA|Add1~43\);

-- Location: LCCOMB_X83_Y6_N12
\FD|ULA|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~44_combout\ = ((\FD|mux_Banco_Ula|saida[22]~10_combout\ $ (\FD|REG_P2|data_s\(96) $ (\FD|ULA|Add1~43\)))) # (GND)
-- \FD|ULA|Add1~45\ = CARRY((\FD|mux_Banco_Ula|saida[22]~10_combout\ & (\FD|REG_P2|data_s\(96) & !\FD|ULA|Add1~43\)) # (!\FD|mux_Banco_Ula|saida[22]~10_combout\ & ((\FD|REG_P2|data_s\(96)) # (!\FD|ULA|Add1~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datab => \FD|REG_P2|data_s\(96),
	datad => VCC,
	cin => \FD|ULA|Add1~43\,
	combout => \FD|ULA|Add1~44_combout\,
	cout => \FD|ULA|Add1~45\);

-- Location: LCCOMB_X83_Y6_N14
\FD|ULA|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~46_combout\ = (\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((\FD|REG_P2|data_s\(97) & (!\FD|ULA|Add1~45\)) # (!\FD|REG_P2|data_s\(97) & ((\FD|ULA|Add1~45\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((\FD|REG_P2|data_s\(97) & 
-- (\FD|ULA|Add1~45\ & VCC)) # (!\FD|REG_P2|data_s\(97) & (!\FD|ULA|Add1~45\))))
-- \FD|ULA|Add1~47\ = CARRY((\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((!\FD|ULA|Add1~45\) # (!\FD|REG_P2|data_s\(97)))) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & (!\FD|REG_P2|data_s\(97) & !\FD|ULA|Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	datab => \FD|REG_P2|data_s\(97),
	datad => VCC,
	cin => \FD|ULA|Add1~45\,
	combout => \FD|ULA|Add1~46_combout\,
	cout => \FD|ULA|Add1~47\);

-- Location: LCCOMB_X83_Y6_N16
\FD|ULA|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~48_combout\ = ((\FD|REG_P2|data_s\(98) $ (\FD|mux_Banco_Ula|saida[24]~8_combout\ $ (\FD|ULA|Add1~47\)))) # (GND)
-- \FD|ULA|Add1~49\ = CARRY((\FD|REG_P2|data_s\(98) & ((!\FD|ULA|Add1~47\) # (!\FD|mux_Banco_Ula|saida[24]~8_combout\))) # (!\FD|REG_P2|data_s\(98) & (!\FD|mux_Banco_Ula|saida[24]~8_combout\ & !\FD|ULA|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(98),
	datab => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~47\,
	combout => \FD|ULA|Add1~48_combout\,
	cout => \FD|ULA|Add1~49\);

-- Location: LCCOMB_X83_Y6_N18
\FD|ULA|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~50_combout\ = (\FD|REG_P2|data_s\(99) & ((\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|ULA|Add1~49\)) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & (\FD|ULA|Add1~49\ & VCC)))) # (!\FD|REG_P2|data_s\(99) & 
-- ((\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|ULA|Add1~49\) # (GND))) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|ULA|Add1~49\))))
-- \FD|ULA|Add1~51\ = CARRY((\FD|REG_P2|data_s\(99) & (\FD|mux_Banco_Ula|saida[25]~7_combout\ & !\FD|ULA|Add1~49\)) # (!\FD|REG_P2|data_s\(99) & ((\FD|mux_Banco_Ula|saida[25]~7_combout\) # (!\FD|ULA|Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(99),
	datab => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~49\,
	combout => \FD|ULA|Add1~50_combout\,
	cout => \FD|ULA|Add1~51\);

-- Location: LCCOMB_X83_Y6_N20
\FD|ULA|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~52_combout\ = ((\FD|REG_P2|data_s\(100) $ (\FD|mux_Banco_Ula|saida[26]~6_combout\ $ (\FD|ULA|Add1~51\)))) # (GND)
-- \FD|ULA|Add1~53\ = CARRY((\FD|REG_P2|data_s\(100) & ((!\FD|ULA|Add1~51\) # (!\FD|mux_Banco_Ula|saida[26]~6_combout\))) # (!\FD|REG_P2|data_s\(100) & (!\FD|mux_Banco_Ula|saida[26]~6_combout\ & !\FD|ULA|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(100),
	datab => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~51\,
	combout => \FD|ULA|Add1~52_combout\,
	cout => \FD|ULA|Add1~53\);

-- Location: LCCOMB_X83_Y6_N22
\FD|ULA|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~54_combout\ = (\FD|REG_P2|data_s\(101) & ((\FD|mux_Banco_Ula|saida[27]~5_combout\ & (!\FD|ULA|Add1~53\)) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & (\FD|ULA|Add1~53\ & VCC)))) # (!\FD|REG_P2|data_s\(101) & 
-- ((\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|ULA|Add1~53\) # (GND))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & (!\FD|ULA|Add1~53\))))
-- \FD|ULA|Add1~55\ = CARRY((\FD|REG_P2|data_s\(101) & (\FD|mux_Banco_Ula|saida[27]~5_combout\ & !\FD|ULA|Add1~53\)) # (!\FD|REG_P2|data_s\(101) & ((\FD|mux_Banco_Ula|saida[27]~5_combout\) # (!\FD|ULA|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(101),
	datab => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~53\,
	combout => \FD|ULA|Add1~54_combout\,
	cout => \FD|ULA|Add1~55\);

-- Location: LCCOMB_X83_Y6_N24
\FD|ULA|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~56_combout\ = ((\FD|REG_P2|data_s\(102) $ (\FD|mux_Banco_Ula|saida[28]~4_combout\ $ (\FD|ULA|Add1~55\)))) # (GND)
-- \FD|ULA|Add1~57\ = CARRY((\FD|REG_P2|data_s\(102) & ((!\FD|ULA|Add1~55\) # (!\FD|mux_Banco_Ula|saida[28]~4_combout\))) # (!\FD|REG_P2|data_s\(102) & (!\FD|mux_Banco_Ula|saida[28]~4_combout\ & !\FD|ULA|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(102),
	datab => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~55\,
	combout => \FD|ULA|Add1~56_combout\,
	cout => \FD|ULA|Add1~57\);

-- Location: LCCOMB_X83_Y6_N26
\FD|ULA|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~58_combout\ = (\FD|REG_P2|data_s\(103) & ((\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|ULA|Add1~57\)) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & (\FD|ULA|Add1~57\ & VCC)))) # (!\FD|REG_P2|data_s\(103) & 
-- ((\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|ULA|Add1~57\) # (GND))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|ULA|Add1~57\))))
-- \FD|ULA|Add1~59\ = CARRY((\FD|REG_P2|data_s\(103) & (\FD|mux_Banco_Ula|saida[29]~3_combout\ & !\FD|ULA|Add1~57\)) # (!\FD|REG_P2|data_s\(103) & ((\FD|mux_Banco_Ula|saida[29]~3_combout\) # (!\FD|ULA|Add1~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(103),
	datab => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~57\,
	combout => \FD|ULA|Add1~58_combout\,
	cout => \FD|ULA|Add1~59\);

-- Location: LCCOMB_X83_Y6_N28
\FD|ULA|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~60_combout\ = ((\FD|mux_Banco_Ula|saida[30]~2_combout\ $ (\FD|REG_P2|data_s\(104) $ (\FD|ULA|Add1~59\)))) # (GND)
-- \FD|ULA|Add1~61\ = CARRY((\FD|mux_Banco_Ula|saida[30]~2_combout\ & (\FD|REG_P2|data_s\(104) & !\FD|ULA|Add1~59\)) # (!\FD|mux_Banco_Ula|saida[30]~2_combout\ & ((\FD|REG_P2|data_s\(104)) # (!\FD|ULA|Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datab => \FD|REG_P2|data_s\(104),
	datad => VCC,
	cin => \FD|ULA|Add1~59\,
	combout => \FD|ULA|Add1~60_combout\,
	cout => \FD|ULA|Add1~61\);

-- Location: LCCOMB_X83_Y6_N30
\FD|ULA|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~62_combout\ = \FD|REG_P2|data_s\(105) $ (\FD|ULA|Add1~61\ $ (!\FD|mux_Banco_Ula|saida[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(105),
	datad => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	cin => \FD|ULA|Add1~61\,
	combout => \FD|ULA|Add1~62_combout\);

-- Location: LCCOMB_X81_Y7_N0
\FD|ULA|soma[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[0]~0_combout\ = (\FD|REG_P2|data_s\(74) & (\FD|mux_Banco_Ula|saida[0]~0_combout\ $ (VCC))) # (!\FD|REG_P2|data_s\(74) & (\FD|mux_Banco_Ula|saida[0]~0_combout\ & VCC))
-- \FD|ULA|soma[0]~1\ = CARRY((\FD|REG_P2|data_s\(74) & \FD|mux_Banco_Ula|saida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(74),
	datab => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datad => VCC,
	combout => \FD|ULA|soma[0]~0_combout\,
	cout => \FD|ULA|soma[0]~1\);

-- Location: LCCOMB_X81_Y7_N2
\FD|ULA|soma[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[1]~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|REG_P2|data_s\(75) & (\FD|ULA|soma[0]~1\ & VCC)) # (!\FD|REG_P2|data_s\(75) & (!\FD|ULA|soma[0]~1\)))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|REG_P2|data_s\(75) & 
-- (!\FD|ULA|soma[0]~1\)) # (!\FD|REG_P2|data_s\(75) & ((\FD|ULA|soma[0]~1\) # (GND)))))
-- \FD|ULA|soma[1]~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~31_combout\ & (!\FD|REG_P2|data_s\(75) & !\FD|ULA|soma[0]~1\)) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((!\FD|ULA|soma[0]~1\) # (!\FD|REG_P2|data_s\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datab => \FD|REG_P2|data_s\(75),
	datad => VCC,
	cin => \FD|ULA|soma[0]~1\,
	combout => \FD|ULA|soma[1]~2_combout\,
	cout => \FD|ULA|soma[1]~3\);

-- Location: LCCOMB_X81_Y7_N4
\FD|ULA|soma[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[2]~4_combout\ = ((\FD|REG_P2|data_s\(76) $ (\FD|mux_Banco_Ula|saida[2]~30_combout\ $ (!\FD|ULA|soma[1]~3\)))) # (GND)
-- \FD|ULA|soma[2]~5\ = CARRY((\FD|REG_P2|data_s\(76) & ((\FD|mux_Banco_Ula|saida[2]~30_combout\) # (!\FD|ULA|soma[1]~3\))) # (!\FD|REG_P2|data_s\(76) & (\FD|mux_Banco_Ula|saida[2]~30_combout\ & !\FD|ULA|soma[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(76),
	datab => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[1]~3\,
	combout => \FD|ULA|soma[2]~4_combout\,
	cout => \FD|ULA|soma[2]~5\);

-- Location: LCCOMB_X81_Y7_N6
\FD|ULA|soma[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[3]~6_combout\ = (\FD|REG_P2|data_s\(77) & ((\FD|mux_Banco_Ula|saida[3]~29_combout\ & (\FD|ULA|soma[2]~5\ & VCC)) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & (!\FD|ULA|soma[2]~5\)))) # (!\FD|REG_P2|data_s\(77) & 
-- ((\FD|mux_Banco_Ula|saida[3]~29_combout\ & (!\FD|ULA|soma[2]~5\)) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|ULA|soma[2]~5\) # (GND)))))
-- \FD|ULA|soma[3]~7\ = CARRY((\FD|REG_P2|data_s\(77) & (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & !\FD|ULA|soma[2]~5\)) # (!\FD|REG_P2|data_s\(77) & ((!\FD|ULA|soma[2]~5\) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(77),
	datab => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[2]~5\,
	combout => \FD|ULA|soma[3]~6_combout\,
	cout => \FD|ULA|soma[3]~7\);

-- Location: LCCOMB_X81_Y7_N8
\FD|ULA|soma[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[4]~8_combout\ = ((\FD|mux_Banco_Ula|saida[4]~28_combout\ $ (\FD|REG_P2|data_s\(78) $ (!\FD|ULA|soma[3]~7\)))) # (GND)
-- \FD|ULA|soma[4]~9\ = CARRY((\FD|mux_Banco_Ula|saida[4]~28_combout\ & ((\FD|REG_P2|data_s\(78)) # (!\FD|ULA|soma[3]~7\))) # (!\FD|mux_Banco_Ula|saida[4]~28_combout\ & (\FD|REG_P2|data_s\(78) & !\FD|ULA|soma[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	datab => \FD|REG_P2|data_s\(78),
	datad => VCC,
	cin => \FD|ULA|soma[3]~7\,
	combout => \FD|ULA|soma[4]~8_combout\,
	cout => \FD|ULA|soma[4]~9\);

-- Location: LCCOMB_X81_Y7_N10
\FD|ULA|soma[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[5]~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|REG_P2|data_s\(79) & (\FD|ULA|soma[4]~9\ & VCC)) # (!\FD|REG_P2|data_s\(79) & (!\FD|ULA|soma[4]~9\)))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|REG_P2|data_s\(79) & 
-- (!\FD|ULA|soma[4]~9\)) # (!\FD|REG_P2|data_s\(79) & ((\FD|ULA|soma[4]~9\) # (GND)))))
-- \FD|ULA|soma[5]~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~27_combout\ & (!\FD|REG_P2|data_s\(79) & !\FD|ULA|soma[4]~9\)) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((!\FD|ULA|soma[4]~9\) # (!\FD|REG_P2|data_s\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datab => \FD|REG_P2|data_s\(79),
	datad => VCC,
	cin => \FD|ULA|soma[4]~9\,
	combout => \FD|ULA|soma[5]~10_combout\,
	cout => \FD|ULA|soma[5]~11\);

-- Location: LCCOMB_X81_Y7_N12
\FD|ULA|soma[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[6]~12_combout\ = ((\FD|REG_P2|data_s\(80) $ (\FD|mux_Banco_Ula|saida[6]~26_combout\ $ (!\FD|ULA|soma[5]~11\)))) # (GND)
-- \FD|ULA|soma[6]~13\ = CARRY((\FD|REG_P2|data_s\(80) & ((\FD|mux_Banco_Ula|saida[6]~26_combout\) # (!\FD|ULA|soma[5]~11\))) # (!\FD|REG_P2|data_s\(80) & (\FD|mux_Banco_Ula|saida[6]~26_combout\ & !\FD|ULA|soma[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(80),
	datab => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[5]~11\,
	combout => \FD|ULA|soma[6]~12_combout\,
	cout => \FD|ULA|soma[6]~13\);

-- Location: LCCOMB_X81_Y7_N14
\FD|ULA|soma[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[7]~14_combout\ = (\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|REG_P2|data_s\(81) & (\FD|ULA|soma[6]~13\ & VCC)) # (!\FD|REG_P2|data_s\(81) & (!\FD|ULA|soma[6]~13\)))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|REG_P2|data_s\(81) & 
-- (!\FD|ULA|soma[6]~13\)) # (!\FD|REG_P2|data_s\(81) & ((\FD|ULA|soma[6]~13\) # (GND)))))
-- \FD|ULA|soma[7]~15\ = CARRY((\FD|mux_Banco_Ula|saida[7]~25_combout\ & (!\FD|REG_P2|data_s\(81) & !\FD|ULA|soma[6]~13\)) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((!\FD|ULA|soma[6]~13\) # (!\FD|REG_P2|data_s\(81)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datab => \FD|REG_P2|data_s\(81),
	datad => VCC,
	cin => \FD|ULA|soma[6]~13\,
	combout => \FD|ULA|soma[7]~14_combout\,
	cout => \FD|ULA|soma[7]~15\);

-- Location: LCCOMB_X81_Y7_N16
\FD|ULA|soma[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[8]~16_combout\ = ((\FD|REG_P2|data_s\(82) $ (\FD|mux_Banco_Ula|saida[8]~24_combout\ $ (!\FD|ULA|soma[7]~15\)))) # (GND)
-- \FD|ULA|soma[8]~17\ = CARRY((\FD|REG_P2|data_s\(82) & ((\FD|mux_Banco_Ula|saida[8]~24_combout\) # (!\FD|ULA|soma[7]~15\))) # (!\FD|REG_P2|data_s\(82) & (\FD|mux_Banco_Ula|saida[8]~24_combout\ & !\FD|ULA|soma[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(82),
	datab => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[7]~15\,
	combout => \FD|ULA|soma[8]~16_combout\,
	cout => \FD|ULA|soma[8]~17\);

-- Location: LCCOMB_X81_Y7_N18
\FD|ULA|soma[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[9]~18_combout\ = (\FD|REG_P2|data_s\(83) & ((\FD|mux_Banco_Ula|saida[9]~23_combout\ & (\FD|ULA|soma[8]~17\ & VCC)) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & (!\FD|ULA|soma[8]~17\)))) # (!\FD|REG_P2|data_s\(83) & 
-- ((\FD|mux_Banco_Ula|saida[9]~23_combout\ & (!\FD|ULA|soma[8]~17\)) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|ULA|soma[8]~17\) # (GND)))))
-- \FD|ULA|soma[9]~19\ = CARRY((\FD|REG_P2|data_s\(83) & (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & !\FD|ULA|soma[8]~17\)) # (!\FD|REG_P2|data_s\(83) & ((!\FD|ULA|soma[8]~17\) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(83),
	datab => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[8]~17\,
	combout => \FD|ULA|soma[9]~18_combout\,
	cout => \FD|ULA|soma[9]~19\);

-- Location: LCCOMB_X81_Y7_N20
\FD|ULA|soma[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[10]~20_combout\ = ((\FD|mux_Banco_Ula|saida[10]~22_combout\ $ (\FD|REG_P2|data_s\(84) $ (!\FD|ULA|soma[9]~19\)))) # (GND)
-- \FD|ULA|soma[10]~21\ = CARRY((\FD|mux_Banco_Ula|saida[10]~22_combout\ & ((\FD|REG_P2|data_s\(84)) # (!\FD|ULA|soma[9]~19\))) # (!\FD|mux_Banco_Ula|saida[10]~22_combout\ & (\FD|REG_P2|data_s\(84) & !\FD|ULA|soma[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datab => \FD|REG_P2|data_s\(84),
	datad => VCC,
	cin => \FD|ULA|soma[9]~19\,
	combout => \FD|ULA|soma[10]~20_combout\,
	cout => \FD|ULA|soma[10]~21\);

-- Location: LCCOMB_X81_Y7_N22
\FD|ULA|soma[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[11]~22_combout\ = (\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|REG_P2|data_s\(85) & (\FD|ULA|soma[10]~21\ & VCC)) # (!\FD|REG_P2|data_s\(85) & (!\FD|ULA|soma[10]~21\)))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & 
-- ((\FD|REG_P2|data_s\(85) & (!\FD|ULA|soma[10]~21\)) # (!\FD|REG_P2|data_s\(85) & ((\FD|ULA|soma[10]~21\) # (GND)))))
-- \FD|ULA|soma[11]~23\ = CARRY((\FD|mux_Banco_Ula|saida[11]~21_combout\ & (!\FD|REG_P2|data_s\(85) & !\FD|ULA|soma[10]~21\)) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((!\FD|ULA|soma[10]~21\) # (!\FD|REG_P2|data_s\(85)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datab => \FD|REG_P2|data_s\(85),
	datad => VCC,
	cin => \FD|ULA|soma[10]~21\,
	combout => \FD|ULA|soma[11]~22_combout\,
	cout => \FD|ULA|soma[11]~23\);

-- Location: LCCOMB_X81_Y7_N24
\FD|ULA|soma[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[12]~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~20_combout\ $ (\FD|REG_P2|data_s\(86) $ (!\FD|ULA|soma[11]~23\)))) # (GND)
-- \FD|ULA|soma[12]~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~20_combout\ & ((\FD|REG_P2|data_s\(86)) # (!\FD|ULA|soma[11]~23\))) # (!\FD|mux_Banco_Ula|saida[12]~20_combout\ & (\FD|REG_P2|data_s\(86) & !\FD|ULA|soma[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datab => \FD|REG_P2|data_s\(86),
	datad => VCC,
	cin => \FD|ULA|soma[11]~23\,
	combout => \FD|ULA|soma[12]~24_combout\,
	cout => \FD|ULA|soma[12]~25\);

-- Location: LCCOMB_X81_Y7_N26
\FD|ULA|soma[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[13]~26_combout\ = (\FD|REG_P2|data_s\(87) & ((\FD|mux_Banco_Ula|saida[13]~19_combout\ & (\FD|ULA|soma[12]~25\ & VCC)) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|ULA|soma[12]~25\)))) # (!\FD|REG_P2|data_s\(87) & 
-- ((\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|ULA|soma[12]~25\)) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|ULA|soma[12]~25\) # (GND)))))
-- \FD|ULA|soma[13]~27\ = CARRY((\FD|REG_P2|data_s\(87) & (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & !\FD|ULA|soma[12]~25\)) # (!\FD|REG_P2|data_s\(87) & ((!\FD|ULA|soma[12]~25\) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(87),
	datab => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[12]~25\,
	combout => \FD|ULA|soma[13]~26_combout\,
	cout => \FD|ULA|soma[13]~27\);

-- Location: LCCOMB_X81_Y7_N28
\FD|ULA|soma[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[14]~28_combout\ = ((\FD|mux_Banco_Ula|saida[14]~18_combout\ $ (\FD|REG_P2|data_s\(88) $ (!\FD|ULA|soma[13]~27\)))) # (GND)
-- \FD|ULA|soma[14]~29\ = CARRY((\FD|mux_Banco_Ula|saida[14]~18_combout\ & ((\FD|REG_P2|data_s\(88)) # (!\FD|ULA|soma[13]~27\))) # (!\FD|mux_Banco_Ula|saida[14]~18_combout\ & (\FD|REG_P2|data_s\(88) & !\FD|ULA|soma[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datab => \FD|REG_P2|data_s\(88),
	datad => VCC,
	cin => \FD|ULA|soma[13]~27\,
	combout => \FD|ULA|soma[14]~28_combout\,
	cout => \FD|ULA|soma[14]~29\);

-- Location: LCCOMB_X81_Y7_N30
\FD|ULA|soma[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[15]~30_combout\ = (\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|REG_P2|data_s\(89) & (\FD|ULA|soma[14]~29\ & VCC)) # (!\FD|REG_P2|data_s\(89) & (!\FD|ULA|soma[14]~29\)))) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & 
-- ((\FD|REG_P2|data_s\(89) & (!\FD|ULA|soma[14]~29\)) # (!\FD|REG_P2|data_s\(89) & ((\FD|ULA|soma[14]~29\) # (GND)))))
-- \FD|ULA|soma[15]~31\ = CARRY((\FD|mux_Banco_Ula|saida[15]~17_combout\ & (!\FD|REG_P2|data_s\(89) & !\FD|ULA|soma[14]~29\)) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((!\FD|ULA|soma[14]~29\) # (!\FD|REG_P2|data_s\(89)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datab => \FD|REG_P2|data_s\(89),
	datad => VCC,
	cin => \FD|ULA|soma[14]~29\,
	combout => \FD|ULA|soma[15]~30_combout\,
	cout => \FD|ULA|soma[15]~31\);

-- Location: LCCOMB_X81_Y6_N0
\FD|ULA|soma[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[16]~32_combout\ = ((\FD|mux_Banco_Ula|saida[16]~16_combout\ $ (\FD|REG_P2|data_s\(90) $ (!\FD|ULA|soma[15]~31\)))) # (GND)
-- \FD|ULA|soma[16]~33\ = CARRY((\FD|mux_Banco_Ula|saida[16]~16_combout\ & ((\FD|REG_P2|data_s\(90)) # (!\FD|ULA|soma[15]~31\))) # (!\FD|mux_Banco_Ula|saida[16]~16_combout\ & (\FD|REG_P2|data_s\(90) & !\FD|ULA|soma[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datab => \FD|REG_P2|data_s\(90),
	datad => VCC,
	cin => \FD|ULA|soma[15]~31\,
	combout => \FD|ULA|soma[16]~32_combout\,
	cout => \FD|ULA|soma[16]~33\);

-- Location: LCCOMB_X81_Y6_N2
\FD|ULA|soma[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[17]~34_combout\ = (\FD|REG_P2|data_s\(91) & ((\FD|mux_Banco_Ula|saida[17]~15_combout\ & (\FD|ULA|soma[16]~33\ & VCC)) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & (!\FD|ULA|soma[16]~33\)))) # (!\FD|REG_P2|data_s\(91) & 
-- ((\FD|mux_Banco_Ula|saida[17]~15_combout\ & (!\FD|ULA|soma[16]~33\)) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|ULA|soma[16]~33\) # (GND)))))
-- \FD|ULA|soma[17]~35\ = CARRY((\FD|REG_P2|data_s\(91) & (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & !\FD|ULA|soma[16]~33\)) # (!\FD|REG_P2|data_s\(91) & ((!\FD|ULA|soma[16]~33\) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(91),
	datab => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[16]~33\,
	combout => \FD|ULA|soma[17]~34_combout\,
	cout => \FD|ULA|soma[17]~35\);

-- Location: LCCOMB_X81_Y6_N4
\FD|ULA|soma[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[18]~36_combout\ = ((\FD|mux_Banco_Ula|saida[18]~14_combout\ $ (\FD|REG_P2|data_s\(92) $ (!\FD|ULA|soma[17]~35\)))) # (GND)
-- \FD|ULA|soma[18]~37\ = CARRY((\FD|mux_Banco_Ula|saida[18]~14_combout\ & ((\FD|REG_P2|data_s\(92)) # (!\FD|ULA|soma[17]~35\))) # (!\FD|mux_Banco_Ula|saida[18]~14_combout\ & (\FD|REG_P2|data_s\(92) & !\FD|ULA|soma[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datab => \FD|REG_P2|data_s\(92),
	datad => VCC,
	cin => \FD|ULA|soma[17]~35\,
	combout => \FD|ULA|soma[18]~36_combout\,
	cout => \FD|ULA|soma[18]~37\);

-- Location: LCCOMB_X81_Y6_N6
\FD|ULA|soma[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[19]~38_combout\ = (\FD|REG_P2|data_s\(93) & ((\FD|mux_Banco_Ula|saida[19]~13_combout\ & (\FD|ULA|soma[18]~37\ & VCC)) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|ULA|soma[18]~37\)))) # (!\FD|REG_P2|data_s\(93) & 
-- ((\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|ULA|soma[18]~37\)) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|ULA|soma[18]~37\) # (GND)))))
-- \FD|ULA|soma[19]~39\ = CARRY((\FD|REG_P2|data_s\(93) & (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & !\FD|ULA|soma[18]~37\)) # (!\FD|REG_P2|data_s\(93) & ((!\FD|ULA|soma[18]~37\) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(93),
	datab => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[18]~37\,
	combout => \FD|ULA|soma[19]~38_combout\,
	cout => \FD|ULA|soma[19]~39\);

-- Location: LCCOMB_X81_Y6_N8
\FD|ULA|soma[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[20]~40_combout\ = ((\FD|mux_Banco_Ula|saida[20]~12_combout\ $ (\FD|REG_P2|data_s\(94) $ (!\FD|ULA|soma[19]~39\)))) # (GND)
-- \FD|ULA|soma[20]~41\ = CARRY((\FD|mux_Banco_Ula|saida[20]~12_combout\ & ((\FD|REG_P2|data_s\(94)) # (!\FD|ULA|soma[19]~39\))) # (!\FD|mux_Banco_Ula|saida[20]~12_combout\ & (\FD|REG_P2|data_s\(94) & !\FD|ULA|soma[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datab => \FD|REG_P2|data_s\(94),
	datad => VCC,
	cin => \FD|ULA|soma[19]~39\,
	combout => \FD|ULA|soma[20]~40_combout\,
	cout => \FD|ULA|soma[20]~41\);

-- Location: LCCOMB_X81_Y6_N10
\FD|ULA|soma[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[21]~42_combout\ = (\FD|REG_P2|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~11_combout\ & (\FD|ULA|soma[20]~41\ & VCC)) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|ULA|soma[20]~41\)))) # (!\FD|REG_P2|data_s\(95) & 
-- ((\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|ULA|soma[20]~41\)) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|ULA|soma[20]~41\) # (GND)))))
-- \FD|ULA|soma[21]~43\ = CARRY((\FD|REG_P2|data_s\(95) & (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & !\FD|ULA|soma[20]~41\)) # (!\FD|REG_P2|data_s\(95) & ((!\FD|ULA|soma[20]~41\) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(95),
	datab => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[20]~41\,
	combout => \FD|ULA|soma[21]~42_combout\,
	cout => \FD|ULA|soma[21]~43\);

-- Location: LCCOMB_X81_Y6_N12
\FD|ULA|soma[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[22]~44_combout\ = ((\FD|mux_Banco_Ula|saida[22]~10_combout\ $ (\FD|REG_P2|data_s\(96) $ (!\FD|ULA|soma[21]~43\)))) # (GND)
-- \FD|ULA|soma[22]~45\ = CARRY((\FD|mux_Banco_Ula|saida[22]~10_combout\ & ((\FD|REG_P2|data_s\(96)) # (!\FD|ULA|soma[21]~43\))) # (!\FD|mux_Banco_Ula|saida[22]~10_combout\ & (\FD|REG_P2|data_s\(96) & !\FD|ULA|soma[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datab => \FD|REG_P2|data_s\(96),
	datad => VCC,
	cin => \FD|ULA|soma[21]~43\,
	combout => \FD|ULA|soma[22]~44_combout\,
	cout => \FD|ULA|soma[22]~45\);

-- Location: LCCOMB_X81_Y6_N14
\FD|ULA|soma[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[23]~46_combout\ = (\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((\FD|REG_P2|data_s\(97) & (\FD|ULA|soma[22]~45\ & VCC)) # (!\FD|REG_P2|data_s\(97) & (!\FD|ULA|soma[22]~45\)))) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((\FD|REG_P2|data_s\(97) 
-- & (!\FD|ULA|soma[22]~45\)) # (!\FD|REG_P2|data_s\(97) & ((\FD|ULA|soma[22]~45\) # (GND)))))
-- \FD|ULA|soma[23]~47\ = CARRY((\FD|mux_Banco_Ula|saida[23]~9_combout\ & (!\FD|REG_P2|data_s\(97) & !\FD|ULA|soma[22]~45\)) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((!\FD|ULA|soma[22]~45\) # (!\FD|REG_P2|data_s\(97)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	datab => \FD|REG_P2|data_s\(97),
	datad => VCC,
	cin => \FD|ULA|soma[22]~45\,
	combout => \FD|ULA|soma[23]~46_combout\,
	cout => \FD|ULA|soma[23]~47\);

-- Location: LCCOMB_X81_Y6_N16
\FD|ULA|soma[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[24]~48_combout\ = ((\FD|mux_Banco_Ula|saida[24]~8_combout\ $ (\FD|REG_P2|data_s\(98) $ (!\FD|ULA|soma[23]~47\)))) # (GND)
-- \FD|ULA|soma[24]~49\ = CARRY((\FD|mux_Banco_Ula|saida[24]~8_combout\ & ((\FD|REG_P2|data_s\(98)) # (!\FD|ULA|soma[23]~47\))) # (!\FD|mux_Banco_Ula|saida[24]~8_combout\ & (\FD|REG_P2|data_s\(98) & !\FD|ULA|soma[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datab => \FD|REG_P2|data_s\(98),
	datad => VCC,
	cin => \FD|ULA|soma[23]~47\,
	combout => \FD|ULA|soma[24]~48_combout\,
	cout => \FD|ULA|soma[24]~49\);

-- Location: LCCOMB_X81_Y6_N18
\FD|ULA|soma[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[25]~50_combout\ = (\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|REG_P2|data_s\(99) & (\FD|ULA|soma[24]~49\ & VCC)) # (!\FD|REG_P2|data_s\(99) & (!\FD|ULA|soma[24]~49\)))) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|REG_P2|data_s\(99) 
-- & (!\FD|ULA|soma[24]~49\)) # (!\FD|REG_P2|data_s\(99) & ((\FD|ULA|soma[24]~49\) # (GND)))))
-- \FD|ULA|soma[25]~51\ = CARRY((\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|REG_P2|data_s\(99) & !\FD|ULA|soma[24]~49\)) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((!\FD|ULA|soma[24]~49\) # (!\FD|REG_P2|data_s\(99)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datab => \FD|REG_P2|data_s\(99),
	datad => VCC,
	cin => \FD|ULA|soma[24]~49\,
	combout => \FD|ULA|soma[25]~50_combout\,
	cout => \FD|ULA|soma[25]~51\);

-- Location: LCCOMB_X81_Y6_N20
\FD|ULA|soma[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[26]~52_combout\ = ((\FD|REG_P2|data_s\(100) $ (\FD|mux_Banco_Ula|saida[26]~6_combout\ $ (!\FD|ULA|soma[25]~51\)))) # (GND)
-- \FD|ULA|soma[26]~53\ = CARRY((\FD|REG_P2|data_s\(100) & ((\FD|mux_Banco_Ula|saida[26]~6_combout\) # (!\FD|ULA|soma[25]~51\))) # (!\FD|REG_P2|data_s\(100) & (\FD|mux_Banco_Ula|saida[26]~6_combout\ & !\FD|ULA|soma[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(100),
	datab => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[25]~51\,
	combout => \FD|ULA|soma[26]~52_combout\,
	cout => \FD|ULA|soma[26]~53\);

-- Location: LCCOMB_X81_Y6_N22
\FD|ULA|soma[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[27]~54_combout\ = (\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|REG_P2|data_s\(101) & (\FD|ULA|soma[26]~53\ & VCC)) # (!\FD|REG_P2|data_s\(101) & (!\FD|ULA|soma[26]~53\)))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & 
-- ((\FD|REG_P2|data_s\(101) & (!\FD|ULA|soma[26]~53\)) # (!\FD|REG_P2|data_s\(101) & ((\FD|ULA|soma[26]~53\) # (GND)))))
-- \FD|ULA|soma[27]~55\ = CARRY((\FD|mux_Banco_Ula|saida[27]~5_combout\ & (!\FD|REG_P2|data_s\(101) & !\FD|ULA|soma[26]~53\)) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((!\FD|ULA|soma[26]~53\) # (!\FD|REG_P2|data_s\(101)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datab => \FD|REG_P2|data_s\(101),
	datad => VCC,
	cin => \FD|ULA|soma[26]~53\,
	combout => \FD|ULA|soma[27]~54_combout\,
	cout => \FD|ULA|soma[27]~55\);

-- Location: LCCOMB_X81_Y6_N24
\FD|ULA|soma[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[28]~56_combout\ = ((\FD|REG_P2|data_s\(102) $ (\FD|mux_Banco_Ula|saida[28]~4_combout\ $ (!\FD|ULA|soma[27]~55\)))) # (GND)
-- \FD|ULA|soma[28]~57\ = CARRY((\FD|REG_P2|data_s\(102) & ((\FD|mux_Banco_Ula|saida[28]~4_combout\) # (!\FD|ULA|soma[27]~55\))) # (!\FD|REG_P2|data_s\(102) & (\FD|mux_Banco_Ula|saida[28]~4_combout\ & !\FD|ULA|soma[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(102),
	datab => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[27]~55\,
	combout => \FD|ULA|soma[28]~56_combout\,
	cout => \FD|ULA|soma[28]~57\);

-- Location: LCCOMB_X81_Y6_N26
\FD|ULA|soma[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[29]~58_combout\ = (\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|REG_P2|data_s\(103) & (\FD|ULA|soma[28]~57\ & VCC)) # (!\FD|REG_P2|data_s\(103) & (!\FD|ULA|soma[28]~57\)))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & 
-- ((\FD|REG_P2|data_s\(103) & (!\FD|ULA|soma[28]~57\)) # (!\FD|REG_P2|data_s\(103) & ((\FD|ULA|soma[28]~57\) # (GND)))))
-- \FD|ULA|soma[29]~59\ = CARRY((\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|REG_P2|data_s\(103) & !\FD|ULA|soma[28]~57\)) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((!\FD|ULA|soma[28]~57\) # (!\FD|REG_P2|data_s\(103)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datab => \FD|REG_P2|data_s\(103),
	datad => VCC,
	cin => \FD|ULA|soma[28]~57\,
	combout => \FD|ULA|soma[29]~58_combout\,
	cout => \FD|ULA|soma[29]~59\);

-- Location: LCCOMB_X81_Y6_N28
\FD|ULA|soma[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[30]~60_combout\ = ((\FD|mux_Banco_Ula|saida[30]~2_combout\ $ (\FD|REG_P2|data_s\(104) $ (!\FD|ULA|soma[29]~59\)))) # (GND)
-- \FD|ULA|soma[30]~61\ = CARRY((\FD|mux_Banco_Ula|saida[30]~2_combout\ & ((\FD|REG_P2|data_s\(104)) # (!\FD|ULA|soma[29]~59\))) # (!\FD|mux_Banco_Ula|saida[30]~2_combout\ & (\FD|REG_P2|data_s\(104) & !\FD|ULA|soma[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datab => \FD|REG_P2|data_s\(104),
	datad => VCC,
	cin => \FD|ULA|soma[29]~59\,
	combout => \FD|ULA|soma[30]~60_combout\,
	cout => \FD|ULA|soma[30]~61\);

-- Location: LCCOMB_X81_Y6_N30
\FD|ULA|soma[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[31]~62_combout\ = \FD|REG_P2|data_s\(105) $ (\FD|ULA|soma[30]~61\ $ (\FD|mux_Banco_Ula|saida[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(105),
	datad => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	cin => \FD|ULA|soma[30]~61\,
	combout => \FD|ULA|soma[31]~62_combout\);

-- Location: LCCOMB_X82_Y4_N6
\FD|ULA|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~4_combout\ = (\FD|ULA|soma[31]~62_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~4_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|ALUctr[0]~4_combout\,
	datad => \FD|ULA|soma[31]~62_combout\,
	combout => \FD|ULA|Mux0~4_combout\);

-- Location: LCCOMB_X82_Y4_N12
\FD|ULA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~2_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~62_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux0~4_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (!\FD|ULA|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Mux21~1_combout\,
	datac => \FD|ULA|Add1~62_combout\,
	datad => \FD|ULA|Mux0~4_combout\,
	combout => \FD|ULA|Mux0~2_combout\);

-- Location: LCCOMB_X82_Y4_N28
\FD|ULA|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~3_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[31]~1_combout\ & ((\FD|REG_P2|data_s\(105)) # (!\FD|ULA|Mux0~2_combout\))) # (!\FD|mux_Banco_Ula|saida[31]~1_combout\ & (\FD|REG_P2|data_s\(105) & !\FD|ULA|Mux0~2_combout\)))) 
-- # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|ULA|Mux31~5_combout\,
	datac => \FD|REG_P2|data_s\(105),
	datad => \FD|ULA|Mux0~2_combout\,
	combout => \FD|ULA|Mux0~3_combout\);

-- Location: FF_X82_Y4_N29
\FD|REG_P3|data_s[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(68));

-- Location: LCCOMB_X82_Y8_N24
\FD|REG_P4|data_s[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[36]~feeder_combout\ = \FD|REG_P3|data_s\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P3|data_s\(68),
	combout => \FD|REG_P4|data_s[36]~feeder_combout\);

-- Location: FF_X82_Y8_N25
\FD|REG_P4|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(36));

-- Location: LCCOMB_X76_Y5_N4
\FD|REG_P3|data_s[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[27]~feeder_combout\ = \FD|REG_P2|data_s\(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(64),
	combout => \FD|REG_P3|data_s[27]~feeder_combout\);

-- Location: FF_X76_Y5_N5
\FD|REG_P3|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(27));

-- Location: LCCOMB_X76_Y5_N6
\FD|REG_P3|data_s[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[28]~feeder_combout\ = \FD|REG_P2|data_s\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(65),
	combout => \FD|REG_P3|data_s[28]~feeder_combout\);

-- Location: FF_X76_Y5_N7
\FD|REG_P3|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(28));

-- Location: FF_X80_Y5_N25
\FD|REG_P3|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(66),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(29));

-- Location: LCCOMB_X79_Y3_N2
\FD|REG_P3|data_s[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[30]~feeder_combout\ = \FD|REG_P2|data_s\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(67),
	combout => \FD|REG_P3|data_s[30]~feeder_combout\);

-- Location: FF_X79_Y3_N3
\FD|REG_P3|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(30));

-- Location: LCCOMB_X79_Y5_N24
\FD|REG_P3|data_s[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[31]~feeder_combout\ = \FD|REG_P2|data_s\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(68),
	combout => \FD|REG_P3|data_s[31]~feeder_combout\);

-- Location: FF_X79_Y5_N25
\FD|REG_P3|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(31));

-- Location: FF_X79_Y5_N23
\FD|REG_P3|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(69),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(32));

-- Location: LCCOMB_X79_Y5_N12
\FD|REG_P3|data_s[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[33]~feeder_combout\ = \FD|REG_P2|data_s\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P2|data_s\(70),
	combout => \FD|REG_P3|data_s[33]~feeder_combout\);

-- Location: FF_X79_Y5_N13
\FD|REG_P3|data_s[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(33));

-- Location: FF_X77_Y7_N31
\FD|REG_P3|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(71),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(34));

-- Location: LCCOMB_X77_Y7_N2
\FD|REG_P3|data_s[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[35]~feeder_combout\ = \FD|REG_P2|data_s\(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(72),
	combout => \FD|REG_P3|data_s[35]~feeder_combout\);

-- Location: FF_X77_Y7_N3
\FD|REG_P3|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(35));

-- Location: LCCOMB_X80_Y5_N26
\FD|REG_P3|data_s[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[36]~feeder_combout\ = \FD|REG_P2|data_s\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(73),
	combout => \FD|REG_P3|data_s[36]~feeder_combout\);

-- Location: FF_X80_Y5_N27
\FD|REG_P3|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(36));

-- Location: M9K_X78_Y5_N0
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X79_Y8_N14
\FD|mux_Ula_Memoria|saida[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[31]~1_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(36),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\,
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[31]~1_combout\);

-- Location: LCCOMB_X81_Y5_N0
\FD|BR|saidaA[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~5_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[30]~4_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\))) # (!\FD|BR|saidaA[30]~4_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(71),
	datac => \FD|BR|saidaA[30]~4_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\,
	combout => \FD|BR|saidaA[30]~5_combout\);

-- Location: FF_X81_Y5_N1
\FD|REG_P2|data_s[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(104));

-- Location: LCCOMB_X82_Y5_N2
\FD|ULA|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~4_combout\ = (\FD|ULA|soma[30]~60_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|Equal3~2_combout\,
	datac => \FD|ULA|soma[30]~60_combout\,
	datad => \FD|UCULA|ALUctr[0]~5_combout\,
	combout => \FD|ULA|Mux1~4_combout\);

-- Location: LCCOMB_X82_Y5_N18
\FD|ULA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~2_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~60_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux1~4_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (!\FD|ULA|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Mux21~1_combout\,
	datac => \FD|ULA|Add1~60_combout\,
	datad => \FD|ULA|Mux1~4_combout\,
	combout => \FD|ULA|Mux1~2_combout\);

-- Location: LCCOMB_X82_Y5_N4
\FD|ULA|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~3_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(104) & ((\FD|mux_Banco_Ula|saida[30]~2_combout\) # (!\FD|ULA|Mux1~2_combout\))) # (!\FD|REG_P2|data_s\(104) & (\FD|mux_Banco_Ula|saida[30]~2_combout\ & !\FD|ULA|Mux1~2_combout\)))) 
-- # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(104),
	datab => \FD|ULA|Mux31~5_combout\,
	datac => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datad => \FD|ULA|Mux1~2_combout\,
	combout => \FD|ULA|Mux1~3_combout\);

-- Location: FF_X82_Y5_N5
\FD|REG_P3|data_s[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(67));

-- Location: LCCOMB_X81_Y5_N10
\FD|REG_P4|data_s[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[35]~feeder_combout\ = \FD|REG_P3|data_s\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(67),
	combout => \FD|REG_P4|data_s[35]~feeder_combout\);

-- Location: FF_X81_Y5_N11
\FD|REG_P4|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(35));

-- Location: LCCOMB_X77_Y5_N26
\FD|mux_Ula_Memoria|saida[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[30]~2_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(35),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\,
	combout => \FD|mux_Ula_Memoria|saida[30]~2_combout\);

-- Location: LCCOMB_X79_Y6_N28
\FD|BR|saidaB[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~9_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[28]~8_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\))) # (!\FD|BR|saidaB[28]~8_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(67),
	datab => \FD|BR|saidaB[28]~8_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\,
	combout => \FD|BR|saidaB[28]~9_combout\);

-- Location: FF_X79_Y6_N29
\FD|REG_P2|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(70));

-- Location: LCCOMB_X79_Y6_N6
\FD|mux_Banco_Ula|saida[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[28]~4_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(41))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(70),
	combout => \FD|mux_Banco_Ula|saida[28]~4_combout\);

-- Location: LCCOMB_X80_Y6_N2
\FD|ULA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~0_combout\ = (\FD|ULA|soma[28]~56_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~5_combout\) # (!\FD|UCULA|ALUctr[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~4_combout\,
	datac => \FD|UCULA|ALUctr[0]~5_combout\,
	datad => \FD|ULA|soma[28]~56_combout\,
	combout => \FD|ULA|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y6_N20
\FD|ULA|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~56_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux3~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (!\FD|ULA|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Mux21~1_combout\,
	datac => \FD|ULA|Add1~56_combout\,
	datad => \FD|ULA|Mux3~0_combout\,
	combout => \FD|ULA|Mux3~1_combout\);

-- Location: LCCOMB_X80_Y6_N22
\FD|ULA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[28]~4_combout\ & ((\FD|REG_P2|data_s\(102)) # (!\FD|ULA|Mux3~1_combout\))) # (!\FD|mux_Banco_Ula|saida[28]~4_combout\ & (\FD|REG_P2|data_s\(102) & !\FD|ULA|Mux3~1_combout\)))) 
-- # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datab => \FD|REG_P2|data_s\(102),
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux3~1_combout\,
	combout => \FD|ULA|Mux3~2_combout\);

-- Location: FF_X80_Y6_N23
\FD|REG_P3|data_s[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(65));

-- Location: FF_X80_Y5_N3
\FD|REG_P4|data_s[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(65),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(33));

-- Location: LCCOMB_X79_Y5_N30
\FD|mux_Ula_Memoria|saida[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[28]~4_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(33),
	datab => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\,
	combout => \FD|mux_Ula_Memoria|saida[28]~4_combout\);

-- Location: LCCOMB_X79_Y6_N12
\FD|BR|saidaB[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~23_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[21]~22_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\))) # (!\FD|BR|saidaB[21]~22_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(53),
	datab => \FD|BR|saidaB[21]~22_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\,
	combout => \FD|BR|saidaB[21]~23_combout\);

-- Location: FF_X79_Y6_N13
\FD|REG_P2|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[21]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(63));

-- Location: LCCOMB_X75_Y5_N30
\FD|REG_P3|data_s[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[26]~feeder_combout\ = \FD|REG_P2|data_s\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P2|data_s\(63),
	combout => \FD|REG_P3|data_s[26]~feeder_combout\);

-- Location: FF_X75_Y5_N31
\FD|REG_P3|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(26));

-- Location: LCCOMB_X82_Y6_N2
\FD|ULA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~0_combout\ = (\FD|ULA|soma[27]~54_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|Equal3~2_combout\,
	datad => \FD|ULA|soma[27]~54_combout\,
	combout => \FD|ULA|Mux4~0_combout\);

-- Location: LCCOMB_X82_Y6_N16
\FD|ULA|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~54_combout\ & (\FD|ULA|Mux21~0_combout\))) # (!\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux4~0_combout\) # (!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~54_combout\,
	datab => \FD|ULA|Mux21~1_combout\,
	datac => \FD|ULA|Mux21~0_combout\,
	datad => \FD|ULA|Mux4~0_combout\,
	combout => \FD|ULA|Mux4~1_combout\);

-- Location: LCCOMB_X82_Y6_N6
\FD|ULA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(101) & ((\FD|mux_Banco_Ula|saida[27]~5_combout\) # (!\FD|ULA|Mux4~1_combout\))) # (!\FD|REG_P2|data_s\(101) & (\FD|mux_Banco_Ula|saida[27]~5_combout\ & !\FD|ULA|Mux4~1_combout\)))) 
-- # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(101),
	datab => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux4~1_combout\,
	combout => \FD|ULA|Mux4~2_combout\);

-- Location: FF_X82_Y6_N7
\FD|REG_P3|data_s[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(64));

-- Location: FF_X81_Y5_N17
\FD|REG_P4|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(64),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(32));

-- Location: LCCOMB_X77_Y5_N22
\FD|mux_Ula_Memoria|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[27]~5_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\,
	datad => \FD|REG_P4|data_s\(32),
	combout => \FD|mux_Ula_Memoria|saida[27]~5_combout\);

-- Location: LCCOMB_X77_Y6_N28
\FD|BR|saidaA[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~13_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[26]~12_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\))) # (!\FD|BR|saidaA[26]~12_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[26]~12_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(63),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\,
	combout => \FD|BR|saidaA[26]~13_combout\);

-- Location: FF_X77_Y6_N29
\FD|REG_P2|data_s[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(100));

-- Location: LCCOMB_X82_Y6_N28
\FD|ULA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~0_combout\ = (\FD|ULA|soma[26]~52_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|Equal3~2_combout\,
	datad => \FD|ULA|soma[26]~52_combout\,
	combout => \FD|ULA|Mux5~0_combout\);

-- Location: LCCOMB_X82_Y6_N22
\FD|ULA|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~52_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux5~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~52_combout\,
	datab => \FD|ULA|Mux21~0_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux5~0_combout\,
	combout => \FD|ULA|Mux5~1_combout\);

-- Location: LCCOMB_X82_Y6_N0
\FD|ULA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~2_combout\ = (\FD|ULA|Mux5~1_combout\ & (((\FD|REG_P2|data_s\(100) & \FD|mux_Banco_Ula|saida[26]~6_combout\)) # (!\FD|ULA|Mux31~5_combout\))) # (!\FD|ULA|Mux5~1_combout\ & (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(100)) # 
-- (\FD|mux_Banco_Ula|saida[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(100),
	datab => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datac => \FD|ULA|Mux5~1_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \FD|ULA|Mux5~2_combout\);

-- Location: FF_X82_Y6_N1
\FD|REG_P3|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(63));

-- Location: LCCOMB_X81_Y5_N2
\FD|REG_P4|data_s[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[31]~feeder_combout\ = \FD|REG_P3|data_s\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(63),
	combout => \FD|REG_P4|data_s[31]~feeder_combout\);

-- Location: FF_X81_Y5_N3
\FD|REG_P4|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(31));

-- Location: LCCOMB_X77_Y5_N10
\FD|mux_Ula_Memoria|saida[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[26]~6_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(31),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\,
	combout => \FD|mux_Ula_Memoria|saida[26]~6_combout\);

-- Location: LCCOMB_X79_Y3_N24
\FD|BR|saidaB[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~15_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[25]~14_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\))) # (!\FD|BR|saidaB[25]~14_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(61),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[25]~14_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\,
	combout => \FD|BR|saidaB[25]~15_combout\);

-- Location: FF_X79_Y3_N25
\FD|REG_P2|data_s[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(67));

-- Location: LCCOMB_X80_Y3_N4
\FD|mux_Banco_Ula|saida[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[25]~7_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(67),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[25]~7_combout\);

-- Location: LCCOMB_X82_Y6_N26
\FD|ULA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~0_combout\ = (\FD|ULA|soma[25]~50_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|Equal3~2_combout\,
	datad => \FD|ULA|soma[25]~50_combout\,
	combout => \FD|ULA|Mux6~0_combout\);

-- Location: LCCOMB_X82_Y6_N20
\FD|ULA|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Add1~50_combout\))) # (!\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Mux6~0_combout\)))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux6~0_combout\,
	datab => \FD|ULA|Mux21~0_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Add1~50_combout\,
	combout => \FD|ULA|Mux6~1_combout\);

-- Location: LCCOMB_X82_Y6_N30
\FD|ULA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|REG_P2|data_s\(99)) # (!\FD|ULA|Mux6~1_combout\))) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & (\FD|REG_P2|data_s\(99) & !\FD|ULA|Mux6~1_combout\)))) # 
-- (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datab => \FD|REG_P2|data_s\(99),
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux6~1_combout\,
	combout => \FD|ULA|Mux6~2_combout\);

-- Location: FF_X82_Y6_N31
\FD|REG_P3|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(62));

-- Location: LCCOMB_X77_Y8_N10
\FD|REG_P4|data_s[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[30]~feeder_combout\ = \FD|REG_P3|data_s\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P3|data_s\(62),
	combout => \FD|REG_P4|data_s[30]~feeder_combout\);

-- Location: FF_X77_Y8_N11
\FD|REG_P4|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(30));

-- Location: LCCOMB_X77_Y8_N26
\FD|mux_Ula_Memoria|saida[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[25]~7_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(30),
	datab => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\,
	combout => \FD|mux_Ula_Memoria|saida[25]~7_combout\);

-- Location: LCCOMB_X82_Y6_N12
\FD|BR|saidaA[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~17_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[24]~16_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\))) # (!\FD|BR|saidaA[24]~16_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(59),
	datab => \FD|BR|saidaA[24]~16_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[24]~17_combout\);

-- Location: FF_X82_Y6_N13
\FD|REG_P2|data_s[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(98));

-- Location: LCCOMB_X82_Y6_N24
\FD|ULA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~0_combout\ = (\FD|ULA|soma[24]~48_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|Equal3~2_combout\,
	datac => \FD|ULA|soma[24]~48_combout\,
	datad => \FD|UCULA|ALUctr[0]~5_combout\,
	combout => \FD|ULA|Mux7~0_combout\);

-- Location: LCCOMB_X82_Y6_N10
\FD|ULA|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~48_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux7~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~48_combout\,
	datab => \FD|ULA|Mux21~0_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux7~0_combout\,
	combout => \FD|ULA|Mux7~1_combout\);

-- Location: LCCOMB_X82_Y6_N8
\FD|ULA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(98) & ((\FD|mux_Banco_Ula|saida[24]~8_combout\) # (!\FD|ULA|Mux7~1_combout\))) # (!\FD|REG_P2|data_s\(98) & (\FD|mux_Banco_Ula|saida[24]~8_combout\ & !\FD|ULA|Mux7~1_combout\)))) # 
-- (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(98),
	datab => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux7~1_combout\,
	combout => \FD|ULA|Mux7~2_combout\);

-- Location: FF_X82_Y6_N9
\FD|REG_P3|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(61));

-- Location: FF_X82_Y5_N31
\FD|REG_P4|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(61),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(29));

-- Location: LCCOMB_X79_Y5_N6
\FD|mux_Ula_Memoria|saida[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[24]~8_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(29),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\,
	combout => \FD|mux_Ula_Memoria|saida[24]~8_combout\);

-- Location: LCCOMB_X77_Y6_N20
\FD|BR|bancoReg_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X77_Y6_N21
\FD|BR|bancoReg_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(58));

-- Location: LCCOMB_X77_Y6_N12
\FD|BR|saidaA[23]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~18_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(58) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(58),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[23]~18_combout\);

-- Location: LCCOMB_X77_Y6_N18
\FD|BR|saidaA[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~19_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[23]~18_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\))) # (!\FD|BR|saidaA[23]~18_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(57),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\,
	datad => \FD|BR|saidaA[23]~18_combout\,
	combout => \FD|BR|saidaA[23]~19_combout\);

-- Location: FF_X77_Y6_N19
\FD|REG_P2|data_s[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(97));

-- Location: LCCOMB_X82_Y6_N18
\FD|ULA|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~0_combout\ = (\FD|ULA|soma[23]~46_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|Equal3~2_combout\,
	datad => \FD|ULA|soma[23]~46_combout\,
	combout => \FD|ULA|Mux8~0_combout\);

-- Location: LCCOMB_X82_Y6_N4
\FD|ULA|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~46_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux8~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (!\FD|ULA|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Mux21~1_combout\,
	datac => \FD|ULA|Add1~46_combout\,
	datad => \FD|ULA|Mux8~0_combout\,
	combout => \FD|ULA|Mux8~1_combout\);

-- Location: LCCOMB_X82_Y6_N14
\FD|ULA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(97) & ((\FD|mux_Banco_Ula|saida[23]~9_combout\) # (!\FD|ULA|Mux8~1_combout\))) # (!\FD|REG_P2|data_s\(97) & (!\FD|ULA|Mux8~1_combout\ & \FD|mux_Banco_Ula|saida[23]~9_combout\)))) # 
-- (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~5_combout\,
	datab => \FD|REG_P2|data_s\(97),
	datac => \FD|ULA|Mux8~1_combout\,
	datad => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	combout => \FD|ULA|Mux8~2_combout\);

-- Location: FF_X82_Y6_N15
\FD|REG_P3|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(60));

-- Location: FF_X81_Y6_N1
\FD|REG_P4|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(60),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(28));

-- Location: LCCOMB_X77_Y6_N22
\FD|mux_Ula_Memoria|saida[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[23]~9_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(69),
	datac => \FD|REG_P4|data_s\(28),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\,
	combout => \FD|mux_Ula_Memoria|saida[23]~9_combout\);

-- Location: LCCOMB_X76_Y6_N24
\FD|BR|bancoReg_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X76_Y6_N25
\FD|BR|bancoReg_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(56));

-- Location: LCCOMB_X77_Y6_N14
\FD|BR|saidaA[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~20_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(56) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(56),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[22]~20_combout\);

-- Location: FF_X77_Y6_N25
\FD|BR|bancoReg_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(55));

-- Location: LCCOMB_X77_Y6_N8
\FD|BR|saidaA[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~21_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[22]~20_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\)) # (!\FD|BR|saidaA[22]~20_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\,
	datab => \FD|BR|saidaA[22]~20_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(55),
	combout => \FD|BR|saidaA[22]~21_combout\);

-- Location: FF_X77_Y6_N9
\FD|REG_P2|data_s[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(96));

-- Location: LCCOMB_X80_Y6_N0
\FD|ULA|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~0_combout\ = (\FD|ULA|soma[22]~44_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~4_combout\)) # (!\FD|UCULA|ALUctr[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~5_combout\,
	datab => \FD|UCULA|ALUctr[0]~4_combout\,
	datac => \FD|ULA|soma[22]~44_combout\,
	datad => \FD|UCULA|Equal3~2_combout\,
	combout => \FD|ULA|Mux9~0_combout\);

-- Location: LCCOMB_X80_Y6_N10
\FD|ULA|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~44_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux9~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Add1~44_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux9~0_combout\,
	combout => \FD|ULA|Mux9~1_combout\);

-- Location: LCCOMB_X80_Y6_N4
\FD|ULA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(96) & ((\FD|mux_Banco_Ula|saida[22]~10_combout\) # (!\FD|ULA|Mux9~1_combout\))) # (!\FD|REG_P2|data_s\(96) & (\FD|mux_Banco_Ula|saida[22]~10_combout\ & !\FD|ULA|Mux9~1_combout\)))) 
-- # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(96),
	datab => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux9~1_combout\,
	combout => \FD|ULA|Mux9~2_combout\);

-- Location: FF_X80_Y6_N5
\FD|REG_P3|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(59));

-- Location: FF_X77_Y6_N15
\FD|REG_P4|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(59),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(27));

-- Location: LCCOMB_X77_Y6_N24
\FD|mux_Ula_Memoria|saida[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[22]~10_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(27),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \FD|mux_Ula_Memoria|saida[22]~10_combout\);

-- Location: FF_X79_Y9_N31
\FD|BR|bancoReg_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(53));

-- Location: LCCOMB_X79_Y9_N24
\FD|BR|bancoReg_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X79_Y9_N25
\FD|BR|bancoReg_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(54));

-- Location: LCCOMB_X79_Y9_N20
\FD|BR|saidaA[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~22_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(54) & ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(54),
	datab => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaA[21]~22_combout\);

-- Location: LCCOMB_X79_Y9_N16
\FD|BR|saidaA[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~23_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[21]~22_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\)) # (!\FD|BR|saidaA[21]~22_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(53),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|saidaA[21]~22_combout\,
	combout => \FD|BR|saidaA[21]~23_combout\);

-- Location: FF_X79_Y9_N17
\FD|REG_P2|data_s[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[21]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(95));

-- Location: LCCOMB_X80_Y6_N30
\FD|ULA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~0_combout\ = (\FD|ULA|soma[21]~42_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~4_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|ULA|soma[21]~42_combout\,
	datac => \FD|UCULA|ALUctr[0]~5_combout\,
	datad => \FD|UCULA|ALUctr[0]~4_combout\,
	combout => \FD|ULA|Mux10~0_combout\);

-- Location: LCCOMB_X80_Y6_N28
\FD|ULA|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~42_combout\ & ((\FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux10~0_combout\) # (!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~42_combout\,
	datab => \FD|ULA|Mux21~1_combout\,
	datac => \FD|ULA|Mux10~0_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux10~1_combout\);

-- Location: LCCOMB_X80_Y6_N14
\FD|ULA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~11_combout\) # (!\FD|ULA|Mux10~1_combout\))) # (!\FD|REG_P2|data_s\(95) & (\FD|mux_Banco_Ula|saida[21]~11_combout\ & 
-- !\FD|ULA|Mux10~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(95),
	datab => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux10~1_combout\,
	combout => \FD|ULA|Mux10~2_combout\);

-- Location: FF_X80_Y6_N15
\FD|REG_P3|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(58));

-- Location: FF_X79_Y6_N23
\FD|REG_P4|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(26));

-- Location: LCCOMB_X79_Y9_N30
\FD|mux_Ula_Memoria|saida[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[21]~11_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(26),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\,
	combout => \FD|mux_Ula_Memoria|saida[21]~11_combout\);

-- Location: LCCOMB_X79_Y6_N20
\FD|BR|saidaB[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~25_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[20]~24_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\))) # (!\FD|BR|saidaB[20]~24_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(51),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[20]~24_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\,
	combout => \FD|BR|saidaB[20]~25_combout\);

-- Location: FF_X79_Y6_N21
\FD|REG_P2|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(62));

-- Location: FF_X79_Y5_N27
\FD|REG_P3|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(25));

-- Location: LCCOMB_X80_Y6_N24
\FD|ULA|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~0_combout\ = (\FD|ULA|soma[20]~40_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~4_combout\)) # (!\FD|UCULA|ALUctr[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~5_combout\,
	datab => \FD|UCULA|ALUctr[0]~4_combout\,
	datac => \FD|ULA|soma[20]~40_combout\,
	datad => \FD|UCULA|Equal3~2_combout\,
	combout => \FD|ULA|Mux11~0_combout\);

-- Location: LCCOMB_X80_Y6_N18
\FD|ULA|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~40_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux11~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Add1~40_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux11~0_combout\,
	combout => \FD|ULA|Mux11~1_combout\);

-- Location: LCCOMB_X80_Y6_N8
\FD|ULA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(94) & ((\FD|mux_Banco_Ula|saida[20]~12_combout\) # (!\FD|ULA|Mux11~1_combout\))) # (!\FD|REG_P2|data_s\(94) & (\FD|mux_Banco_Ula|saida[20]~12_combout\ & 
-- !\FD|ULA|Mux11~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(94),
	datab => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux11~1_combout\,
	combout => \FD|ULA|Mux11~2_combout\);

-- Location: FF_X80_Y6_N9
\FD|REG_P3|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(57));

-- Location: LCCOMB_X79_Y9_N12
\FD|REG_P4|data_s[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[25]~feeder_combout\ = \FD|REG_P3|data_s\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(57),
	combout => \FD|REG_P4|data_s[25]~feeder_combout\);

-- Location: FF_X79_Y9_N13
\FD|REG_P4|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(25));

-- Location: LCCOMB_X79_Y9_N8
\FD|mux_Ula_Memoria|saida[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[20]~12_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\,
	datad => \FD|REG_P4|data_s\(25),
	combout => \FD|mux_Ula_Memoria|saida[20]~12_combout\);

-- Location: LCCOMB_X80_Y4_N16
\FD|BR|saidaB[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~27_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[19]~26_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\))) # (!\FD|BR|saidaB[19]~26_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[19]~26_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(49),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[19]~27_combout\);

-- Location: FF_X80_Y4_N17
\FD|REG_P2|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(61));

-- Location: LCCOMB_X80_Y4_N26
\FD|mux_Banco_Ula|saida[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[19]~13_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(138),
	datab => \FD|REG_P2|data_s\(61),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[19]~13_combout\);

-- Location: LCCOMB_X80_Y4_N14
\FD|ULA|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~0_combout\ = (\FD|ULA|soma[19]~38_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~4_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|ALUctr[0]~4_combout\,
	datad => \FD|ULA|soma[19]~38_combout\,
	combout => \FD|ULA|Mux12~0_combout\);

-- Location: LCCOMB_X80_Y4_N20
\FD|ULA|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Add1~38_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux12~0_combout\)) # (!\FD|ULA|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~1_combout\,
	datab => \FD|ULA|Mux21~0_combout\,
	datac => \FD|ULA|Mux12~0_combout\,
	datad => \FD|ULA|Add1~38_combout\,
	combout => \FD|ULA|Mux12~1_combout\);

-- Location: LCCOMB_X80_Y4_N22
\FD|ULA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|REG_P2|data_s\(93)) # (!\FD|ULA|Mux12~1_combout\))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & (\FD|REG_P2|data_s\(93) & 
-- !\FD|ULA|Mux12~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datab => \FD|REG_P2|data_s\(93),
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux12~1_combout\,
	combout => \FD|ULA|Mux12~2_combout\);

-- Location: FF_X80_Y4_N23
\FD|REG_P3|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(56));

-- Location: FF_X80_Y4_N13
\FD|REG_P4|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(24));

-- Location: LCCOMB_X79_Y4_N4
\FD|mux_Ula_Memoria|saida[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[19]~13_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(24),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\,
	combout => \FD|mux_Ula_Memoria|saida[19]~13_combout\);

-- Location: LCCOMB_X80_Y7_N20
\FD|BR|saidaB[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~57_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[4]~56_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\))) # (!\FD|BR|saidaB[4]~56_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(19),
	datab => \FD|BR|saidaB[4]~56_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[4]~57_combout\);

-- Location: FF_X80_Y7_N21
\FD|REG_P2|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(46));

-- Location: FF_X79_Y5_N21
\FD|REG_P3|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(9));

-- Location: LCCOMB_X75_Y5_N0
\FD|REG_P3|data_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[10]~feeder_combout\ = \FD|REG_P2|data_s\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P2|data_s\(47),
	combout => \FD|REG_P3|data_s[10]~feeder_combout\);

-- Location: FF_X75_Y5_N1
\FD|REG_P3|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(10));

-- Location: LCCOMB_X75_Y5_N2
\FD|REG_P3|data_s[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[11]~feeder_combout\ = \FD|REG_P2|data_s\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P2|data_s\(48),
	combout => \FD|REG_P3|data_s[11]~feeder_combout\);

-- Location: FF_X75_Y5_N3
\FD|REG_P3|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(11));

-- Location: LCCOMB_X75_Y5_N24
\FD|REG_P3|data_s[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[12]~feeder_combout\ = \FD|REG_P2|data_s\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(49),
	combout => \FD|REG_P3|data_s[12]~feeder_combout\);

-- Location: FF_X75_Y5_N25
\FD|REG_P3|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(12));

-- Location: LCCOMB_X77_Y5_N12
\FD|REG_P3|data_s[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[13]~feeder_combout\ = \FD|REG_P2|data_s\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(50),
	combout => \FD|REG_P3|data_s[13]~feeder_combout\);

-- Location: FF_X77_Y5_N13
\FD|REG_P3|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(13));

-- Location: LCCOMB_X77_Y5_N6
\FD|REG_P3|data_s[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[14]~feeder_combout\ = \FD|REG_P2|data_s\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P2|data_s\(51),
	combout => \FD|REG_P3|data_s[14]~feeder_combout\);

-- Location: FF_X77_Y5_N7
\FD|REG_P3|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(14));

-- Location: LCCOMB_X77_Y5_N8
\FD|REG_P3|data_s[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[15]~feeder_combout\ = \FD|REG_P2|data_s\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(52),
	combout => \FD|REG_P3|data_s[15]~feeder_combout\);

-- Location: FF_X77_Y5_N9
\FD|REG_P3|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(15));

-- Location: LCCOMB_X77_Y5_N18
\FD|REG_P3|data_s[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[16]~feeder_combout\ = \FD|REG_P2|data_s\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(53),
	combout => \FD|REG_P3|data_s[16]~feeder_combout\);

-- Location: FF_X77_Y5_N19
\FD|REG_P3|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(16));

-- Location: LCCOMB_X77_Y5_N16
\FD|REG_P3|data_s[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[17]~feeder_combout\ = \FD|REG_P2|data_s\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P2|data_s\(54),
	combout => \FD|REG_P3|data_s[17]~feeder_combout\);

-- Location: FF_X77_Y5_N17
\FD|REG_P3|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(17));

-- Location: FF_X80_Y5_N1
\FD|REG_P3|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(55),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(18));

-- Location: LCCOMB_X75_Y5_N10
\FD|REG_P3|data_s[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[19]~feeder_combout\ = \FD|REG_P2|data_s\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(56),
	combout => \FD|REG_P3|data_s[19]~feeder_combout\);

-- Location: FF_X75_Y5_N11
\FD|REG_P3|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(19));

-- Location: FF_X77_Y5_N31
\FD|REG_P3|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(57),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(20));

-- Location: FF_X79_Y3_N17
\FD|REG_P3|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(21));

-- Location: LCCOMB_X77_Y5_N20
\FD|REG_P3|data_s[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[22]~feeder_combout\ = \FD|REG_P2|data_s\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P2|data_s\(59),
	combout => \FD|REG_P3|data_s[22]~feeder_combout\);

-- Location: FF_X77_Y5_N21
\FD|REG_P3|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(22));

-- Location: LCCOMB_X75_Y5_N20
\FD|REG_P3|data_s[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[23]~feeder_combout\ = \FD|REG_P2|data_s\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(60),
	combout => \FD|REG_P3|data_s[23]~feeder_combout\);

-- Location: FF_X75_Y5_N21
\FD|REG_P3|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(23));

-- Location: M9K_X78_Y5_N0
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X80_Y6_N26
\FD|ULA|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~0_combout\ = (\FD|ULA|soma[18]~36_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~5_combout\) # (!\FD|UCULA|ALUctr[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~4_combout\,
	datac => \FD|UCULA|ALUctr[0]~5_combout\,
	datad => \FD|ULA|soma[18]~36_combout\,
	combout => \FD|ULA|Mux13~0_combout\);

-- Location: LCCOMB_X80_Y6_N12
\FD|ULA|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Add1~36_combout\ & \FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux13~0_combout\) # ((!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux13~0_combout\,
	datab => \FD|ULA|Add1~36_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux13~1_combout\);

-- Location: LCCOMB_X80_Y6_N6
\FD|ULA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[18]~14_combout\ & ((\FD|REG_P2|data_s\(92)) # (!\FD|ULA|Mux13~1_combout\))) # (!\FD|mux_Banco_Ula|saida[18]~14_combout\ & (\FD|REG_P2|data_s\(92) & 
-- !\FD|ULA|Mux13~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datab => \FD|REG_P2|data_s\(92),
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux13~2_combout\);

-- Location: FF_X80_Y6_N7
\FD|REG_P3|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(55));

-- Location: LCCOMB_X79_Y6_N10
\FD|REG_P4|data_s[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[23]~feeder_combout\ = \FD|REG_P3|data_s\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(55),
	combout => \FD|REG_P4|data_s[23]~feeder_combout\);

-- Location: FF_X79_Y6_N11
\FD|REG_P4|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(23));

-- Location: LCCOMB_X79_Y6_N0
\FD|mux_Ula_Memoria|saida[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[18]~14_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\,
	datad => \FD|REG_P4|data_s\(23),
	combout => \FD|mux_Ula_Memoria|saida[18]~14_combout\);

-- Location: LCCOMB_X77_Y6_N0
\FD|BR|bancoReg_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X77_Y6_N1
\FD|BR|bancoReg_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(46));

-- Location: LCCOMB_X77_Y6_N6
\FD|BR|saidaA[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~30_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(46) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(46),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[17]~30_combout\);

-- Location: FF_X77_Y6_N7
\FD|BR|bancoReg_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[17]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(45));

-- Location: LCCOMB_X77_Y6_N10
\FD|BR|saidaA[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~31_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[17]~30_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\)) # (!\FD|BR|saidaA[17]~30_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\,
	datab => \FD|BR|saidaA[17]~30_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(45),
	combout => \FD|BR|saidaA[17]~31_combout\);

-- Location: FF_X77_Y6_N11
\FD|REG_P2|data_s[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[17]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(91));

-- Location: LCCOMB_X85_Y6_N30
\FD|ULA|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~0_combout\ = (\FD|ULA|soma[17]~34_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|Equal3~2_combout\,
	datac => \FD|ULA|soma[17]~34_combout\,
	datad => \FD|UCULA|ALUctr[0]~5_combout\,
	combout => \FD|ULA|Mux14~0_combout\);

-- Location: LCCOMB_X85_Y6_N28
\FD|ULA|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~34_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux14~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~34_combout\,
	datab => \FD|ULA|Mux21~0_combout\,
	datac => \FD|ULA|Mux14~0_combout\,
	datad => \FD|ULA|Mux21~1_combout\,
	combout => \FD|ULA|Mux14~1_combout\);

-- Location: LCCOMB_X85_Y6_N22
\FD|ULA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(91) & ((\FD|mux_Banco_Ula|saida[17]~15_combout\) # (!\FD|ULA|Mux14~1_combout\))) # (!\FD|REG_P2|data_s\(91) & (\FD|mux_Banco_Ula|saida[17]~15_combout\ & 
-- !\FD|ULA|Mux14~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(91),
	datab => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux14~1_combout\,
	combout => \FD|ULA|Mux14~2_combout\);

-- Location: FF_X85_Y6_N23
\FD|REG_P3|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(54));

-- Location: LCCOMB_X77_Y6_N30
\FD|REG_P4|data_s[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[22]~feeder_combout\ = \FD|REG_P3|data_s\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(54),
	combout => \FD|REG_P4|data_s[22]~feeder_combout\);

-- Location: FF_X77_Y6_N31
\FD|REG_P4|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(22));

-- Location: LCCOMB_X77_Y6_N4
\FD|mux_Ula_Memoria|saida[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[17]~15_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(22),
	datab => \FD|REG_P4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\,
	combout => \FD|mux_Ula_Memoria|saida[17]~15_combout\);

-- Location: LCCOMB_X80_Y7_N28
\FD|BR|saidaB[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~59_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[3]~58_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\))) # (!\FD|BR|saidaB[3]~58_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(17),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[3]~58_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\,
	combout => \FD|BR|saidaB[3]~59_combout\);

-- Location: FF_X80_Y7_N29
\FD|REG_P2|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(45));

-- Location: FF_X79_Y5_N3
\FD|REG_P3|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(8));

-- Location: LCCOMB_X85_Y6_N12
\FD|ULA|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~0_combout\ = (\FD|ULA|soma[16]~32_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|Equal3~2_combout\,
	datac => \FD|ULA|soma[16]~32_combout\,
	datad => \FD|UCULA|ALUctr[0]~5_combout\,
	combout => \FD|ULA|Mux15~0_combout\);

-- Location: LCCOMB_X85_Y6_N18
\FD|ULA|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Add1~32_combout\))) # (!\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Mux15~0_combout\)))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux15~0_combout\,
	datab => \FD|ULA|Add1~32_combout\,
	datac => \FD|ULA|Mux21~0_combout\,
	datad => \FD|ULA|Mux21~1_combout\,
	combout => \FD|ULA|Mux15~1_combout\);

-- Location: LCCOMB_X85_Y6_N24
\FD|ULA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(90) & ((\FD|mux_Banco_Ula|saida[16]~16_combout\) # (!\FD|ULA|Mux15~1_combout\))) # (!\FD|REG_P2|data_s\(90) & (\FD|mux_Banco_Ula|saida[16]~16_combout\ & 
-- !\FD|ULA|Mux15~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(90),
	datab => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux15~1_combout\,
	combout => \FD|ULA|Mux15~2_combout\);

-- Location: FF_X85_Y6_N25
\FD|REG_P3|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(53));

-- Location: LCCOMB_X80_Y5_N4
\FD|REG_P4|data_s[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[21]~feeder_combout\ = \FD|REG_P3|data_s\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(53),
	combout => \FD|REG_P4|data_s[21]~feeder_combout\);

-- Location: FF_X80_Y5_N5
\FD|REG_P4|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(21));

-- Location: LCCOMB_X79_Y5_N4
\FD|mux_Ula_Memoria|saida[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[16]~16_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\,
	datab => \FD|REG_P4|data_s\(69),
	datad => \FD|REG_P4|data_s\(21),
	combout => \FD|mux_Ula_Memoria|saida[16]~16_combout\);

-- Location: LCCOMB_X77_Y7_N12
\FD|BR|saidaA[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~35_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[15]~34_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\))) # (!\FD|BR|saidaA[15]~34_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(41),
	datac => \FD|BR|saidaA[15]~34_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\,
	combout => \FD|BR|saidaA[15]~35_combout\);

-- Location: FF_X77_Y7_N13
\FD|REG_P2|data_s[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(89));

-- Location: LCCOMB_X84_Y7_N14
\FD|ULA|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~0_combout\ = (\FD|ULA|soma[15]~30_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|ULA|soma[15]~30_combout\,
	datad => \FD|UCULA|Equal3~2_combout\,
	combout => \FD|ULA|Mux16~0_combout\);

-- Location: LCCOMB_X84_Y7_N16
\FD|ULA|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~30_combout\ & ((\FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux16~0_combout\) # (!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~1_combout\,
	datab => \FD|ULA|Add1~30_combout\,
	datac => \FD|ULA|Mux16~0_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux16~1_combout\);

-- Location: LCCOMB_X84_Y7_N26
\FD|ULA|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(89) & ((\FD|mux_Banco_Ula|saida[15]~17_combout\) # (!\FD|ULA|Mux16~1_combout\))) # (!\FD|REG_P2|data_s\(89) & (\FD|mux_Banco_Ula|saida[15]~17_combout\ & 
-- !\FD|ULA|Mux16~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(89),
	datab => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux16~1_combout\,
	combout => \FD|ULA|Mux16~2_combout\);

-- Location: FF_X84_Y7_N27
\FD|REG_P3|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(52));

-- Location: FF_X86_Y7_N23
\FD|REG_P4|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(52),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(20));

-- Location: LCCOMB_X77_Y7_N16
\FD|mux_Ula_Memoria|saida[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[15]~17_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(20),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \FD|mux_Ula_Memoria|saida[15]~17_combout\);

-- Location: LCCOMB_X77_Y8_N20
\FD|BR|bancoReg_rtl_1_bypass[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[14]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[14]~18_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\);

-- Location: FF_X77_Y8_N21
\FD|BR|bancoReg_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(39));

-- Location: LCCOMB_X76_Y7_N6
\FD|BR|bancoReg_rtl_1_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\);

-- Location: FF_X76_Y7_N7
\FD|BR|bancoReg_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(40));

-- Location: LCCOMB_X76_Y7_N28
\FD|BR|saidaB[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~36_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(40) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(40),
	combout => \FD|BR|saidaB[14]~36_combout\);

-- Location: LCCOMB_X76_Y7_N22
\FD|BR|saidaB[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~37_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[14]~36_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\)) # (!\FD|BR|saidaB[14]~36_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(39),
	datac => \FD|BR|saidaB[14]~36_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[14]~37_combout\);

-- Location: FF_X76_Y7_N23
\FD|REG_P2|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(56));

-- Location: LCCOMB_X76_Y7_N4
\FD|mux_Banco_Ula|saida[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[14]~18_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(24))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(24),
	datac => \FD|REG_P2|data_s\(56),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[14]~18_combout\);

-- Location: LCCOMB_X84_Y7_N12
\FD|ULA|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~0_combout\ = (\FD|ULA|soma[14]~28_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|Equal3~2_combout\,
	datac => \FD|ULA|soma[14]~28_combout\,
	datad => \FD|UCULA|ALUctr[0]~5_combout\,
	combout => \FD|ULA|Mux17~0_combout\);

-- Location: LCCOMB_X84_Y7_N2
\FD|ULA|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Add1~28_combout\ & \FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux17~0_combout\) # ((!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux17~0_combout\,
	datab => \FD|ULA|Add1~28_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux17~1_combout\);

-- Location: LCCOMB_X84_Y7_N20
\FD|ULA|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[14]~18_combout\ & ((\FD|REG_P2|data_s\(88)) # (!\FD|ULA|Mux17~1_combout\))) # (!\FD|mux_Banco_Ula|saida[14]~18_combout\ & (\FD|REG_P2|data_s\(88) & 
-- !\FD|ULA|Mux17~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datab => \FD|REG_P2|data_s\(88),
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux17~1_combout\,
	combout => \FD|ULA|Mux17~2_combout\);

-- Location: FF_X84_Y7_N21
\FD|REG_P3|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(51));

-- Location: FF_X84_Y8_N17
\FD|REG_P4|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(51),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(19));

-- Location: LCCOMB_X77_Y8_N18
\FD|mux_Ula_Memoria|saida[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[14]~18_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(19),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \FD|mux_Ula_Memoria|saida[14]~18_combout\);

-- Location: LCCOMB_X80_Y5_N30
\FD|BR|saidaB[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~39_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[13]~38_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\))) # (!\FD|BR|saidaB[13]~38_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[13]~38_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(37),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\,
	combout => \FD|BR|saidaB[13]~39_combout\);

-- Location: FF_X80_Y5_N31
\FD|REG_P2|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(55));

-- Location: LCCOMB_X80_Y5_N24
\FD|mux_Banco_Ula|saida[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[13]~19_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(55),
	datab => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[13]~19_combout\);

-- Location: LCCOMB_X83_Y4_N26
\FD|ULA|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~0_combout\ = (\FD|ULA|soma[13]~26_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~4_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|ALUctr[0]~4_combout\,
	datad => \FD|ULA|soma[13]~26_combout\,
	combout => \FD|ULA|Mux18~0_combout\);

-- Location: LCCOMB_X83_Y4_N28
\FD|ULA|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~26_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux18~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (!\FD|ULA|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Mux21~1_combout\,
	datac => \FD|ULA|Add1~26_combout\,
	datad => \FD|ULA|Mux18~0_combout\,
	combout => \FD|ULA|Mux18~1_combout\);

-- Location: LCCOMB_X83_Y4_N30
\FD|ULA|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|REG_P2|data_s\(87)) # (!\FD|ULA|Mux18~1_combout\))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & (\FD|REG_P2|data_s\(87) & 
-- !\FD|ULA|Mux18~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datab => \FD|REG_P2|data_s\(87),
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux18~1_combout\,
	combout => \FD|ULA|Mux18~2_combout\);

-- Location: FF_X83_Y4_N31
\FD|REG_P3|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(50));

-- Location: FF_X83_Y4_N21
\FD|REG_P4|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(50),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(18));

-- Location: LCCOMB_X79_Y8_N4
\FD|mux_Ula_Memoria|saida[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[13]~19_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(18),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\,
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[13]~19_combout\);

-- Location: LCCOMB_X80_Y8_N12
\FD|BR|bancoReg_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X80_Y8_N13
\FD|BR|bancoReg_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(36));

-- Location: LCCOMB_X80_Y8_N2
\FD|BR|saidaA[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(36) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(36),
	datab => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[12]~40_combout\);

-- Location: LCCOMB_X80_Y8_N28
\FD|BR|saidaA[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~41_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[12]~40_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\))) # (!\FD|BR|saidaA[12]~40_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(35),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\,
	datad => \FD|BR|saidaA[12]~40_combout\,
	combout => \FD|BR|saidaA[12]~41_combout\);

-- Location: FF_X81_Y7_N15
\FD|REG_P2|data_s[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|saidaA[12]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(86));

-- Location: LCCOMB_X81_Y8_N18
\FD|ULA|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~0_combout\ = (\FD|ULA|soma[12]~24_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~4_combout\)) # (!\FD|UCULA|ALUctr[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~5_combout\,
	datab => \FD|UCULA|ALUctr[0]~4_combout\,
	datac => \FD|ULA|soma[12]~24_combout\,
	datad => \FD|UCULA|Equal3~2_combout\,
	combout => \FD|ULA|Mux19~0_combout\);

-- Location: LCCOMB_X81_Y8_N4
\FD|ULA|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux21~0_combout\ & \FD|ULA|Add1~24_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux19~0_combout\) # ((!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~1_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Mux21~0_combout\,
	datad => \FD|ULA|Add1~24_combout\,
	combout => \FD|ULA|Mux19~1_combout\);

-- Location: LCCOMB_X81_Y8_N22
\FD|ULA|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~2_combout\ = (\FD|ULA|Mux19~1_combout\ & (((\FD|REG_P2|data_s\(86) & \FD|mux_Banco_Ula|saida[12]~20_combout\)) # (!\FD|ULA|Mux31~5_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(86)) # 
-- (\FD|mux_Banco_Ula|saida[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(86),
	datab => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \FD|ULA|Mux19~2_combout\);

-- Location: FF_X81_Y8_N23
\FD|REG_P3|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(49));

-- Location: LCCOMB_X80_Y8_N20
\FD|REG_P4|data_s[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[17]~feeder_combout\ = \FD|REG_P3|data_s\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(49),
	combout => \FD|REG_P4|data_s[17]~feeder_combout\);

-- Location: FF_X80_Y8_N21
\FD|REG_P4|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(17));

-- Location: LCCOMB_X79_Y8_N30
\FD|mux_Ula_Memoria|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[12]~20_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(17),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\,
	combout => \FD|mux_Ula_Memoria|saida[12]~20_combout\);

-- Location: LCCOMB_X79_Y7_N10
\FD|BR|saidaB[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~63_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[1]~62_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\))) # (!\FD|BR|saidaB[1]~62_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(13),
	datab => \FD|BR|saidaB[1]~62_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\,
	combout => \FD|BR|saidaB[1]~63_combout\);

-- Location: FF_X79_Y7_N11
\FD|REG_P2|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[1]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(43));

-- Location: LCCOMB_X77_Y5_N14
\FD|REG_P3|data_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[6]~feeder_combout\ = \FD|REG_P2|data_s\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(43),
	combout => \FD|REG_P3|data_s[6]~feeder_combout\);

-- Location: FF_X77_Y5_N15
\FD|REG_P3|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(6));

-- Location: LCCOMB_X82_Y5_N0
\FD|ULA|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~0_combout\ = (\FD|ULA|soma[11]~22_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|Equal3~2_combout\,
	datac => \FD|ULA|soma[11]~22_combout\,
	datad => \FD|UCULA|ALUctr[0]~5_combout\,
	combout => \FD|ULA|Mux20~0_combout\);

-- Location: LCCOMB_X83_Y5_N28
\FD|ULA|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Add1~22_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux20~0_combout\)) # (!\FD|ULA|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~1_combout\,
	datab => \FD|ULA|Mux21~0_combout\,
	datac => \FD|ULA|Mux20~0_combout\,
	datad => \FD|ULA|Add1~22_combout\,
	combout => \FD|ULA|Mux20~1_combout\);

-- Location: LCCOMB_X83_Y5_N18
\FD|ULA|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|REG_P2|data_s\(85)) # (!\FD|ULA|Mux20~1_combout\))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & (\FD|REG_P2|data_s\(85) & 
-- !\FD|ULA|Mux20~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datab => \FD|ULA|Mux31~5_combout\,
	datac => \FD|REG_P2|data_s\(85),
	datad => \FD|ULA|Mux20~1_combout\,
	combout => \FD|ULA|Mux20~2_combout\);

-- Location: FF_X83_Y5_N19
\FD|REG_P3|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(48));

-- Location: LCCOMB_X83_Y5_N24
\FD|REG_P4|data_s[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[16]~feeder_combout\ = \FD|REG_P3|data_s\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(48),
	combout => \FD|REG_P4|data_s[16]~feeder_combout\);

-- Location: FF_X83_Y5_N25
\FD|REG_P4|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(16));

-- Location: LCCOMB_X79_Y5_N16
\FD|mux_Ula_Memoria|saida[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[11]~21_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \FD|REG_P4|data_s\(16),
	combout => \FD|mux_Ula_Memoria|saida[11]~21_combout\);

-- Location: LCCOMB_X77_Y7_N10
\FD|BR|bancoReg_rtl_1_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\);

-- Location: FF_X77_Y7_N11
\FD|BR|bancoReg_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(32));

-- Location: LCCOMB_X77_Y7_N18
\FD|BR|saidaB[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~44_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(32) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(32),
	combout => \FD|BR|saidaB[10]~44_combout\);

-- Location: FF_X77_Y7_N21
\FD|BR|bancoReg_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[10]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(31));

-- Location: LCCOMB_X77_Y7_N26
\FD|BR|saidaB[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~45_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[10]~44_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\)) # (!\FD|BR|saidaB[10]~44_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\,
	datab => \FD|BR|saidaB[10]~44_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(31),
	combout => \FD|BR|saidaB[10]~45_combout\);

-- Location: FF_X77_Y7_N27
\FD|REG_P2|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(52));

-- Location: LCCOMB_X77_Y7_N20
\FD|mux_Banco_Ula|saida[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[10]~22_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(52),
	datab => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[10]~22_combout\);

-- Location: LCCOMB_X82_Y7_N8
\FD|ULA|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~2_combout\ = (\FD|ULA|soma[10]~20_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|Equal3~2_combout\,
	datad => \FD|ULA|soma[10]~20_combout\,
	combout => \FD|ULA|Mux21~2_combout\);

-- Location: LCCOMB_X82_Y7_N6
\FD|ULA|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~3_combout\ = (\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~20_combout\ & ((\FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux21~2_combout\) # (!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~1_combout\,
	datab => \FD|ULA|Add1~20_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux21~3_combout\);

-- Location: LCCOMB_X82_Y7_N12
\FD|ULA|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~4_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[10]~22_combout\ & ((\FD|REG_P2|data_s\(84)) # (!\FD|ULA|Mux21~3_combout\))) # (!\FD|mux_Banco_Ula|saida[10]~22_combout\ & (\FD|REG_P2|data_s\(84) & 
-- !\FD|ULA|Mux21~3_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datab => \FD|REG_P2|data_s\(84),
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux21~4_combout\);

-- Location: FF_X82_Y7_N13
\FD|REG_P3|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(47));

-- Location: FF_X81_Y7_N29
\FD|REG_P4|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(15));

-- Location: LCCOMB_X77_Y7_N8
\FD|mux_Ula_Memoria|saida[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[10]~22_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(15),
	datab => \FD|REG_P4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \FD|mux_Ula_Memoria|saida[10]~22_combout\);

-- Location: FF_X77_Y7_N29
\FD|BR|bancoReg_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[9]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(29));

-- Location: LCCOMB_X77_Y7_N28
\FD|BR|saidaB[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~47_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[9]~46_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\)) # (!\FD|BR|saidaB[9]~46_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[9]~46_combout\,
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(29),
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[9]~47_combout\);

-- Location: FF_X80_Y7_N25
\FD|REG_P2|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|saidaB[9]~47_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(51));

-- Location: LCCOMB_X80_Y7_N4
\FD|mux_Banco_Ula|saida[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[9]~23_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(51),
	datac => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[9]~23_combout\);

-- Location: LCCOMB_X82_Y7_N26
\FD|ULA|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~0_combout\ = (\FD|ULA|soma[9]~18_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|Equal3~2_combout\,
	datad => \FD|ULA|soma[9]~18_combout\,
	combout => \FD|ULA|Mux22~0_combout\);

-- Location: LCCOMB_X82_Y7_N24
\FD|ULA|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Add1~18_combout\ & \FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux22~0_combout\) # ((!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Add1~18_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux22~1_combout\);

-- Location: LCCOMB_X82_Y7_N30
\FD|ULA|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|REG_P2|data_s\(83)) # (!\FD|ULA|Mux22~1_combout\))) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & (\FD|REG_P2|data_s\(83) & 
-- !\FD|ULA|Mux22~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datab => \FD|REG_P2|data_s\(83),
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux22~2_combout\);

-- Location: FF_X82_Y7_N31
\FD|REG_P3|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(46));

-- Location: FF_X81_Y7_N19
\FD|REG_P4|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(14));

-- Location: LCCOMB_X77_Y7_N4
\FD|mux_Ula_Memoria|saida[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[9]~23_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(14),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \FD|mux_Ula_Memoria|saida[9]~23_combout\);

-- Location: LCCOMB_X79_Y8_N10
\FD|BR|bancoReg_rtl_0_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[8]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[8]~24_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\);

-- Location: FF_X79_Y8_N11
\FD|BR|bancoReg_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(27));

-- Location: LCCOMB_X82_Y8_N12
\FD|BR|saidaA[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~49_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[8]~48_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\)) # (!\FD|BR|saidaA[8]~48_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[8]~48_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(27),
	combout => \FD|BR|saidaA[8]~49_combout\);

-- Location: FF_X82_Y8_N13
\FD|REG_P2|data_s[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[8]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(82));

-- Location: LCCOMB_X81_Y8_N20
\FD|ULA|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~0_combout\ = (\FD|ULA|soma[8]~16_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~4_combout\)) # (!\FD|UCULA|ALUctr[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~5_combout\,
	datab => \FD|UCULA|Equal3~2_combout\,
	datac => \FD|ULA|soma[8]~16_combout\,
	datad => \FD|UCULA|ALUctr[0]~4_combout\,
	combout => \FD|ULA|Mux23~0_combout\);

-- Location: LCCOMB_X81_Y8_N14
\FD|ULA|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux21~0_combout\ & \FD|ULA|Add1~16_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux23~0_combout\) # ((!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~1_combout\,
	datab => \FD|ULA|Mux23~0_combout\,
	datac => \FD|ULA|Mux21~0_combout\,
	datad => \FD|ULA|Add1~16_combout\,
	combout => \FD|ULA|Mux23~1_combout\);

-- Location: LCCOMB_X81_Y8_N16
\FD|ULA|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~2_combout\ = (\FD|ULA|Mux23~1_combout\ & (((\FD|REG_P2|data_s\(82) & \FD|mux_Banco_Ula|saida[8]~24_combout\)) # (!\FD|ULA|Mux31~5_combout\))) # (!\FD|ULA|Mux23~1_combout\ & (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(82)) # 
-- (\FD|mux_Banco_Ula|saida[8]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(82),
	datab => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datac => \FD|ULA|Mux23~1_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \FD|ULA|Mux23~2_combout\);

-- Location: FF_X81_Y8_N17
\FD|REG_P3|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(45));

-- Location: LCCOMB_X80_Y8_N26
\FD|REG_P4|data_s[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[13]~feeder_combout\ = \FD|REG_P3|data_s\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(45),
	combout => \FD|REG_P4|data_s[13]~feeder_combout\);

-- Location: FF_X80_Y8_N27
\FD|REG_P4|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(13));

-- Location: LCCOMB_X79_Y8_N20
\FD|mux_Ula_Memoria|saida[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[8]~24_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(69),
	datab => \FD|REG_P4|data_s\(13),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \FD|mux_Ula_Memoria|saida[8]~24_combout\);

-- Location: LCCOMB_X82_Y7_N16
\FD|BR|saidaA[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~51_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[7]~50_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\))) # (!\FD|BR|saidaA[7]~50_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(25),
	datac => \FD|BR|saidaA[7]~50_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\,
	combout => \FD|BR|saidaA[7]~51_combout\);

-- Location: FF_X82_Y7_N17
\FD|REG_P2|data_s[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[7]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(81));

-- Location: LCCOMB_X83_Y4_N16
\FD|ULA|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~0_combout\ = (\FD|ULA|soma[7]~14_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~4_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|ALUctr[0]~4_combout\,
	datad => \FD|ULA|soma[7]~14_combout\,
	combout => \FD|ULA|Mux24~0_combout\);

-- Location: LCCOMB_X83_Y4_N18
\FD|ULA|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~14_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux24~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Add1~14_combout\,
	datac => \FD|ULA|Mux24~0_combout\,
	datad => \FD|ULA|Mux21~1_combout\,
	combout => \FD|ULA|Mux24~1_combout\);

-- Location: LCCOMB_X83_Y4_N24
\FD|ULA|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(81) & ((\FD|mux_Banco_Ula|saida[7]~25_combout\) # (!\FD|ULA|Mux24~1_combout\))) # (!\FD|REG_P2|data_s\(81) & (\FD|mux_Banco_Ula|saida[7]~25_combout\ & 
-- !\FD|ULA|Mux24~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(81),
	datab => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux24~1_combout\,
	combout => \FD|ULA|Mux24~2_combout\);

-- Location: FF_X83_Y4_N25
\FD|REG_P3|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux24~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(44));

-- Location: FF_X79_Y5_N9
\FD|REG_P4|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(44),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(12));

-- Location: LCCOMB_X79_Y5_N8
\FD|mux_Ula_Memoria|saida[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[7]~25_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(69),
	datac => \FD|REG_P4|data_s\(12),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \FD|mux_Ula_Memoria|saida[7]~25_combout\);

-- Location: FF_X79_Y5_N1
\FD|BR|bancoReg_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(23));

-- Location: LCCOMB_X79_Y7_N14
\FD|BR|saidaA[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~53_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[6]~52_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\)) # (!\FD|BR|saidaA[6]~52_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[6]~52_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(23),
	combout => \FD|BR|saidaA[6]~53_combout\);

-- Location: FF_X81_Y7_N9
\FD|REG_P2|data_s[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|saidaA[6]~53_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(80));

-- Location: LCCOMB_X84_Y7_N18
\FD|ULA|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~0_combout\ = (\FD|ULA|soma[6]~12_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|ULA|soma[6]~12_combout\,
	datac => \FD|UCULA|ALUctr[0]~5_combout\,
	datad => \FD|UCULA|Equal3~2_combout\,
	combout => \FD|ULA|Mux25~0_combout\);

-- Location: LCCOMB_X84_Y7_N28
\FD|ULA|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux21~0_combout\ & \FD|ULA|Add1~12_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux25~0_combout\) # ((!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~1_combout\,
	datab => \FD|ULA|Mux25~0_combout\,
	datac => \FD|ULA|Mux21~0_combout\,
	datad => \FD|ULA|Add1~12_combout\,
	combout => \FD|ULA|Mux25~1_combout\);

-- Location: LCCOMB_X84_Y7_N10
\FD|ULA|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(80) & ((\FD|mux_Banco_Ula|saida[6]~26_combout\) # (!\FD|ULA|Mux25~1_combout\))) # (!\FD|REG_P2|data_s\(80) & (\FD|mux_Banco_Ula|saida[6]~26_combout\ & 
-- !\FD|ULA|Mux25~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(80),
	datab => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux25~1_combout\,
	combout => \FD|ULA|Mux25~2_combout\);

-- Location: FF_X84_Y7_N11
\FD|REG_P3|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(43));

-- Location: FF_X79_Y5_N31
\FD|REG_P4|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(43),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(11));

-- Location: LCCOMB_X79_Y5_N0
\FD|mux_Ula_Memoria|saida[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[6]~26_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(11),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \FD|mux_Ula_Memoria|saida[6]~26_combout\);

-- Location: LCCOMB_X82_Y8_N16
\FD|BR|bancoReg_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X82_Y8_N17
\FD|BR|bancoReg_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(22));

-- Location: LCCOMB_X82_Y8_N10
\FD|BR|saidaA[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~54_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(22) & ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(22),
	combout => \FD|BR|saidaA[5]~54_combout\);

-- Location: LCCOMB_X82_Y8_N30
\FD|BR|saidaA[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~55_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[5]~54_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\))) # (!\FD|BR|saidaA[5]~54_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(21),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\,
	datad => \FD|BR|saidaA[5]~54_combout\,
	combout => \FD|BR|saidaA[5]~55_combout\);

-- Location: FF_X82_Y8_N31
\FD|REG_P2|data_s[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[5]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(79));

-- Location: LCCOMB_X84_Y7_N8
\FD|ULA|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~0_combout\ = (\FD|ULA|soma[5]~10_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|ULA|soma[5]~10_combout\,
	datac => \FD|UCULA|ALUctr[0]~5_combout\,
	datad => \FD|UCULA|Equal3~2_combout\,
	combout => \FD|ULA|Mux26~0_combout\);

-- Location: LCCOMB_X84_Y7_N22
\FD|ULA|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~10_combout\ & ((\FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux26~0_combout\) # (!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~10_combout\,
	datab => \FD|ULA|Mux26~0_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux26~1_combout\);

-- Location: LCCOMB_X84_Y7_N24
\FD|ULA|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(79) & ((\FD|mux_Banco_Ula|saida[5]~27_combout\) # (!\FD|ULA|Mux26~1_combout\))) # (!\FD|REG_P2|data_s\(79) & (!\FD|ULA|Mux26~1_combout\ & 
-- \FD|mux_Banco_Ula|saida[5]~27_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(79),
	datab => \FD|ULA|Mux31~5_combout\,
	datac => \FD|ULA|Mux26~1_combout\,
	datad => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	combout => \FD|ULA|Mux26~2_combout\);

-- Location: FF_X84_Y7_N25
\FD|REG_P3|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(42));

-- Location: LCCOMB_X79_Y8_N2
\FD|REG_P4|data_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[10]~feeder_combout\ = \FD|REG_P3|data_s\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(42),
	combout => \FD|REG_P4|data_s[10]~feeder_combout\);

-- Location: FF_X79_Y8_N3
\FD|REG_P4|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(10));

-- Location: LCCOMB_X79_Y8_N24
\FD|mux_Ula_Memoria|saida[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[5]~27_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(69),
	datac => \FD|REG_P4|data_s\(10),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \FD|mux_Ula_Memoria|saida[5]~27_combout\);

-- Location: LCCOMB_X82_Y7_N22
\FD|BR|saidaA[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~57_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[4]~56_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\))) # (!\FD|BR|saidaA[4]~56_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(19),
	datac => \FD|BR|saidaA[4]~56_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\,
	combout => \FD|BR|saidaA[4]~57_combout\);

-- Location: FF_X82_Y7_N23
\FD|REG_P2|data_s[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(78));

-- Location: LCCOMB_X82_Y7_N20
\FD|ULA|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~0_combout\ = (\FD|ULA|soma[4]~8_combout\ & (((\FD|UCULA|Equal3~2_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\)) # (!\FD|UCULA|ALUctr[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|Equal3~2_combout\,
	datad => \FD|ULA|soma[4]~8_combout\,
	combout => \FD|ULA|Mux27~0_combout\);

-- Location: LCCOMB_X82_Y7_N10
\FD|ULA|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~8_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux27~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Add1~8_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux27~0_combout\,
	combout => \FD|ULA|Mux27~1_combout\);

-- Location: LCCOMB_X82_Y7_N0
\FD|ULA|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(78) & ((\FD|mux_Banco_Ula|saida[4]~28_combout\) # (!\FD|ULA|Mux27~1_combout\))) # (!\FD|REG_P2|data_s\(78) & (\FD|mux_Banco_Ula|saida[4]~28_combout\ & 
-- !\FD|ULA|Mux27~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(78),
	datab => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux27~1_combout\,
	combout => \FD|ULA|Mux27~2_combout\);

-- Location: FF_X82_Y7_N1
\FD|REG_P3|data_s[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(41));

-- Location: LCCOMB_X80_Y8_N0
\FD|REG_P4|data_s[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[9]~feeder_combout\ = \FD|REG_P3|data_s\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(41),
	combout => \FD|REG_P4|data_s[9]~feeder_combout\);

-- Location: FF_X80_Y8_N1
\FD|REG_P4|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(9));

-- Location: LCCOMB_X79_Y8_N22
\FD|mux_Ula_Memoria|saida[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[4]~28_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(69),
	datab => \FD|REG_P4|data_s\(9),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \FD|mux_Ula_Memoria|saida[4]~28_combout\);

-- Location: LCCOMB_X82_Y7_N4
\FD|BR|saidaA[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~59_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[3]~58_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\))) # (!\FD|BR|saidaA[3]~58_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(17),
	datac => \FD|BR|saidaA[3]~58_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\,
	combout => \FD|BR|saidaA[3]~59_combout\);

-- Location: FF_X82_Y7_N5
\FD|REG_P2|data_s[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(77));

-- Location: LCCOMB_X85_Y7_N24
\FD|ULA|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~0_combout\ = (\FD|ULA|soma[3]~6_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~5_combout\) # (!\FD|UCULA|ALUctr[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~4_combout\,
	datac => \FD|ULA|soma[3]~6_combout\,
	datad => \FD|UCULA|ALUctr[0]~5_combout\,
	combout => \FD|ULA|Mux28~0_combout\);

-- Location: LCCOMB_X85_Y7_N10
\FD|ULA|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~6_combout\ & ((\FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux28~0_combout\) # (!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~6_combout\,
	datab => \FD|ULA|Mux28~0_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux28~1_combout\);

-- Location: LCCOMB_X85_Y7_N4
\FD|ULA|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(77) & ((\FD|mux_Banco_Ula|saida[3]~29_combout\) # (!\FD|ULA|Mux28~1_combout\))) # (!\FD|REG_P2|data_s\(77) & (\FD|mux_Banco_Ula|saida[3]~29_combout\ & 
-- !\FD|ULA|Mux28~1_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~5_combout\,
	datab => \FD|REG_P2|data_s\(77),
	datac => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datad => \FD|ULA|Mux28~1_combout\,
	combout => \FD|ULA|Mux28~2_combout\);

-- Location: FF_X85_Y7_N5
\FD|REG_P3|data_s[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(40));

-- Location: FF_X79_Y5_N15
\FD|REG_P4|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P3|data_s\(40),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(8));

-- Location: LCCOMB_X79_Y5_N14
\FD|mux_Ula_Memoria|saida[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[3]~29_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P4|data_s\(69),
	datac => \FD|REG_P4|data_s\(8),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \FD|mux_Ula_Memoria|saida[3]~29_combout\);

-- Location: LCCOMB_X80_Y7_N14
\FD|BR|saidaB[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~61_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[2]~60_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\))) # (!\FD|BR|saidaB[2]~60_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(15),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[2]~60_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\,
	combout => \FD|BR|saidaB[2]~61_combout\);

-- Location: FF_X80_Y7_N15
\FD|REG_P2|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(44));

-- Location: LCCOMB_X80_Y7_N8
\FD|mux_Banco_Ula|saida[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[2]~30_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(12))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(12),
	datab => \FD|REG_P2|data_s\(44),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[2]~30_combout\);

-- Location: LCCOMB_X85_Y7_N18
\FD|ULA|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~0_combout\ = (\FD|ULA|soma[2]~4_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~5_combout\) # (!\FD|UCULA|ALUctr[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~4_combout\,
	datac => \FD|ULA|soma[2]~4_combout\,
	datad => \FD|UCULA|ALUctr[0]~5_combout\,
	combout => \FD|ULA|Mux29~0_combout\);

-- Location: LCCOMB_X85_Y7_N16
\FD|ULA|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~4_combout\ & ((\FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Mux29~0_combout\) # (!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~4_combout\,
	datab => \FD|ULA|Mux29~0_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux29~1_combout\);

-- Location: LCCOMB_X85_Y7_N6
\FD|ULA|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~2_combout\ = (\FD|ULA|Mux29~1_combout\ & (((\FD|mux_Banco_Ula|saida[2]~30_combout\ & \FD|REG_P2|data_s\(76))) # (!\FD|ULA|Mux31~5_combout\))) # (!\FD|ULA|Mux29~1_combout\ & (\FD|ULA|Mux31~5_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[2]~30_combout\) # (\FD|REG_P2|data_s\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|ULA|Mux29~1_combout\,
	datac => \FD|REG_P2|data_s\(76),
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \FD|ULA|Mux29~2_combout\);

-- Location: FF_X85_Y7_N7
\FD|REG_P3|data_s[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux29~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(39));

-- Location: LCCOMB_X80_Y8_N18
\FD|REG_P4|data_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[7]~feeder_combout\ = \FD|REG_P3|data_s\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(39),
	combout => \FD|REG_P4|data_s[7]~feeder_combout\);

-- Location: FF_X80_Y8_N19
\FD|REG_P4|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(7));

-- Location: LCCOMB_X79_Y8_N18
\FD|mux_Ula_Memoria|saida[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[2]~30_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(69),
	datab => \FD|REG_P4|data_s\(7),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \FD|mux_Ula_Memoria|saida[2]~30_combout\);

-- Location: LCCOMB_X80_Y8_N24
\FD|BR|bancoReg_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X80_Y8_N25
\FD|BR|bancoReg_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(14));

-- Location: LCCOMB_X80_Y8_N6
\FD|BR|saidaA[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~62_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(14) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(14),
	datab => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[1]~62_combout\);

-- Location: LCCOMB_X80_Y8_N10
\FD|BR|saidaA[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~63_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[1]~62_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\))) # (!\FD|BR|saidaA[1]~62_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(13),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\,
	datad => \FD|BR|saidaA[1]~62_combout\,
	combout => \FD|BR|saidaA[1]~63_combout\);

-- Location: FF_X81_Y7_N13
\FD|REG_P2|data_s[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|saidaA[1]~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(75));

-- Location: LCCOMB_X85_Y7_N12
\FD|ULA|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~0_combout\ = (\FD|ULA|soma[1]~2_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~5_combout\) # (!\FD|UCULA|ALUctr[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~4_combout\,
	datac => \FD|ULA|soma[1]~2_combout\,
	datad => \FD|UCULA|ALUctr[0]~5_combout\,
	combout => \FD|ULA|Mux30~0_combout\);

-- Location: LCCOMB_X85_Y7_N30
\FD|ULA|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~1_combout\ = (\FD|ULA|Mux21~1_combout\ & (((\FD|ULA|Add1~2_combout\ & \FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux30~0_combout\) # ((!\FD|ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~0_combout\,
	datab => \FD|ULA|Add1~2_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux21~0_combout\,
	combout => \FD|ULA|Mux30~1_combout\);

-- Location: LCCOMB_X85_Y7_N0
\FD|ULA|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~2_combout\ = (\FD|ULA|Mux30~1_combout\ & (((\FD|REG_P2|data_s\(75) & \FD|mux_Banco_Ula|saida[1]~31_combout\)) # (!\FD|ULA|Mux31~5_combout\))) # (!\FD|ULA|Mux30~1_combout\ & (\FD|ULA|Mux31~5_combout\ & ((\FD|REG_P2|data_s\(75)) # 
-- (\FD|mux_Banco_Ula|saida[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(75),
	datab => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datac => \FD|ULA|Mux30~1_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \FD|ULA|Mux30~2_combout\);

-- Location: FF_X85_Y7_N1
\FD|REG_P3|data_s[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(38));

-- Location: LCCOMB_X82_Y8_N22
\FD|REG_P4|data_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[6]~feeder_combout\ = \FD|REG_P3|data_s\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(38),
	combout => \FD|REG_P4|data_s[6]~feeder_combout\);

-- Location: FF_X82_Y8_N23
\FD|REG_P4|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(6));

-- Location: LCCOMB_X79_Y8_N16
\FD|mux_Ula_Memoria|saida[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[1]~31_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(6),
	datab => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \FD|mux_Ula_Memoria|saida[1]~31_combout\);

-- Location: LCCOMB_X80_Y7_N12
\FD|BR|saidaB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~1_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[0]~0_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\))) # (!\FD|BR|saidaB[0]~0_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(11),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[0]~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \FD|BR|saidaB[0]~1_combout\);

-- Location: FF_X80_Y7_N13
\FD|REG_P2|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(42));

-- Location: FF_X77_Y5_N3
\FD|REG_P3|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P2|data_s\(42),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(5));

-- Location: LCCOMB_X79_Y4_N26
\FD|mux_Ula_Memoria|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[0]~0_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(69),
	datab => \FD|REG_P4|data_s\(5),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \FD|mux_Ula_Memoria|saida[0]~0_combout\);

-- Location: LCCOMB_X76_Y7_N24
\FD|BR|bancoReg_rtl_1_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\);

-- Location: FF_X76_Y7_N25
\FD|BR|bancoReg_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(70));

-- Location: LCCOMB_X76_Y7_N2
\FD|BR|saidaB[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~6_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(70) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~41_combout\)) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(70),
	combout => \FD|BR|saidaB[29]~6_combout\);

-- Location: LCCOMB_X77_Y7_N14
\FD|BR|saidaB[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~7_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[29]~6_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\))) # (!\FD|BR|saidaB[29]~6_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(69),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\,
	datad => \FD|BR|saidaB[29]~6_combout\,
	combout => \FD|BR|saidaB[29]~7_combout\);

-- Location: FF_X77_Y7_N15
\FD|REG_P2|data_s[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaB[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(71));

-- Location: LCCOMB_X77_Y7_N30
\FD|mux_Banco_Ula|saida[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[29]~3_combout\ = (\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(41)))) # (!\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(138),
	datac => \FD|REG_P2|data_s\(71),
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[29]~3_combout\);

-- Location: LCCOMB_X84_Y7_N0
\FD|ULA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~0_combout\ = (\FD|ULA|soma[29]~58_combout\ & ((\FD|UCULA|Equal3~2_combout\) # ((!\FD|UCULA|ALUctr[0]~4_combout\) # (!\FD|UCULA|ALUctr[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Equal3~2_combout\,
	datab => \FD|UCULA|ALUctr[0]~5_combout\,
	datac => \FD|UCULA|ALUctr[0]~4_combout\,
	datad => \FD|ULA|soma[29]~58_combout\,
	combout => \FD|ULA|Mux2~0_combout\);

-- Location: LCCOMB_X84_Y7_N6
\FD|ULA|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~1_combout\ = (\FD|ULA|Mux21~0_combout\ & ((\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Add1~58_combout\)) # (!\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux2~0_combout\))))) # (!\FD|ULA|Mux21~0_combout\ & (((!\FD|ULA|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Add1~58_combout\,
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux2~0_combout\,
	combout => \FD|ULA|Mux2~1_combout\);

-- Location: LCCOMB_X84_Y7_N4
\FD|ULA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~2_combout\ = (\FD|ULA|Mux31~5_combout\ & ((\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|REG_P2|data_s\(103)) # (!\FD|ULA|Mux2~1_combout\))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & (\FD|REG_P2|data_s\(103) & !\FD|ULA|Mux2~1_combout\)))) 
-- # (!\FD|ULA|Mux31~5_combout\ & (((\FD|ULA|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datab => \FD|REG_P2|data_s\(103),
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux2~1_combout\,
	combout => \FD|ULA|Mux2~2_combout\);

-- Location: FF_X84_Y7_N5
\FD|REG_P3|data_s[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(66));

-- Location: LCCOMB_X77_Y8_N8
\FD|REG_P4|data_s[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[34]~feeder_combout\ = \FD|REG_P3|data_s\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(66),
	combout => \FD|REG_P4|data_s[34]~feeder_combout\);

-- Location: FF_X77_Y8_N9
\FD|REG_P4|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(34));

-- Location: LCCOMB_X77_Y8_N14
\FD|mux_Ula_Memoria|saida[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[29]~3_combout\ = (\FD|REG_P4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\))) # (!\FD|REG_P4|data_s\(69) & (\FD|REG_P4|data_s\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(34),
	datac => \FD|REG_P4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\,
	combout => \FD|mux_Ula_Memoria|saida[29]~3_combout\);

-- Location: FF_X77_Y8_N15
\FD|BR|bancoReg_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(69));

-- Location: LCCOMB_X82_Y8_N4
\FD|BR|bancoReg_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X82_Y8_N5
\FD|BR|bancoReg_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(70));

-- Location: LCCOMB_X82_Y8_N14
\FD|BR|saidaA[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~6_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(70) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(70),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[29]~6_combout\);

-- Location: LCCOMB_X81_Y8_N26
\FD|BR|saidaA[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~7_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[29]~6_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\))) # (!\FD|BR|saidaA[29]~6_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(69),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|saidaA[29]~6_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\,
	combout => \FD|BR|saidaA[29]~7_combout\);

-- Location: FF_X81_Y8_N27
\FD|REG_P2|data_s[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(103));

-- Location: LCCOMB_X84_Y6_N22
\FD|ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~0_combout\ = (!\FD|ULA|Add1~48_combout\ & (!\FD|ULA|Add1~46_combout\ & (!\FD|ULA|Add1~50_combout\ & !\FD|ULA|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~48_combout\,
	datab => \FD|ULA|Add1~46_combout\,
	datac => \FD|ULA|Add1~50_combout\,
	datad => \FD|ULA|Add1~52_combout\,
	combout => \FD|ULA|Equal0~0_combout\);

-- Location: LCCOMB_X84_Y7_N30
\FD|ULA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~1_combout\ = (!\FD|ULA|Add1~10_combout\ & (!\FD|ULA|Add1~6_combout\ & (!\FD|ULA|Add1~8_combout\ & !\FD|ULA|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~10_combout\,
	datab => \FD|ULA|Add1~6_combout\,
	datac => \FD|ULA|Add1~8_combout\,
	datad => \FD|ULA|Add1~12_combout\,
	combout => \FD|ULA|Equal0~1_combout\);

-- Location: LCCOMB_X84_Y6_N14
\FD|ULA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~5_combout\ = (!\FD|ULA|Add1~42_combout\ & (!\FD|ULA|Add1~38_combout\ & (!\FD|ULA|Add1~40_combout\ & !\FD|ULA|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~42_combout\,
	datab => \FD|ULA|Add1~38_combout\,
	datac => \FD|ULA|Add1~40_combout\,
	datad => \FD|ULA|Add1~44_combout\,
	combout => \FD|ULA|Equal0~5_combout\);

-- Location: LCCOMB_X84_Y6_N30
\FD|ULA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~3_combout\ = (!\FD|ULA|Add1~22_combout\ & !\FD|ULA|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Add1~22_combout\,
	datad => \FD|ULA|Add1~24_combout\,
	combout => \FD|ULA|Equal0~3_combout\);

-- Location: LCCOMB_X84_Y6_N28
\FD|ULA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~2_combout\ = (!\FD|ULA|Add1~14_combout\ & (!\FD|ULA|Add1~16_combout\ & (!\FD|ULA|Add1~20_combout\ & !\FD|ULA|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Add1~16_combout\,
	datac => \FD|ULA|Add1~20_combout\,
	datad => \FD|ULA|Add1~18_combout\,
	combout => \FD|ULA|Equal0~2_combout\);

-- Location: LCCOMB_X84_Y6_N8
\FD|ULA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~4_combout\ = (!\FD|ULA|Add1~26_combout\ & (!\FD|ULA|Add1~28_combout\ & (\FD|ULA|Equal0~3_combout\ & \FD|ULA|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~26_combout\,
	datab => \FD|ULA|Add1~28_combout\,
	datac => \FD|ULA|Equal0~3_combout\,
	datad => \FD|ULA|Equal0~2_combout\,
	combout => \FD|ULA|Equal0~4_combout\);

-- Location: LCCOMB_X84_Y6_N20
\FD|ULA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~6_combout\ = (!\FD|ULA|Add1~34_combout\ & (!\FD|ULA|Add1~30_combout\ & (!\FD|ULA|Add1~36_combout\ & !\FD|ULA|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~34_combout\,
	datab => \FD|ULA|Add1~30_combout\,
	datac => \FD|ULA|Add1~36_combout\,
	datad => \FD|ULA|Add1~32_combout\,
	combout => \FD|ULA|Equal0~6_combout\);

-- Location: LCCOMB_X84_Y6_N2
\FD|ULA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~7_combout\ = (!\FD|ULA|Add1~2_combout\ & (!\FD|ULA|Add1~0_combout\ & (!\FD|ULA|Add1~4_combout\ & \FD|ULA|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~2_combout\,
	datab => \FD|ULA|Add1~0_combout\,
	datac => \FD|ULA|Add1~4_combout\,
	datad => \FD|ULA|Equal0~6_combout\,
	combout => \FD|ULA|Equal0~7_combout\);

-- Location: LCCOMB_X84_Y6_N4
\FD|ULA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~8_combout\ = (\FD|ULA|Equal0~1_combout\ & (\FD|ULA|Equal0~5_combout\ & (\FD|ULA|Equal0~4_combout\ & \FD|ULA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~1_combout\,
	datab => \FD|ULA|Equal0~5_combout\,
	datac => \FD|ULA|Equal0~4_combout\,
	datad => \FD|ULA|Equal0~7_combout\,
	combout => \FD|ULA|Equal0~8_combout\);

-- Location: LCCOMB_X84_Y6_N26
\FD|ULA|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~9_combout\ = (\FD|ULA|Equal0~0_combout\ & (!\FD|ULA|Add1~54_combout\ & (\FD|ULA|Equal0~8_combout\ & !\FD|ULA|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~0_combout\,
	datab => \FD|ULA|Add1~54_combout\,
	datac => \FD|ULA|Equal0~8_combout\,
	datad => \FD|ULA|Add1~56_combout\,
	combout => \FD|ULA|Equal0~9_combout\);

-- Location: LCCOMB_X84_Y6_N0
\FD|ULA|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~10_combout\ = (!\FD|ULA|Add1~58_combout\ & (!\FD|ULA|Add1~62_combout\ & (\FD|ULA|Equal0~9_combout\ & !\FD|ULA|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~58_combout\,
	datab => \FD|ULA|Add1~62_combout\,
	datac => \FD|ULA|Equal0~9_combout\,
	datad => \FD|ULA|Add1~60_combout\,
	combout => \FD|ULA|Equal0~10_combout\);

-- Location: FF_X84_Y6_N1
\FD|REG_P3|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ULA|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(69));

-- Location: FF_X72_Y4_N3
\FD|REG_P3|data_s[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[72]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(72));

-- Location: LCCOMB_X69_Y4_N0
\FD|mux_jump|saida[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[2]~58_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(72)))) # (!\FD|REG_P3|data_s\(104) & (\FD|Somador|saida[2]~0_combout\)))) # (!\FD|REG_P3|data_s\(69) & (\FD|Somador|saida[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[2]~0_combout\,
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(72),
	datad => \FD|REG_P3|data_s\(104),
	combout => \FD|mux_jump|saida[2]~58_combout\);

-- Location: LCCOMB_X73_Y4_N14
\FD|PC|data_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[2]~feeder_combout\ = \FD|mux_jump|saida[2]~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[2]~58_combout\,
	combout => \FD|PC|data_s[2]~feeder_combout\);

-- Location: FF_X73_Y4_N15
\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[2]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(0),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

-- Location: LCCOMB_X74_Y4_N0
\FD|ROM|memROM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~23_combout\ = (\FD|PC|data_s\(4)) # ((\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~23_combout\);

-- Location: LCCOMB_X74_Y4_N18
\FD|ROM|memROM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~24_combout\ = (\FD|PC|data_s\(5)) # ((\FD|ROM|memROM~23_combout\) # (\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|ROM|memROM~23_combout\,
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~24_combout\);

-- Location: LCCOMB_X74_Y4_N28
\UC|pontosDeControle[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[1]~2_combout\ = (\FD|ROM|memROM~22_combout\ & ((\FD|ROM|memROM~24_combout\))) # (!\FD|ROM|memROM~22_combout\ & (\FD|ROM|memROM~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~22_combout\,
	datac => \FD|ROM|memROM~21_combout\,
	datad => \FD|ROM|memROM~24_combout\,
	combout => \UC|pontosDeControle[1]~2_combout\);

-- Location: FF_X74_Y4_N29
\FD|REG_P2|data_s[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UC|pontosDeControle[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(145));

-- Location: LCCOMB_X70_Y4_N24
\FD|REG_P3|data_s[104]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[104]~feeder_combout\ = \FD|REG_P2|data_s\(145)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(145),
	combout => \FD|REG_P3|data_s[104]~feeder_combout\);

-- Location: FF_X70_Y4_N25
\FD|REG_P3|data_s[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[104]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(104));

-- Location: FF_X72_Y4_N11
\FD|REG_P3|data_s[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[76]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(76));

-- Location: LCCOMB_X69_Y4_N16
\FD|mux_jump|saida[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[6]~56_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(76)))) # (!\FD|REG_P3|data_s\(69) & (\FD|Somador|saida[6]~8_combout\)))) # (!\FD|REG_P3|data_s\(104) & (\FD|Somador|saida[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[6]~8_combout\,
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|REG_P3|data_s\(76),
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|mux_jump|saida[6]~56_combout\);

-- Location: LCCOMB_X74_Y4_N26
\FD|PC|data_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[6]~feeder_combout\ = \FD|mux_jump|saida[6]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[6]~56_combout\,
	combout => \FD|PC|data_s[6]~feeder_combout\);

-- Location: FF_X74_Y4_N27
\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[6]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

-- Location: LCCOMB_X74_Y4_N8
\FD|ROM|memROM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~14_combout\ = (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~14_combout\);

-- Location: LCCOMB_X74_Y4_N30
\FD|ROM|memROM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~21_combout\ = (\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) & (\FD|ROM|memROM~14_combout\ & \FD|ROM|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(4),
	datac => \FD|ROM|memROM~14_combout\,
	datad => \FD|ROM|memROM~16_combout\,
	combout => \FD|ROM|memROM~21_combout\);

-- Location: FF_X74_Y4_N31
\FD|REG_P1|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ROM|memROM~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(4));

-- Location: FF_X80_Y7_N5
\FD|REG_P2|data_s[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(41));

-- Location: FF_X72_Y4_N5
\FD|REG_P3|data_s[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[73]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(73));

-- Location: LCCOMB_X68_Y4_N4
\FD|Somador|saida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[3]~2_combout\ = (\FD|PC|data_s\(3) & (!\FD|Somador|saida[2]~1\)) # (!\FD|PC|data_s\(3) & ((\FD|Somador|saida[2]~1\) # (GND)))
-- \FD|Somador|saida[3]~3\ = CARRY((!\FD|Somador|saida[2]~1\) # (!\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(3),
	datad => VCC,
	cin => \FD|Somador|saida[2]~1\,
	combout => \FD|Somador|saida[3]~2_combout\,
	cout => \FD|Somador|saida[3]~3\);

-- Location: LCCOMB_X69_Y4_N6
\FD|mux_jump|saida[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[3]~59_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(73))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[3]~2_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(73),
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|Somador|saida[3]~2_combout\,
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|mux_jump|saida[3]~59_combout\);

-- Location: LCCOMB_X73_Y4_N0
\FD|PC|data_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[3]~feeder_combout\ = \FD|mux_jump|saida[3]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[3]~59_combout\,
	combout => \FD|PC|data_s[3]~feeder_combout\);

-- Location: FF_X73_Y4_N1
\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[3]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(1),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

-- Location: LCCOMB_X74_Y4_N2
\FD|ROM|memROM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~18_combout\ = (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(4) & (\FD|ROM|memROM~14_combout\ & !\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|ROM|memROM~14_combout\,
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~18_combout\);

-- Location: FF_X74_Y4_N3
\FD|REG_P1|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ROM|memROM~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(2));

-- Location: FF_X80_Y7_N7
\FD|REG_P2|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P1|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(12));

-- Location: FF_X72_Y4_N7
\FD|REG_P3|data_s[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[74]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(74));

-- Location: LCCOMB_X68_Y4_N6
\FD|Somador|saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[4]~4_combout\ = (\FD|PC|data_s\(4) & (\FD|Somador|saida[3]~3\ $ (GND))) # (!\FD|PC|data_s\(4) & (!\FD|Somador|saida[3]~3\ & VCC))
-- \FD|Somador|saida[4]~5\ = CARRY((\FD|PC|data_s\(4) & !\FD|Somador|saida[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datad => VCC,
	cin => \FD|Somador|saida[3]~3\,
	combout => \FD|Somador|saida[4]~4_combout\,
	cout => \FD|Somador|saida[4]~5\);

-- Location: LCCOMB_X69_Y4_N4
\FD|mux_jump|saida[4]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[4]~60_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(74))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[4]~4_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(74),
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|Somador|saida[4]~4_combout\,
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|mux_jump|saida[4]~60_combout\);

-- Location: LCCOMB_X74_Y4_N20
\FD|PC|data_s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~feeder_combout\ = \FD|mux_jump|saida[4]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[4]~60_combout\,
	combout => \FD|PC|data_s[4]~feeder_combout\);

-- Location: FF_X74_Y4_N21
\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[4]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(2),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

-- Location: FF_X72_Y4_N9
\FD|REG_P3|data_s[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[75]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(75));

-- Location: LCCOMB_X69_Y4_N30
\FD|mux_jump|saida[5]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[5]~61_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(75)))) # (!\FD|REG_P3|data_s\(69) & (\FD|Somador|saida[5]~6_combout\)))) # (!\FD|REG_P3|data_s\(104) & (\FD|Somador|saida[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[5]~6_combout\,
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|REG_P3|data_s\(75),
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|mux_jump|saida[5]~61_combout\);

-- Location: LCCOMB_X73_Y4_N26
\FD|PC|data_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[5]~feeder_combout\ = \FD|mux_jump|saida[5]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[5]~61_combout\,
	combout => \FD|PC|data_s[5]~feeder_combout\);

-- Location: FF_X73_Y4_N27
\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[5]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(3),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

-- Location: LCCOMB_X74_Y4_N10
\FD|ROM|memROM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~17_combout\ = (\FD|PC|data_s\(5) & \FD|PC|data_s\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(4),
	combout => \FD|ROM|memROM~17_combout\);

-- Location: LCCOMB_X75_Y4_N18
\FD|mux_Rd_Rt|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[2]~0_combout\ = (\FD|ROM|memROM~17_combout\ & (\FD|REG_P2|data_s\(142) & (\FD|ROM|memROM~16_combout\ & \FD|ROM|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~17_combout\,
	datab => \FD|REG_P2|data_s\(142),
	datac => \FD|ROM|memROM~16_combout\,
	datad => \FD|ROM|memROM~14_combout\,
	combout => \FD|mux_Rd_Rt|saida[2]~0_combout\);

-- Location: LCCOMB_X75_Y4_N4
\FD|REG_P3|data_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[2]~feeder_combout\ = \FD|mux_Rd_Rt|saida[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Rd_Rt|saida[2]~0_combout\,
	combout => \FD|REG_P3|data_s[2]~feeder_combout\);

-- Location: FF_X75_Y4_N5
\FD|REG_P3|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(2));

-- Location: LCCOMB_X75_Y8_N0
\FD|REG_P4|data_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P4|data_s[2]~feeder_combout\ = \FD|REG_P3|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P3|data_s\(2),
	combout => \FD|REG_P4|data_s[2]~feeder_combout\);

-- Location: FF_X75_Y8_N1
\FD|REG_P4|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P4|data_s[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(2));

-- Location: LCCOMB_X75_Y8_N22
\FD|BR|bancoReg_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\ = \FD|REG_P4|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P4|data_s\(2),
	combout => \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X75_Y8_N23
\FD|BR|bancoReg_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(9));

-- Location: LCCOMB_X75_Y8_N24
\FD|BR|bancoReg_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\ = \FD|REG_P4|data_s\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P4|data_s\(70),
	combout => \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X75_Y8_N25
\FD|BR|bancoReg_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(0));

-- Location: FF_X75_Y8_N27
\FD|BR|bancoReg_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|REG_P4|data_s\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(3));

-- Location: LCCOMB_X75_Y8_N16
\FD|BR|bancoReg_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\ = \FD|REG_P4|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P4|data_s\(2),
	combout => \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X75_Y8_N17
\FD|BR|bancoReg_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(5));

-- Location: LCCOMB_X75_Y8_N26
\FD|BR|bancoReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~39_combout\ = (!\FD|BR|bancoReg_rtl_0_bypass\(9) & (\FD|BR|bancoReg_rtl_0_bypass\(0) & (!\FD|BR|bancoReg_rtl_0_bypass\(3) & !\FD|BR|bancoReg_rtl_0_bypass\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(0),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(3),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(5),
	combout => \FD|BR|bancoReg~39_combout\);

-- Location: LCCOMB_X82_Y5_N28
\FD|BR|saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~0_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(12) & ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(12),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaA[0]~0_combout\);

-- Location: LCCOMB_X79_Y4_N16
\FD|BR|bancoReg_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[0]~0_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X79_Y4_N17
\FD|BR|bancoReg_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(11));

-- Location: LCCOMB_X82_Y4_N8
\FD|BR|saidaA[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~1_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[0]~0_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\FD|BR|saidaA[0]~0_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[0]~0_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(11),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \FD|BR|saidaA[0]~1_combout\);

-- Location: FF_X82_Y4_N9
\FD|REG_P2|data_s[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|saidaA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(74));

-- Location: LCCOMB_X82_Y4_N30
\FD|ULA|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~4_combout\ = (\FD|REG_P2|data_s\(74) & ((\FD|mux_Banco_Ula|saida[0]~0_combout\) # (\FD|UCULA|ALUctr[0]~6_combout\))) # (!\FD|REG_P2|data_s\(74) & (\FD|mux_Banco_Ula|saida[0]~0_combout\ & \FD|UCULA|ALUctr[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(74),
	datab => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datad => \FD|UCULA|ALUctr[0]~6_combout\,
	combout => \FD|ULA|Mux31~4_combout\);

-- Location: LCCOMB_X82_Y4_N4
\FD|ULA|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~6_combout\ = (\FD|UCULA|ALUctr[2]~7_combout\ & ((\FD|ULA|Add1~0_combout\))) # (!\FD|UCULA|ALUctr[2]~7_combout\ & (\FD|ULA|soma[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[0]~0_combout\,
	datac => \FD|ULA|Add1~0_combout\,
	datad => \FD|UCULA|ALUctr[2]~7_combout\,
	combout => \FD|ULA|Mux31~6_combout\);

-- Location: LCCOMB_X82_Y4_N14
\FD|ULA|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~10_combout\ = (\FD|UCULA|ALUctr[1]~3_combout\ & (\FD|mux_Banco_Ula|saida[31]~1_combout\ $ ((\FD|REG_P2|data_s\(105))))) # (!\FD|UCULA|ALUctr[1]~3_combout\ & ((\FD|mux_Banco_Ula|saida[31]~1_combout\ $ (\FD|REG_P2|data_s\(105))) # 
-- (!\FD|UCULA|ALUctr[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|REG_P2|data_s\(105),
	datac => \FD|UCULA|ALUctr[1]~3_combout\,
	datad => \FD|UCULA|ALUctr[2]~7_combout\,
	combout => \FD|ULA|Mux31~10_combout\);

-- Location: LCCOMB_X82_Y4_N26
\FD|ULA|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~7_combout\ = \FD|ULA|Add1~62_combout\ $ (((!\FD|mux_Banco_Ula|saida[31]~1_combout\ & (!\FD|REG_P2|data_s\(105) & !\FD|ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|REG_P2|data_s\(105),
	datac => \FD|ULA|Add1~62_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \FD|ULA|Mux31~7_combout\);

-- Location: LCCOMB_X82_Y4_N16
\FD|ULA|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~8_combout\ = \FD|ULA|Mux31~7_combout\ $ (((\FD|ULA|Mux31~10_combout\) # (\FD|ULA|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux31~10_combout\,
	datac => \FD|ULA|Mux31~7_combout\,
	datad => \FD|ULA|Mux0~2_combout\,
	combout => \FD|ULA|Mux31~8_combout\);

-- Location: LCCOMB_X82_Y4_N20
\FD|ULA|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~9_combout\ = (\FD|UCULA|ALUctr[0]~6_combout\ & (\FD|UCULA|ALUctr[2]~7_combout\ & ((!\FD|ULA|Mux31~8_combout\)))) # (!\FD|UCULA|ALUctr[0]~6_combout\ & (((\FD|ULA|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~6_combout\,
	datab => \FD|UCULA|ALUctr[2]~7_combout\,
	datac => \FD|ULA|Mux31~6_combout\,
	datad => \FD|ULA|Mux31~8_combout\,
	combout => \FD|ULA|Mux31~9_combout\);

-- Location: LCCOMB_X82_Y4_N24
\FD|ULA|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~11_combout\ = (\FD|UCULA|ALUctr[1]~3_combout\ & (((\FD|ULA|Mux31~9_combout\)))) # (!\FD|UCULA|ALUctr[1]~3_combout\ & (\FD|ULA|Mux31~4_combout\ & (!\FD|UCULA|ALUctr[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~4_combout\,
	datab => \FD|UCULA|ALUctr[2]~7_combout\,
	datac => \FD|UCULA|ALUctr[1]~3_combout\,
	datad => \FD|ULA|Mux31~9_combout\,
	combout => \FD|ULA|Mux31~11_combout\);

-- Location: LCCOMB_X72_Y3_N30
\FD|REG_P3|data_s[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[71]~feeder_combout\ = \FD|REG_P2|data_s\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_P2|data_s\(41),
	combout => \FD|REG_P3|data_s[71]~feeder_combout\);

-- Location: FF_X72_Y3_N31
\FD|REG_P3|data_s[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[71]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(71));

-- Location: LCCOMB_X69_Y3_N28
\FD|mux_beq|saida[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_beq|saida[1]~0_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(71)))) # (!\FD|REG_P3|data_s\(69) & (\FD|PC|data_s\(1))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|PC|data_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|PC|data_s\(1),
	datad => \FD|REG_P3|data_s\(71),
	combout => \FD|mux_beq|saida[1]~0_combout\);

-- Location: FF_X69_Y3_N29
\FD|PC|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_beq|saida[1]~0_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(1));

-- Location: LCCOMB_X68_Y4_N14
\FD|Somador|saida[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[8]~12_combout\ = (\FD|PC|data_s\(8) & (\FD|Somador|saida[7]~11\ $ (GND))) # (!\FD|PC|data_s\(8) & (!\FD|Somador|saida[7]~11\ & VCC))
-- \FD|Somador|saida[8]~13\ = CARRY((\FD|PC|data_s\(8) & !\FD|Somador|saida[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(8),
	datad => VCC,
	cin => \FD|Somador|saida[7]~11\,
	combout => \FD|Somador|saida[8]~12_combout\,
	cout => \FD|Somador|saida[8]~13\);

-- Location: LCCOMB_X72_Y4_N14
\FD|REG_P3|data_s[78]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[78]~42_combout\ = (((!\FD|REG_P3|data_s[77]~41\))) # (GND)
-- \FD|REG_P3|data_s[78]~43\ = CARRY(\FD|REG_P2|data_s\(41))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[77]~41\,
	combout => \FD|REG_P3|data_s[78]~42_combout\,
	cout => \FD|REG_P3|data_s[78]~43\);

-- Location: FF_X72_Y4_N15
\FD|REG_P3|data_s[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[78]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(78));

-- Location: LCCOMB_X69_Y4_N8
\FD|mux_jump|saida[8]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[8]~62_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(78)))) # (!\FD|REG_P3|data_s\(69) & (\FD|Somador|saida[8]~12_combout\)))) # (!\FD|REG_P3|data_s\(104) & (\FD|Somador|saida[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[8]~12_combout\,
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|REG_P3|data_s\(78),
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|mux_jump|saida[8]~62_combout\);

-- Location: LCCOMB_X70_Y4_N22
\FD|PC|data_s[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[8]~feeder_combout\ = \FD|mux_jump|saida[8]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[8]~62_combout\,
	combout => \FD|PC|data_s[8]~feeder_combout\);

-- Location: FF_X70_Y4_N23
\FD|PC|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[8]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(8));

-- Location: LCCOMB_X72_Y4_N16
\FD|REG_P3|data_s[79]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[79]~44_combout\ = (((\FD|REG_P3|data_s[78]~43\))) # (GND)
-- \FD|REG_P3|data_s[79]~45\ = CARRY(\FD|REG_P2|data_s\(41))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[78]~43\,
	combout => \FD|REG_P3|data_s[79]~44_combout\,
	cout => \FD|REG_P3|data_s[79]~45\);

-- Location: FF_X72_Y4_N17
\FD|REG_P3|data_s[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[79]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(79));

-- Location: LCCOMB_X68_Y4_N16
\FD|Somador|saida[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[9]~14_combout\ = (\FD|PC|data_s\(9) & (!\FD|Somador|saida[8]~13\)) # (!\FD|PC|data_s\(9) & ((\FD|Somador|saida[8]~13\) # (GND)))
-- \FD|Somador|saida[9]~15\ = CARRY((!\FD|Somador|saida[8]~13\) # (!\FD|PC|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(9),
	datad => VCC,
	cin => \FD|Somador|saida[8]~13\,
	combout => \FD|Somador|saida[9]~14_combout\,
	cout => \FD|Somador|saida[9]~15\);

-- Location: LCCOMB_X69_Y4_N18
\FD|mux_jump|saida[9]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[9]~63_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(79))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[9]~14_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(79),
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|Somador|saida[9]~14_combout\,
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|mux_jump|saida[9]~63_combout\);

-- Location: LCCOMB_X70_Y4_N4
\FD|PC|data_s[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[9]~feeder_combout\ = \FD|mux_jump|saida[9]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[9]~63_combout\,
	combout => \FD|PC|data_s[9]~feeder_combout\);

-- Location: FF_X70_Y4_N5
\FD|PC|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[9]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(9));

-- Location: LCCOMB_X72_Y4_N18
\FD|REG_P3|data_s[80]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[80]~46_combout\ = (\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(42) & (\FD|REG_P3|data_s[79]~45\ & VCC)) # (!\FD|REG_P2|data_s\(42) & (!\FD|REG_P3|data_s[79]~45\)))) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(42) & 
-- (!\FD|REG_P3|data_s[79]~45\)) # (!\FD|REG_P2|data_s\(42) & ((\FD|REG_P3|data_s[79]~45\) # (GND)))))
-- \FD|REG_P3|data_s[80]~47\ = CARRY((\FD|REG_P2|data_s\(41) & (!\FD|REG_P2|data_s\(42) & !\FD|REG_P3|data_s[79]~45\)) # (!\FD|REG_P2|data_s\(41) & ((!\FD|REG_P3|data_s[79]~45\) # (!\FD|REG_P2|data_s\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(42),
	datad => VCC,
	cin => \FD|REG_P3|data_s[79]~45\,
	combout => \FD|REG_P3|data_s[80]~46_combout\,
	cout => \FD|REG_P3|data_s[80]~47\);

-- Location: FF_X72_Y4_N19
\FD|REG_P3|data_s[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[80]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(80));

-- Location: LCCOMB_X68_Y4_N18
\FD|Somador|saida[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[10]~16_combout\ = (\FD|PC|data_s\(10) & (\FD|Somador|saida[9]~15\ $ (GND))) # (!\FD|PC|data_s\(10) & (!\FD|Somador|saida[9]~15\ & VCC))
-- \FD|Somador|saida[10]~17\ = CARRY((\FD|PC|data_s\(10) & !\FD|Somador|saida[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(10),
	datad => VCC,
	cin => \FD|Somador|saida[9]~15\,
	combout => \FD|Somador|saida[10]~16_combout\,
	cout => \FD|Somador|saida[10]~17\);

-- Location: LCCOMB_X69_Y4_N20
\FD|mux_jump|saida[10]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[10]~64_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & (\FD|REG_P3|data_s\(80))) # (!\FD|REG_P3|data_s\(104) & ((\FD|Somador|saida[10]~16_combout\))))) # (!\FD|REG_P3|data_s\(69) & 
-- (((\FD|Somador|saida[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(69),
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|REG_P3|data_s\(80),
	datad => \FD|Somador|saida[10]~16_combout\,
	combout => \FD|mux_jump|saida[10]~64_combout\);

-- Location: LCCOMB_X70_Y4_N2
\FD|PC|data_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[10]~feeder_combout\ = \FD|mux_jump|saida[10]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[10]~64_combout\,
	combout => \FD|PC|data_s[10]~feeder_combout\);

-- Location: FF_X70_Y4_N3
\FD|PC|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[10]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(10));

-- Location: LCCOMB_X72_Y4_N20
\FD|REG_P3|data_s[81]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[81]~48_combout\ = ((\FD|REG_P2|data_s\(43) $ (\FD|REG_P2|data_s\(41) $ (!\FD|REG_P3|data_s[80]~47\)))) # (GND)
-- \FD|REG_P3|data_s[81]~49\ = CARRY((\FD|REG_P2|data_s\(43) & ((\FD|REG_P2|data_s\(41)) # (!\FD|REG_P3|data_s[80]~47\))) # (!\FD|REG_P2|data_s\(43) & (\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[80]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(43),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[80]~47\,
	combout => \FD|REG_P3|data_s[81]~48_combout\,
	cout => \FD|REG_P3|data_s[81]~49\);

-- Location: FF_X72_Y4_N21
\FD|REG_P3|data_s[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[81]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(81));

-- Location: LCCOMB_X68_Y4_N20
\FD|Somador|saida[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[11]~18_combout\ = (\FD|PC|data_s\(11) & (!\FD|Somador|saida[10]~17\)) # (!\FD|PC|data_s\(11) & ((\FD|Somador|saida[10]~17\) # (GND)))
-- \FD|Somador|saida[11]~19\ = CARRY((!\FD|Somador|saida[10]~17\) # (!\FD|PC|data_s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(11),
	datad => VCC,
	cin => \FD|Somador|saida[10]~17\,
	combout => \FD|Somador|saida[11]~18_combout\,
	cout => \FD|Somador|saida[11]~19\);

-- Location: LCCOMB_X69_Y4_N22
\FD|mux_jump|saida[11]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[11]~65_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & (\FD|REG_P3|data_s\(81))) # (!\FD|REG_P3|data_s\(104) & ((\FD|Somador|saida[11]~18_combout\))))) # (!\FD|REG_P3|data_s\(69) & 
-- (((\FD|Somador|saida[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(69),
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|REG_P3|data_s\(81),
	datad => \FD|Somador|saida[11]~18_combout\,
	combout => \FD|mux_jump|saida[11]~65_combout\);

-- Location: LCCOMB_X70_Y4_N20
\FD|PC|data_s[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[11]~feeder_combout\ = \FD|mux_jump|saida[11]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[11]~65_combout\,
	combout => \FD|PC|data_s[11]~feeder_combout\);

-- Location: FF_X70_Y4_N21
\FD|PC|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[11]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(11));

-- Location: LCCOMB_X72_Y4_N22
\FD|REG_P3|data_s[82]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[82]~50_combout\ = (\FD|REG_P2|data_s\(44) & ((\FD|REG_P2|data_s\(41) & (\FD|REG_P3|data_s[81]~49\ & VCC)) # (!\FD|REG_P2|data_s\(41) & (!\FD|REG_P3|data_s[81]~49\)))) # (!\FD|REG_P2|data_s\(44) & ((\FD|REG_P2|data_s\(41) & 
-- (!\FD|REG_P3|data_s[81]~49\)) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P3|data_s[81]~49\) # (GND)))))
-- \FD|REG_P3|data_s[82]~51\ = CARRY((\FD|REG_P2|data_s\(44) & (!\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[81]~49\)) # (!\FD|REG_P2|data_s\(44) & ((!\FD|REG_P3|data_s[81]~49\) # (!\FD|REG_P2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(44),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[81]~49\,
	combout => \FD|REG_P3|data_s[82]~50_combout\,
	cout => \FD|REG_P3|data_s[82]~51\);

-- Location: FF_X72_Y4_N23
\FD|REG_P3|data_s[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[82]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(82));

-- Location: LCCOMB_X68_Y4_N22
\FD|Somador|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[12]~20_combout\ = (\FD|PC|data_s\(12) & (\FD|Somador|saida[11]~19\ $ (GND))) # (!\FD|PC|data_s\(12) & (!\FD|Somador|saida[11]~19\ & VCC))
-- \FD|Somador|saida[12]~21\ = CARRY((\FD|PC|data_s\(12) & !\FD|Somador|saida[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(12),
	datad => VCC,
	cin => \FD|Somador|saida[11]~19\,
	combout => \FD|Somador|saida[12]~20_combout\,
	cout => \FD|Somador|saida[12]~21\);

-- Location: LCCOMB_X69_Y4_N24
\FD|mux_jump|saida[12]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[12]~66_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & (\FD|REG_P3|data_s\(82))) # (!\FD|REG_P3|data_s\(104) & ((\FD|Somador|saida[12]~20_combout\))))) # (!\FD|REG_P3|data_s\(69) & 
-- (((\FD|Somador|saida[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(69),
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|REG_P3|data_s\(82),
	datad => \FD|Somador|saida[12]~20_combout\,
	combout => \FD|mux_jump|saida[12]~66_combout\);

-- Location: LCCOMB_X70_Y4_N14
\FD|PC|data_s[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[12]~feeder_combout\ = \FD|mux_jump|saida[12]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[12]~66_combout\,
	combout => \FD|PC|data_s[12]~feeder_combout\);

-- Location: FF_X70_Y4_N15
\FD|PC|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[12]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(12));

-- Location: LCCOMB_X72_Y4_N24
\FD|REG_P3|data_s[83]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[83]~52_combout\ = ((\FD|REG_P2|data_s\(45) $ (\FD|REG_P2|data_s\(41) $ (!\FD|REG_P3|data_s[82]~51\)))) # (GND)
-- \FD|REG_P3|data_s[83]~53\ = CARRY((\FD|REG_P2|data_s\(45) & ((\FD|REG_P2|data_s\(41)) # (!\FD|REG_P3|data_s[82]~51\))) # (!\FD|REG_P2|data_s\(45) & (\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[82]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(45),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[82]~51\,
	combout => \FD|REG_P3|data_s[83]~52_combout\,
	cout => \FD|REG_P3|data_s[83]~53\);

-- Location: FF_X72_Y4_N25
\FD|REG_P3|data_s[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[83]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(83));

-- Location: LCCOMB_X68_Y4_N24
\FD|Somador|saida[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[13]~22_combout\ = (\FD|PC|data_s\(13) & (!\FD|Somador|saida[12]~21\)) # (!\FD|PC|data_s\(13) & ((\FD|Somador|saida[12]~21\) # (GND)))
-- \FD|Somador|saida[13]~23\ = CARRY((!\FD|Somador|saida[12]~21\) # (!\FD|PC|data_s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(13),
	datad => VCC,
	cin => \FD|Somador|saida[12]~21\,
	combout => \FD|Somador|saida[13]~22_combout\,
	cout => \FD|Somador|saida[13]~23\);

-- Location: LCCOMB_X69_Y4_N2
\FD|mux_jump|saida[13]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[13]~67_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & (\FD|REG_P3|data_s\(83))) # (!\FD|REG_P3|data_s\(104) & ((\FD|Somador|saida[13]~22_combout\))))) # (!\FD|REG_P3|data_s\(69) & 
-- (((\FD|Somador|saida[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(69),
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|REG_P3|data_s\(83),
	datad => \FD|Somador|saida[13]~22_combout\,
	combout => \FD|mux_jump|saida[13]~67_combout\);

-- Location: LCCOMB_X70_Y4_N12
\FD|PC|data_s[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[13]~feeder_combout\ = \FD|mux_jump|saida[13]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[13]~67_combout\,
	combout => \FD|PC|data_s[13]~feeder_combout\);

-- Location: FF_X70_Y4_N13
\FD|PC|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[13]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(13));

-- Location: LCCOMB_X72_Y4_N26
\FD|REG_P3|data_s[84]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[84]~54_combout\ = (\FD|REG_P2|data_s\(46) & ((\FD|REG_P2|data_s\(41) & (\FD|REG_P3|data_s[83]~53\ & VCC)) # (!\FD|REG_P2|data_s\(41) & (!\FD|REG_P3|data_s[83]~53\)))) # (!\FD|REG_P2|data_s\(46) & ((\FD|REG_P2|data_s\(41) & 
-- (!\FD|REG_P3|data_s[83]~53\)) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P3|data_s[83]~53\) # (GND)))))
-- \FD|REG_P3|data_s[84]~55\ = CARRY((\FD|REG_P2|data_s\(46) & (!\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[83]~53\)) # (!\FD|REG_P2|data_s\(46) & ((!\FD|REG_P3|data_s[83]~53\) # (!\FD|REG_P2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(46),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[83]~53\,
	combout => \FD|REG_P3|data_s[84]~54_combout\,
	cout => \FD|REG_P3|data_s[84]~55\);

-- Location: FF_X72_Y4_N27
\FD|REG_P3|data_s[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[84]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(84));

-- Location: LCCOMB_X68_Y4_N26
\FD|Somador|saida[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[14]~24_combout\ = (\FD|PC|data_s\(14) & (\FD|Somador|saida[13]~23\ $ (GND))) # (!\FD|PC|data_s\(14) & (!\FD|Somador|saida[13]~23\ & VCC))
-- \FD|Somador|saida[14]~25\ = CARRY((\FD|PC|data_s\(14) & !\FD|Somador|saida[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(14),
	datad => VCC,
	cin => \FD|Somador|saida[13]~23\,
	combout => \FD|Somador|saida[14]~24_combout\,
	cout => \FD|Somador|saida[14]~25\);

-- Location: LCCOMB_X69_Y4_N12
\FD|mux_jump|saida[14]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[14]~68_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & (\FD|REG_P3|data_s\(84))) # (!\FD|REG_P3|data_s\(104) & ((\FD|Somador|saida[14]~24_combout\))))) # (!\FD|REG_P3|data_s\(69) & 
-- (((\FD|Somador|saida[14]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(69),
	datab => \FD|REG_P3|data_s\(84),
	datac => \FD|Somador|saida[14]~24_combout\,
	datad => \FD|REG_P3|data_s\(104),
	combout => \FD|mux_jump|saida[14]~68_combout\);

-- Location: LCCOMB_X70_Y4_N10
\FD|PC|data_s[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[14]~feeder_combout\ = \FD|mux_jump|saida[14]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[14]~68_combout\,
	combout => \FD|PC|data_s[14]~feeder_combout\);

-- Location: FF_X70_Y4_N11
\FD|PC|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[14]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(14));

-- Location: LCCOMB_X72_Y4_N28
\FD|REG_P3|data_s[85]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[85]~56_combout\ = ((\FD|REG_P2|data_s\(47) $ (\FD|REG_P2|data_s\(41) $ (!\FD|REG_P3|data_s[84]~55\)))) # (GND)
-- \FD|REG_P3|data_s[85]~57\ = CARRY((\FD|REG_P2|data_s\(47) & ((\FD|REG_P2|data_s\(41)) # (!\FD|REG_P3|data_s[84]~55\))) # (!\FD|REG_P2|data_s\(47) & (\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[84]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(47),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[84]~55\,
	combout => \FD|REG_P3|data_s[85]~56_combout\,
	cout => \FD|REG_P3|data_s[85]~57\);

-- Location: FF_X72_Y4_N29
\FD|REG_P3|data_s[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[85]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(85));

-- Location: LCCOMB_X68_Y4_N28
\FD|Somador|saida[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[15]~26_combout\ = (\FD|PC|data_s\(15) & (!\FD|Somador|saida[14]~25\)) # (!\FD|PC|data_s\(15) & ((\FD|Somador|saida[14]~25\) # (GND)))
-- \FD|Somador|saida[15]~27\ = CARRY((!\FD|Somador|saida[14]~25\) # (!\FD|PC|data_s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(15),
	datad => VCC,
	cin => \FD|Somador|saida[14]~25\,
	combout => \FD|Somador|saida[15]~26_combout\,
	cout => \FD|Somador|saida[15]~27\);

-- Location: LCCOMB_X69_Y4_N14
\FD|mux_jump|saida[15]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[15]~69_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(85))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[15]~26_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[15]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(85),
	datab => \FD|REG_P3|data_s\(104),
	datac => \FD|REG_P3|data_s\(69),
	datad => \FD|Somador|saida[15]~26_combout\,
	combout => \FD|mux_jump|saida[15]~69_combout\);

-- Location: LCCOMB_X70_Y4_N0
\FD|PC|data_s[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[15]~feeder_combout\ = \FD|mux_jump|saida[15]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[15]~69_combout\,
	combout => \FD|PC|data_s[15]~feeder_combout\);

-- Location: FF_X70_Y4_N1
\FD|PC|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[15]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(15));

-- Location: LCCOMB_X72_Y4_N30
\FD|REG_P3|data_s[86]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[86]~58_combout\ = (\FD|REG_P2|data_s\(48) & ((\FD|REG_P2|data_s\(24) & (\FD|REG_P3|data_s[85]~57\ & VCC)) # (!\FD|REG_P2|data_s\(24) & (!\FD|REG_P3|data_s[85]~57\)))) # (!\FD|REG_P2|data_s\(48) & ((\FD|REG_P2|data_s\(24) & 
-- (!\FD|REG_P3|data_s[85]~57\)) # (!\FD|REG_P2|data_s\(24) & ((\FD|REG_P3|data_s[85]~57\) # (GND)))))
-- \FD|REG_P3|data_s[86]~59\ = CARRY((\FD|REG_P2|data_s\(48) & (!\FD|REG_P2|data_s\(24) & !\FD|REG_P3|data_s[85]~57\)) # (!\FD|REG_P2|data_s\(48) & ((!\FD|REG_P3|data_s[85]~57\) # (!\FD|REG_P2|data_s\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(48),
	datab => \FD|REG_P2|data_s\(24),
	datad => VCC,
	cin => \FD|REG_P3|data_s[85]~57\,
	combout => \FD|REG_P3|data_s[86]~58_combout\,
	cout => \FD|REG_P3|data_s[86]~59\);

-- Location: FF_X72_Y4_N31
\FD|REG_P3|data_s[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[86]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(86));

-- Location: LCCOMB_X68_Y4_N30
\FD|Somador|saida[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[16]~28_combout\ = (\FD|PC|data_s\(16) & (\FD|Somador|saida[15]~27\ $ (GND))) # (!\FD|PC|data_s\(16) & (!\FD|Somador|saida[15]~27\ & VCC))
-- \FD|Somador|saida[16]~29\ = CARRY((\FD|PC|data_s\(16) & !\FD|Somador|saida[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(16),
	datad => VCC,
	cin => \FD|Somador|saida[15]~27\,
	combout => \FD|Somador|saida[16]~28_combout\,
	cout => \FD|Somador|saida[16]~29\);

-- Location: LCCOMB_X69_Y4_N28
\FD|mux_jump|saida[16]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[16]~70_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & (\FD|REG_P3|data_s\(86))) # (!\FD|REG_P3|data_s\(104) & ((\FD|Somador|saida[16]~28_combout\))))) # (!\FD|REG_P3|data_s\(69) & 
-- (((\FD|Somador|saida[16]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(86),
	datab => \FD|Somador|saida[16]~28_combout\,
	datac => \FD|REG_P3|data_s\(69),
	datad => \FD|REG_P3|data_s\(104),
	combout => \FD|mux_jump|saida[16]~70_combout\);

-- Location: LCCOMB_X70_Y4_N6
\FD|PC|data_s[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[16]~feeder_combout\ = \FD|mux_jump|saida[16]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[16]~70_combout\,
	combout => \FD|PC|data_s[16]~feeder_combout\);

-- Location: FF_X70_Y4_N7
\FD|PC|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[16]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(5),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(16));

-- Location: LCCOMB_X72_Y3_N0
\FD|REG_P3|data_s[87]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[87]~60_combout\ = ((\FD|REG_P2|data_s\(41) $ (\FD|REG_P2|data_s\(49) $ (!\FD|REG_P3|data_s[86]~59\)))) # (GND)
-- \FD|REG_P3|data_s[87]~61\ = CARRY((\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(49)) # (!\FD|REG_P3|data_s[86]~59\))) # (!\FD|REG_P2|data_s\(41) & (\FD|REG_P2|data_s\(49) & !\FD|REG_P3|data_s[86]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(49),
	datad => VCC,
	cin => \FD|REG_P3|data_s[86]~59\,
	combout => \FD|REG_P3|data_s[87]~60_combout\,
	cout => \FD|REG_P3|data_s[87]~61\);

-- Location: FF_X72_Y3_N1
\FD|REG_P3|data_s[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[87]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(87));

-- Location: LCCOMB_X68_Y3_N0
\FD|Somador|saida[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[17]~30_combout\ = (\FD|PC|data_s\(17) & (!\FD|Somador|saida[16]~29\)) # (!\FD|PC|data_s\(17) & ((\FD|Somador|saida[16]~29\) # (GND)))
-- \FD|Somador|saida[17]~31\ = CARRY((!\FD|Somador|saida[16]~29\) # (!\FD|PC|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(17),
	datad => VCC,
	cin => \FD|Somador|saida[16]~29\,
	combout => \FD|Somador|saida[17]~30_combout\,
	cout => \FD|Somador|saida[17]~31\);

-- Location: LCCOMB_X69_Y3_N24
\FD|mux_jump|saida[17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[17]~71_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(87))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[17]~30_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(87),
	datac => \FD|Somador|saida[17]~30_combout\,
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|mux_jump|saida[17]~71_combout\);

-- Location: LCCOMB_X70_Y3_N28
\FD|PC|data_s[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[17]~feeder_combout\ = \FD|mux_jump|saida[17]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[17]~71_combout\,
	combout => \FD|PC|data_s[17]~feeder_combout\);

-- Location: FF_X70_Y3_N29
\FD|PC|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[17]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(17));

-- Location: LCCOMB_X72_Y3_N2
\FD|REG_P3|data_s[88]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[88]~62_combout\ = (\FD|REG_P2|data_s\(50) & ((\FD|REG_P2|data_s\(41) & (\FD|REG_P3|data_s[87]~61\ & VCC)) # (!\FD|REG_P2|data_s\(41) & (!\FD|REG_P3|data_s[87]~61\)))) # (!\FD|REG_P2|data_s\(50) & ((\FD|REG_P2|data_s\(41) & 
-- (!\FD|REG_P3|data_s[87]~61\)) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P3|data_s[87]~61\) # (GND)))))
-- \FD|REG_P3|data_s[88]~63\ = CARRY((\FD|REG_P2|data_s\(50) & (!\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[87]~61\)) # (!\FD|REG_P2|data_s\(50) & ((!\FD|REG_P3|data_s[87]~61\) # (!\FD|REG_P2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(50),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[87]~61\,
	combout => \FD|REG_P3|data_s[88]~62_combout\,
	cout => \FD|REG_P3|data_s[88]~63\);

-- Location: FF_X72_Y3_N3
\FD|REG_P3|data_s[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[88]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(88));

-- Location: LCCOMB_X68_Y3_N2
\FD|Somador|saida[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[18]~32_combout\ = (\FD|PC|data_s\(18) & (\FD|Somador|saida[17]~31\ $ (GND))) # (!\FD|PC|data_s\(18) & (!\FD|Somador|saida[17]~31\ & VCC))
-- \FD|Somador|saida[18]~33\ = CARRY((\FD|PC|data_s\(18) & !\FD|Somador|saida[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(18),
	datad => VCC,
	cin => \FD|Somador|saida[17]~31\,
	combout => \FD|Somador|saida[18]~32_combout\,
	cout => \FD|Somador|saida[18]~33\);

-- Location: LCCOMB_X69_Y3_N14
\FD|mux_jump|saida[18]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[18]~72_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(88))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[18]~32_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[18]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(88),
	datad => \FD|Somador|saida[18]~32_combout\,
	combout => \FD|mux_jump|saida[18]~72_combout\);

-- Location: LCCOMB_X70_Y3_N22
\FD|PC|data_s[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[18]~feeder_combout\ = \FD|mux_jump|saida[18]~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[18]~72_combout\,
	combout => \FD|PC|data_s[18]~feeder_combout\);

-- Location: FF_X70_Y3_N23
\FD|PC|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[18]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(16),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(18));

-- Location: LCCOMB_X68_Y3_N4
\FD|Somador|saida[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[19]~34_combout\ = (\FD|PC|data_s\(19) & (!\FD|Somador|saida[18]~33\)) # (!\FD|PC|data_s\(19) & ((\FD|Somador|saida[18]~33\) # (GND)))
-- \FD|Somador|saida[19]~35\ = CARRY((!\FD|Somador|saida[18]~33\) # (!\FD|PC|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(19),
	datad => VCC,
	cin => \FD|Somador|saida[18]~33\,
	combout => \FD|Somador|saida[19]~34_combout\,
	cout => \FD|Somador|saida[19]~35\);

-- Location: LCCOMB_X72_Y3_N4
\FD|REG_P3|data_s[89]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[89]~64_combout\ = ((\FD|REG_P2|data_s\(41) $ (\FD|REG_P2|data_s\(51) $ (!\FD|REG_P3|data_s[88]~63\)))) # (GND)
-- \FD|REG_P3|data_s[89]~65\ = CARRY((\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(51)) # (!\FD|REG_P3|data_s[88]~63\))) # (!\FD|REG_P2|data_s\(41) & (\FD|REG_P2|data_s\(51) & !\FD|REG_P3|data_s[88]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(51),
	datad => VCC,
	cin => \FD|REG_P3|data_s[88]~63\,
	combout => \FD|REG_P3|data_s[89]~64_combout\,
	cout => \FD|REG_P3|data_s[89]~65\);

-- Location: FF_X72_Y3_N5
\FD|REG_P3|data_s[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[89]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(89));

-- Location: LCCOMB_X69_Y3_N20
\FD|mux_jump|saida[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[19]~73_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(89)))) # (!\FD|REG_P3|data_s\(69) & (\FD|Somador|saida[19]~34_combout\)))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[19]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|Somador|saida[19]~34_combout\,
	datad => \FD|REG_P3|data_s\(89),
	combout => \FD|mux_jump|saida[19]~73_combout\);

-- Location: LCCOMB_X70_Y3_N24
\FD|PC|data_s[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[19]~feeder_combout\ = \FD|mux_jump|saida[19]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[19]~73_combout\,
	combout => \FD|PC|data_s[19]~feeder_combout\);

-- Location: FF_X70_Y3_N25
\FD|PC|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[19]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(5),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(19));

-- Location: LCCOMB_X72_Y3_N6
\FD|REG_P3|data_s[90]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[90]~66_combout\ = (\FD|REG_P2|data_s\(52) & ((\FD|REG_P2|data_s\(41) & (\FD|REG_P3|data_s[89]~65\ & VCC)) # (!\FD|REG_P2|data_s\(41) & (!\FD|REG_P3|data_s[89]~65\)))) # (!\FD|REG_P2|data_s\(52) & ((\FD|REG_P2|data_s\(41) & 
-- (!\FD|REG_P3|data_s[89]~65\)) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P3|data_s[89]~65\) # (GND)))))
-- \FD|REG_P3|data_s[90]~67\ = CARRY((\FD|REG_P2|data_s\(52) & (!\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[89]~65\)) # (!\FD|REG_P2|data_s\(52) & ((!\FD|REG_P3|data_s[89]~65\) # (!\FD|REG_P2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(52),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[89]~65\,
	combout => \FD|REG_P3|data_s[90]~66_combout\,
	cout => \FD|REG_P3|data_s[90]~67\);

-- Location: FF_X72_Y3_N7
\FD|REG_P3|data_s[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[90]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(90));

-- Location: LCCOMB_X68_Y3_N6
\FD|Somador|saida[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[20]~36_combout\ = (\FD|PC|data_s\(20) & (\FD|Somador|saida[19]~35\ $ (GND))) # (!\FD|PC|data_s\(20) & (!\FD|Somador|saida[19]~35\ & VCC))
-- \FD|Somador|saida[20]~37\ = CARRY((\FD|PC|data_s\(20) & !\FD|Somador|saida[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(20),
	datad => VCC,
	cin => \FD|Somador|saida[19]~35\,
	combout => \FD|Somador|saida[20]~36_combout\,
	cout => \FD|Somador|saida[20]~37\);

-- Location: LCCOMB_X69_Y3_N22
\FD|mux_jump|saida[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[20]~74_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(90))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[20]~36_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[20]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(90),
	datad => \FD|Somador|saida[20]~36_combout\,
	combout => \FD|mux_jump|saida[20]~74_combout\);

-- Location: FF_X69_Y3_N23
\FD|PC|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[20]~74_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(20));

-- Location: LCCOMB_X72_Y3_N8
\FD|REG_P3|data_s[91]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[91]~68_combout\ = ((\FD|REG_P2|data_s\(41) $ (\FD|REG_P2|data_s\(53) $ (!\FD|REG_P3|data_s[90]~67\)))) # (GND)
-- \FD|REG_P3|data_s[91]~69\ = CARRY((\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(53)) # (!\FD|REG_P3|data_s[90]~67\))) # (!\FD|REG_P2|data_s\(41) & (\FD|REG_P2|data_s\(53) & !\FD|REG_P3|data_s[90]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(53),
	datad => VCC,
	cin => \FD|REG_P3|data_s[90]~67\,
	combout => \FD|REG_P3|data_s[91]~68_combout\,
	cout => \FD|REG_P3|data_s[91]~69\);

-- Location: FF_X72_Y3_N9
\FD|REG_P3|data_s[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[91]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(91));

-- Location: LCCOMB_X68_Y3_N8
\FD|Somador|saida[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[21]~38_combout\ = (\FD|PC|data_s\(21) & (!\FD|Somador|saida[20]~37\)) # (!\FD|PC|data_s\(21) & ((\FD|Somador|saida[20]~37\) # (GND)))
-- \FD|Somador|saida[21]~39\ = CARRY((!\FD|Somador|saida[20]~37\) # (!\FD|PC|data_s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(21),
	datad => VCC,
	cin => \FD|Somador|saida[20]~37\,
	combout => \FD|Somador|saida[21]~38_combout\,
	cout => \FD|Somador|saida[21]~39\);

-- Location: LCCOMB_X69_Y3_N2
\FD|mux_jump|saida[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[21]~75_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(91))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[21]~38_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[21]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(91),
	datad => \FD|Somador|saida[21]~38_combout\,
	combout => \FD|mux_jump|saida[21]~75_combout\);

-- Location: LCCOMB_X70_Y3_N14
\FD|PC|data_s[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[21]~feeder_combout\ = \FD|mux_jump|saida[21]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[21]~75_combout\,
	combout => \FD|PC|data_s[21]~feeder_combout\);

-- Location: FF_X70_Y3_N15
\FD|PC|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[21]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(19),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(21));

-- Location: LCCOMB_X72_Y3_N10
\FD|REG_P3|data_s[92]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[92]~70_combout\ = (\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(54) & (\FD|REG_P3|data_s[91]~69\ & VCC)) # (!\FD|REG_P2|data_s\(54) & (!\FD|REG_P3|data_s[91]~69\)))) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(54) & 
-- (!\FD|REG_P3|data_s[91]~69\)) # (!\FD|REG_P2|data_s\(54) & ((\FD|REG_P3|data_s[91]~69\) # (GND)))))
-- \FD|REG_P3|data_s[92]~71\ = CARRY((\FD|REG_P2|data_s\(41) & (!\FD|REG_P2|data_s\(54) & !\FD|REG_P3|data_s[91]~69\)) # (!\FD|REG_P2|data_s\(41) & ((!\FD|REG_P3|data_s[91]~69\) # (!\FD|REG_P2|data_s\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(54),
	datad => VCC,
	cin => \FD|REG_P3|data_s[91]~69\,
	combout => \FD|REG_P3|data_s[92]~70_combout\,
	cout => \FD|REG_P3|data_s[92]~71\);

-- Location: FF_X72_Y3_N11
\FD|REG_P3|data_s[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[92]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(92));

-- Location: LCCOMB_X68_Y3_N10
\FD|Somador|saida[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[22]~40_combout\ = (\FD|PC|data_s\(22) & (\FD|Somador|saida[21]~39\ $ (GND))) # (!\FD|PC|data_s\(22) & (!\FD|Somador|saida[21]~39\ & VCC))
-- \FD|Somador|saida[22]~41\ = CARRY((\FD|PC|data_s\(22) & !\FD|Somador|saida[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(22),
	datad => VCC,
	cin => \FD|Somador|saida[21]~39\,
	combout => \FD|Somador|saida[22]~40_combout\,
	cout => \FD|Somador|saida[22]~41\);

-- Location: LCCOMB_X69_Y3_N0
\FD|mux_jump|saida[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[22]~76_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & (\FD|REG_P3|data_s\(92))) # (!\FD|REG_P3|data_s\(104) & ((\FD|Somador|saida[22]~40_combout\))))) # (!\FD|REG_P3|data_s\(69) & 
-- (((\FD|Somador|saida[22]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(92),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(104),
	datad => \FD|Somador|saida[22]~40_combout\,
	combout => \FD|mux_jump|saida[22]~76_combout\);

-- Location: FF_X69_Y3_N1
\FD|PC|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[22]~76_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(22));

-- Location: LCCOMB_X72_Y3_N12
\FD|REG_P3|data_s[93]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[93]~72_combout\ = ((\FD|REG_P2|data_s\(55) $ (\FD|REG_P2|data_s\(41) $ (!\FD|REG_P3|data_s[92]~71\)))) # (GND)
-- \FD|REG_P3|data_s[93]~73\ = CARRY((\FD|REG_P2|data_s\(55) & ((\FD|REG_P2|data_s\(41)) # (!\FD|REG_P3|data_s[92]~71\))) # (!\FD|REG_P2|data_s\(55) & (\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[92]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(55),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[92]~71\,
	combout => \FD|REG_P3|data_s[93]~72_combout\,
	cout => \FD|REG_P3|data_s[93]~73\);

-- Location: FF_X72_Y3_N13
\FD|REG_P3|data_s[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[93]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(93));

-- Location: LCCOMB_X68_Y3_N12
\FD|Somador|saida[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[23]~42_combout\ = (\FD|PC|data_s\(23) & (!\FD|Somador|saida[22]~41\)) # (!\FD|PC|data_s\(23) & ((\FD|Somador|saida[22]~41\) # (GND)))
-- \FD|Somador|saida[23]~43\ = CARRY((!\FD|Somador|saida[22]~41\) # (!\FD|PC|data_s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(23),
	datad => VCC,
	cin => \FD|Somador|saida[22]~41\,
	combout => \FD|Somador|saida[23]~42_combout\,
	cout => \FD|Somador|saida[23]~43\);

-- Location: LCCOMB_X69_Y3_N8
\FD|mux_jump|saida[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[23]~77_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(93))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[23]~42_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[23]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(93),
	datad => \FD|Somador|saida[23]~42_combout\,
	combout => \FD|mux_jump|saida[23]~77_combout\);

-- Location: LCCOMB_X70_Y3_N12
\FD|PC|data_s[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[23]~feeder_combout\ = \FD|mux_jump|saida[23]~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[23]~77_combout\,
	combout => \FD|PC|data_s[23]~feeder_combout\);

-- Location: FF_X70_Y3_N13
\FD|PC|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[23]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(21),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(23));

-- Location: LCCOMB_X72_Y3_N14
\FD|REG_P3|data_s[94]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[94]~74_combout\ = (\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(56) & (\FD|REG_P3|data_s[93]~73\ & VCC)) # (!\FD|REG_P2|data_s\(56) & (!\FD|REG_P3|data_s[93]~73\)))) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(56) & 
-- (!\FD|REG_P3|data_s[93]~73\)) # (!\FD|REG_P2|data_s\(56) & ((\FD|REG_P3|data_s[93]~73\) # (GND)))))
-- \FD|REG_P3|data_s[94]~75\ = CARRY((\FD|REG_P2|data_s\(41) & (!\FD|REG_P2|data_s\(56) & !\FD|REG_P3|data_s[93]~73\)) # (!\FD|REG_P2|data_s\(41) & ((!\FD|REG_P3|data_s[93]~73\) # (!\FD|REG_P2|data_s\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(56),
	datad => VCC,
	cin => \FD|REG_P3|data_s[93]~73\,
	combout => \FD|REG_P3|data_s[94]~74_combout\,
	cout => \FD|REG_P3|data_s[94]~75\);

-- Location: FF_X72_Y3_N15
\FD|REG_P3|data_s[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[94]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(94));

-- Location: LCCOMB_X68_Y3_N14
\FD|Somador|saida[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[24]~44_combout\ = (\FD|PC|data_s\(24) & (\FD|Somador|saida[23]~43\ $ (GND))) # (!\FD|PC|data_s\(24) & (!\FD|Somador|saida[23]~43\ & VCC))
-- \FD|Somador|saida[24]~45\ = CARRY((\FD|PC|data_s\(24) & !\FD|Somador|saida[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(24),
	datad => VCC,
	cin => \FD|Somador|saida[23]~43\,
	combout => \FD|Somador|saida[24]~44_combout\,
	cout => \FD|Somador|saida[24]~45\);

-- Location: LCCOMB_X69_Y3_N26
\FD|mux_jump|saida[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[24]~78_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(94))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[24]~44_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[24]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(94),
	datad => \FD|Somador|saida[24]~44_combout\,
	combout => \FD|mux_jump|saida[24]~78_combout\);

-- Location: FF_X69_Y3_N27
\FD|PC|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[24]~78_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(24));

-- Location: LCCOMB_X68_Y3_N16
\FD|Somador|saida[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[25]~46_combout\ = (\FD|PC|data_s\(25) & (!\FD|Somador|saida[24]~45\)) # (!\FD|PC|data_s\(25) & ((\FD|Somador|saida[24]~45\) # (GND)))
-- \FD|Somador|saida[25]~47\ = CARRY((!\FD|Somador|saida[24]~45\) # (!\FD|PC|data_s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(25),
	datad => VCC,
	cin => \FD|Somador|saida[24]~45\,
	combout => \FD|Somador|saida[25]~46_combout\,
	cout => \FD|Somador|saida[25]~47\);

-- Location: LCCOMB_X72_Y3_N16
\FD|REG_P3|data_s[95]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[95]~76_combout\ = ((\FD|REG_P2|data_s\(57) $ (\FD|REG_P2|data_s\(41) $ (!\FD|REG_P3|data_s[94]~75\)))) # (GND)
-- \FD|REG_P3|data_s[95]~77\ = CARRY((\FD|REG_P2|data_s\(57) & ((\FD|REG_P2|data_s\(41)) # (!\FD|REG_P3|data_s[94]~75\))) # (!\FD|REG_P2|data_s\(57) & (\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[94]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(57),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[94]~75\,
	combout => \FD|REG_P3|data_s[95]~76_combout\,
	cout => \FD|REG_P3|data_s[95]~77\);

-- Location: FF_X72_Y3_N17
\FD|REG_P3|data_s[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[95]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(95));

-- Location: LCCOMB_X69_Y3_N4
\FD|mux_jump|saida[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[25]~79_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(95)))) # (!\FD|REG_P3|data_s\(69) & (\FD|Somador|saida[25]~46_combout\)))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[25]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|Somador|saida[25]~46_combout\,
	datad => \FD|REG_P3|data_s\(95),
	combout => \FD|mux_jump|saida[25]~79_combout\);

-- Location: FF_X69_Y3_N5
\FD|PC|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[25]~79_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(25));

-- Location: LCCOMB_X72_Y3_N18
\FD|REG_P3|data_s[96]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[96]~78_combout\ = (\FD|REG_P2|data_s\(58) & ((\FD|REG_P2|data_s\(41) & (\FD|REG_P3|data_s[95]~77\ & VCC)) # (!\FD|REG_P2|data_s\(41) & (!\FD|REG_P3|data_s[95]~77\)))) # (!\FD|REG_P2|data_s\(58) & ((\FD|REG_P2|data_s\(41) & 
-- (!\FD|REG_P3|data_s[95]~77\)) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P3|data_s[95]~77\) # (GND)))))
-- \FD|REG_P3|data_s[96]~79\ = CARRY((\FD|REG_P2|data_s\(58) & (!\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[95]~77\)) # (!\FD|REG_P2|data_s\(58) & ((!\FD|REG_P3|data_s[95]~77\) # (!\FD|REG_P2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(58),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[95]~77\,
	combout => \FD|REG_P3|data_s[96]~78_combout\,
	cout => \FD|REG_P3|data_s[96]~79\);

-- Location: FF_X72_Y3_N19
\FD|REG_P3|data_s[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[96]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(96));

-- Location: LCCOMB_X68_Y3_N18
\FD|Somador|saida[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[26]~48_combout\ = (\FD|PC|data_s\(26) & (\FD|Somador|saida[25]~47\ $ (GND))) # (!\FD|PC|data_s\(26) & (!\FD|Somador|saida[25]~47\ & VCC))
-- \FD|Somador|saida[26]~49\ = CARRY((\FD|PC|data_s\(26) & !\FD|Somador|saida[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(26),
	datad => VCC,
	cin => \FD|Somador|saida[25]~47\,
	combout => \FD|Somador|saida[26]~48_combout\,
	cout => \FD|Somador|saida[26]~49\);

-- Location: LCCOMB_X69_Y3_N18
\FD|mux_jump|saida[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[26]~80_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & (\FD|REG_P3|data_s\(96))) # (!\FD|REG_P3|data_s\(104) & ((\FD|Somador|saida[26]~48_combout\))))) # (!\FD|REG_P3|data_s\(69) & 
-- (((\FD|Somador|saida[26]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(96),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(104),
	datad => \FD|Somador|saida[26]~48_combout\,
	combout => \FD|mux_jump|saida[26]~80_combout\);

-- Location: LCCOMB_X70_Y3_N10
\FD|PC|data_s[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[26]~feeder_combout\ = \FD|mux_jump|saida[26]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_jump|saida[26]~80_combout\,
	combout => \FD|PC|data_s[26]~feeder_combout\);

-- Location: FF_X70_Y3_N11
\FD|PC|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[26]~feeder_combout\,
	asdata => \FD|REG_P1|data_s\(5),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(26));

-- Location: LCCOMB_X72_Y3_N20
\FD|REG_P3|data_s[97]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[97]~80_combout\ = ((\FD|REG_P2|data_s\(41) $ (\FD|REG_P2|data_s\(59) $ (!\FD|REG_P3|data_s[96]~79\)))) # (GND)
-- \FD|REG_P3|data_s[97]~81\ = CARRY((\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(59)) # (!\FD|REG_P3|data_s[96]~79\))) # (!\FD|REG_P2|data_s\(41) & (\FD|REG_P2|data_s\(59) & !\FD|REG_P3|data_s[96]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(59),
	datad => VCC,
	cin => \FD|REG_P3|data_s[96]~79\,
	combout => \FD|REG_P3|data_s[97]~80_combout\,
	cout => \FD|REG_P3|data_s[97]~81\);

-- Location: FF_X72_Y3_N21
\FD|REG_P3|data_s[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[97]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(97));

-- Location: LCCOMB_X68_Y3_N20
\FD|Somador|saida[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[27]~50_combout\ = (\FD|PC|data_s\(27) & (!\FD|Somador|saida[26]~49\)) # (!\FD|PC|data_s\(27) & ((\FD|Somador|saida[26]~49\) # (GND)))
-- \FD|Somador|saida[27]~51\ = CARRY((!\FD|Somador|saida[26]~49\) # (!\FD|PC|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(27),
	datad => VCC,
	cin => \FD|Somador|saida[26]~49\,
	combout => \FD|Somador|saida[27]~50_combout\,
	cout => \FD|Somador|saida[27]~51\);

-- Location: LCCOMB_X69_Y3_N30
\FD|mux_jump|saida[27]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[27]~81_combout\ = (\FD|REG_P3|data_s\(69) & ((\FD|REG_P3|data_s\(104) & (\FD|REG_P3|data_s\(97))) # (!\FD|REG_P3|data_s\(104) & ((\FD|Somador|saida[27]~50_combout\))))) # (!\FD|REG_P3|data_s\(69) & 
-- (((\FD|Somador|saida[27]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(97),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(104),
	datad => \FD|Somador|saida[27]~50_combout\,
	combout => \FD|mux_jump|saida[27]~81_combout\);

-- Location: FF_X69_Y3_N31
\FD|PC|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[27]~81_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(27));

-- Location: LCCOMB_X72_Y3_N22
\FD|REG_P3|data_s[98]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[98]~82_combout\ = (\FD|REG_P2|data_s\(60) & ((\FD|REG_P2|data_s\(41) & (\FD|REG_P3|data_s[97]~81\ & VCC)) # (!\FD|REG_P2|data_s\(41) & (!\FD|REG_P3|data_s[97]~81\)))) # (!\FD|REG_P2|data_s\(60) & ((\FD|REG_P2|data_s\(41) & 
-- (!\FD|REG_P3|data_s[97]~81\)) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P3|data_s[97]~81\) # (GND)))))
-- \FD|REG_P3|data_s[98]~83\ = CARRY((\FD|REG_P2|data_s\(60) & (!\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[97]~81\)) # (!\FD|REG_P2|data_s\(60) & ((!\FD|REG_P3|data_s[97]~81\) # (!\FD|REG_P2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(60),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[97]~81\,
	combout => \FD|REG_P3|data_s[98]~82_combout\,
	cout => \FD|REG_P3|data_s[98]~83\);

-- Location: FF_X72_Y3_N23
\FD|REG_P3|data_s[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[98]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(98));

-- Location: LCCOMB_X68_Y3_N22
\FD|Somador|saida[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[28]~52_combout\ = (\FD|PC|data_s\(28) & (\FD|Somador|saida[27]~51\ $ (GND))) # (!\FD|PC|data_s\(28) & (!\FD|Somador|saida[27]~51\ & VCC))
-- \FD|Somador|saida[28]~53\ = CARRY((\FD|PC|data_s\(28) & !\FD|Somador|saida[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(28),
	datad => VCC,
	cin => \FD|Somador|saida[27]~51\,
	combout => \FD|Somador|saida[28]~52_combout\,
	cout => \FD|Somador|saida[28]~53\);

-- Location: LCCOMB_X69_Y3_N10
\FD|sel_mux_beq\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|sel_mux_beq~combout\ = (\FD|REG_P3|data_s\(104) & \FD|REG_P3|data_s\(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P3|data_s\(104),
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|sel_mux_beq~combout\);

-- Location: LCCOMB_X69_Y3_N16
\FD|mux_jump|saida[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[28]~52_combout\ = (\FD|REG_P2|data_s\(141) & (((\FD|Somador|saida[28]~52_combout\)))) # (!\FD|REG_P2|data_s\(141) & ((\FD|sel_mux_beq~combout\ & (\FD|REG_P3|data_s\(98))) # (!\FD|sel_mux_beq~combout\ & 
-- ((\FD|Somador|saida[28]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(98),
	datab => \FD|Somador|saida[28]~52_combout\,
	datac => \FD|REG_P2|data_s\(141),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|mux_jump|saida[28]~52_combout\);

-- Location: FF_X69_Y3_N17
\FD|PC|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[28]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(28));

-- Location: LCCOMB_X68_Y3_N24
\FD|Somador|saida[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[29]~54_combout\ = (\FD|PC|data_s\(29) & (!\FD|Somador|saida[28]~53\)) # (!\FD|PC|data_s\(29) & ((\FD|Somador|saida[28]~53\) # (GND)))
-- \FD|Somador|saida[29]~55\ = CARRY((!\FD|Somador|saida[28]~53\) # (!\FD|PC|data_s\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(29),
	datad => VCC,
	cin => \FD|Somador|saida[28]~53\,
	combout => \FD|Somador|saida[29]~54_combout\,
	cout => \FD|Somador|saida[29]~55\);

-- Location: LCCOMB_X72_Y3_N24
\FD|REG_P3|data_s[99]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[99]~84_combout\ = ((\FD|REG_P2|data_s\(41) $ (\FD|REG_P2|data_s\(61) $ (!\FD|REG_P3|data_s[98]~83\)))) # (GND)
-- \FD|REG_P3|data_s[99]~85\ = CARRY((\FD|REG_P2|data_s\(41) & ((\FD|REG_P2|data_s\(61)) # (!\FD|REG_P3|data_s[98]~83\))) # (!\FD|REG_P2|data_s\(41) & (\FD|REG_P2|data_s\(61) & !\FD|REG_P3|data_s[98]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datab => \FD|REG_P2|data_s\(61),
	datad => VCC,
	cin => \FD|REG_P3|data_s[98]~83\,
	combout => \FD|REG_P3|data_s[99]~84_combout\,
	cout => \FD|REG_P3|data_s[99]~85\);

-- Location: FF_X72_Y3_N25
\FD|REG_P3|data_s[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[99]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(99));

-- Location: LCCOMB_X69_Y3_N6
\FD|mux_jump|saida[29]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[29]~53_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_P2|data_s\(141) & (\FD|Somador|saida[29]~54_combout\)) # (!\FD|REG_P2|data_s\(141) & ((\FD|REG_P3|data_s\(99)))))) # (!\FD|sel_mux_beq~combout\ & 
-- (\FD|Somador|saida[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|Somador|saida[29]~54_combout\,
	datac => \FD|REG_P2|data_s\(141),
	datad => \FD|REG_P3|data_s\(99),
	combout => \FD|mux_jump|saida[29]~53_combout\);

-- Location: FF_X69_Y3_N7
\FD|PC|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[29]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(29));

-- Location: LCCOMB_X72_Y3_N26
\FD|REG_P3|data_s[100]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[100]~86_combout\ = (\FD|REG_P2|data_s\(62) & ((\FD|REG_P2|data_s\(41) & (\FD|REG_P3|data_s[99]~85\ & VCC)) # (!\FD|REG_P2|data_s\(41) & (!\FD|REG_P3|data_s[99]~85\)))) # (!\FD|REG_P2|data_s\(62) & ((\FD|REG_P2|data_s\(41) & 
-- (!\FD|REG_P3|data_s[99]~85\)) # (!\FD|REG_P2|data_s\(41) & ((\FD|REG_P3|data_s[99]~85\) # (GND)))))
-- \FD|REG_P3|data_s[100]~87\ = CARRY((\FD|REG_P2|data_s\(62) & (!\FD|REG_P2|data_s\(41) & !\FD|REG_P3|data_s[99]~85\)) # (!\FD|REG_P2|data_s\(62) & ((!\FD|REG_P3|data_s[99]~85\) # (!\FD|REG_P2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(62),
	datab => \FD|REG_P2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_P3|data_s[99]~85\,
	combout => \FD|REG_P3|data_s[100]~86_combout\,
	cout => \FD|REG_P3|data_s[100]~87\);

-- Location: FF_X72_Y3_N27
\FD|REG_P3|data_s[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[100]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(100));

-- Location: LCCOMB_X68_Y3_N26
\FD|Somador|saida[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[30]~56_combout\ = (\FD|PC|data_s\(30) & (\FD|Somador|saida[29]~55\ $ (GND))) # (!\FD|PC|data_s\(30) & (!\FD|Somador|saida[29]~55\ & VCC))
-- \FD|Somador|saida[30]~57\ = CARRY((\FD|PC|data_s\(30) & !\FD|Somador|saida[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(30),
	datad => VCC,
	cin => \FD|Somador|saida[29]~55\,
	combout => \FD|Somador|saida[30]~56_combout\,
	cout => \FD|Somador|saida[30]~57\);

-- Location: LCCOMB_X69_Y3_N12
\FD|mux_jump|saida[30]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[30]~54_combout\ = (\FD|REG_P2|data_s\(141) & (((\FD|Somador|saida[30]~56_combout\)))) # (!\FD|REG_P2|data_s\(141) & ((\FD|sel_mux_beq~combout\ & (\FD|REG_P3|data_s\(100))) # (!\FD|sel_mux_beq~combout\ & 
-- ((\FD|Somador|saida[30]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(141),
	datab => \FD|REG_P3|data_s\(100),
	datac => \FD|Somador|saida[30]~56_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|mux_jump|saida[30]~54_combout\);

-- Location: FF_X69_Y3_N13
\FD|PC|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[30]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(30));

-- Location: LCCOMB_X72_Y3_N28
\FD|REG_P3|data_s[101]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[101]~88_combout\ = \FD|REG_P2|data_s\(41) $ (\FD|REG_P3|data_s[100]~87\ $ (!\FD|REG_P2|data_s\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(41),
	datad => \FD|REG_P2|data_s\(63),
	cin => \FD|REG_P3|data_s[100]~87\,
	combout => \FD|REG_P3|data_s[101]~88_combout\);

-- Location: FF_X72_Y3_N29
\FD|REG_P3|data_s[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|REG_P3|data_s[101]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(101));

-- Location: LCCOMB_X68_Y3_N28
\FD|Somador|saida[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[31]~58_combout\ = \FD|PC|data_s\(31) $ (\FD|Somador|saida[30]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(31),
	cin => \FD|Somador|saida[30]~57\,
	combout => \FD|Somador|saida[31]~58_combout\);

-- Location: LCCOMB_X68_Y3_N30
\FD|mux_jump|saida[31]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[31]~55_combout\ = (\FD|REG_P2|data_s\(141) & (((\FD|Somador|saida[31]~58_combout\)))) # (!\FD|REG_P2|data_s\(141) & ((\FD|sel_mux_beq~combout\ & (\FD|REG_P3|data_s\(101))) # (!\FD|sel_mux_beq~combout\ & 
-- ((\FD|Somador|saida[31]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(101),
	datab => \FD|REG_P2|data_s\(141),
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[31]~58_combout\,
	combout => \FD|mux_jump|saida[31]~55_combout\);

-- Location: FF_X68_Y3_N31
\FD|PC|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|mux_jump|saida[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(31));

-- Location: LCCOMB_X85_Y7_N14
\DISPLAY0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux31~11_combout\ & (\FD|ULA|Mux30~2_combout\ $ (\FD|ULA|Mux29~2_combout\)))) # (!\FD|ULA|Mux28~2_combout\ & (!\FD|ULA|Mux30~2_combout\ & (\FD|ULA|Mux31~11_combout\ $ 
-- (\FD|ULA|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~11_combout\,
	datab => \FD|ULA|Mux30~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux29~2_combout\,
	combout => \DISPLAY0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X85_Y7_N8
\DISPLAY0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux30~2_combout\ & ((\FD|ULA|Mux31~11_combout\ & (\FD|ULA|Mux28~2_combout\)) # (!\FD|ULA|Mux31~11_combout\ & ((\FD|ULA|Mux29~2_combout\))))) # (!\FD|ULA|Mux30~2_combout\ & (\FD|ULA|Mux29~2_combout\ & 
-- (\FD|ULA|Mux31~11_combout\ $ (\FD|ULA|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~11_combout\,
	datab => \FD|ULA|Mux30~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux29~2_combout\,
	combout => \DISPLAY0|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X85_Y7_N22
\DISPLAY0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux29~2_combout\ & ((\FD|ULA|Mux30~2_combout\) # (!\FD|ULA|Mux31~11_combout\)))) # (!\FD|ULA|Mux28~2_combout\ & (!\FD|ULA|Mux31~11_combout\ & (\FD|ULA|Mux30~2_combout\ & 
-- !\FD|ULA|Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~11_combout\,
	datab => \FD|ULA|Mux30~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux29~2_combout\,
	combout => \DISPLAY0|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X85_Y7_N28
\DISPLAY0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux30~2_combout\ & ((\FD|ULA|Mux31~11_combout\ & ((\FD|ULA|Mux29~2_combout\))) # (!\FD|ULA|Mux31~11_combout\ & (\FD|ULA|Mux28~2_combout\ & !\FD|ULA|Mux29~2_combout\)))) # (!\FD|ULA|Mux30~2_combout\ & 
-- (!\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux31~11_combout\ $ (\FD|ULA|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~11_combout\,
	datab => \FD|ULA|Mux30~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux29~2_combout\,
	combout => \DISPLAY0|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X85_Y7_N2
\DISPLAY0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux30~2_combout\ & (\FD|ULA|Mux31~11_combout\ & (!\FD|ULA|Mux28~2_combout\))) # (!\FD|ULA|Mux30~2_combout\ & ((\FD|ULA|Mux29~2_combout\ & ((!\FD|ULA|Mux28~2_combout\))) # (!\FD|ULA|Mux29~2_combout\ & 
-- (\FD|ULA|Mux31~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~11_combout\,
	datab => \FD|ULA|Mux30~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux29~2_combout\,
	combout => \DISPLAY0|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X85_Y7_N20
\DISPLAY0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux31~11_combout\ & (\FD|ULA|Mux28~2_combout\ $ (((\FD|ULA|Mux30~2_combout\) # (!\FD|ULA|Mux29~2_combout\))))) # (!\FD|ULA|Mux31~11_combout\ & (\FD|ULA|Mux30~2_combout\ & (!\FD|ULA|Mux28~2_combout\ & 
-- !\FD|ULA|Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~11_combout\,
	datab => \FD|ULA|Mux30~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux29~2_combout\,
	combout => \DISPLAY0|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X85_Y7_N26
\DISPLAY0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux31~11_combout\ & (!\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux30~2_combout\ $ (!\FD|ULA|Mux29~2_combout\)))) # (!\FD|ULA|Mux31~11_combout\ & (!\FD|ULA|Mux30~2_combout\ & (\FD|ULA|Mux28~2_combout\ $ 
-- (!\FD|ULA|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~11_combout\,
	datab => \FD|ULA|Mux30~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux29~2_combout\,
	combout => \DISPLAY0|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X86_Y7_N4
\DISPLAY1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux25~2_combout\ & (!\FD|ULA|Mux26~2_combout\ & (\FD|ULA|Mux27~2_combout\ $ (!\FD|ULA|Mux24~2_combout\)))) # (!\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux26~2_combout\ $ 
-- (!\FD|ULA|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~2_combout\,
	datab => \FD|ULA|Mux25~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \DISPLAY1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X86_Y7_N14
\DISPLAY1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux26~2_combout\ & ((\FD|ULA|Mux27~2_combout\ & ((\FD|ULA|Mux24~2_combout\))) # (!\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux25~2_combout\)))) # (!\FD|ULA|Mux26~2_combout\ & (\FD|ULA|Mux25~2_combout\ & 
-- (\FD|ULA|Mux27~2_combout\ $ (\FD|ULA|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~2_combout\,
	datab => \FD|ULA|Mux25~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \DISPLAY1|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X86_Y7_N8
\DISPLAY1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux24~2_combout\ & ((\FD|ULA|Mux26~2_combout\) # (!\FD|ULA|Mux27~2_combout\)))) # (!\FD|ULA|Mux25~2_combout\ & (!\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux26~2_combout\ & 
-- !\FD|ULA|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~2_combout\,
	datab => \FD|ULA|Mux25~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \DISPLAY1|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X86_Y7_N6
\DISPLAY1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux26~2_combout\ & ((\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux25~2_combout\)) # (!\FD|ULA|Mux27~2_combout\ & (!\FD|ULA|Mux25~2_combout\ & \FD|ULA|Mux24~2_combout\)))) # (!\FD|ULA|Mux26~2_combout\ & 
-- (!\FD|ULA|Mux24~2_combout\ & (\FD|ULA|Mux27~2_combout\ $ (\FD|ULA|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~2_combout\,
	datab => \FD|ULA|Mux25~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \DISPLAY1|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X86_Y7_N12
\DISPLAY1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux26~2_combout\ & (\FD|ULA|Mux27~2_combout\ & ((!\FD|ULA|Mux24~2_combout\)))) # (!\FD|ULA|Mux26~2_combout\ & ((\FD|ULA|Mux25~2_combout\ & ((!\FD|ULA|Mux24~2_combout\))) # (!\FD|ULA|Mux25~2_combout\ & 
-- (\FD|ULA|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~2_combout\,
	datab => \FD|ULA|Mux25~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \DISPLAY1|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X86_Y7_N30
\DISPLAY1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux24~2_combout\ $ (((\FD|ULA|Mux26~2_combout\) # (!\FD|ULA|Mux25~2_combout\))))) # (!\FD|ULA|Mux27~2_combout\ & (!\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux26~2_combout\ & 
-- !\FD|ULA|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~2_combout\,
	datab => \FD|ULA|Mux25~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \DISPLAY1|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X86_Y7_N24
\DISPLAY1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux27~2_combout\ & (!\FD|ULA|Mux24~2_combout\ & (\FD|ULA|Mux25~2_combout\ $ (!\FD|ULA|Mux26~2_combout\)))) # (!\FD|ULA|Mux27~2_combout\ & (!\FD|ULA|Mux26~2_combout\ & (\FD|ULA|Mux25~2_combout\ $ 
-- (!\FD|ULA|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~2_combout\,
	datab => \FD|ULA|Mux25~2_combout\,
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \DISPLAY1|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X67_Y1_N4
\DISPLAY6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(2) & (!\FD|PC|data_s\(1) & !\FD|PC|data_s\(3))) # (!\FD|PC|data_s\(2) & (\FD|PC|data_s\(1) & \FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(1),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X67_Y1_N30
\DISPLAY6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[1]~1_combout\ = ((!\FD|PC|data_s\(2) & !\FD|PC|data_s\(1))) # (!\FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(1),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X67_Y1_N24
\DISPLAY6|rascSaida7seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg~2_combout\ = (\FD|PC|data_s\(2) & \FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg~2_combout\);

-- Location: LCCOMB_X67_Y1_N26
\DISPLAY6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(2) & ((\FD|PC|data_s\(1)) # (!\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(1),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X67_Y1_N20
\DISPLAY6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(3)) # ((!\FD|PC|data_s\(2) & !\FD|PC|data_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(1),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X67_Y1_N18
\DISPLAY6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[5]~5_combout\ = (\FD|PC|data_s\(1) & !\FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(1),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X67_Y1_N8
\DISPLAY6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(2) & (\FD|PC|data_s\(1) $ (\FD|PC|data_s\(3)))) # (!\FD|PC|data_s\(2) & (!\FD|PC|data_s\(1) & !\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(1),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X67_Y1_N22
\DISPLAY7|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(6) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(7) $ (!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) $ (!\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X67_Y1_N0
\DISPLAY7|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[1]~1_combout\ = (\FD|PC|data_s\(5) & ((\FD|PC|data_s\(4) & ((\FD|PC|data_s\(7)))) # (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(6) & (\FD|PC|data_s\(7) $ (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X67_Y1_N10
\DISPLAY7|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[2]~2_combout\ = (\FD|PC|data_s\(6) & (\FD|PC|data_s\(7) & ((\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X67_Y1_N28
\DISPLAY7|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(5) & ((\FD|PC|data_s\(6) & ((\FD|PC|data_s\(4)))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(7) & !\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(6) $ 
-- (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X68_Y4_N0
\DISPLAY7|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(5) & (((!\FD|PC|data_s\(7) & \FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(5) & ((\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7))) # (!\FD|PC|data_s\(6) & ((\FD|PC|data_s\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X67_Y1_N14
\DISPLAY7|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[5]~5_combout\ = (\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & ((\FD|PC|data_s\(4)) # (!\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(6) $ (!\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X67_Y1_N12
\DISPLAY7|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(5) $ (!\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(6) $ (!\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[6]~6_combout\);

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

ww_saidaUla(0) <= \saidaUla[0]~output_o\;

ww_saidaUla(1) <= \saidaUla[1]~output_o\;

ww_saidaUla(2) <= \saidaUla[2]~output_o\;

ww_saidaUla(3) <= \saidaUla[3]~output_o\;

ww_saidaUla(4) <= \saidaUla[4]~output_o\;

ww_saidaUla(5) <= \saidaUla[5]~output_o\;

ww_saidaUla(6) <= \saidaUla[6]~output_o\;

ww_saidaUla(7) <= \saidaUla[7]~output_o\;

ww_saidaUla(8) <= \saidaUla[8]~output_o\;

ww_saidaUla(9) <= \saidaUla[9]~output_o\;

ww_saidaUla(10) <= \saidaUla[10]~output_o\;

ww_saidaUla(11) <= \saidaUla[11]~output_o\;

ww_saidaUla(12) <= \saidaUla[12]~output_o\;

ww_saidaUla(13) <= \saidaUla[13]~output_o\;

ww_saidaUla(14) <= \saidaUla[14]~output_o\;

ww_saidaUla(15) <= \saidaUla[15]~output_o\;

ww_saidaUla(16) <= \saidaUla[16]~output_o\;

ww_saidaUla(17) <= \saidaUla[17]~output_o\;

ww_saidaUla(18) <= \saidaUla[18]~output_o\;

ww_saidaUla(19) <= \saidaUla[19]~output_o\;

ww_saidaUla(20) <= \saidaUla[20]~output_o\;

ww_saidaUla(21) <= \saidaUla[21]~output_o\;

ww_saidaUla(22) <= \saidaUla[22]~output_o\;

ww_saidaUla(23) <= \saidaUla[23]~output_o\;

ww_saidaUla(24) <= \saidaUla[24]~output_o\;

ww_saidaUla(25) <= \saidaUla[25]~output_o\;

ww_saidaUla(26) <= \saidaUla[26]~output_o\;

ww_saidaUla(27) <= \saidaUla[27]~output_o\;

ww_saidaUla(28) <= \saidaUla[28]~output_o\;

ww_saidaUla(29) <= \saidaUla[29]~output_o\;

ww_saidaUla(30) <= \saidaUla[30]~output_o\;

ww_saidaUla(31) <= \saidaUla[31]~output_o\;

ww_saidaPC(0) <= \saidaPC[0]~output_o\;

ww_saidaPC(1) <= \saidaPC[1]~output_o\;

ww_saidaPC(2) <= \saidaPC[2]~output_o\;

ww_saidaPC(3) <= \saidaPC[3]~output_o\;

ww_saidaPC(4) <= \saidaPC[4]~output_o\;

ww_saidaPC(5) <= \saidaPC[5]~output_o\;

ww_saidaPC(6) <= \saidaPC[6]~output_o\;

ww_saidaPC(7) <= \saidaPC[7]~output_o\;

ww_saidaPC(8) <= \saidaPC[8]~output_o\;

ww_saidaPC(9) <= \saidaPC[9]~output_o\;

ww_saidaPC(10) <= \saidaPC[10]~output_o\;

ww_saidaPC(11) <= \saidaPC[11]~output_o\;

ww_saidaPC(12) <= \saidaPC[12]~output_o\;

ww_saidaPC(13) <= \saidaPC[13]~output_o\;

ww_saidaPC(14) <= \saidaPC[14]~output_o\;

ww_saidaPC(15) <= \saidaPC[15]~output_o\;

ww_saidaPC(16) <= \saidaPC[16]~output_o\;

ww_saidaPC(17) <= \saidaPC[17]~output_o\;

ww_saidaPC(18) <= \saidaPC[18]~output_o\;

ww_saidaPC(19) <= \saidaPC[19]~output_o\;

ww_saidaPC(20) <= \saidaPC[20]~output_o\;

ww_saidaPC(21) <= \saidaPC[21]~output_o\;

ww_saidaPC(22) <= \saidaPC[22]~output_o\;

ww_saidaPC(23) <= \saidaPC[23]~output_o\;

ww_saidaPC(24) <= \saidaPC[24]~output_o\;

ww_saidaPC(25) <= \saidaPC[25]~output_o\;

ww_saidaPC(26) <= \saidaPC[26]~output_o\;

ww_saidaPC(27) <= \saidaPC[27]~output_o\;

ww_saidaPC(28) <= \saidaPC[28]~output_o\;

ww_saidaPC(29) <= \saidaPC[29]~output_o\;

ww_saidaPC(30) <= \saidaPC[30]~output_o\;

ww_saidaPC(31) <= \saidaPC[31]~output_o\;

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
END structure;


