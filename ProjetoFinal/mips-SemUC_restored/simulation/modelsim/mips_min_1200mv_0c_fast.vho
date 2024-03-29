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

-- DATE "11/29/2019 18:32:31"

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
	CLOCK_50 : IN std_logic;
	KEY1 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END mips;

-- Design Ports Information
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
-- KEY1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \BTN_CLK|saida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \BTN_CLK|saidaQ~0_combout\ : std_logic;
SIGNAL \BTN_CLK|saidaQ~q\ : std_logic;
SIGNAL \BTN_CLK|saida~combout\ : std_logic;
SIGNAL \BTN_CLK|saida~clkctrl_outclk\ : std_logic;
SIGNAL \FD|Somador|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~1\ : std_logic;
SIGNAL \FD|Somador|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|REG_ID_EX|data_s[109]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[3]~3\ : std_logic;
SIGNAL \FD|Somador|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|REG_ID_EX|data_s[110]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[4]~5\ : std_logic;
SIGNAL \FD|Somador|saida[5]~7\ : std_logic;
SIGNAL \FD|Somador|saida[6]~8_combout\ : std_logic;
SIGNAL \FD|REG_ID_EX|data_s[112]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~26_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~27_combout\ : std_logic;
SIGNAL \FD|Somador|saida[5]~6_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[72]~7\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[73]~9\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[74]~11\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[75]~13\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[76]~14_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~19_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~20_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[1]~3_combout\ : std_logic;
SIGNAL \UC|Equal4~0_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[105]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_MEM_WB|data_s[69]~feeder_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[2]~0_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[10]~2_combout\ : std_logic;
SIGNAL \FD|REG_ID_EX|data_s[141]~feeder_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[9]~1_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~0_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~1_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~2_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~3_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~0_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[6]~5_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[102]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \UC|Equal2~0_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[2]~2_combout\ : std_logic;
SIGNAL \FD|REG_MEM_WB|data_s[2]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[1]~1_combout\ : std_logic;
SIGNAL \FD|REG_MEM_WB|data_s[1]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~14_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~29_combout\ : std_logic;
SIGNAL \FD|REG_ID_EX|data_s[0]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~16_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~31_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[3]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~39_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~2_combout\ : std_logic;
SIGNAL \FD|BR|Equal1~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~6_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~21_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~32_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~58_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~60_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~54_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[11]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[13]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~52_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~44_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~40_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[7]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[8]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[59]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[67]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~13_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~11_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[36]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[30]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~41_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~10_combout\ : std_logic;
SIGNAL \FD|BR|Equal0~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[69]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~12_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~13_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[67]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~15_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[28]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[65]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~17_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[27]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~19_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[26]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~21_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[25]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~23_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[24]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~24_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~25_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[23]~12_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[22]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~26_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~29_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[21]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~32_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~33_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[19]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~32_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~33_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~34_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~35_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[18]~17_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[17]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~36_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~37_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~39_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[16]~19_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[15]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~41_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[14]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~42_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~43_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~44_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~45_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[12]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~46_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~47_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~48_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~49_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[11]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~50_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~51_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[10]~25_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[9]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~54_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[7]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~58_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~59_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[5]~30_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[4]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~4_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~1_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[1]~0_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[0]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~2_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~3_combout\ : std_logic;
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
SIGNAL \FD|ULA|Add1~60_combout\ : std_logic;
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
SIGNAL \FD|ULA|soma[30]~60_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[30]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~15_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[33]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|ULA|Add1~58_combout\ : std_logic;
SIGNAL \FD|ULA|soma[29]~58_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~2_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[49]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[65]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~17_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[32]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|ULA|Mux3~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~56_combout\ : std_logic;
SIGNAL \FD|ULA|soma[28]~56_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[28]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~19_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[31]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|ULA|Add1~54_combout\ : std_logic;
SIGNAL \FD|ULA|soma[27]~54_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[27]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~20_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~21_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[30]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|ULA|soma[26]~52_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~52_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[26]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~23_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[29]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|ULA|Mux6~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~50_combout\ : std_logic;
SIGNAL \FD|ULA|soma[25]~50_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[25]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~25_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[28]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|ULA|Add1~48_combout\ : std_logic;
SIGNAL \FD|ULA|soma[24]~48_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[24]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~27_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|ULA|Mux8~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~46_combout\ : std_logic;
SIGNAL \FD|ULA|soma[23]~46_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[23]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~1_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[6]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|ULA|Add1~44_combout\ : std_logic;
SIGNAL \FD|ULA|soma[22]~44_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[22]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~34_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~35_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|ULA|Mux10~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~42_combout\ : std_logic;
SIGNAL \FD|ULA|soma[21]~42_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[21]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~31_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[20]~15_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~40_combout\ : std_logic;
SIGNAL \FD|ULA|soma[20]~40_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~4_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[20]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~36_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[45]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~37_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[22]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|ULA|soma[19]~38_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[19]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~38_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~39_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[21]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|ULA|Add1~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[18]~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[18]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~41_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[20]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|ULA|soma[17]~34_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~34_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[17]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~42_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~43_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|ULA|Add1~32_combout\ : std_logic;
SIGNAL \FD|ULA|soma[16]~32_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[16]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~45_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|ULA|Add1~30_combout\ : std_logic;
SIGNAL \FD|ULA|soma[15]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[15]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~46_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~47_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[17]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|ULA|soma[14]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[14]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~48_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~49_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|ULA|Mux18~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~26_combout\ : std_logic;
SIGNAL \FD|ULA|soma[13]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~50_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~51_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[15]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|ULA|Mux19~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[12]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~24_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[12]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~53_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[14]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|ULA|Mux20~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~5_combout\ : std_logic;
SIGNAL \FD|ULA|soma[11]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~22_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[11]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~56_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~57_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|ULA|Mux21~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~20_combout\ : std_logic;
SIGNAL \FD|ULA|soma[10]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~4_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[10]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~52_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~53_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~18_combout\ : std_logic;
SIGNAL \FD|ULA|soma[9]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~4_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[9]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[8]~27_combout\ : std_logic;
SIGNAL \FD|ULA|soma[8]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~16_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~4_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[8]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~61_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[10]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[7]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~56_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~57_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~14_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[7]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~3_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[44]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[6]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~59_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[6]~29_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~12_combout\ : std_logic;
SIGNAL \FD|ULA|soma[6]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[5]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~62_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~63_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[4]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~60_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~61_combout\ : std_logic;
SIGNAL \FD|ULA|soma[5]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~3_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[42]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~62_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~63_combout\ : std_logic;
SIGNAL \FD|ULA|soma[4]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~3_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[41]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[2]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~7_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[2]~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~4_combout\ : std_logic;
SIGNAL \FD|ULA|soma[2]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~3_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[39]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|ULA|Add1~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~7_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~6_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[1]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \FD|ULA|Mux31~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~3_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~5_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[0]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~8_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~9_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[31]~4_combout\ : std_logic;
SIGNAL \FD|ULA|soma[30]~61\ : std_logic;
SIGNAL \FD|ULA|soma[31]~62_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~5_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[31]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~8_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~9_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~61\ : std_logic;
SIGNAL \FD|ULA|Add1~62_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~5_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~8_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~7_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~6_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~9_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~6_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~10_combout\ : std_logic;
SIGNAL \FD|sel_mux_beq~combout\ : std_logic;
SIGNAL \FD|PC|data_s[6]~4_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~25_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[74]~10_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~28_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[73]~8_combout\ : std_logic;
SIGNAL \FD|PC|data_s[3]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~24_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~33_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[75]~12_combout\ : std_logic;
SIGNAL \FD|PC|data_s[5]~5_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~22_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~23_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[72]~6_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[72]~feeder_combout\ : std_logic;
SIGNAL \FD|PC|data_s[2]~1_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~15_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~30_combout\ : std_logic;
SIGNAL \FD|REG_ID_EX|data_s[1]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[6]~9\ : std_logic;
SIGNAL \FD|Somador|saida[7]~10_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[76]~15\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[77]~16_combout\ : std_logic;
SIGNAL \FD|PC|data_s[7]~3_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~17_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~18_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[7]~4_combout\ : std_logic;
SIGNAL \FD|REG_MEM_WB|data_s[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~5_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[3]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~3_combout\ : std_logic;
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
SIGNAL \FD|REG_IF_ID|data_s[32]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_ID_EX|data_s[106]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_EX_MEM|data_s[70]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[0]~0_combout\ : std_logic;
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
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|REG_EX_MEM|data_s\ : std_logic_vector(107 DOWNTO 0);
SIGNAL \FD|REG_MEM_WB|data_s\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \FD|REG_IF_ID|data_s\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \FD|REG_ID_EX|data_s\ : std_logic_vector(148 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|BR|bancoReg_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \DISPLAY6|ALT_INV_rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY6|ALT_INV_rascSaida7seg[1]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY1 <= KEY1;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~4_combout\ & \FD|mux_Ula_Memoria|saida[30]~5_combout\ & \FD|mux_Ula_Memoria|saida[29]~6_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~7_combout\ & \FD|mux_Ula_Memoria|saida[27]~8_combout\ & \FD|mux_Ula_Memoria|saida[26]~9_combout\ & \FD|mux_Ula_Memoria|saida[25]~10_combout\ & \FD|mux_Ula_Memoria|saida[24]~11_combout\ & 
\FD|mux_Ula_Memoria|saida[23]~12_combout\ & \FD|mux_Ula_Memoria|saida[22]~13_combout\ & \FD|mux_Ula_Memoria|saida[21]~14_combout\ & \FD|mux_Ula_Memoria|saida[20]~15_combout\ & \FD|mux_Ula_Memoria|saida[19]~16_combout\ & 
\FD|mux_Ula_Memoria|saida[18]~17_combout\ & \FD|mux_Ula_Memoria|saida[17]~18_combout\ & \FD|mux_Ula_Memoria|saida[16]~19_combout\ & \FD|mux_Ula_Memoria|saida[15]~20_combout\ & \FD|mux_Ula_Memoria|saida[14]~21_combout\ & 
\FD|mux_Ula_Memoria|saida[13]~22_combout\ & \FD|mux_Ula_Memoria|saida[12]~23_combout\ & \FD|mux_Ula_Memoria|saida[11]~24_combout\ & \FD|mux_Ula_Memoria|saida[10]~25_combout\ & \FD|mux_Ula_Memoria|saida[9]~26_combout\ & 
\FD|mux_Ula_Memoria|saida[8]~27_combout\ & \FD|mux_Ula_Memoria|saida[7]~28_combout\ & \FD|mux_Ula_Memoria|saida[6]~29_combout\ & \FD|mux_Ula_Memoria|saida[5]~30_combout\ & \FD|mux_Ula_Memoria|saida[4]~31_combout\ & \FD|mux_Ula_Memoria|saida[3]~2_combout\
& \FD|mux_Ula_Memoria|saida[2]~3_combout\ & \FD|mux_Ula_Memoria|saida[1]~0_combout\ & \FD|mux_Ula_Memoria|saida[0]~1_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_MEM_WB|data_s\(2) & \FD|REG_MEM_WB|data_s\(3) & \FD|REG_MEM_WB|data_s\(2) & \FD|REG_MEM_WB|data_s\(1) & \FD|REG_MEM_WB|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~31_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~29_combout\);

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

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~4_combout\ & \FD|mux_Ula_Memoria|saida[30]~5_combout\ & \FD|mux_Ula_Memoria|saida[29]~6_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~7_combout\ & \FD|mux_Ula_Memoria|saida[27]~8_combout\ & \FD|mux_Ula_Memoria|saida[26]~9_combout\ & \FD|mux_Ula_Memoria|saida[25]~10_combout\ & \FD|mux_Ula_Memoria|saida[24]~11_combout\ & 
\FD|mux_Ula_Memoria|saida[23]~12_combout\ & \FD|mux_Ula_Memoria|saida[22]~13_combout\ & \FD|mux_Ula_Memoria|saida[21]~14_combout\ & \FD|mux_Ula_Memoria|saida[20]~15_combout\ & \FD|mux_Ula_Memoria|saida[19]~16_combout\ & 
\FD|mux_Ula_Memoria|saida[18]~17_combout\ & \FD|mux_Ula_Memoria|saida[17]~18_combout\ & \FD|mux_Ula_Memoria|saida[16]~19_combout\ & \FD|mux_Ula_Memoria|saida[15]~20_combout\ & \FD|mux_Ula_Memoria|saida[14]~21_combout\ & 
\FD|mux_Ula_Memoria|saida[13]~22_combout\ & \FD|mux_Ula_Memoria|saida[12]~23_combout\ & \FD|mux_Ula_Memoria|saida[11]~24_combout\ & \FD|mux_Ula_Memoria|saida[10]~25_combout\ & \FD|mux_Ula_Memoria|saida[9]~26_combout\ & 
\FD|mux_Ula_Memoria|saida[8]~27_combout\ & \FD|mux_Ula_Memoria|saida[7]~28_combout\ & \FD|mux_Ula_Memoria|saida[6]~29_combout\ & \FD|mux_Ula_Memoria|saida[5]~30_combout\ & \FD|mux_Ula_Memoria|saida[4]~31_combout\ & \FD|mux_Ula_Memoria|saida[3]~2_combout\
& \FD|mux_Ula_Memoria|saida[2]~3_combout\ & \FD|mux_Ula_Memoria|saida[1]~0_combout\ & \FD|mux_Ula_Memoria|saida[0]~1_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_MEM_WB|data_s\(2) & \FD|REG_MEM_WB|data_s\(3) & \FD|REG_MEM_WB|data_s\(2) & \FD|REG_MEM_WB|data_s\(1) & \FD|REG_MEM_WB|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~32_combout\);

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

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|REG_EX_MEM|data_s\(36) & \FD|REG_EX_MEM|data_s\(35) & \FD|REG_EX_MEM|data_s\(34) & \FD|REG_EX_MEM|data_s\(33) & \FD|REG_EX_MEM|data_s\(32) & 
\FD|REG_EX_MEM|data_s\(31) & \FD|REG_EX_MEM|data_s\(30) & \FD|REG_EX_MEM|data_s\(29) & \FD|REG_EX_MEM|data_s\(28) & \FD|REG_EX_MEM|data_s\(27) & \FD|REG_EX_MEM|data_s\(8) & \FD|REG_EX_MEM|data_s\(7) & \FD|REG_EX_MEM|data_s\(6) & 
\FD|REG_EX_MEM|data_s\(5));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_EX_MEM|data_s\(44) & \FD|REG_EX_MEM|data_s\(43) & \FD|REG_EX_MEM|data_s\(42) & \FD|REG_EX_MEM|data_s\(41) & \FD|REG_EX_MEM|data_s\(40) & \FD|REG_EX_MEM|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
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

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\FD|REG_EX_MEM|data_s\(26) & \FD|REG_EX_MEM|data_s\(25) & \FD|REG_EX_MEM|data_s\(24) & \FD|REG_EX_MEM|data_s\(23) & \FD|REG_EX_MEM|data_s\(22) & \FD|REG_EX_MEM|data_s\(21) & 
\FD|REG_EX_MEM|data_s\(20) & \FD|REG_EX_MEM|data_s\(19) & \FD|REG_EX_MEM|data_s\(18) & \FD|REG_EX_MEM|data_s\(17) & \FD|REG_EX_MEM|data_s\(16) & \FD|REG_EX_MEM|data_s\(15) & \FD|REG_EX_MEM|data_s\(14) & \FD|REG_EX_MEM|data_s\(13) & 
\FD|REG_EX_MEM|data_s\(12) & \FD|REG_EX_MEM|data_s\(11) & \FD|REG_EX_MEM|data_s\(10) & \FD|REG_EX_MEM|data_s\(9));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\FD|REG_EX_MEM|data_s\(44) & \FD|REG_EX_MEM|data_s\(43) & \FD|REG_EX_MEM|data_s\(42) & \FD|REG_EX_MEM|data_s\(41) & \FD|REG_EX_MEM|data_s\(40) & \FD|REG_EX_MEM|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(4);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(5);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(6);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(7);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(8);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(9);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(10);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(11);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(12);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(13);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(14);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(15);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(16);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(17);

\BTN_CLK|saida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BTN_CLK|saida~combout\);
\DISPLAY6|ALT_INV_rascSaida7seg[4]~4_combout\ <= NOT \DISPLAY6|rascSaida7seg[4]~4_combout\;
\DISPLAY6|ALT_INV_rascSaida7seg[1]~1_combout\ <= NOT \DISPLAY6|rascSaida7seg[1]~1_combout\;
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

-- Location: IOIBUF_X115_Y53_N15
\KEY1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

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

-- Location: LCCOMB_X1_Y36_N18
\BTN_CLK|saidaQ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|saidaQ~0_combout\ = !\KEY1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	combout => \BTN_CLK|saidaQ~0_combout\);

-- Location: FF_X1_Y36_N19
\BTN_CLK|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BTN_CLK|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BTN_CLK|saidaQ~q\);

-- Location: LCCOMB_X1_Y36_N14
\BTN_CLK|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \BTN_CLK|saida~combout\ = LCELL((\KEY1~input_o\ & \BTN_CLK|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1~input_o\,
	datad => \BTN_CLK|saidaQ~q\,
	combout => \BTN_CLK|saida~combout\);

-- Location: CLKCTRL_G1
\BTN_CLK|saida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BTN_CLK|saida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BTN_CLK|saida~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y38_N12
\FD|Somador|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[2]~0_combout\ = \FD|PC|data_s\(2) $ (VCC)
-- \FD|Somador|saida[2]~1\ = CARRY(\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datad => VCC,
	combout => \FD|Somador|saida[2]~0_combout\,
	cout => \FD|Somador|saida[2]~1\);

-- Location: FF_X55_Y38_N13
\FD|REG_IF_ID|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(34));

-- Location: FF_X55_Y39_N21
\FD|REG_ID_EX|data_s[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_IF_ID|data_s\(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(108));

-- Location: LCCOMB_X55_Y38_N14
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

-- Location: FF_X55_Y38_N15
\FD|REG_IF_ID|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(35));

-- Location: LCCOMB_X55_Y39_N0
\FD|REG_ID_EX|data_s[109]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_ID_EX|data_s[109]~feeder_combout\ = \FD|REG_IF_ID|data_s\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_IF_ID|data_s\(35),
	combout => \FD|REG_ID_EX|data_s[109]~feeder_combout\);

-- Location: FF_X55_Y39_N1
\FD|REG_ID_EX|data_s[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_ID_EX|data_s[109]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(109));

-- Location: LCCOMB_X55_Y38_N16
\FD|Somador|saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[4]~4_combout\ = (\FD|PC|data_s\(4) & (\FD|Somador|saida[3]~3\ $ (GND))) # (!\FD|PC|data_s\(4) & (!\FD|Somador|saida[3]~3\ & VCC))
-- \FD|Somador|saida[4]~5\ = CARRY((\FD|PC|data_s\(4) & !\FD|Somador|saida[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(4),
	datad => VCC,
	cin => \FD|Somador|saida[3]~3\,
	combout => \FD|Somador|saida[4]~4_combout\,
	cout => \FD|Somador|saida[4]~5\);

-- Location: FF_X55_Y38_N17
\FD|REG_IF_ID|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(36));

-- Location: LCCOMB_X55_Y39_N10
\FD|REG_ID_EX|data_s[110]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_ID_EX|data_s[110]~feeder_combout\ = \FD|REG_IF_ID|data_s\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_IF_ID|data_s\(36),
	combout => \FD|REG_ID_EX|data_s[110]~feeder_combout\);

-- Location: FF_X55_Y39_N11
\FD|REG_ID_EX|data_s[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_ID_EX|data_s[110]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(110));

-- Location: LCCOMB_X55_Y38_N18
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

-- Location: LCCOMB_X55_Y38_N20
\FD|Somador|saida[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[6]~8_combout\ = (\FD|PC|data_s\(6) & (\FD|Somador|saida[5]~7\ $ (GND))) # (!\FD|PC|data_s\(6) & (!\FD|Somador|saida[5]~7\ & VCC))
-- \FD|Somador|saida[6]~9\ = CARRY((\FD|PC|data_s\(6) & !\FD|Somador|saida[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(6),
	datad => VCC,
	cin => \FD|Somador|saida[5]~7\,
	combout => \FD|Somador|saida[6]~8_combout\,
	cout => \FD|Somador|saida[6]~9\);

-- Location: FF_X55_Y38_N21
\FD|REG_IF_ID|data_s[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(38));

-- Location: LCCOMB_X53_Y38_N10
\FD|REG_ID_EX|data_s[112]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_ID_EX|data_s[112]~feeder_combout\ = \FD|REG_IF_ID|data_s\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_IF_ID|data_s\(38),
	combout => \FD|REG_ID_EX|data_s[112]~feeder_combout\);

-- Location: FF_X53_Y38_N11
\FD|REG_ID_EX|data_s[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_ID_EX|data_s[112]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(112));

-- Location: LCCOMB_X58_Y36_N10
\FD|ROM|memROM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~26_combout\ = (\FD|PC|data_s\(3) & !\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~26_combout\);

-- Location: LCCOMB_X58_Y36_N30
\FD|ROM|memROM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~27_combout\ = (\FD|ROM|memROM~26_combout\ & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) & \FD|ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~26_combout\,
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|ROM|memROM~12_combout\,
	combout => \FD|ROM|memROM~27_combout\);

-- Location: FF_X58_Y36_N31
\FD|REG_IF_ID|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(28));

-- Location: FF_X53_Y40_N1
\FD|REG_ID_EX|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_IF_ID|data_s\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(14));

-- Location: FF_X55_Y38_N19
\FD|REG_IF_ID|data_s[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(37));

-- Location: FF_X55_Y39_N5
\FD|REG_ID_EX|data_s[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_IF_ID|data_s\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(111));

-- Location: LCCOMB_X55_Y39_N20
\FD|REG_EX_MEM|data_s[72]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[72]~6_combout\ = (\FD|REG_ID_EX|data_s\(108) & (\FD|REG_ID_EX|data_s\(10) $ (VCC))) # (!\FD|REG_ID_EX|data_s\(108) & (\FD|REG_ID_EX|data_s\(10) & VCC))
-- \FD|REG_EX_MEM|data_s[72]~7\ = CARRY((\FD|REG_ID_EX|data_s\(108) & \FD|REG_ID_EX|data_s\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(108),
	datab => \FD|REG_ID_EX|data_s\(10),
	datad => VCC,
	combout => \FD|REG_EX_MEM|data_s[72]~6_combout\,
	cout => \FD|REG_EX_MEM|data_s[72]~7\);

-- Location: LCCOMB_X55_Y39_N22
\FD|REG_EX_MEM|data_s[73]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[73]~8_combout\ = (\FD|REG_ID_EX|data_s\(109) & ((\FD|REG_ID_EX|data_s\(11) & (\FD|REG_EX_MEM|data_s[72]~7\ & VCC)) # (!\FD|REG_ID_EX|data_s\(11) & (!\FD|REG_EX_MEM|data_s[72]~7\)))) # (!\FD|REG_ID_EX|data_s\(109) & 
-- ((\FD|REG_ID_EX|data_s\(11) & (!\FD|REG_EX_MEM|data_s[72]~7\)) # (!\FD|REG_ID_EX|data_s\(11) & ((\FD|REG_EX_MEM|data_s[72]~7\) # (GND)))))
-- \FD|REG_EX_MEM|data_s[73]~9\ = CARRY((\FD|REG_ID_EX|data_s\(109) & (!\FD|REG_ID_EX|data_s\(11) & !\FD|REG_EX_MEM|data_s[72]~7\)) # (!\FD|REG_ID_EX|data_s\(109) & ((!\FD|REG_EX_MEM|data_s[72]~7\) # (!\FD|REG_ID_EX|data_s\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(109),
	datab => \FD|REG_ID_EX|data_s\(11),
	datad => VCC,
	cin => \FD|REG_EX_MEM|data_s[72]~7\,
	combout => \FD|REG_EX_MEM|data_s[73]~8_combout\,
	cout => \FD|REG_EX_MEM|data_s[73]~9\);

-- Location: LCCOMB_X55_Y39_N24
\FD|REG_EX_MEM|data_s[74]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[74]~10_combout\ = ((\FD|REG_ID_EX|data_s\(110) $ (\FD|REG_ID_EX|data_s\(12) $ (!\FD|REG_EX_MEM|data_s[73]~9\)))) # (GND)
-- \FD|REG_EX_MEM|data_s[74]~11\ = CARRY((\FD|REG_ID_EX|data_s\(110) & ((\FD|REG_ID_EX|data_s\(12)) # (!\FD|REG_EX_MEM|data_s[73]~9\))) # (!\FD|REG_ID_EX|data_s\(110) & (\FD|REG_ID_EX|data_s\(12) & !\FD|REG_EX_MEM|data_s[73]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(110),
	datab => \FD|REG_ID_EX|data_s\(12),
	datad => VCC,
	cin => \FD|REG_EX_MEM|data_s[73]~9\,
	combout => \FD|REG_EX_MEM|data_s[74]~10_combout\,
	cout => \FD|REG_EX_MEM|data_s[74]~11\);

-- Location: LCCOMB_X55_Y39_N26
\FD|REG_EX_MEM|data_s[75]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[75]~12_combout\ = (\FD|REG_ID_EX|data_s\(13) & ((\FD|REG_ID_EX|data_s\(111) & (\FD|REG_EX_MEM|data_s[74]~11\ & VCC)) # (!\FD|REG_ID_EX|data_s\(111) & (!\FD|REG_EX_MEM|data_s[74]~11\)))) # (!\FD|REG_ID_EX|data_s\(13) & 
-- ((\FD|REG_ID_EX|data_s\(111) & (!\FD|REG_EX_MEM|data_s[74]~11\)) # (!\FD|REG_ID_EX|data_s\(111) & ((\FD|REG_EX_MEM|data_s[74]~11\) # (GND)))))
-- \FD|REG_EX_MEM|data_s[75]~13\ = CARRY((\FD|REG_ID_EX|data_s\(13) & (!\FD|REG_ID_EX|data_s\(111) & !\FD|REG_EX_MEM|data_s[74]~11\)) # (!\FD|REG_ID_EX|data_s\(13) & ((!\FD|REG_EX_MEM|data_s[74]~11\) # (!\FD|REG_ID_EX|data_s\(111)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(13),
	datab => \FD|REG_ID_EX|data_s\(111),
	datad => VCC,
	cin => \FD|REG_EX_MEM|data_s[74]~11\,
	combout => \FD|REG_EX_MEM|data_s[75]~12_combout\,
	cout => \FD|REG_EX_MEM|data_s[75]~13\);

-- Location: LCCOMB_X55_Y39_N28
\FD|REG_EX_MEM|data_s[76]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[76]~14_combout\ = ((\FD|REG_ID_EX|data_s\(112) $ (\FD|REG_ID_EX|data_s\(14) $ (!\FD|REG_EX_MEM|data_s[75]~13\)))) # (GND)
-- \FD|REG_EX_MEM|data_s[76]~15\ = CARRY((\FD|REG_ID_EX|data_s\(112) & ((\FD|REG_ID_EX|data_s\(14)) # (!\FD|REG_EX_MEM|data_s[75]~13\))) # (!\FD|REG_ID_EX|data_s\(112) & (\FD|REG_ID_EX|data_s\(14) & !\FD|REG_EX_MEM|data_s[75]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(112),
	datab => \FD|REG_ID_EX|data_s\(14),
	datad => VCC,
	cin => \FD|REG_EX_MEM|data_s[75]~13\,
	combout => \FD|REG_EX_MEM|data_s[76]~14_combout\,
	cout => \FD|REG_EX_MEM|data_s[76]~15\);

-- Location: FF_X55_Y39_N29
\FD|REG_EX_MEM|data_s[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[76]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(76));

-- Location: LCCOMB_X58_Y36_N20
\FD|ROM|memROM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~19_combout\ = (!\FD|PC|data_s\(3) & (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & \FD|ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|ROM|memROM~12_combout\,
	combout => \FD|ROM|memROM~19_combout\);

-- Location: LCCOMB_X53_Y40_N18
\FD|ROM|memROM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~20_combout\ = (!\FD|PC|data_s\(2) & \FD|ROM|memROM~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(2),
	datad => \FD|ROM|memROM~19_combout\,
	combout => \FD|ROM|memROM~20_combout\);

-- Location: FF_X53_Y40_N19
\FD|REG_IF_ID|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(29));

-- Location: FF_X58_Y36_N21
\FD|REG_IF_ID|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(31));

-- Location: LCCOMB_X53_Y40_N22
\UC|pontosDeControle[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[1]~3_combout\ = (\FD|REG_IF_ID|data_s\(28)) # ((\FD|REG_IF_ID|data_s\(31) & (!\FD|REG_IF_ID|data_s\(27))) # (!\FD|REG_IF_ID|data_s\(31) & ((\FD|REG_IF_ID|data_s\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_IF_ID|data_s\(27),
	datab => \FD|REG_IF_ID|data_s\(29),
	datac => \FD|REG_IF_ID|data_s\(28),
	datad => \FD|REG_IF_ID|data_s\(31),
	combout => \UC|pontosDeControle[1]~3_combout\);

-- Location: FF_X53_Y40_N23
\FD|REG_ID_EX|data_s[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \UC|pontosDeControle[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(145));

-- Location: FF_X53_Y40_N15
\FD|REG_EX_MEM|data_s[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(145),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(104));

-- Location: LCCOMB_X53_Y40_N20
\UC|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal4~0_combout\ = (\FD|REG_IF_ID|data_s\(27)) # ((\FD|REG_IF_ID|data_s\(29)) # ((\FD|REG_IF_ID|data_s\(28)) # (\FD|REG_IF_ID|data_s\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_IF_ID|data_s\(27),
	datab => \FD|REG_IF_ID|data_s\(29),
	datac => \FD|REG_IF_ID|data_s\(28),
	datad => \FD|REG_IF_ID|data_s\(31),
	combout => \UC|Equal4~0_combout\);

-- Location: FF_X53_Y40_N21
\FD|REG_ID_EX|data_s[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \UC|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(146));

-- Location: LCCOMB_X53_Y40_N12
\FD|REG_EX_MEM|data_s[105]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[105]~feeder_combout\ = \FD|REG_ID_EX|data_s\(146)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(146),
	combout => \FD|REG_EX_MEM|data_s[105]~feeder_combout\);

-- Location: FF_X53_Y40_N13
\FD|REG_EX_MEM|data_s[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[105]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(105));

-- Location: LCCOMB_X53_Y40_N2
\FD|REG_MEM_WB|data_s[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_MEM_WB|data_s[69]~feeder_combout\ = \FD|REG_EX_MEM|data_s\(105)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_EX_MEM|data_s\(105),
	combout => \FD|REG_MEM_WB|data_s[69]~feeder_combout\);

-- Location: FF_X53_Y40_N3
\FD|REG_MEM_WB|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_MEM_WB|data_s[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(69));

-- Location: LCCOMB_X53_Y40_N28
\UC|pontosDeControle[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[2]~0_combout\ = (\FD|REG_IF_ID|data_s\(27)) # ((\FD|REG_IF_ID|data_s\(29)) # (\FD|REG_IF_ID|data_s\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_IF_ID|data_s\(27),
	datab => \FD|REG_IF_ID|data_s\(29),
	datad => \FD|REG_IF_ID|data_s\(31),
	combout => \UC|pontosDeControle[2]~0_combout\);

-- Location: FF_X53_Y40_N29
\FD|REG_ID_EX|data_s[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \UC|pontosDeControle[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(138));

-- Location: LCCOMB_X53_Y40_N0
\UC|pontosDeControle[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[10]~2_combout\ = (\FD|REG_IF_ID|data_s\(27) & (((\FD|REG_IF_ID|data_s\(28)) # (!\FD|REG_IF_ID|data_s\(31))))) # (!\FD|REG_IF_ID|data_s\(27) & ((\FD|REG_IF_ID|data_s\(29)) # ((\FD|REG_IF_ID|data_s\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_IF_ID|data_s\(27),
	datab => \FD|REG_IF_ID|data_s\(29),
	datac => \FD|REG_IF_ID|data_s\(28),
	datad => \FD|REG_IF_ID|data_s\(31),
	combout => \UC|pontosDeControle[10]~2_combout\);

-- Location: LCCOMB_X53_Y40_N30
\FD|REG_ID_EX|data_s[141]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_ID_EX|data_s[141]~feeder_combout\ = \UC|pontosDeControle[10]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UC|pontosDeControle[10]~2_combout\,
	combout => \FD|REG_ID_EX|data_s[141]~feeder_combout\);

-- Location: FF_X53_Y40_N31
\FD|REG_ID_EX|data_s[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_ID_EX|data_s[141]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(141));

-- Location: LCCOMB_X53_Y40_N24
\UC|pontosDeControle[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[9]~1_combout\ = (\FD|REG_IF_ID|data_s\(28)) # ((\FD|REG_IF_ID|data_s\(27) & ((!\FD|REG_IF_ID|data_s\(31)))) # (!\FD|REG_IF_ID|data_s\(27) & ((\FD|REG_IF_ID|data_s\(29)) # (\FD|REG_IF_ID|data_s\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_IF_ID|data_s\(27),
	datab => \FD|REG_IF_ID|data_s\(29),
	datac => \FD|REG_IF_ID|data_s\(28),
	datad => \FD|REG_IF_ID|data_s\(31),
	combout => \UC|pontosDeControle[9]~1_combout\);

-- Location: FF_X53_Y40_N25
\FD|REG_ID_EX|data_s[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \UC|pontosDeControle[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(140));

-- Location: LCCOMB_X55_Y39_N18
\FD|UCULA|ALUctr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~0_combout\ = (\FD|REG_ID_EX|data_s\(1) & (!\FD|REG_ID_EX|data_s\(12) & (!\FD|REG_ID_EX|data_s\(10) & !\FD|REG_ID_EX|data_s\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(1),
	datab => \FD|REG_ID_EX|data_s\(12),
	datac => \FD|REG_ID_EX|data_s\(10),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|UCULA|ALUctr[1]~0_combout\);

-- Location: LCCOMB_X55_Y39_N2
\FD|UCULA|ALUctr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~1_combout\ = (\FD|REG_ID_EX|data_s\(140)) # ((\FD|UCULA|ALUctr[1]~0_combout\ & ((\FD|REG_ID_EX|data_s\(11)) # (!\FD|REG_ID_EX|data_s\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(140),
	datab => \FD|UCULA|ALUctr[1]~0_combout\,
	datac => \FD|REG_ID_EX|data_s\(13),
	datad => \FD|REG_ID_EX|data_s\(11),
	combout => \FD|UCULA|ALUctr[1]~1_combout\);

-- Location: LCCOMB_X55_Y39_N12
\FD|UCULA|ALUctr[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~2_combout\ = (!\FD|REG_ID_EX|data_s\(141) & ((\FD|REG_ID_EX|data_s\(138) & ((!\FD|REG_ID_EX|data_s\(140)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|UCULA|ALUctr[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(141),
	datac => \FD|UCULA|ALUctr[1]~1_combout\,
	datad => \FD|REG_ID_EX|data_s\(140),
	combout => \FD|UCULA|ALUctr[1]~2_combout\);

-- Location: LCCOMB_X55_Y39_N6
\FD|UCULA|ALUctr[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~3_combout\ = (!\FD|REG_ID_EX|data_s\(138) & !\FD|REG_ID_EX|data_s\(141))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(141),
	combout => \FD|UCULA|ALUctr[2]~3_combout\);

-- Location: LCCOMB_X55_Y39_N16
\FD|UCULA|ALUctr[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~4_combout\ = (\FD|UCULA|ALUctr[2]~3_combout\ & ((\FD|REG_ID_EX|data_s\(140)) # ((\FD|REG_ID_EX|data_s\(11) & \FD|UCULA|ALUctr[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~3_combout\,
	datab => \FD|REG_ID_EX|data_s\(140),
	datac => \FD|REG_ID_EX|data_s\(11),
	datad => \FD|UCULA|ALUctr[1]~0_combout\,
	combout => \FD|UCULA|ALUctr[2]~4_combout\);

-- Location: LCCOMB_X56_Y41_N28
\FD|ULA|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~0_combout\ = (!\FD|UCULA|ALUctr[1]~2_combout\ & !\FD|UCULA|ALUctr[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux31~0_combout\);

-- Location: LCCOMB_X53_Y40_N16
\UC|pontosDeControle[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[6]~5_combout\ = (\FD|REG_IF_ID|data_s\(29)) # ((\FD|REG_IF_ID|data_s\(27) & (\FD|REG_IF_ID|data_s\(28))) # (!\FD|REG_IF_ID|data_s\(27) & ((\FD|REG_IF_ID|data_s\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_IF_ID|data_s\(27),
	datab => \FD|REG_IF_ID|data_s\(29),
	datac => \FD|REG_IF_ID|data_s\(28),
	datad => \FD|REG_IF_ID|data_s\(31),
	combout => \UC|pontosDeControle[6]~5_combout\);

-- Location: FF_X53_Y40_N17
\FD|REG_ID_EX|data_s[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \UC|pontosDeControle[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(143));

-- Location: LCCOMB_X53_Y40_N10
\FD|REG_EX_MEM|data_s[102]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[102]~feeder_combout\ = \FD|REG_ID_EX|data_s\(143)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(143),
	combout => \FD|REG_EX_MEM|data_s[102]~feeder_combout\);

-- Location: FF_X53_Y40_N11
\FD|REG_EX_MEM|data_s[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[102]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(102));

-- Location: LCCOMB_X50_Y39_N30
\FD|BR|bancoReg_rtl_1_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[11]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[0]~1_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[11]~feeder_combout\);

-- Location: FF_X50_Y39_N31
\FD|BR|bancoReg_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(11));

-- Location: LCCOMB_X53_Y40_N4
\UC|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~0_combout\ = ((\FD|REG_IF_ID|data_s\(29)) # ((\FD|REG_IF_ID|data_s\(28)) # (!\FD|REG_IF_ID|data_s\(31)))) # (!\FD|REG_IF_ID|data_s\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_IF_ID|data_s\(27),
	datab => \FD|REG_IF_ID|data_s\(29),
	datac => \FD|REG_IF_ID|data_s\(28),
	datad => \FD|REG_IF_ID|data_s\(31),
	combout => \UC|Equal2~0_combout\);

-- Location: FF_X53_Y40_N5
\FD|REG_ID_EX|data_s[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \UC|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(142));

-- Location: LCCOMB_X54_Y40_N6
\FD|mux_Rd_Rt|saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[2]~2_combout\ = (\FD|REG_ID_EX|data_s\(142) & \FD|REG_ID_EX|data_s\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_ID_EX|data_s\(142),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Rd_Rt|saida[2]~2_combout\);

-- Location: FF_X54_Y40_N7
\FD|REG_EX_MEM|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(2));

-- Location: LCCOMB_X54_Y40_N18
\FD|REG_MEM_WB|data_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_MEM_WB|data_s[2]~feeder_combout\ = \FD|REG_EX_MEM|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_EX_MEM|data_s\(2),
	combout => \FD|REG_MEM_WB|data_s[2]~feeder_combout\);

-- Location: FF_X54_Y40_N19
\FD|REG_MEM_WB|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_MEM_WB|data_s[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(2));

-- Location: FF_X47_Y39_N13
\FD|BR|bancoReg_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_MEM_WB|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(9));

-- Location: LCCOMB_X54_Y40_N12
\FD|mux_Rd_Rt|saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[1]~1_combout\ = (\FD|REG_ID_EX|data_s\(142) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(142) & (\FD|REG_ID_EX|data_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(142),
	datac => \FD|REG_ID_EX|data_s\(1),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Rd_Rt|saida[1]~1_combout\);

-- Location: FF_X54_Y40_N13
\FD|REG_EX_MEM|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(1));

-- Location: LCCOMB_X54_Y40_N8
\FD|REG_MEM_WB|data_s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_MEM_WB|data_s[1]~feeder_combout\ = \FD|REG_EX_MEM|data_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_EX_MEM|data_s\(1),
	combout => \FD|REG_MEM_WB|data_s[1]~feeder_combout\);

-- Location: FF_X54_Y40_N9
\FD|REG_MEM_WB|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_MEM_WB|data_s[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(1));

-- Location: FF_X52_Y39_N9
\FD|BR|bancoReg_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_MEM_WB|data_s\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(3));

-- Location: LCCOMB_X58_Y36_N2
\FD|ROM|memROM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~14_combout\ = (\FD|PC|data_s\(2)) # ((\FD|PC|data_s\(3) & ((!\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4)))) # (!\FD|PC|data_s\(3) & ((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~14_combout\);

-- Location: LCCOMB_X57_Y36_N24
\FD|ROM|memROM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~29_combout\ = (!\FD|ROM|memROM~14_combout\ & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~14_combout\,
	datab => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~29_combout\);

-- Location: FF_X52_Y40_N29
\FD|REG_IF_ID|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(16));

-- Location: LCCOMB_X52_Y40_N0
\FD|REG_ID_EX|data_s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_ID_EX|data_s[0]~feeder_combout\ = \FD|REG_IF_ID|data_s\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_IF_ID|data_s\(16),
	combout => \FD|REG_ID_EX|data_s[0]~feeder_combout\);

-- Location: FF_X52_Y40_N1
\FD|REG_ID_EX|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_ID_EX|data_s[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(0));

-- Location: LCCOMB_X52_Y40_N4
\FD|mux_Rd_Rt|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[0]~0_combout\ = (\FD|REG_ID_EX|data_s\(142) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(142) & (\FD|REG_ID_EX|data_s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(142),
	datab => \FD|REG_ID_EX|data_s\(0),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Rd_Rt|saida[0]~0_combout\);

-- Location: FF_X52_Y40_N5
\FD|REG_EX_MEM|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(0));

-- Location: FF_X52_Y40_N31
\FD|REG_MEM_WB|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(0));

-- Location: LCCOMB_X54_Y39_N12
\FD|BR|bancoReg_rtl_1_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[1]~feeder_combout\ = \FD|REG_MEM_WB|data_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_MEM_WB|data_s\(0),
	combout => \FD|BR|bancoReg_rtl_1_bypass[1]~feeder_combout\);

-- Location: FF_X54_Y39_N13
\FD|BR|bancoReg_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(1));

-- Location: FF_X53_Y39_N19
\FD|BR|bancoReg_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(2));

-- Location: FF_X53_Y39_N25
\FD|BR|bancoReg_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(4));

-- Location: LCCOMB_X53_Y39_N18
\FD|BR|bancoReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(3) & (\FD|BR|bancoReg_rtl_1_bypass\(4) & (\FD|BR|bancoReg_rtl_1_bypass\(1) $ (!\FD|BR|bancoReg_rtl_1_bypass\(2))))) # (!\FD|BR|bancoReg_rtl_1_bypass\(3) & (!\FD|BR|bancoReg_rtl_1_bypass\(4) & 
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
	combout => \FD|BR|bancoReg~38_combout\);

-- Location: LCCOMB_X50_Y39_N8
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

-- Location: FF_X50_Y39_N9
\FD|BR|bancoReg_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(12));

-- Location: LCCOMB_X52_Y39_N10
\FD|BR|bancoReg_rtl_1_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\ = \FD|REG_MEM_WB|data_s\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_MEM_WB|data_s\(70),
	combout => \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X52_Y39_N11
\FD|BR|bancoReg_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(0));

-- Location: LCCOMB_X58_Y36_N4
\FD|ROM|memROM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~16_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~16_combout\);

-- Location: LCCOMB_X58_Y36_N12
\FD|ROM|memROM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~31_combout\ = (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(6) & !\FD|ROM|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|ROM|memROM~16_combout\,
	combout => \FD|ROM|memROM~31_combout\);

-- Location: FF_X52_Y40_N27
\FD|REG_IF_ID|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(19));

-- Location: FF_X52_Y40_N11
\FD|REG_ID_EX|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_IF_ID|data_s\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(3));

-- Location: LCCOMB_X52_Y40_N22
\FD|mux_Rd_Rt|saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[3]~3_combout\ = (\FD|REG_ID_EX|data_s\(142) & ((\FD|REG_ID_EX|data_s\(1)))) # (!\FD|REG_ID_EX|data_s\(142) & (\FD|REG_ID_EX|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(3),
	datac => \FD|REG_ID_EX|data_s\(1),
	datad => \FD|REG_ID_EX|data_s\(142),
	combout => \FD|mux_Rd_Rt|saida[3]~3_combout\);

-- Location: FF_X52_Y40_N23
\FD|REG_EX_MEM|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(3));

-- Location: FF_X52_Y40_N19
\FD|REG_MEM_WB|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(3));

-- Location: LCCOMB_X53_Y39_N28
\FD|BR|bancoReg_rtl_1_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[7]~feeder_combout\ = \FD|REG_MEM_WB|data_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_MEM_WB|data_s\(3),
	combout => \FD|BR|bancoReg_rtl_1_bypass[7]~feeder_combout\);

-- Location: FF_X53_Y39_N29
\FD|BR|bancoReg_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(7));

-- Location: FF_X53_Y39_N15
\FD|BR|bancoReg_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_MEM_WB|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(5));

-- Location: LCCOMB_X52_Y39_N12
\FD|BR|bancoReg_rtl_1_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\ = \FD|ROM|memROM~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~31_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\);

-- Location: FF_X52_Y39_N13
\FD|BR|bancoReg_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(8));

-- Location: LCCOMB_X53_Y39_N14
\FD|BR|bancoReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~39_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(0) & (!\FD|BR|bancoReg_rtl_1_bypass\(5) & (\FD|BR|bancoReg_rtl_1_bypass\(7) $ (!\FD|BR|bancoReg_rtl_1_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(0),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(7),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(5),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(8),
	combout => \FD|BR|bancoReg~39_combout\);

-- Location: LCCOMB_X50_Y39_N2
\FD|BR|saidaB[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~2_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(12) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(12),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[0]~2_combout\);

-- Location: LCCOMB_X52_Y40_N30
\FD|BR|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal1~0_combout\ = (!\FD|REG_IF_ID|data_s\(19) & (!\FD|REG_IF_ID|data_s\(16) & !\FD|REG_IF_ID|data_s\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_IF_ID|data_s\(19),
	datab => \FD|REG_IF_ID|data_s\(16),
	datad => \FD|REG_IF_ID|data_s\(24),
	combout => \FD|BR|Equal1~0_combout\);

-- Location: LCCOMB_X50_Y39_N0
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

-- Location: LCCOMB_X54_Y42_N24
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

-- Location: FF_X54_Y42_N25
\FD|BR|bancoReg_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(16));

-- Location: LCCOMB_X54_Y42_N26
\FD|BR|saidaB[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~6_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(16) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(16),
	combout => \FD|BR|saidaB[2]~6_combout\);

-- Location: FF_X54_Y39_N7
\FD|REG_EX_MEM|data_s[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux28~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(40));

-- Location: LCCOMB_X54_Y39_N20
\FD|ROM|memROM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~21_combout\ = (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (((\FD|PC|data_s\(2) & \FD|PC|data_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~21_combout\);

-- Location: LCCOMB_X54_Y39_N28
\FD|ROM|memROM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~32_combout\ = (\FD|ROM|memROM~21_combout\ & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~21_combout\,
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~32_combout\);

-- Location: LCCOMB_X47_Y39_N6
\FD|BR|bancoReg_rtl_1_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[4]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[4]~31_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\);

-- Location: FF_X47_Y39_N7
\FD|BR|bancoReg_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(19));

-- Location: LCCOMB_X47_Y39_N18
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

-- Location: FF_X47_Y39_N19
\FD|BR|bancoReg_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(24));

-- Location: LCCOMB_X47_Y39_N4
\FD|BR|saidaB[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~58_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(24) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(24),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[6]~58_combout\);

-- Location: LCCOMB_X47_Y42_N12
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

-- Location: FF_X47_Y42_N13
\FD|BR|bancoReg_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(22));

-- Location: LCCOMB_X47_Y42_N14
\FD|BR|saidaB[5]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~60_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(22) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(22),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[5]~60_combout\);

-- Location: LCCOMB_X48_Y39_N28
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

-- Location: FF_X48_Y39_N29
\FD|BR|bancoReg_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(28));

-- Location: LCCOMB_X48_Y39_N30
\FD|BR|saidaB[8]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~54_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(28) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(28),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[8]~54_combout\);

-- Location: FF_X48_Y39_N19
\FD|BR|bancoReg_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[8]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(27));

-- Location: LCCOMB_X47_Y39_N28
\FD|REG_EX_MEM|data_s[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[11]~feeder_combout\ = \FD|REG_ID_EX|data_s\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(48),
	combout => \FD|REG_EX_MEM|data_s[11]~feeder_combout\);

-- Location: FF_X47_Y39_N29
\FD|REG_EX_MEM|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(11));

-- Location: LCCOMB_X48_Y39_N20
\FD|REG_EX_MEM|data_s[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[13]~feeder_combout\ = \FD|REG_ID_EX|data_s\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(50),
	combout => \FD|REG_EX_MEM|data_s[13]~feeder_combout\);

-- Location: FF_X48_Y39_N21
\FD|REG_EX_MEM|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(13));

-- Location: LCCOMB_X47_Y42_N22
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

-- Location: FF_X47_Y42_N23
\FD|BR|bancoReg_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(30));

-- Location: LCCOMB_X47_Y42_N24
\FD|BR|saidaB[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~52_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(30) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(30),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[9]~52_combout\);

-- Location: LCCOMB_X54_Y42_N4
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

-- Location: FF_X54_Y42_N5
\FD|BR|bancoReg_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(38));

-- Location: LCCOMB_X54_Y42_N22
\FD|BR|saidaB[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~44_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(38) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(38),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[13]~44_combout\);

-- Location: LCCOMB_X52_Y40_N16
\FD|BR|bancoReg_rtl_1_bypass[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[14]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[14]~21_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\);

-- Location: FF_X52_Y40_N17
\FD|BR|bancoReg_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(39));

-- Location: LCCOMB_X53_Y44_N28
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

-- Location: FF_X53_Y44_N29
\FD|BR|bancoReg_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(42));

-- Location: LCCOMB_X53_Y44_N22
\FD|BR|saidaB[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~40_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(42) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(42),
	combout => \FD|BR|saidaB[15]~40_combout\);

-- Location: FF_X52_Y44_N11
\FD|BR|bancoReg_rtl_1_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[16]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(43));

-- Location: FF_X52_Y42_N7
\FD|BR|bancoReg_rtl_1_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[20]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(51));

-- Location: FF_X52_Y38_N11
\FD|BR|bancoReg_rtl_1_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[18]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(47));

-- Location: LCCOMB_X52_Y41_N26
\FD|REG_EX_MEM|data_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[7]~feeder_combout\ = \FD|REG_ID_EX|data_s\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(44),
	combout => \FD|REG_EX_MEM|data_s[7]~feeder_combout\);

-- Location: FF_X52_Y41_N27
\FD|REG_EX_MEM|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(7));

-- Location: LCCOMB_X50_Y39_N12
\FD|REG_EX_MEM|data_s[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[8]~feeder_combout\ = \FD|REG_ID_EX|data_s\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(45),
	combout => \FD|REG_EX_MEM|data_s[8]~feeder_combout\);

-- Location: FF_X50_Y39_N13
\FD|REG_EX_MEM|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(8));

-- Location: FF_X55_Y40_N27
\FD|BR|bancoReg_rtl_1_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[23]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(57));

-- Location: LCCOMB_X54_Y43_N20
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

-- Location: FF_X54_Y43_N21
\FD|BR|bancoReg_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(58));

-- Location: LCCOMB_X54_Y43_N22
\FD|BR|saidaB[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~24_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(58) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(58),
	combout => \FD|BR|saidaB[23]~24_combout\);

-- Location: LCCOMB_X47_Y39_N22
\FD|BR|bancoReg_rtl_1_bypass[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[59]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[24]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[24]~11_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[59]~feeder_combout\);

-- Location: FF_X47_Y39_N23
\FD|BR|bancoReg_rtl_1_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[59]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(59));

-- Location: LCCOMB_X54_Y43_N16
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

-- Location: FF_X54_Y43_N17
\FD|BR|bancoReg_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(60));

-- Location: LCCOMB_X54_Y43_N2
\FD|BR|saidaB[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~22_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(60) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(60),
	combout => \FD|BR|saidaB[24]~22_combout\);

-- Location: FF_X50_Y40_N11
\FD|BR|bancoReg_rtl_1_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[25]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(61));

-- Location: LCCOMB_X54_Y43_N12
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

-- Location: FF_X54_Y43_N13
\FD|BR|bancoReg_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(66));

-- Location: LCCOMB_X54_Y43_N30
\FD|BR|saidaB[27]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~16_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(66) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(66),
	combout => \FD|BR|saidaB[27]~16_combout\);

-- Location: LCCOMB_X55_Y40_N6
\FD|BR|bancoReg_rtl_1_bypass[67]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[67]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[28]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[28]~7_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[67]~feeder_combout\);

-- Location: FF_X55_Y40_N7
\FD|BR|bancoReg_rtl_1_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[67]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(67));

-- Location: LCCOMB_X54_Y43_N8
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

-- Location: FF_X54_Y43_N9
\FD|BR|bancoReg_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(68));

-- Location: LCCOMB_X54_Y43_N26
\FD|BR|saidaB[28]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~14_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(68) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(68),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[28]~14_combout\);

-- Location: M9K_X51_Y39_N0
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
	portawe => \FD|REG_MEM_WB|data_s\(70),
	portbre => VCC,
	clk0 => \BTN_CLK|saida~clkctrl_outclk\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y43_N28
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

-- Location: FF_X54_Y43_N29
\FD|BR|bancoReg_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(70));

-- Location: LCCOMB_X54_Y43_N6
\FD|BR|saidaB[29]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~12_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(70) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(70),
	combout => \FD|BR|saidaB[29]~12_combout\);

-- Location: LCCOMB_X54_Y41_N12
\FD|BR|bancoReg_rtl_1_bypass[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[29]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[29]~6_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\);

-- Location: FF_X54_Y41_N13
\FD|BR|bancoReg_rtl_1_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(69));

-- Location: LCCOMB_X54_Y41_N28
\FD|BR|saidaB[29]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~13_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[29]~12_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\)) # (!\FD|BR|saidaB[29]~12_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[29]~12_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(69),
	combout => \FD|BR|saidaB[29]~13_combout\);

-- Location: FF_X54_Y41_N29
\FD|REG_ID_EX|data_s[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[29]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(71));

-- Location: LCCOMB_X54_Y41_N24
\FD|REG_EX_MEM|data_s[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[34]~feeder_combout\ = \FD|REG_ID_EX|data_s\(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(71),
	combout => \FD|REG_EX_MEM|data_s[34]~feeder_combout\);

-- Location: FF_X54_Y41_N25
\FD|REG_EX_MEM|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(34));

-- Location: FF_X50_Y40_N7
\FD|BR|bancoReg_rtl_1_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[30]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(71));

-- Location: LCCOMB_X54_Y43_N24
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

-- Location: FF_X54_Y43_N25
\FD|BR|bancoReg_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(72));

-- Location: LCCOMB_X54_Y43_N18
\FD|BR|saidaB[30]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~10_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(72) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(72),
	combout => \FD|BR|saidaB[30]~10_combout\);

-- Location: LCCOMB_X50_Y40_N8
\FD|BR|saidaB[30]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~11_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[30]~10_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\))) # (!\FD|BR|saidaB[30]~10_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(71),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[30]~10_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\,
	combout => \FD|BR|saidaB[30]~11_combout\);

-- Location: FF_X50_Y40_N9
\FD|REG_ID_EX|data_s[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[30]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(72));

-- Location: FF_X50_Y40_N25
\FD|REG_EX_MEM|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(72),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(35));

-- Location: LCCOMB_X54_Y41_N14
\FD|REG_EX_MEM|data_s[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[36]~feeder_combout\ = \FD|REG_ID_EX|data_s\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(73),
	combout => \FD|REG_EX_MEM|data_s[36]~feeder_combout\);

-- Location: FF_X54_Y41_N15
\FD|REG_EX_MEM|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(36));

-- Location: M9K_X51_Y41_N0
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
	portawe => \FD|REG_EX_MEM|data_s\(102),
	portare => VCC,
	clk0 => \BTN_CLK|saida~clkctrl_outclk\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y40_N2
\FD|mux_Banco_Ula|saida[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[30]~5_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(14),
	datab => \FD|REG_ID_EX|data_s\(72),
	datac => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[30]~5_combout\);

-- Location: M9K_X51_Y40_N0
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
	portawe => \FD|REG_MEM_WB|data_s\(70),
	portbre => VCC,
	clk0 => \BTN_CLK|saida~clkctrl_outclk\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X50_Y40_N1
\FD|BR|bancoReg_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[30]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(71));

-- Location: LCCOMB_X54_Y39_N22
\FD|BR|bancoReg_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[1]~feeder_combout\ = \FD|REG_MEM_WB|data_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_MEM_WB|data_s\(0),
	combout => \FD|BR|bancoReg_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X54_Y39_N23
\FD|BR|bancoReg_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(1));

-- Location: FF_X54_Y39_N29
\FD|BR|bancoReg_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(2));

-- Location: FF_X54_Y39_N25
\FD|BR|bancoReg_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_MEM_WB|data_s\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(7));

-- Location: FF_X54_Y39_N3
\FD|BR|bancoReg_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(8));

-- Location: LCCOMB_X54_Y39_N24
\FD|BR|bancoReg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(1) & (\FD|BR|bancoReg_rtl_0_bypass\(2) & (\FD|BR|bancoReg_rtl_0_bypass\(7) $ (!\FD|BR|bancoReg_rtl_0_bypass\(8))))) # (!\FD|BR|bancoReg_rtl_0_bypass\(1) & (!\FD|BR|bancoReg_rtl_0_bypass\(2) & 
-- (\FD|BR|bancoReg_rtl_0_bypass\(7) $ (!\FD|BR|bancoReg_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(1),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(2),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(7),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(8),
	combout => \FD|BR|bancoReg~40_combout\);

-- Location: LCCOMB_X53_Y43_N20
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

-- Location: FF_X53_Y43_N21
\FD|BR|bancoReg_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(72));

-- Location: FF_X53_Y39_N13
\FD|BR|bancoReg_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_MEM_WB|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(5));

-- Location: FF_X53_Y39_N1
\FD|BR|bancoReg_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_MEM_WB|data_s\(70),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(0));

-- Location: FF_X53_Y39_N7
\FD|BR|bancoReg_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_MEM_WB|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(9));

-- Location: FF_X53_Y39_N11
\FD|BR|bancoReg_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_MEM_WB|data_s\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(3));

-- Location: LCCOMB_X53_Y39_N6
\FD|BR|bancoReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~41_combout\ = (!\FD|BR|bancoReg_rtl_0_bypass\(5) & (\FD|BR|bancoReg_rtl_0_bypass\(0) & (!\FD|BR|bancoReg_rtl_0_bypass\(9) & !\FD|BR|bancoReg_rtl_0_bypass\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(5),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(0),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(3),
	combout => \FD|BR|bancoReg~41_combout\);

-- Location: LCCOMB_X53_Y43_N14
\FD|BR|saidaA[30]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~10_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(72) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(72),
	datac => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[30]~10_combout\);

-- Location: FF_X53_Y41_N23
\FD|REG_IF_ID|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(21));

-- Location: LCCOMB_X53_Y41_N22
\FD|BR|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal0~0_combout\ = (\FD|REG_IF_ID|data_s\(21)) # (\FD|REG_IF_ID|data_s\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_IF_ID|data_s\(21),
	datad => \FD|REG_IF_ID|data_s\(24),
	combout => \FD|BR|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y40_N4
\FD|BR|saidaA[30]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~11_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[30]~10_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\)) # (!\FD|BR|saidaA[30]~10_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(71),
	datac => \FD|BR|saidaA[30]~10_combout\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[30]~11_combout\);

-- Location: FF_X50_Y40_N5
\FD|REG_ID_EX|data_s[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[30]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(104));

-- Location: LCCOMB_X54_Y41_N30
\FD|BR|bancoReg_rtl_0_bypass[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[69]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[29]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[29]~6_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[69]~feeder_combout\);

-- Location: FF_X54_Y41_N31
\FD|BR|bancoReg_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(69));

-- Location: LCCOMB_X53_Y43_N16
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

-- Location: FF_X53_Y43_N17
\FD|BR|bancoReg_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(70));

-- Location: LCCOMB_X53_Y43_N10
\FD|BR|saidaA[29]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~12_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(70) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(70),
	datac => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[29]~12_combout\);

-- Location: LCCOMB_X54_Y41_N0
\FD|BR|saidaA[29]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~13_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[29]~12_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\)) # (!\FD|BR|saidaA[29]~12_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(69),
	datad => \FD|BR|saidaA[29]~12_combout\,
	combout => \FD|BR|saidaA[29]~13_combout\);

-- Location: FF_X54_Y41_N1
\FD|REG_ID_EX|data_s[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[29]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(103));

-- Location: LCCOMB_X54_Y41_N22
\FD|mux_Banco_Ula|saida[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[29]~6_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datac => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(71),
	combout => \FD|mux_Banco_Ula|saida[29]~6_combout\);

-- Location: LCCOMB_X55_Y40_N24
\FD|BR|bancoReg_rtl_0_bypass[67]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[67]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[28]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[28]~7_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[67]~feeder_combout\);

-- Location: FF_X55_Y40_N25
\FD|BR|bancoReg_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[67]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(67));

-- Location: LCCOMB_X47_Y41_N24
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

-- Location: FF_X47_Y41_N25
\FD|BR|bancoReg_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(68));

-- Location: LCCOMB_X47_Y41_N18
\FD|BR|saidaA[28]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~14_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(68) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(68),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[28]~14_combout\);

-- Location: LCCOMB_X50_Y40_N22
\FD|BR|saidaA[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~15_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[28]~14_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\))) # (!\FD|BR|saidaA[28]~14_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(67),
	datab => \FD|BR|saidaA[28]~14_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[28]~15_combout\);

-- Location: FF_X50_Y40_N23
\FD|REG_ID_EX|data_s[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(102));

-- Location: LCCOMB_X52_Y41_N16
\FD|mux_Banco_Ula|saida[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[28]~7_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(70),
	datab => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[28]~7_combout\);

-- Location: LCCOMB_X47_Y41_N28
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

-- Location: FF_X47_Y41_N29
\FD|BR|bancoReg_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(66));

-- Location: LCCOMB_X47_Y41_N14
\FD|BR|saidaA[27]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~16_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(66) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(66),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[27]~16_combout\);

-- Location: LCCOMB_X50_Y41_N28
\FD|BR|bancoReg_rtl_0_bypass[65]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[65]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[27]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[27]~8_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[65]~feeder_combout\);

-- Location: FF_X50_Y41_N29
\FD|BR|bancoReg_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[65]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(65));

-- Location: LCCOMB_X50_Y41_N10
\FD|BR|saidaA[27]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~17_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[27]~16_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\))) # (!\FD|BR|saidaA[27]~16_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[27]~16_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(65),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\,
	combout => \FD|BR|saidaA[27]~17_combout\);

-- Location: FF_X50_Y41_N11
\FD|REG_ID_EX|data_s[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[27]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(101));

-- Location: LCCOMB_X52_Y41_N2
\FD|mux_Banco_Ula|saida[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[27]~8_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(69),
	datac => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[27]~8_combout\);

-- Location: FF_X50_Y41_N9
\FD|BR|bancoReg_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[26]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(63));

-- Location: LCCOMB_X47_Y41_N8
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

-- Location: FF_X47_Y41_N9
\FD|BR|bancoReg_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(64));

-- Location: LCCOMB_X47_Y41_N26
\FD|BR|saidaA[26]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~18_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(64) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(64),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[26]~18_combout\);

-- Location: LCCOMB_X50_Y41_N6
\FD|BR|saidaA[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~19_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[26]~18_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\)) # (!\FD|BR|saidaA[26]~18_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(63),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|saidaA[26]~18_combout\,
	combout => \FD|BR|saidaA[26]~19_combout\);

-- Location: FF_X50_Y41_N7
\FD|REG_ID_EX|data_s[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[26]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(100));

-- Location: LCCOMB_X52_Y41_N12
\FD|mux_Banco_Ula|saida[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[26]~9_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(68),
	combout => \FD|mux_Banco_Ula|saida[26]~9_combout\);

-- Location: LCCOMB_X47_Y41_N12
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

-- Location: FF_X47_Y41_N13
\FD|BR|bancoReg_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(62));

-- Location: LCCOMB_X47_Y41_N30
\FD|BR|saidaA[25]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~20_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(62) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(62),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[25]~20_combout\);

-- Location: FF_X50_Y40_N29
\FD|BR|bancoReg_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[25]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(61));

-- Location: LCCOMB_X50_Y40_N12
\FD|BR|saidaA[25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~21_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[25]~20_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\)) # (!\FD|BR|saidaA[25]~20_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(61))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[25]~20_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(61),
	combout => \FD|BR|saidaA[25]~21_combout\);

-- Location: FF_X50_Y40_N13
\FD|REG_ID_EX|data_s[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[25]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(99));

-- Location: LCCOMB_X50_Y40_N18
\FD|mux_Banco_Ula|saida[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[25]~10_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(14),
	datac => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(67),
	combout => \FD|mux_Banco_Ula|saida[25]~10_combout\);

-- Location: FF_X50_Y41_N27
\FD|BR|bancoReg_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[24]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(59));

-- Location: LCCOMB_X47_Y41_N16
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

-- Location: FF_X47_Y41_N17
\FD|BR|bancoReg_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(60));

-- Location: LCCOMB_X47_Y41_N10
\FD|BR|saidaA[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~22_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(60) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(60),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[24]~22_combout\);

-- Location: LCCOMB_X50_Y41_N0
\FD|BR|saidaA[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~23_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[24]~22_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\))) # (!\FD|BR|saidaA[24]~22_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(59),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|saidaA[24]~22_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\,
	combout => \FD|BR|saidaA[24]~23_combout\);

-- Location: FF_X50_Y41_N1
\FD|REG_ID_EX|data_s[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(98));

-- Location: LCCOMB_X47_Y39_N10
\FD|mux_Banco_Ula|saida[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[24]~11_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(66),
	datac => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[24]~11_combout\);

-- Location: LCCOMB_X47_Y41_N20
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

-- Location: FF_X47_Y41_N21
\FD|BR|bancoReg_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(58));

-- Location: LCCOMB_X47_Y41_N22
\FD|BR|saidaA[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~24_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(58) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(58),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[23]~24_combout\);

-- Location: FF_X55_Y40_N13
\FD|BR|bancoReg_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[23]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(57));

-- Location: LCCOMB_X55_Y41_N18
\FD|BR|saidaA[23]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~25_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[23]~24_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\)) # (!\FD|BR|saidaA[23]~24_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(57))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\,
	datac => \FD|BR|saidaA[23]~24_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(57),
	combout => \FD|BR|saidaA[23]~25_combout\);

-- Location: FF_X55_Y41_N19
\FD|REG_ID_EX|data_s[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[23]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(97));

-- Location: LCCOMB_X52_Y41_N22
\FD|mux_Banco_Ula|saida[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[23]~12_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(65),
	datab => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[23]~12_combout\);

-- Location: LCCOMB_X52_Y41_N0
\FD|mux_Banco_Ula|saida[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[22]~13_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(64),
	datab => \FD|REG_ID_EX|data_s\(138),
	datac => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[22]~13_combout\);

-- Location: FF_X50_Y44_N21
\FD|BR|bancoReg_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[22]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(55));

-- Location: LCCOMB_X47_Y41_N0
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

-- Location: FF_X47_Y41_N1
\FD|BR|bancoReg_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(56));

-- Location: LCCOMB_X47_Y41_N2
\FD|BR|saidaA[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~26_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(56) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(56),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[22]~26_combout\);

-- Location: LCCOMB_X50_Y44_N2
\FD|BR|saidaA[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~27_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[22]~26_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\)) # (!\FD|BR|saidaA[22]~26_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(55),
	datac => \FD|BR|saidaA[22]~26_combout\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[22]~27_combout\);

-- Location: FF_X50_Y44_N3
\FD|REG_ID_EX|data_s[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[22]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(96));

-- Location: LCCOMB_X53_Y41_N28
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

-- Location: FF_X53_Y41_N29
\FD|BR|bancoReg_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(54));

-- Location: LCCOMB_X53_Y41_N10
\FD|BR|saidaA[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~28_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(54) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(54),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[21]~28_combout\);

-- Location: FF_X53_Y41_N11
\FD|BR|bancoReg_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[21]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(53));

-- Location: LCCOMB_X53_Y41_N26
\FD|BR|saidaA[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~29_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[21]~28_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\))) # (!\FD|BR|saidaA[21]~28_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[21]~28_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(53),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[21]~29_combout\);

-- Location: FF_X53_Y41_N27
\FD|REG_ID_EX|data_s[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[21]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(95));

-- Location: LCCOMB_X53_Y44_N8
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

-- Location: FF_X53_Y44_N9
\FD|BR|bancoReg_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(54));

-- Location: LCCOMB_X53_Y44_N10
\FD|BR|saidaB[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~28_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(54) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(54),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[21]~28_combout\);

-- Location: FF_X53_Y41_N17
\FD|BR|bancoReg_rtl_1_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[21]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(53));

-- Location: LCCOMB_X53_Y41_N0
\FD|BR|saidaB[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~29_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[21]~28_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\)) # (!\FD|BR|saidaB[21]~28_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[21]~28_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(53),
	combout => \FD|BR|saidaB[21]~29_combout\);

-- Location: FF_X53_Y41_N1
\FD|REG_ID_EX|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[21]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(63));

-- Location: LCCOMB_X52_Y41_N10
\FD|mux_Banco_Ula|saida[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[21]~14_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(14),
	datac => \FD|REG_ID_EX|data_s\(63),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[21]~14_combout\);

-- Location: LCCOMB_X52_Y42_N10
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

-- Location: FF_X52_Y42_N11
\FD|BR|bancoReg_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(52));

-- Location: LCCOMB_X52_Y42_N24
\FD|BR|saidaA[20]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~30_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(52) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(52),
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[20]~30_combout\);

-- Location: FF_X52_Y42_N25
\FD|BR|bancoReg_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[20]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(51));

-- Location: LCCOMB_X52_Y42_N4
\FD|BR|saidaA[20]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~31_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[20]~30_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\)) # (!\FD|BR|saidaA[20]~30_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\,
	datab => \FD|BR|saidaA[20]~30_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(51),
	combout => \FD|BR|saidaA[20]~31_combout\);

-- Location: FF_X52_Y42_N5
\FD|REG_ID_EX|data_s[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[20]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(94));

-- Location: FF_X55_Y41_N23
\FD|BR|bancoReg_rtl_1_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[19]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(49));

-- Location: LCCOMB_X53_Y44_N24
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

-- Location: FF_X53_Y44_N25
\FD|BR|bancoReg_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(50));

-- Location: LCCOMB_X53_Y44_N26
\FD|BR|saidaB[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~32_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(50) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(50),
	combout => \FD|BR|saidaB[19]~32_combout\);

-- Location: LCCOMB_X55_Y41_N8
\FD|BR|saidaB[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~33_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[19]~32_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\))) # (!\FD|BR|saidaB[19]~32_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(49),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\,
	datad => \FD|BR|saidaB[19]~32_combout\,
	combout => \FD|BR|saidaB[19]~33_combout\);

-- Location: FF_X55_Y41_N9
\FD|REG_ID_EX|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[19]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(61));

-- Location: LCCOMB_X55_Y41_N0
\FD|mux_Banco_Ula|saida[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[19]~16_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(61),
	datac => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[19]~16_combout\);

-- Location: LCCOMB_X55_Y41_N26
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

-- Location: FF_X55_Y41_N27
\FD|BR|bancoReg_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(50));

-- Location: LCCOMB_X55_Y41_N24
\FD|BR|saidaA[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~32_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(50) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(50),
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[19]~32_combout\);

-- Location: FF_X55_Y41_N25
\FD|BR|bancoReg_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[19]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(49));

-- Location: LCCOMB_X55_Y41_N16
\FD|BR|saidaA[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~33_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[19]~32_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\)) # (!\FD|BR|saidaA[19]~32_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[19]~32_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(49),
	combout => \FD|BR|saidaA[19]~33_combout\);

-- Location: FF_X55_Y41_N17
\FD|REG_ID_EX|data_s[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[19]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(93));

-- Location: LCCOMB_X52_Y38_N14
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

-- Location: FF_X52_Y38_N15
\FD|BR|bancoReg_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(48));

-- Location: LCCOMB_X52_Y38_N12
\FD|BR|saidaA[18]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~34_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(48) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(48),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[18]~34_combout\);

-- Location: FF_X52_Y38_N13
\FD|BR|bancoReg_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[18]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(47));

-- Location: LCCOMB_X52_Y38_N20
\FD|BR|saidaA[18]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~35_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[18]~34_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\)) # (!\FD|BR|saidaA[18]~34_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[18]~34_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(47),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[18]~35_combout\);

-- Location: FF_X52_Y38_N21
\FD|REG_ID_EX|data_s[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(92));

-- Location: LCCOMB_X52_Y38_N26
\FD|mux_Banco_Ula|saida[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[18]~17_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(60),
	datac => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[18]~17_combout\);

-- Location: LCCOMB_X52_Y38_N30
\FD|mux_Banco_Ula|saida[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[17]~18_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(59),
	datab => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[17]~18_combout\);

-- Location: LCCOMB_X50_Y38_N24
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

-- Location: FF_X50_Y38_N25
\FD|BR|bancoReg_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(46));

-- Location: LCCOMB_X52_Y38_N18
\FD|BR|saidaA[17]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~36_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(46) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(46),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[17]~36_combout\);

-- Location: FF_X52_Y38_N9
\FD|BR|bancoReg_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[17]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(45));

-- Location: LCCOMB_X52_Y38_N24
\FD|BR|saidaA[17]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~37_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[17]~36_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\)) # (!\FD|BR|saidaA[17]~36_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\,
	datab => \FD|BR|saidaA[17]~36_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(45),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[17]~37_combout\);

-- Location: FF_X52_Y38_N25
\FD|REG_ID_EX|data_s[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(91));

-- Location: LCCOMB_X48_Y45_N22
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

-- Location: FF_X48_Y45_N23
\FD|BR|bancoReg_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(44));

-- Location: LCCOMB_X48_Y45_N12
\FD|BR|saidaA[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~38_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(44) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(44),
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[16]~38_combout\);

-- Location: FF_X48_Y45_N13
\FD|BR|bancoReg_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[16]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(43));

-- Location: LCCOMB_X48_Y45_N8
\FD|BR|saidaA[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~39_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[16]~38_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\)) # (!\FD|BR|saidaA[16]~38_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[16]~38_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(43),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[16]~39_combout\);

-- Location: FF_X48_Y45_N9
\FD|REG_ID_EX|data_s[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(90));

-- Location: LCCOMB_X52_Y44_N2
\FD|mux_Banco_Ula|saida[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[16]~19_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(14),
	datab => \FD|REG_ID_EX|data_s\(58),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[16]~19_combout\);

-- Location: LCCOMB_X52_Y41_N14
\FD|mux_Banco_Ula|saida[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[15]~20_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(57),
	datab => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[15]~20_combout\);

-- Location: FF_X48_Y41_N13
\FD|BR|bancoReg_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[15]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(41));

-- Location: LCCOMB_X48_Y40_N0
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

-- Location: FF_X48_Y40_N1
\FD|BR|bancoReg_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(42));

-- Location: LCCOMB_X48_Y40_N26
\FD|BR|saidaA[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(42) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(42),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[15]~40_combout\);

-- Location: LCCOMB_X48_Y41_N24
\FD|BR|saidaA[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~41_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[15]~40_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\))) # (!\FD|BR|saidaA[15]~40_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(41),
	datab => \FD|BR|saidaA[15]~40_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[15]~41_combout\);

-- Location: FF_X48_Y41_N25
\FD|REG_ID_EX|data_s[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(89));

-- Location: LCCOMB_X52_Y40_N14
\FD|mux_Banco_Ula|saida[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[14]~21_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(1)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(56),
	datac => \FD|REG_ID_EX|data_s\(1),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[14]~21_combout\);

-- Location: FF_X49_Y41_N7
\FD|BR|bancoReg_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[14]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(39));

-- Location: LCCOMB_X49_Y41_N8
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

-- Location: FF_X49_Y41_N9
\FD|BR|bancoReg_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(40));

-- Location: LCCOMB_X49_Y41_N6
\FD|BR|saidaA[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~42_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(40) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(40),
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[14]~42_combout\);

-- Location: LCCOMB_X49_Y41_N0
\FD|BR|saidaA[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~43_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[14]~42_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\))) # (!\FD|BR|saidaA[14]~42_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(39),
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\,
	datac => \FD|BR|saidaA[14]~42_combout\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[14]~43_combout\);

-- Location: FF_X49_Y41_N1
\FD|REG_ID_EX|data_s[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(88));

-- Location: LCCOMB_X48_Y41_N30
\FD|BR|bancoReg_rtl_0_bypass[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[37]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[13]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[13]~22_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[37]~feeder_combout\);

-- Location: FF_X48_Y41_N31
\FD|BR|bancoReg_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(37));

-- Location: LCCOMB_X48_Y40_N12
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

-- Location: FF_X48_Y40_N13
\FD|BR|bancoReg_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(38));

-- Location: LCCOMB_X48_Y40_N22
\FD|BR|saidaA[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~44_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(38) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(38),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[13]~44_combout\);

-- Location: LCCOMB_X48_Y40_N24
\FD|BR|saidaA[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~45_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[13]~44_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\))) # (!\FD|BR|saidaA[13]~44_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(37),
	datab => \FD|BR|saidaA[13]~44_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[13]~45_combout\);

-- Location: FF_X48_Y40_N25
\FD|REG_ID_EX|data_s[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[13]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(87));

-- Location: LCCOMB_X48_Y41_N26
\FD|mux_Banco_Ula|saida[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[13]~22_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(55),
	datac => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[13]~22_combout\);

-- Location: LCCOMB_X52_Y44_N28
\FD|mux_Banco_Ula|saida[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[12]~23_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(54),
	datab => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[12]~23_combout\);

-- Location: LCCOMB_X48_Y40_N20
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

-- Location: FF_X48_Y40_N21
\FD|BR|bancoReg_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(36));

-- Location: LCCOMB_X48_Y40_N18
\FD|BR|saidaA[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~46_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(36) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(36),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[12]~46_combout\);

-- Location: FF_X48_Y40_N19
\FD|BR|bancoReg_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[12]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(35));

-- Location: LCCOMB_X48_Y40_N4
\FD|BR|saidaA[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~47_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[12]~46_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\))) # (!\FD|BR|saidaA[12]~46_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[12]~46_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(35),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\,
	combout => \FD|BR|saidaA[12]~47_combout\);

-- Location: FF_X48_Y40_N5
\FD|REG_ID_EX|data_s[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(86));

-- Location: LCCOMB_X48_Y45_N24
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

-- Location: FF_X48_Y45_N25
\FD|BR|bancoReg_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(34));

-- Location: LCCOMB_X48_Y45_N26
\FD|BR|saidaA[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~48_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(34) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(34),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[11]~48_combout\);

-- Location: FF_X49_Y39_N9
\FD|BR|bancoReg_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[11]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(33));

-- Location: LCCOMB_X49_Y39_N0
\FD|BR|saidaA[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~49_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[11]~48_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\)) # (!\FD|BR|saidaA[11]~48_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\,
	datab => \FD|BR|saidaA[11]~48_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(33),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[11]~49_combout\);

-- Location: FF_X49_Y39_N1
\FD|REG_ID_EX|data_s[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(85));

-- Location: LCCOMB_X48_Y39_N26
\FD|mux_Banco_Ula|saida[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[11]~24_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(14),
	datac => \FD|REG_ID_EX|data_s\(53),
	combout => \FD|mux_Banco_Ula|saida[11]~24_combout\);

-- Location: FF_X49_Y40_N9
\FD|BR|bancoReg_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[10]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(31));

-- Location: LCCOMB_X48_Y40_N16
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

-- Location: FF_X48_Y40_N17
\FD|BR|bancoReg_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(32));

-- Location: LCCOMB_X48_Y40_N10
\FD|BR|saidaA[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~50_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(32) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(32),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[10]~50_combout\);

-- Location: LCCOMB_X48_Y40_N14
\FD|BR|saidaA[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~51_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[10]~50_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\)) # (!\FD|BR|saidaA[10]~50_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(31),
	datac => \FD|BR|saidaA[10]~50_combout\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[10]~51_combout\);

-- Location: FF_X48_Y40_N15
\FD|REG_ID_EX|data_s[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[10]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(84));

-- Location: LCCOMB_X48_Y39_N6
\FD|mux_Banco_Ula|saida[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[10]~25_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(52),
	datab => \FD|REG_ID_EX|data_s\(14),
	datac => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[10]~25_combout\);

-- Location: LCCOMB_X49_Y39_N20
\FD|mux_Banco_Ula|saida[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[9]~26_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(51),
	datac => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[9]~26_combout\);

-- Location: LCCOMB_X56_Y41_N22
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

-- Location: FF_X56_Y41_N23
\FD|BR|bancoReg_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(28));

-- Location: LCCOMB_X56_Y41_N20
\FD|BR|saidaA[8]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~54_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(28) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(28),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[8]~54_combout\);

-- Location: FF_X56_Y41_N21
\FD|BR|bancoReg_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[8]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(27));

-- Location: LCCOMB_X56_Y41_N14
\FD|BR|saidaA[8]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~55_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[8]~54_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\)) # (!\FD|BR|saidaA[8]~54_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[8]~54_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(27),
	combout => \FD|BR|saidaA[8]~55_combout\);

-- Location: FF_X56_Y41_N15
\FD|REG_ID_EX|data_s[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[8]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(82));

-- Location: LCCOMB_X52_Y44_N8
\FD|mux_Banco_Ula|saida[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[7]~28_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(49),
	datab => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[7]~28_combout\);

-- Location: FF_X53_Y41_N31
\FD|BR|bancoReg_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(23));

-- Location: LCCOMB_X53_Y41_N24
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

-- Location: FF_X53_Y41_N25
\FD|BR|bancoReg_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(24));

-- Location: LCCOMB_X53_Y41_N30
\FD|BR|saidaA[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~58_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(24) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(24),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[6]~58_combout\);

-- Location: LCCOMB_X53_Y41_N20
\FD|BR|saidaA[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~59_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[6]~58_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\))) # (!\FD|BR|saidaA[6]~58_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(23),
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\,
	datac => \FD|BR|saidaA[6]~58_combout\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[6]~59_combout\);

-- Location: FF_X53_Y41_N21
\FD|REG_ID_EX|data_s[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[6]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(80));

-- Location: LCCOMB_X47_Y40_N24
\FD|mux_Banco_Ula|saida[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[5]~30_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(1))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(1),
	datab => \FD|REG_ID_EX|data_s\(47),
	datac => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[5]~30_combout\);

-- Location: LCCOMB_X47_Y39_N26
\FD|mux_Banco_Ula|saida[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[4]~31_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(46),
	datac => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[4]~31_combout\);

-- Location: FF_X52_Y43_N23
\FD|BR|bancoReg_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[3]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(17));

-- Location: LCCOMB_X53_Y43_N8
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

-- Location: FF_X53_Y43_N9
\FD|BR|bancoReg_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(18));

-- Location: LCCOMB_X53_Y43_N18
\FD|BR|saidaA[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~4_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(18) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(18),
	datac => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[3]~4_combout\);

-- Location: LCCOMB_X52_Y43_N10
\FD|BR|saidaA[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~5_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[3]~4_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\)) # (!\FD|BR|saidaA[3]~4_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(17),
	datad => \FD|BR|saidaA[3]~4_combout\,
	combout => \FD|BR|saidaA[3]~5_combout\);

-- Location: FF_X52_Y43_N11
\FD|REG_ID_EX|data_s[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(77));

-- Location: LCCOMB_X53_Y43_N28
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

-- Location: FF_X53_Y43_N29
\FD|BR|bancoReg_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(16));

-- Location: LCCOMB_X53_Y43_N6
\FD|BR|saidaA[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~6_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(16) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(16),
	datac => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[2]~6_combout\);

-- Location: LCCOMB_X55_Y43_N28
\FD|BR|bancoReg_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[15]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[2]~3_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X55_Y43_N29
\FD|BR|bancoReg_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(15));

-- Location: LCCOMB_X55_Y43_N2
\FD|BR|saidaA[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~7_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[2]~6_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\)) # (!\FD|BR|saidaA[2]~6_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[2]~6_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(15),
	combout => \FD|BR|saidaA[2]~7_combout\);

-- Location: FF_X55_Y43_N3
\FD|REG_ID_EX|data_s[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(76));

-- Location: LCCOMB_X53_Y43_N26
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

-- Location: FF_X53_Y43_N27
\FD|BR|bancoReg_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(14));

-- Location: LCCOMB_X56_Y41_N18
\FD|BR|saidaA[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~0_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(14) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(14),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[1]~0_combout\);

-- Location: FF_X56_Y41_N17
\FD|BR|bancoReg_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(13));

-- Location: LCCOMB_X56_Y41_N24
\FD|BR|saidaA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~1_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[1]~0_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\)) # (!\FD|BR|saidaA[1]~0_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[1]~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(13),
	combout => \FD|BR|saidaA[1]~1_combout\);

-- Location: FF_X56_Y41_N25
\FD|REG_ID_EX|data_s[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(75));

-- Location: LCCOMB_X50_Y39_N26
\FD|mux_Banco_Ula|saida[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[1]~0_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(11))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(138),
	datac => \FD|REG_ID_EX|data_s\(11),
	datad => \FD|REG_ID_EX|data_s\(43),
	combout => \FD|mux_Banco_Ula|saida[1]~0_combout\);

-- Location: LCCOMB_X55_Y39_N4
\FD|mux_Banco_Ula|saida[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[0]~1_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(10)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(42),
	datad => \FD|REG_ID_EX|data_s\(10),
	combout => \FD|mux_Banco_Ula|saida[0]~1_combout\);

-- Location: LCCOMB_X52_Y43_N12
\FD|BR|bancoReg_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[0]~1_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X52_Y43_N13
\FD|BR|bancoReg_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(11));

-- Location: LCCOMB_X53_Y43_N12
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

-- Location: FF_X53_Y43_N13
\FD|BR|bancoReg_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(12));

-- Location: LCCOMB_X53_Y43_N22
\FD|BR|saidaA[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~2_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(12) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(12),
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[0]~2_combout\);

-- Location: LCCOMB_X52_Y43_N16
\FD|BR|saidaA[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~3_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[0]~2_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\FD|BR|saidaA[0]~2_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(11),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \FD|BR|saidaA[0]~2_combout\,
	combout => \FD|BR|saidaA[0]~3_combout\);

-- Location: FF_X52_Y43_N17
\FD|REG_ID_EX|data_s[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(74));

-- Location: LCCOMB_X48_Y43_N0
\FD|ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~0_combout\ = (\FD|mux_Banco_Ula|saida[0]~1_combout\ & (\FD|REG_ID_EX|data_s\(74) $ (VCC))) # (!\FD|mux_Banco_Ula|saida[0]~1_combout\ & ((\FD|REG_ID_EX|data_s\(74)) # (GND)))
-- \FD|ULA|Add1~1\ = CARRY((\FD|REG_ID_EX|data_s\(74)) # (!\FD|mux_Banco_Ula|saida[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[0]~1_combout\,
	datab => \FD|REG_ID_EX|data_s\(74),
	datad => VCC,
	combout => \FD|ULA|Add1~0_combout\,
	cout => \FD|ULA|Add1~1\);

-- Location: LCCOMB_X48_Y43_N2
\FD|ULA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~2_combout\ = (\FD|REG_ID_EX|data_s\(75) & ((\FD|mux_Banco_Ula|saida[1]~0_combout\ & (!\FD|ULA|Add1~1\)) # (!\FD|mux_Banco_Ula|saida[1]~0_combout\ & (\FD|ULA|Add1~1\ & VCC)))) # (!\FD|REG_ID_EX|data_s\(75) & 
-- ((\FD|mux_Banco_Ula|saida[1]~0_combout\ & ((\FD|ULA|Add1~1\) # (GND))) # (!\FD|mux_Banco_Ula|saida[1]~0_combout\ & (!\FD|ULA|Add1~1\))))
-- \FD|ULA|Add1~3\ = CARRY((\FD|REG_ID_EX|data_s\(75) & (\FD|mux_Banco_Ula|saida[1]~0_combout\ & !\FD|ULA|Add1~1\)) # (!\FD|REG_ID_EX|data_s\(75) & ((\FD|mux_Banco_Ula|saida[1]~0_combout\) # (!\FD|ULA|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(75),
	datab => \FD|mux_Banco_Ula|saida[1]~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~1\,
	combout => \FD|ULA|Add1~2_combout\,
	cout => \FD|ULA|Add1~3\);

-- Location: LCCOMB_X48_Y43_N4
\FD|ULA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~4_combout\ = ((\FD|REG_ID_EX|data_s\(76) $ (\FD|mux_Banco_Ula|saida[2]~3_combout\ $ (\FD|ULA|Add1~3\)))) # (GND)
-- \FD|ULA|Add1~5\ = CARRY((\FD|REG_ID_EX|data_s\(76) & ((!\FD|ULA|Add1~3\) # (!\FD|mux_Banco_Ula|saida[2]~3_combout\))) # (!\FD|REG_ID_EX|data_s\(76) & (!\FD|mux_Banco_Ula|saida[2]~3_combout\ & !\FD|ULA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(76),
	datab => \FD|mux_Banco_Ula|saida[2]~3_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~3\,
	combout => \FD|ULA|Add1~4_combout\,
	cout => \FD|ULA|Add1~5\);

-- Location: LCCOMB_X48_Y43_N6
\FD|ULA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~2_combout\ & ((\FD|REG_ID_EX|data_s\(77) & (!\FD|ULA|Add1~5\)) # (!\FD|REG_ID_EX|data_s\(77) & ((\FD|ULA|Add1~5\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[3]~2_combout\ & ((\FD|REG_ID_EX|data_s\(77) & 
-- (\FD|ULA|Add1~5\ & VCC)) # (!\FD|REG_ID_EX|data_s\(77) & (!\FD|ULA|Add1~5\))))
-- \FD|ULA|Add1~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~2_combout\ & ((!\FD|ULA|Add1~5\) # (!\FD|REG_ID_EX|data_s\(77)))) # (!\FD|mux_Banco_Ula|saida[3]~2_combout\ & (!\FD|REG_ID_EX|data_s\(77) & !\FD|ULA|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(77),
	datad => VCC,
	cin => \FD|ULA|Add1~5\,
	combout => \FD|ULA|Add1~6_combout\,
	cout => \FD|ULA|Add1~7\);

-- Location: LCCOMB_X48_Y43_N8
\FD|ULA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~8_combout\ = ((\FD|mux_Banco_Ula|saida[4]~31_combout\ $ (\FD|REG_ID_EX|data_s\(78) $ (\FD|ULA|Add1~7\)))) # (GND)
-- \FD|ULA|Add1~9\ = CARRY((\FD|mux_Banco_Ula|saida[4]~31_combout\ & (\FD|REG_ID_EX|data_s\(78) & !\FD|ULA|Add1~7\)) # (!\FD|mux_Banco_Ula|saida[4]~31_combout\ & ((\FD|REG_ID_EX|data_s\(78)) # (!\FD|ULA|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~31_combout\,
	datab => \FD|REG_ID_EX|data_s\(78),
	datad => VCC,
	cin => \FD|ULA|Add1~7\,
	combout => \FD|ULA|Add1~8_combout\,
	cout => \FD|ULA|Add1~9\);

-- Location: LCCOMB_X48_Y43_N10
\FD|ULA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((\FD|REG_ID_EX|data_s\(79) & (!\FD|ULA|Add1~9\)) # (!\FD|REG_ID_EX|data_s\(79) & ((\FD|ULA|Add1~9\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((\FD|REG_ID_EX|data_s\(79) 
-- & (\FD|ULA|Add1~9\ & VCC)) # (!\FD|REG_ID_EX|data_s\(79) & (!\FD|ULA|Add1~9\))))
-- \FD|ULA|Add1~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((!\FD|ULA|Add1~9\) # (!\FD|REG_ID_EX|data_s\(79)))) # (!\FD|mux_Banco_Ula|saida[5]~30_combout\ & (!\FD|REG_ID_EX|data_s\(79) & !\FD|ULA|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~30_combout\,
	datab => \FD|REG_ID_EX|data_s\(79),
	datad => VCC,
	cin => \FD|ULA|Add1~9\,
	combout => \FD|ULA|Add1~10_combout\,
	cout => \FD|ULA|Add1~11\);

-- Location: LCCOMB_X48_Y43_N12
\FD|ULA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~12_combout\ = ((\FD|mux_Banco_Ula|saida[6]~29_combout\ $ (\FD|REG_ID_EX|data_s\(80) $ (\FD|ULA|Add1~11\)))) # (GND)
-- \FD|ULA|Add1~13\ = CARRY((\FD|mux_Banco_Ula|saida[6]~29_combout\ & (\FD|REG_ID_EX|data_s\(80) & !\FD|ULA|Add1~11\)) # (!\FD|mux_Banco_Ula|saida[6]~29_combout\ & ((\FD|REG_ID_EX|data_s\(80)) # (!\FD|ULA|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~29_combout\,
	datab => \FD|REG_ID_EX|data_s\(80),
	datad => VCC,
	cin => \FD|ULA|Add1~11\,
	combout => \FD|ULA|Add1~12_combout\,
	cout => \FD|ULA|Add1~13\);

-- Location: LCCOMB_X48_Y43_N14
\FD|ULA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~14_combout\ = (\FD|REG_ID_EX|data_s\(81) & ((\FD|mux_Banco_Ula|saida[7]~28_combout\ & (!\FD|ULA|Add1~13\)) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & (\FD|ULA|Add1~13\ & VCC)))) # (!\FD|REG_ID_EX|data_s\(81) & 
-- ((\FD|mux_Banco_Ula|saida[7]~28_combout\ & ((\FD|ULA|Add1~13\) # (GND))) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & (!\FD|ULA|Add1~13\))))
-- \FD|ULA|Add1~15\ = CARRY((\FD|REG_ID_EX|data_s\(81) & (\FD|mux_Banco_Ula|saida[7]~28_combout\ & !\FD|ULA|Add1~13\)) # (!\FD|REG_ID_EX|data_s\(81) & ((\FD|mux_Banco_Ula|saida[7]~28_combout\) # (!\FD|ULA|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(81),
	datab => \FD|mux_Banco_Ula|saida[7]~28_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~13\,
	combout => \FD|ULA|Add1~14_combout\,
	cout => \FD|ULA|Add1~15\);

-- Location: LCCOMB_X48_Y43_N16
\FD|ULA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~16_combout\ = ((\FD|mux_Banco_Ula|saida[8]~27_combout\ $ (\FD|REG_ID_EX|data_s\(82) $ (\FD|ULA|Add1~15\)))) # (GND)
-- \FD|ULA|Add1~17\ = CARRY((\FD|mux_Banco_Ula|saida[8]~27_combout\ & (\FD|REG_ID_EX|data_s\(82) & !\FD|ULA|Add1~15\)) # (!\FD|mux_Banco_Ula|saida[8]~27_combout\ & ((\FD|REG_ID_EX|data_s\(82)) # (!\FD|ULA|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~27_combout\,
	datab => \FD|REG_ID_EX|data_s\(82),
	datad => VCC,
	cin => \FD|ULA|Add1~15\,
	combout => \FD|ULA|Add1~16_combout\,
	cout => \FD|ULA|Add1~17\);

-- Location: LCCOMB_X48_Y43_N18
\FD|ULA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~18_combout\ = (\FD|mux_Banco_Ula|saida[9]~26_combout\ & ((\FD|REG_ID_EX|data_s\(83) & (!\FD|ULA|Add1~17\)) # (!\FD|REG_ID_EX|data_s\(83) & ((\FD|ULA|Add1~17\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[9]~26_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(83) & (\FD|ULA|Add1~17\ & VCC)) # (!\FD|REG_ID_EX|data_s\(83) & (!\FD|ULA|Add1~17\))))
-- \FD|ULA|Add1~19\ = CARRY((\FD|mux_Banco_Ula|saida[9]~26_combout\ & ((!\FD|ULA|Add1~17\) # (!\FD|REG_ID_EX|data_s\(83)))) # (!\FD|mux_Banco_Ula|saida[9]~26_combout\ & (!\FD|REG_ID_EX|data_s\(83) & !\FD|ULA|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~26_combout\,
	datab => \FD|REG_ID_EX|data_s\(83),
	datad => VCC,
	cin => \FD|ULA|Add1~17\,
	combout => \FD|ULA|Add1~18_combout\,
	cout => \FD|ULA|Add1~19\);

-- Location: LCCOMB_X48_Y43_N20
\FD|ULA|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~20_combout\ = ((\FD|REG_ID_EX|data_s\(84) $ (\FD|mux_Banco_Ula|saida[10]~25_combout\ $ (\FD|ULA|Add1~19\)))) # (GND)
-- \FD|ULA|Add1~21\ = CARRY((\FD|REG_ID_EX|data_s\(84) & ((!\FD|ULA|Add1~19\) # (!\FD|mux_Banco_Ula|saida[10]~25_combout\))) # (!\FD|REG_ID_EX|data_s\(84) & (!\FD|mux_Banco_Ula|saida[10]~25_combout\ & !\FD|ULA|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(84),
	datab => \FD|mux_Banco_Ula|saida[10]~25_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~19\,
	combout => \FD|ULA|Add1~20_combout\,
	cout => \FD|ULA|Add1~21\);

-- Location: LCCOMB_X48_Y43_N22
\FD|ULA|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~22_combout\ = (\FD|REG_ID_EX|data_s\(85) & ((\FD|mux_Banco_Ula|saida[11]~24_combout\ & (!\FD|ULA|Add1~21\)) # (!\FD|mux_Banco_Ula|saida[11]~24_combout\ & (\FD|ULA|Add1~21\ & VCC)))) # (!\FD|REG_ID_EX|data_s\(85) & 
-- ((\FD|mux_Banco_Ula|saida[11]~24_combout\ & ((\FD|ULA|Add1~21\) # (GND))) # (!\FD|mux_Banco_Ula|saida[11]~24_combout\ & (!\FD|ULA|Add1~21\))))
-- \FD|ULA|Add1~23\ = CARRY((\FD|REG_ID_EX|data_s\(85) & (\FD|mux_Banco_Ula|saida[11]~24_combout\ & !\FD|ULA|Add1~21\)) # (!\FD|REG_ID_EX|data_s\(85) & ((\FD|mux_Banco_Ula|saida[11]~24_combout\) # (!\FD|ULA|Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(85),
	datab => \FD|mux_Banco_Ula|saida[11]~24_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~21\,
	combout => \FD|ULA|Add1~22_combout\,
	cout => \FD|ULA|Add1~23\);

-- Location: LCCOMB_X48_Y43_N24
\FD|ULA|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~23_combout\ $ (\FD|REG_ID_EX|data_s\(86) $ (\FD|ULA|Add1~23\)))) # (GND)
-- \FD|ULA|Add1~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~23_combout\ & (\FD|REG_ID_EX|data_s\(86) & !\FD|ULA|Add1~23\)) # (!\FD|mux_Banco_Ula|saida[12]~23_combout\ & ((\FD|REG_ID_EX|data_s\(86)) # (!\FD|ULA|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~23_combout\,
	datab => \FD|REG_ID_EX|data_s\(86),
	datad => VCC,
	cin => \FD|ULA|Add1~23\,
	combout => \FD|ULA|Add1~24_combout\,
	cout => \FD|ULA|Add1~25\);

-- Location: LCCOMB_X48_Y43_N26
\FD|ULA|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~26_combout\ = (\FD|REG_ID_EX|data_s\(87) & ((\FD|mux_Banco_Ula|saida[13]~22_combout\ & (!\FD|ULA|Add1~25\)) # (!\FD|mux_Banco_Ula|saida[13]~22_combout\ & (\FD|ULA|Add1~25\ & VCC)))) # (!\FD|REG_ID_EX|data_s\(87) & 
-- ((\FD|mux_Banco_Ula|saida[13]~22_combout\ & ((\FD|ULA|Add1~25\) # (GND))) # (!\FD|mux_Banco_Ula|saida[13]~22_combout\ & (!\FD|ULA|Add1~25\))))
-- \FD|ULA|Add1~27\ = CARRY((\FD|REG_ID_EX|data_s\(87) & (\FD|mux_Banco_Ula|saida[13]~22_combout\ & !\FD|ULA|Add1~25\)) # (!\FD|REG_ID_EX|data_s\(87) & ((\FD|mux_Banco_Ula|saida[13]~22_combout\) # (!\FD|ULA|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(87),
	datab => \FD|mux_Banco_Ula|saida[13]~22_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~25\,
	combout => \FD|ULA|Add1~26_combout\,
	cout => \FD|ULA|Add1~27\);

-- Location: LCCOMB_X48_Y43_N28
\FD|ULA|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~28_combout\ = ((\FD|mux_Banco_Ula|saida[14]~21_combout\ $ (\FD|REG_ID_EX|data_s\(88) $ (\FD|ULA|Add1~27\)))) # (GND)
-- \FD|ULA|Add1~29\ = CARRY((\FD|mux_Banco_Ula|saida[14]~21_combout\ & (\FD|REG_ID_EX|data_s\(88) & !\FD|ULA|Add1~27\)) # (!\FD|mux_Banco_Ula|saida[14]~21_combout\ & ((\FD|REG_ID_EX|data_s\(88)) # (!\FD|ULA|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~21_combout\,
	datab => \FD|REG_ID_EX|data_s\(88),
	datad => VCC,
	cin => \FD|ULA|Add1~27\,
	combout => \FD|ULA|Add1~28_combout\,
	cout => \FD|ULA|Add1~29\);

-- Location: LCCOMB_X48_Y43_N30
\FD|ULA|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~30_combout\ = (\FD|mux_Banco_Ula|saida[15]~20_combout\ & ((\FD|REG_ID_EX|data_s\(89) & (!\FD|ULA|Add1~29\)) # (!\FD|REG_ID_EX|data_s\(89) & ((\FD|ULA|Add1~29\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[15]~20_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(89) & (\FD|ULA|Add1~29\ & VCC)) # (!\FD|REG_ID_EX|data_s\(89) & (!\FD|ULA|Add1~29\))))
-- \FD|ULA|Add1~31\ = CARRY((\FD|mux_Banco_Ula|saida[15]~20_combout\ & ((!\FD|ULA|Add1~29\) # (!\FD|REG_ID_EX|data_s\(89)))) # (!\FD|mux_Banco_Ula|saida[15]~20_combout\ & (!\FD|REG_ID_EX|data_s\(89) & !\FD|ULA|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~20_combout\,
	datab => \FD|REG_ID_EX|data_s\(89),
	datad => VCC,
	cin => \FD|ULA|Add1~29\,
	combout => \FD|ULA|Add1~30_combout\,
	cout => \FD|ULA|Add1~31\);

-- Location: LCCOMB_X48_Y42_N0
\FD|ULA|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~32_combout\ = ((\FD|REG_ID_EX|data_s\(90) $ (\FD|mux_Banco_Ula|saida[16]~19_combout\ $ (\FD|ULA|Add1~31\)))) # (GND)
-- \FD|ULA|Add1~33\ = CARRY((\FD|REG_ID_EX|data_s\(90) & ((!\FD|ULA|Add1~31\) # (!\FD|mux_Banco_Ula|saida[16]~19_combout\))) # (!\FD|REG_ID_EX|data_s\(90) & (!\FD|mux_Banco_Ula|saida[16]~19_combout\ & !\FD|ULA|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(90),
	datab => \FD|mux_Banco_Ula|saida[16]~19_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~31\,
	combout => \FD|ULA|Add1~32_combout\,
	cout => \FD|ULA|Add1~33\);

-- Location: LCCOMB_X48_Y42_N2
\FD|ULA|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~34_combout\ = (\FD|mux_Banco_Ula|saida[17]~18_combout\ & ((\FD|REG_ID_EX|data_s\(91) & (!\FD|ULA|Add1~33\)) # (!\FD|REG_ID_EX|data_s\(91) & ((\FD|ULA|Add1~33\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[17]~18_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(91) & (\FD|ULA|Add1~33\ & VCC)) # (!\FD|REG_ID_EX|data_s\(91) & (!\FD|ULA|Add1~33\))))
-- \FD|ULA|Add1~35\ = CARRY((\FD|mux_Banco_Ula|saida[17]~18_combout\ & ((!\FD|ULA|Add1~33\) # (!\FD|REG_ID_EX|data_s\(91)))) # (!\FD|mux_Banco_Ula|saida[17]~18_combout\ & (!\FD|REG_ID_EX|data_s\(91) & !\FD|ULA|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~18_combout\,
	datab => \FD|REG_ID_EX|data_s\(91),
	datad => VCC,
	cin => \FD|ULA|Add1~33\,
	combout => \FD|ULA|Add1~34_combout\,
	cout => \FD|ULA|Add1~35\);

-- Location: LCCOMB_X48_Y42_N4
\FD|ULA|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~36_combout\ = ((\FD|REG_ID_EX|data_s\(92) $ (\FD|mux_Banco_Ula|saida[18]~17_combout\ $ (\FD|ULA|Add1~35\)))) # (GND)
-- \FD|ULA|Add1~37\ = CARRY((\FD|REG_ID_EX|data_s\(92) & ((!\FD|ULA|Add1~35\) # (!\FD|mux_Banco_Ula|saida[18]~17_combout\))) # (!\FD|REG_ID_EX|data_s\(92) & (!\FD|mux_Banco_Ula|saida[18]~17_combout\ & !\FD|ULA|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(92),
	datab => \FD|mux_Banco_Ula|saida[18]~17_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~35\,
	combout => \FD|ULA|Add1~36_combout\,
	cout => \FD|ULA|Add1~37\);

-- Location: LCCOMB_X48_Y42_N6
\FD|ULA|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~38_combout\ = (\FD|mux_Banco_Ula|saida[19]~16_combout\ & ((\FD|REG_ID_EX|data_s\(93) & (!\FD|ULA|Add1~37\)) # (!\FD|REG_ID_EX|data_s\(93) & ((\FD|ULA|Add1~37\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(93) & (\FD|ULA|Add1~37\ & VCC)) # (!\FD|REG_ID_EX|data_s\(93) & (!\FD|ULA|Add1~37\))))
-- \FD|ULA|Add1~39\ = CARRY((\FD|mux_Banco_Ula|saida[19]~16_combout\ & ((!\FD|ULA|Add1~37\) # (!\FD|REG_ID_EX|data_s\(93)))) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & (!\FD|REG_ID_EX|data_s\(93) & !\FD|ULA|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~16_combout\,
	datab => \FD|REG_ID_EX|data_s\(93),
	datad => VCC,
	cin => \FD|ULA|Add1~37\,
	combout => \FD|ULA|Add1~38_combout\,
	cout => \FD|ULA|Add1~39\);

-- Location: LCCOMB_X48_Y42_N8
\FD|ULA|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~40_combout\ = ((\FD|mux_Banco_Ula|saida[20]~15_combout\ $ (\FD|REG_ID_EX|data_s\(94) $ (\FD|ULA|Add1~39\)))) # (GND)
-- \FD|ULA|Add1~41\ = CARRY((\FD|mux_Banco_Ula|saida[20]~15_combout\ & (\FD|REG_ID_EX|data_s\(94) & !\FD|ULA|Add1~39\)) # (!\FD|mux_Banco_Ula|saida[20]~15_combout\ & ((\FD|REG_ID_EX|data_s\(94)) # (!\FD|ULA|Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~15_combout\,
	datab => \FD|REG_ID_EX|data_s\(94),
	datad => VCC,
	cin => \FD|ULA|Add1~39\,
	combout => \FD|ULA|Add1~40_combout\,
	cout => \FD|ULA|Add1~41\);

-- Location: LCCOMB_X48_Y42_N10
\FD|ULA|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~42_combout\ = (\FD|REG_ID_EX|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~14_combout\ & (!\FD|ULA|Add1~41\)) # (!\FD|mux_Banco_Ula|saida[21]~14_combout\ & (\FD|ULA|Add1~41\ & VCC)))) # (!\FD|REG_ID_EX|data_s\(95) & 
-- ((\FD|mux_Banco_Ula|saida[21]~14_combout\ & ((\FD|ULA|Add1~41\) # (GND))) # (!\FD|mux_Banco_Ula|saida[21]~14_combout\ & (!\FD|ULA|Add1~41\))))
-- \FD|ULA|Add1~43\ = CARRY((\FD|REG_ID_EX|data_s\(95) & (\FD|mux_Banco_Ula|saida[21]~14_combout\ & !\FD|ULA|Add1~41\)) # (!\FD|REG_ID_EX|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~14_combout\) # (!\FD|ULA|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(95),
	datab => \FD|mux_Banco_Ula|saida[21]~14_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~41\,
	combout => \FD|ULA|Add1~42_combout\,
	cout => \FD|ULA|Add1~43\);

-- Location: LCCOMB_X48_Y42_N12
\FD|ULA|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~44_combout\ = ((\FD|mux_Banco_Ula|saida[22]~13_combout\ $ (\FD|REG_ID_EX|data_s\(96) $ (\FD|ULA|Add1~43\)))) # (GND)
-- \FD|ULA|Add1~45\ = CARRY((\FD|mux_Banco_Ula|saida[22]~13_combout\ & (\FD|REG_ID_EX|data_s\(96) & !\FD|ULA|Add1~43\)) # (!\FD|mux_Banco_Ula|saida[22]~13_combout\ & ((\FD|REG_ID_EX|data_s\(96)) # (!\FD|ULA|Add1~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~13_combout\,
	datab => \FD|REG_ID_EX|data_s\(96),
	datad => VCC,
	cin => \FD|ULA|Add1~43\,
	combout => \FD|ULA|Add1~44_combout\,
	cout => \FD|ULA|Add1~45\);

-- Location: LCCOMB_X48_Y42_N14
\FD|ULA|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~46_combout\ = (\FD|REG_ID_EX|data_s\(97) & ((\FD|mux_Banco_Ula|saida[23]~12_combout\ & (!\FD|ULA|Add1~45\)) # (!\FD|mux_Banco_Ula|saida[23]~12_combout\ & (\FD|ULA|Add1~45\ & VCC)))) # (!\FD|REG_ID_EX|data_s\(97) & 
-- ((\FD|mux_Banco_Ula|saida[23]~12_combout\ & ((\FD|ULA|Add1~45\) # (GND))) # (!\FD|mux_Banco_Ula|saida[23]~12_combout\ & (!\FD|ULA|Add1~45\))))
-- \FD|ULA|Add1~47\ = CARRY((\FD|REG_ID_EX|data_s\(97) & (\FD|mux_Banco_Ula|saida[23]~12_combout\ & !\FD|ULA|Add1~45\)) # (!\FD|REG_ID_EX|data_s\(97) & ((\FD|mux_Banco_Ula|saida[23]~12_combout\) # (!\FD|ULA|Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(97),
	datab => \FD|mux_Banco_Ula|saida[23]~12_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~45\,
	combout => \FD|ULA|Add1~46_combout\,
	cout => \FD|ULA|Add1~47\);

-- Location: LCCOMB_X48_Y42_N16
\FD|ULA|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~48_combout\ = ((\FD|REG_ID_EX|data_s\(98) $ (\FD|mux_Banco_Ula|saida[24]~11_combout\ $ (\FD|ULA|Add1~47\)))) # (GND)
-- \FD|ULA|Add1~49\ = CARRY((\FD|REG_ID_EX|data_s\(98) & ((!\FD|ULA|Add1~47\) # (!\FD|mux_Banco_Ula|saida[24]~11_combout\))) # (!\FD|REG_ID_EX|data_s\(98) & (!\FD|mux_Banco_Ula|saida[24]~11_combout\ & !\FD|ULA|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(98),
	datab => \FD|mux_Banco_Ula|saida[24]~11_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~47\,
	combout => \FD|ULA|Add1~48_combout\,
	cout => \FD|ULA|Add1~49\);

-- Location: LCCOMB_X48_Y42_N18
\FD|ULA|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~50_combout\ = (\FD|REG_ID_EX|data_s\(99) & ((\FD|mux_Banco_Ula|saida[25]~10_combout\ & (!\FD|ULA|Add1~49\)) # (!\FD|mux_Banco_Ula|saida[25]~10_combout\ & (\FD|ULA|Add1~49\ & VCC)))) # (!\FD|REG_ID_EX|data_s\(99) & 
-- ((\FD|mux_Banco_Ula|saida[25]~10_combout\ & ((\FD|ULA|Add1~49\) # (GND))) # (!\FD|mux_Banco_Ula|saida[25]~10_combout\ & (!\FD|ULA|Add1~49\))))
-- \FD|ULA|Add1~51\ = CARRY((\FD|REG_ID_EX|data_s\(99) & (\FD|mux_Banco_Ula|saida[25]~10_combout\ & !\FD|ULA|Add1~49\)) # (!\FD|REG_ID_EX|data_s\(99) & ((\FD|mux_Banco_Ula|saida[25]~10_combout\) # (!\FD|ULA|Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(99),
	datab => \FD|mux_Banco_Ula|saida[25]~10_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~49\,
	combout => \FD|ULA|Add1~50_combout\,
	cout => \FD|ULA|Add1~51\);

-- Location: LCCOMB_X48_Y42_N20
\FD|ULA|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~52_combout\ = ((\FD|REG_ID_EX|data_s\(100) $ (\FD|mux_Banco_Ula|saida[26]~9_combout\ $ (\FD|ULA|Add1~51\)))) # (GND)
-- \FD|ULA|Add1~53\ = CARRY((\FD|REG_ID_EX|data_s\(100) & ((!\FD|ULA|Add1~51\) # (!\FD|mux_Banco_Ula|saida[26]~9_combout\))) # (!\FD|REG_ID_EX|data_s\(100) & (!\FD|mux_Banco_Ula|saida[26]~9_combout\ & !\FD|ULA|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(100),
	datab => \FD|mux_Banco_Ula|saida[26]~9_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~51\,
	combout => \FD|ULA|Add1~52_combout\,
	cout => \FD|ULA|Add1~53\);

-- Location: LCCOMB_X48_Y42_N22
\FD|ULA|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~54_combout\ = (\FD|REG_ID_EX|data_s\(101) & ((\FD|mux_Banco_Ula|saida[27]~8_combout\ & (!\FD|ULA|Add1~53\)) # (!\FD|mux_Banco_Ula|saida[27]~8_combout\ & (\FD|ULA|Add1~53\ & VCC)))) # (!\FD|REG_ID_EX|data_s\(101) & 
-- ((\FD|mux_Banco_Ula|saida[27]~8_combout\ & ((\FD|ULA|Add1~53\) # (GND))) # (!\FD|mux_Banco_Ula|saida[27]~8_combout\ & (!\FD|ULA|Add1~53\))))
-- \FD|ULA|Add1~55\ = CARRY((\FD|REG_ID_EX|data_s\(101) & (\FD|mux_Banco_Ula|saida[27]~8_combout\ & !\FD|ULA|Add1~53\)) # (!\FD|REG_ID_EX|data_s\(101) & ((\FD|mux_Banco_Ula|saida[27]~8_combout\) # (!\FD|ULA|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(101),
	datab => \FD|mux_Banco_Ula|saida[27]~8_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~53\,
	combout => \FD|ULA|Add1~54_combout\,
	cout => \FD|ULA|Add1~55\);

-- Location: LCCOMB_X48_Y42_N24
\FD|ULA|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~56_combout\ = ((\FD|REG_ID_EX|data_s\(102) $ (\FD|mux_Banco_Ula|saida[28]~7_combout\ $ (\FD|ULA|Add1~55\)))) # (GND)
-- \FD|ULA|Add1~57\ = CARRY((\FD|REG_ID_EX|data_s\(102) & ((!\FD|ULA|Add1~55\) # (!\FD|mux_Banco_Ula|saida[28]~7_combout\))) # (!\FD|REG_ID_EX|data_s\(102) & (!\FD|mux_Banco_Ula|saida[28]~7_combout\ & !\FD|ULA|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(102),
	datab => \FD|mux_Banco_Ula|saida[28]~7_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~55\,
	combout => \FD|ULA|Add1~56_combout\,
	cout => \FD|ULA|Add1~57\);

-- Location: LCCOMB_X48_Y42_N26
\FD|ULA|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~58_combout\ = (\FD|REG_ID_EX|data_s\(103) & ((\FD|mux_Banco_Ula|saida[29]~6_combout\ & (!\FD|ULA|Add1~57\)) # (!\FD|mux_Banco_Ula|saida[29]~6_combout\ & (\FD|ULA|Add1~57\ & VCC)))) # (!\FD|REG_ID_EX|data_s\(103) & 
-- ((\FD|mux_Banco_Ula|saida[29]~6_combout\ & ((\FD|ULA|Add1~57\) # (GND))) # (!\FD|mux_Banco_Ula|saida[29]~6_combout\ & (!\FD|ULA|Add1~57\))))
-- \FD|ULA|Add1~59\ = CARRY((\FD|REG_ID_EX|data_s\(103) & (\FD|mux_Banco_Ula|saida[29]~6_combout\ & !\FD|ULA|Add1~57\)) # (!\FD|REG_ID_EX|data_s\(103) & ((\FD|mux_Banco_Ula|saida[29]~6_combout\) # (!\FD|ULA|Add1~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(103),
	datab => \FD|mux_Banco_Ula|saida[29]~6_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~57\,
	combout => \FD|ULA|Add1~58_combout\,
	cout => \FD|ULA|Add1~59\);

-- Location: LCCOMB_X48_Y42_N28
\FD|ULA|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~60_combout\ = ((\FD|mux_Banco_Ula|saida[30]~5_combout\ $ (\FD|REG_ID_EX|data_s\(104) $ (\FD|ULA|Add1~59\)))) # (GND)
-- \FD|ULA|Add1~61\ = CARRY((\FD|mux_Banco_Ula|saida[30]~5_combout\ & (\FD|REG_ID_EX|data_s\(104) & !\FD|ULA|Add1~59\)) # (!\FD|mux_Banco_Ula|saida[30]~5_combout\ & ((\FD|REG_ID_EX|data_s\(104)) # (!\FD|ULA|Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~5_combout\,
	datab => \FD|REG_ID_EX|data_s\(104),
	datad => VCC,
	cin => \FD|ULA|Add1~59\,
	combout => \FD|ULA|Add1~60_combout\,
	cout => \FD|ULA|Add1~61\);

-- Location: LCCOMB_X50_Y43_N0
\FD|ULA|soma[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[0]~0_combout\ = (\FD|REG_ID_EX|data_s\(74) & (\FD|mux_Banco_Ula|saida[0]~1_combout\ $ (VCC))) # (!\FD|REG_ID_EX|data_s\(74) & (\FD|mux_Banco_Ula|saida[0]~1_combout\ & VCC))
-- \FD|ULA|soma[0]~1\ = CARRY((\FD|REG_ID_EX|data_s\(74) & \FD|mux_Banco_Ula|saida[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(74),
	datab => \FD|mux_Banco_Ula|saida[0]~1_combout\,
	datad => VCC,
	combout => \FD|ULA|soma[0]~0_combout\,
	cout => \FD|ULA|soma[0]~1\);

-- Location: LCCOMB_X50_Y43_N2
\FD|ULA|soma[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[1]~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~0_combout\ & ((\FD|REG_ID_EX|data_s\(75) & (\FD|ULA|soma[0]~1\ & VCC)) # (!\FD|REG_ID_EX|data_s\(75) & (!\FD|ULA|soma[0]~1\)))) # (!\FD|mux_Banco_Ula|saida[1]~0_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(75) & (!\FD|ULA|soma[0]~1\)) # (!\FD|REG_ID_EX|data_s\(75) & ((\FD|ULA|soma[0]~1\) # (GND)))))
-- \FD|ULA|soma[1]~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~0_combout\ & (!\FD|REG_ID_EX|data_s\(75) & !\FD|ULA|soma[0]~1\)) # (!\FD|mux_Banco_Ula|saida[1]~0_combout\ & ((!\FD|ULA|soma[0]~1\) # (!\FD|REG_ID_EX|data_s\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~0_combout\,
	datab => \FD|REG_ID_EX|data_s\(75),
	datad => VCC,
	cin => \FD|ULA|soma[0]~1\,
	combout => \FD|ULA|soma[1]~2_combout\,
	cout => \FD|ULA|soma[1]~3\);

-- Location: LCCOMB_X50_Y43_N4
\FD|ULA|soma[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[2]~4_combout\ = ((\FD|mux_Banco_Ula|saida[2]~3_combout\ $ (\FD|REG_ID_EX|data_s\(76) $ (!\FD|ULA|soma[1]~3\)))) # (GND)
-- \FD|ULA|soma[2]~5\ = CARRY((\FD|mux_Banco_Ula|saida[2]~3_combout\ & ((\FD|REG_ID_EX|data_s\(76)) # (!\FD|ULA|soma[1]~3\))) # (!\FD|mux_Banco_Ula|saida[2]~3_combout\ & (\FD|REG_ID_EX|data_s\(76) & !\FD|ULA|soma[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~3_combout\,
	datab => \FD|REG_ID_EX|data_s\(76),
	datad => VCC,
	cin => \FD|ULA|soma[1]~3\,
	combout => \FD|ULA|soma[2]~4_combout\,
	cout => \FD|ULA|soma[2]~5\);

-- Location: LCCOMB_X50_Y43_N6
\FD|ULA|soma[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[3]~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~2_combout\ & ((\FD|REG_ID_EX|data_s\(77) & (\FD|ULA|soma[2]~5\ & VCC)) # (!\FD|REG_ID_EX|data_s\(77) & (!\FD|ULA|soma[2]~5\)))) # (!\FD|mux_Banco_Ula|saida[3]~2_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(77) & (!\FD|ULA|soma[2]~5\)) # (!\FD|REG_ID_EX|data_s\(77) & ((\FD|ULA|soma[2]~5\) # (GND)))))
-- \FD|ULA|soma[3]~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~2_combout\ & (!\FD|REG_ID_EX|data_s\(77) & !\FD|ULA|soma[2]~5\)) # (!\FD|mux_Banco_Ula|saida[3]~2_combout\ & ((!\FD|ULA|soma[2]~5\) # (!\FD|REG_ID_EX|data_s\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(77),
	datad => VCC,
	cin => \FD|ULA|soma[2]~5\,
	combout => \FD|ULA|soma[3]~6_combout\,
	cout => \FD|ULA|soma[3]~7\);

-- Location: LCCOMB_X50_Y43_N8
\FD|ULA|soma[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[4]~8_combout\ = ((\FD|mux_Banco_Ula|saida[4]~31_combout\ $ (\FD|REG_ID_EX|data_s\(78) $ (!\FD|ULA|soma[3]~7\)))) # (GND)
-- \FD|ULA|soma[4]~9\ = CARRY((\FD|mux_Banco_Ula|saida[4]~31_combout\ & ((\FD|REG_ID_EX|data_s\(78)) # (!\FD|ULA|soma[3]~7\))) # (!\FD|mux_Banco_Ula|saida[4]~31_combout\ & (\FD|REG_ID_EX|data_s\(78) & !\FD|ULA|soma[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~31_combout\,
	datab => \FD|REG_ID_EX|data_s\(78),
	datad => VCC,
	cin => \FD|ULA|soma[3]~7\,
	combout => \FD|ULA|soma[4]~8_combout\,
	cout => \FD|ULA|soma[4]~9\);

-- Location: LCCOMB_X50_Y43_N10
\FD|ULA|soma[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[5]~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((\FD|REG_ID_EX|data_s\(79) & (\FD|ULA|soma[4]~9\ & VCC)) # (!\FD|REG_ID_EX|data_s\(79) & (!\FD|ULA|soma[4]~9\)))) # (!\FD|mux_Banco_Ula|saida[5]~30_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(79) & (!\FD|ULA|soma[4]~9\)) # (!\FD|REG_ID_EX|data_s\(79) & ((\FD|ULA|soma[4]~9\) # (GND)))))
-- \FD|ULA|soma[5]~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~30_combout\ & (!\FD|REG_ID_EX|data_s\(79) & !\FD|ULA|soma[4]~9\)) # (!\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((!\FD|ULA|soma[4]~9\) # (!\FD|REG_ID_EX|data_s\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~30_combout\,
	datab => \FD|REG_ID_EX|data_s\(79),
	datad => VCC,
	cin => \FD|ULA|soma[4]~9\,
	combout => \FD|ULA|soma[5]~10_combout\,
	cout => \FD|ULA|soma[5]~11\);

-- Location: LCCOMB_X50_Y43_N12
\FD|ULA|soma[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[6]~12_combout\ = ((\FD|REG_ID_EX|data_s\(80) $ (\FD|mux_Banco_Ula|saida[6]~29_combout\ $ (!\FD|ULA|soma[5]~11\)))) # (GND)
-- \FD|ULA|soma[6]~13\ = CARRY((\FD|REG_ID_EX|data_s\(80) & ((\FD|mux_Banco_Ula|saida[6]~29_combout\) # (!\FD|ULA|soma[5]~11\))) # (!\FD|REG_ID_EX|data_s\(80) & (\FD|mux_Banco_Ula|saida[6]~29_combout\ & !\FD|ULA|soma[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(80),
	datab => \FD|mux_Banco_Ula|saida[6]~29_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[5]~11\,
	combout => \FD|ULA|soma[6]~12_combout\,
	cout => \FD|ULA|soma[6]~13\);

-- Location: LCCOMB_X50_Y43_N14
\FD|ULA|soma[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[7]~14_combout\ = (\FD|REG_ID_EX|data_s\(81) & ((\FD|mux_Banco_Ula|saida[7]~28_combout\ & (\FD|ULA|soma[6]~13\ & VCC)) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & (!\FD|ULA|soma[6]~13\)))) # (!\FD|REG_ID_EX|data_s\(81) & 
-- ((\FD|mux_Banco_Ula|saida[7]~28_combout\ & (!\FD|ULA|soma[6]~13\)) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & ((\FD|ULA|soma[6]~13\) # (GND)))))
-- \FD|ULA|soma[7]~15\ = CARRY((\FD|REG_ID_EX|data_s\(81) & (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & !\FD|ULA|soma[6]~13\)) # (!\FD|REG_ID_EX|data_s\(81) & ((!\FD|ULA|soma[6]~13\) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(81),
	datab => \FD|mux_Banco_Ula|saida[7]~28_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[6]~13\,
	combout => \FD|ULA|soma[7]~14_combout\,
	cout => \FD|ULA|soma[7]~15\);

-- Location: LCCOMB_X50_Y43_N16
\FD|ULA|soma[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[8]~16_combout\ = ((\FD|mux_Banco_Ula|saida[8]~27_combout\ $ (\FD|REG_ID_EX|data_s\(82) $ (!\FD|ULA|soma[7]~15\)))) # (GND)
-- \FD|ULA|soma[8]~17\ = CARRY((\FD|mux_Banco_Ula|saida[8]~27_combout\ & ((\FD|REG_ID_EX|data_s\(82)) # (!\FD|ULA|soma[7]~15\))) # (!\FD|mux_Banco_Ula|saida[8]~27_combout\ & (\FD|REG_ID_EX|data_s\(82) & !\FD|ULA|soma[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~27_combout\,
	datab => \FD|REG_ID_EX|data_s\(82),
	datad => VCC,
	cin => \FD|ULA|soma[7]~15\,
	combout => \FD|ULA|soma[8]~16_combout\,
	cout => \FD|ULA|soma[8]~17\);

-- Location: LCCOMB_X50_Y43_N18
\FD|ULA|soma[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[9]~18_combout\ = (\FD|mux_Banco_Ula|saida[9]~26_combout\ & ((\FD|REG_ID_EX|data_s\(83) & (\FD|ULA|soma[8]~17\ & VCC)) # (!\FD|REG_ID_EX|data_s\(83) & (!\FD|ULA|soma[8]~17\)))) # (!\FD|mux_Banco_Ula|saida[9]~26_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(83) & (!\FD|ULA|soma[8]~17\)) # (!\FD|REG_ID_EX|data_s\(83) & ((\FD|ULA|soma[8]~17\) # (GND)))))
-- \FD|ULA|soma[9]~19\ = CARRY((\FD|mux_Banco_Ula|saida[9]~26_combout\ & (!\FD|REG_ID_EX|data_s\(83) & !\FD|ULA|soma[8]~17\)) # (!\FD|mux_Banco_Ula|saida[9]~26_combout\ & ((!\FD|ULA|soma[8]~17\) # (!\FD|REG_ID_EX|data_s\(83)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~26_combout\,
	datab => \FD|REG_ID_EX|data_s\(83),
	datad => VCC,
	cin => \FD|ULA|soma[8]~17\,
	combout => \FD|ULA|soma[9]~18_combout\,
	cout => \FD|ULA|soma[9]~19\);

-- Location: LCCOMB_X50_Y43_N20
\FD|ULA|soma[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[10]~20_combout\ = ((\FD|REG_ID_EX|data_s\(84) $ (\FD|mux_Banco_Ula|saida[10]~25_combout\ $ (!\FD|ULA|soma[9]~19\)))) # (GND)
-- \FD|ULA|soma[10]~21\ = CARRY((\FD|REG_ID_EX|data_s\(84) & ((\FD|mux_Banco_Ula|saida[10]~25_combout\) # (!\FD|ULA|soma[9]~19\))) # (!\FD|REG_ID_EX|data_s\(84) & (\FD|mux_Banco_Ula|saida[10]~25_combout\ & !\FD|ULA|soma[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(84),
	datab => \FD|mux_Banco_Ula|saida[10]~25_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[9]~19\,
	combout => \FD|ULA|soma[10]~20_combout\,
	cout => \FD|ULA|soma[10]~21\);

-- Location: LCCOMB_X50_Y43_N22
\FD|ULA|soma[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[11]~22_combout\ = (\FD|REG_ID_EX|data_s\(85) & ((\FD|mux_Banco_Ula|saida[11]~24_combout\ & (\FD|ULA|soma[10]~21\ & VCC)) # (!\FD|mux_Banco_Ula|saida[11]~24_combout\ & (!\FD|ULA|soma[10]~21\)))) # (!\FD|REG_ID_EX|data_s\(85) & 
-- ((\FD|mux_Banco_Ula|saida[11]~24_combout\ & (!\FD|ULA|soma[10]~21\)) # (!\FD|mux_Banco_Ula|saida[11]~24_combout\ & ((\FD|ULA|soma[10]~21\) # (GND)))))
-- \FD|ULA|soma[11]~23\ = CARRY((\FD|REG_ID_EX|data_s\(85) & (!\FD|mux_Banco_Ula|saida[11]~24_combout\ & !\FD|ULA|soma[10]~21\)) # (!\FD|REG_ID_EX|data_s\(85) & ((!\FD|ULA|soma[10]~21\) # (!\FD|mux_Banco_Ula|saida[11]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(85),
	datab => \FD|mux_Banco_Ula|saida[11]~24_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[10]~21\,
	combout => \FD|ULA|soma[11]~22_combout\,
	cout => \FD|ULA|soma[11]~23\);

-- Location: LCCOMB_X50_Y43_N24
\FD|ULA|soma[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[12]~24_combout\ = ((\FD|REG_ID_EX|data_s\(86) $ (\FD|mux_Banco_Ula|saida[12]~23_combout\ $ (!\FD|ULA|soma[11]~23\)))) # (GND)
-- \FD|ULA|soma[12]~25\ = CARRY((\FD|REG_ID_EX|data_s\(86) & ((\FD|mux_Banco_Ula|saida[12]~23_combout\) # (!\FD|ULA|soma[11]~23\))) # (!\FD|REG_ID_EX|data_s\(86) & (\FD|mux_Banco_Ula|saida[12]~23_combout\ & !\FD|ULA|soma[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(86),
	datab => \FD|mux_Banco_Ula|saida[12]~23_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[11]~23\,
	combout => \FD|ULA|soma[12]~24_combout\,
	cout => \FD|ULA|soma[12]~25\);

-- Location: LCCOMB_X50_Y43_N26
\FD|ULA|soma[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[13]~26_combout\ = (\FD|REG_ID_EX|data_s\(87) & ((\FD|mux_Banco_Ula|saida[13]~22_combout\ & (\FD|ULA|soma[12]~25\ & VCC)) # (!\FD|mux_Banco_Ula|saida[13]~22_combout\ & (!\FD|ULA|soma[12]~25\)))) # (!\FD|REG_ID_EX|data_s\(87) & 
-- ((\FD|mux_Banco_Ula|saida[13]~22_combout\ & (!\FD|ULA|soma[12]~25\)) # (!\FD|mux_Banco_Ula|saida[13]~22_combout\ & ((\FD|ULA|soma[12]~25\) # (GND)))))
-- \FD|ULA|soma[13]~27\ = CARRY((\FD|REG_ID_EX|data_s\(87) & (!\FD|mux_Banco_Ula|saida[13]~22_combout\ & !\FD|ULA|soma[12]~25\)) # (!\FD|REG_ID_EX|data_s\(87) & ((!\FD|ULA|soma[12]~25\) # (!\FD|mux_Banco_Ula|saida[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(87),
	datab => \FD|mux_Banco_Ula|saida[13]~22_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[12]~25\,
	combout => \FD|ULA|soma[13]~26_combout\,
	cout => \FD|ULA|soma[13]~27\);

-- Location: LCCOMB_X50_Y43_N28
\FD|ULA|soma[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[14]~28_combout\ = ((\FD|REG_ID_EX|data_s\(88) $ (\FD|mux_Banco_Ula|saida[14]~21_combout\ $ (!\FD|ULA|soma[13]~27\)))) # (GND)
-- \FD|ULA|soma[14]~29\ = CARRY((\FD|REG_ID_EX|data_s\(88) & ((\FD|mux_Banco_Ula|saida[14]~21_combout\) # (!\FD|ULA|soma[13]~27\))) # (!\FD|REG_ID_EX|data_s\(88) & (\FD|mux_Banco_Ula|saida[14]~21_combout\ & !\FD|ULA|soma[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(88),
	datab => \FD|mux_Banco_Ula|saida[14]~21_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[13]~27\,
	combout => \FD|ULA|soma[14]~28_combout\,
	cout => \FD|ULA|soma[14]~29\);

-- Location: LCCOMB_X50_Y43_N30
\FD|ULA|soma[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[15]~30_combout\ = (\FD|mux_Banco_Ula|saida[15]~20_combout\ & ((\FD|REG_ID_EX|data_s\(89) & (\FD|ULA|soma[14]~29\ & VCC)) # (!\FD|REG_ID_EX|data_s\(89) & (!\FD|ULA|soma[14]~29\)))) # (!\FD|mux_Banco_Ula|saida[15]~20_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(89) & (!\FD|ULA|soma[14]~29\)) # (!\FD|REG_ID_EX|data_s\(89) & ((\FD|ULA|soma[14]~29\) # (GND)))))
-- \FD|ULA|soma[15]~31\ = CARRY((\FD|mux_Banco_Ula|saida[15]~20_combout\ & (!\FD|REG_ID_EX|data_s\(89) & !\FD|ULA|soma[14]~29\)) # (!\FD|mux_Banco_Ula|saida[15]~20_combout\ & ((!\FD|ULA|soma[14]~29\) # (!\FD|REG_ID_EX|data_s\(89)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~20_combout\,
	datab => \FD|REG_ID_EX|data_s\(89),
	datad => VCC,
	cin => \FD|ULA|soma[14]~29\,
	combout => \FD|ULA|soma[15]~30_combout\,
	cout => \FD|ULA|soma[15]~31\);

-- Location: LCCOMB_X50_Y42_N0
\FD|ULA|soma[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[16]~32_combout\ = ((\FD|mux_Banco_Ula|saida[16]~19_combout\ $ (\FD|REG_ID_EX|data_s\(90) $ (!\FD|ULA|soma[15]~31\)))) # (GND)
-- \FD|ULA|soma[16]~33\ = CARRY((\FD|mux_Banco_Ula|saida[16]~19_combout\ & ((\FD|REG_ID_EX|data_s\(90)) # (!\FD|ULA|soma[15]~31\))) # (!\FD|mux_Banco_Ula|saida[16]~19_combout\ & (\FD|REG_ID_EX|data_s\(90) & !\FD|ULA|soma[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~19_combout\,
	datab => \FD|REG_ID_EX|data_s\(90),
	datad => VCC,
	cin => \FD|ULA|soma[15]~31\,
	combout => \FD|ULA|soma[16]~32_combout\,
	cout => \FD|ULA|soma[16]~33\);

-- Location: LCCOMB_X50_Y42_N2
\FD|ULA|soma[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[17]~34_combout\ = (\FD|mux_Banco_Ula|saida[17]~18_combout\ & ((\FD|REG_ID_EX|data_s\(91) & (\FD|ULA|soma[16]~33\ & VCC)) # (!\FD|REG_ID_EX|data_s\(91) & (!\FD|ULA|soma[16]~33\)))) # (!\FD|mux_Banco_Ula|saida[17]~18_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(91) & (!\FD|ULA|soma[16]~33\)) # (!\FD|REG_ID_EX|data_s\(91) & ((\FD|ULA|soma[16]~33\) # (GND)))))
-- \FD|ULA|soma[17]~35\ = CARRY((\FD|mux_Banco_Ula|saida[17]~18_combout\ & (!\FD|REG_ID_EX|data_s\(91) & !\FD|ULA|soma[16]~33\)) # (!\FD|mux_Banco_Ula|saida[17]~18_combout\ & ((!\FD|ULA|soma[16]~33\) # (!\FD|REG_ID_EX|data_s\(91)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~18_combout\,
	datab => \FD|REG_ID_EX|data_s\(91),
	datad => VCC,
	cin => \FD|ULA|soma[16]~33\,
	combout => \FD|ULA|soma[17]~34_combout\,
	cout => \FD|ULA|soma[17]~35\);

-- Location: LCCOMB_X50_Y42_N4
\FD|ULA|soma[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[18]~36_combout\ = ((\FD|REG_ID_EX|data_s\(92) $ (\FD|mux_Banco_Ula|saida[18]~17_combout\ $ (!\FD|ULA|soma[17]~35\)))) # (GND)
-- \FD|ULA|soma[18]~37\ = CARRY((\FD|REG_ID_EX|data_s\(92) & ((\FD|mux_Banco_Ula|saida[18]~17_combout\) # (!\FD|ULA|soma[17]~35\))) # (!\FD|REG_ID_EX|data_s\(92) & (\FD|mux_Banco_Ula|saida[18]~17_combout\ & !\FD|ULA|soma[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(92),
	datab => \FD|mux_Banco_Ula|saida[18]~17_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[17]~35\,
	combout => \FD|ULA|soma[18]~36_combout\,
	cout => \FD|ULA|soma[18]~37\);

-- Location: LCCOMB_X50_Y42_N6
\FD|ULA|soma[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[19]~38_combout\ = (\FD|REG_ID_EX|data_s\(93) & ((\FD|mux_Banco_Ula|saida[19]~16_combout\ & (\FD|ULA|soma[18]~37\ & VCC)) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & (!\FD|ULA|soma[18]~37\)))) # (!\FD|REG_ID_EX|data_s\(93) & 
-- ((\FD|mux_Banco_Ula|saida[19]~16_combout\ & (!\FD|ULA|soma[18]~37\)) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & ((\FD|ULA|soma[18]~37\) # (GND)))))
-- \FD|ULA|soma[19]~39\ = CARRY((\FD|REG_ID_EX|data_s\(93) & (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & !\FD|ULA|soma[18]~37\)) # (!\FD|REG_ID_EX|data_s\(93) & ((!\FD|ULA|soma[18]~37\) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(93),
	datab => \FD|mux_Banco_Ula|saida[19]~16_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[18]~37\,
	combout => \FD|ULA|soma[19]~38_combout\,
	cout => \FD|ULA|soma[19]~39\);

-- Location: LCCOMB_X50_Y42_N8
\FD|ULA|soma[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[20]~40_combout\ = ((\FD|mux_Banco_Ula|saida[20]~15_combout\ $ (\FD|REG_ID_EX|data_s\(94) $ (!\FD|ULA|soma[19]~39\)))) # (GND)
-- \FD|ULA|soma[20]~41\ = CARRY((\FD|mux_Banco_Ula|saida[20]~15_combout\ & ((\FD|REG_ID_EX|data_s\(94)) # (!\FD|ULA|soma[19]~39\))) # (!\FD|mux_Banco_Ula|saida[20]~15_combout\ & (\FD|REG_ID_EX|data_s\(94) & !\FD|ULA|soma[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~15_combout\,
	datab => \FD|REG_ID_EX|data_s\(94),
	datad => VCC,
	cin => \FD|ULA|soma[19]~39\,
	combout => \FD|ULA|soma[20]~40_combout\,
	cout => \FD|ULA|soma[20]~41\);

-- Location: LCCOMB_X50_Y42_N10
\FD|ULA|soma[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[21]~42_combout\ = (\FD|mux_Banco_Ula|saida[21]~14_combout\ & ((\FD|REG_ID_EX|data_s\(95) & (\FD|ULA|soma[20]~41\ & VCC)) # (!\FD|REG_ID_EX|data_s\(95) & (!\FD|ULA|soma[20]~41\)))) # (!\FD|mux_Banco_Ula|saida[21]~14_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(95) & (!\FD|ULA|soma[20]~41\)) # (!\FD|REG_ID_EX|data_s\(95) & ((\FD|ULA|soma[20]~41\) # (GND)))))
-- \FD|ULA|soma[21]~43\ = CARRY((\FD|mux_Banco_Ula|saida[21]~14_combout\ & (!\FD|REG_ID_EX|data_s\(95) & !\FD|ULA|soma[20]~41\)) # (!\FD|mux_Banco_Ula|saida[21]~14_combout\ & ((!\FD|ULA|soma[20]~41\) # (!\FD|REG_ID_EX|data_s\(95)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~14_combout\,
	datab => \FD|REG_ID_EX|data_s\(95),
	datad => VCC,
	cin => \FD|ULA|soma[20]~41\,
	combout => \FD|ULA|soma[21]~42_combout\,
	cout => \FD|ULA|soma[21]~43\);

-- Location: LCCOMB_X50_Y42_N12
\FD|ULA|soma[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[22]~44_combout\ = ((\FD|REG_ID_EX|data_s\(96) $ (\FD|mux_Banco_Ula|saida[22]~13_combout\ $ (!\FD|ULA|soma[21]~43\)))) # (GND)
-- \FD|ULA|soma[22]~45\ = CARRY((\FD|REG_ID_EX|data_s\(96) & ((\FD|mux_Banco_Ula|saida[22]~13_combout\) # (!\FD|ULA|soma[21]~43\))) # (!\FD|REG_ID_EX|data_s\(96) & (\FD|mux_Banco_Ula|saida[22]~13_combout\ & !\FD|ULA|soma[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(96),
	datab => \FD|mux_Banco_Ula|saida[22]~13_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[21]~43\,
	combout => \FD|ULA|soma[22]~44_combout\,
	cout => \FD|ULA|soma[22]~45\);

-- Location: LCCOMB_X50_Y42_N14
\FD|ULA|soma[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[23]~46_combout\ = (\FD|REG_ID_EX|data_s\(97) & ((\FD|mux_Banco_Ula|saida[23]~12_combout\ & (\FD|ULA|soma[22]~45\ & VCC)) # (!\FD|mux_Banco_Ula|saida[23]~12_combout\ & (!\FD|ULA|soma[22]~45\)))) # (!\FD|REG_ID_EX|data_s\(97) & 
-- ((\FD|mux_Banco_Ula|saida[23]~12_combout\ & (!\FD|ULA|soma[22]~45\)) # (!\FD|mux_Banco_Ula|saida[23]~12_combout\ & ((\FD|ULA|soma[22]~45\) # (GND)))))
-- \FD|ULA|soma[23]~47\ = CARRY((\FD|REG_ID_EX|data_s\(97) & (!\FD|mux_Banco_Ula|saida[23]~12_combout\ & !\FD|ULA|soma[22]~45\)) # (!\FD|REG_ID_EX|data_s\(97) & ((!\FD|ULA|soma[22]~45\) # (!\FD|mux_Banco_Ula|saida[23]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(97),
	datab => \FD|mux_Banco_Ula|saida[23]~12_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[22]~45\,
	combout => \FD|ULA|soma[23]~46_combout\,
	cout => \FD|ULA|soma[23]~47\);

-- Location: LCCOMB_X50_Y42_N16
\FD|ULA|soma[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[24]~48_combout\ = ((\FD|mux_Banco_Ula|saida[24]~11_combout\ $ (\FD|REG_ID_EX|data_s\(98) $ (!\FD|ULA|soma[23]~47\)))) # (GND)
-- \FD|ULA|soma[24]~49\ = CARRY((\FD|mux_Banco_Ula|saida[24]~11_combout\ & ((\FD|REG_ID_EX|data_s\(98)) # (!\FD|ULA|soma[23]~47\))) # (!\FD|mux_Banco_Ula|saida[24]~11_combout\ & (\FD|REG_ID_EX|data_s\(98) & !\FD|ULA|soma[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~11_combout\,
	datab => \FD|REG_ID_EX|data_s\(98),
	datad => VCC,
	cin => \FD|ULA|soma[23]~47\,
	combout => \FD|ULA|soma[24]~48_combout\,
	cout => \FD|ULA|soma[24]~49\);

-- Location: LCCOMB_X50_Y42_N18
\FD|ULA|soma[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[25]~50_combout\ = (\FD|REG_ID_EX|data_s\(99) & ((\FD|mux_Banco_Ula|saida[25]~10_combout\ & (\FD|ULA|soma[24]~49\ & VCC)) # (!\FD|mux_Banco_Ula|saida[25]~10_combout\ & (!\FD|ULA|soma[24]~49\)))) # (!\FD|REG_ID_EX|data_s\(99) & 
-- ((\FD|mux_Banco_Ula|saida[25]~10_combout\ & (!\FD|ULA|soma[24]~49\)) # (!\FD|mux_Banco_Ula|saida[25]~10_combout\ & ((\FD|ULA|soma[24]~49\) # (GND)))))
-- \FD|ULA|soma[25]~51\ = CARRY((\FD|REG_ID_EX|data_s\(99) & (!\FD|mux_Banco_Ula|saida[25]~10_combout\ & !\FD|ULA|soma[24]~49\)) # (!\FD|REG_ID_EX|data_s\(99) & ((!\FD|ULA|soma[24]~49\) # (!\FD|mux_Banco_Ula|saida[25]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(99),
	datab => \FD|mux_Banco_Ula|saida[25]~10_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[24]~49\,
	combout => \FD|ULA|soma[25]~50_combout\,
	cout => \FD|ULA|soma[25]~51\);

-- Location: LCCOMB_X50_Y42_N20
\FD|ULA|soma[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[26]~52_combout\ = ((\FD|mux_Banco_Ula|saida[26]~9_combout\ $ (\FD|REG_ID_EX|data_s\(100) $ (!\FD|ULA|soma[25]~51\)))) # (GND)
-- \FD|ULA|soma[26]~53\ = CARRY((\FD|mux_Banco_Ula|saida[26]~9_combout\ & ((\FD|REG_ID_EX|data_s\(100)) # (!\FD|ULA|soma[25]~51\))) # (!\FD|mux_Banco_Ula|saida[26]~9_combout\ & (\FD|REG_ID_EX|data_s\(100) & !\FD|ULA|soma[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~9_combout\,
	datab => \FD|REG_ID_EX|data_s\(100),
	datad => VCC,
	cin => \FD|ULA|soma[25]~51\,
	combout => \FD|ULA|soma[26]~52_combout\,
	cout => \FD|ULA|soma[26]~53\);

-- Location: LCCOMB_X50_Y42_N22
\FD|ULA|soma[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[27]~54_combout\ = (\FD|mux_Banco_Ula|saida[27]~8_combout\ & ((\FD|REG_ID_EX|data_s\(101) & (\FD|ULA|soma[26]~53\ & VCC)) # (!\FD|REG_ID_EX|data_s\(101) & (!\FD|ULA|soma[26]~53\)))) # (!\FD|mux_Banco_Ula|saida[27]~8_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(101) & (!\FD|ULA|soma[26]~53\)) # (!\FD|REG_ID_EX|data_s\(101) & ((\FD|ULA|soma[26]~53\) # (GND)))))
-- \FD|ULA|soma[27]~55\ = CARRY((\FD|mux_Banco_Ula|saida[27]~8_combout\ & (!\FD|REG_ID_EX|data_s\(101) & !\FD|ULA|soma[26]~53\)) # (!\FD|mux_Banco_Ula|saida[27]~8_combout\ & ((!\FD|ULA|soma[26]~53\) # (!\FD|REG_ID_EX|data_s\(101)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~8_combout\,
	datab => \FD|REG_ID_EX|data_s\(101),
	datad => VCC,
	cin => \FD|ULA|soma[26]~53\,
	combout => \FD|ULA|soma[27]~54_combout\,
	cout => \FD|ULA|soma[27]~55\);

-- Location: LCCOMB_X50_Y42_N24
\FD|ULA|soma[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[28]~56_combout\ = ((\FD|REG_ID_EX|data_s\(102) $ (\FD|mux_Banco_Ula|saida[28]~7_combout\ $ (!\FD|ULA|soma[27]~55\)))) # (GND)
-- \FD|ULA|soma[28]~57\ = CARRY((\FD|REG_ID_EX|data_s\(102) & ((\FD|mux_Banco_Ula|saida[28]~7_combout\) # (!\FD|ULA|soma[27]~55\))) # (!\FD|REG_ID_EX|data_s\(102) & (\FD|mux_Banco_Ula|saida[28]~7_combout\ & !\FD|ULA|soma[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(102),
	datab => \FD|mux_Banco_Ula|saida[28]~7_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[27]~55\,
	combout => \FD|ULA|soma[28]~56_combout\,
	cout => \FD|ULA|soma[28]~57\);

-- Location: LCCOMB_X50_Y42_N26
\FD|ULA|soma[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[29]~58_combout\ = (\FD|mux_Banco_Ula|saida[29]~6_combout\ & ((\FD|REG_ID_EX|data_s\(103) & (\FD|ULA|soma[28]~57\ & VCC)) # (!\FD|REG_ID_EX|data_s\(103) & (!\FD|ULA|soma[28]~57\)))) # (!\FD|mux_Banco_Ula|saida[29]~6_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(103) & (!\FD|ULA|soma[28]~57\)) # (!\FD|REG_ID_EX|data_s\(103) & ((\FD|ULA|soma[28]~57\) # (GND)))))
-- \FD|ULA|soma[29]~59\ = CARRY((\FD|mux_Banco_Ula|saida[29]~6_combout\ & (!\FD|REG_ID_EX|data_s\(103) & !\FD|ULA|soma[28]~57\)) # (!\FD|mux_Banco_Ula|saida[29]~6_combout\ & ((!\FD|ULA|soma[28]~57\) # (!\FD|REG_ID_EX|data_s\(103)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~6_combout\,
	datab => \FD|REG_ID_EX|data_s\(103),
	datad => VCC,
	cin => \FD|ULA|soma[28]~57\,
	combout => \FD|ULA|soma[29]~58_combout\,
	cout => \FD|ULA|soma[29]~59\);

-- Location: LCCOMB_X50_Y42_N28
\FD|ULA|soma[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[30]~60_combout\ = ((\FD|REG_ID_EX|data_s\(104) $ (\FD|mux_Banco_Ula|saida[30]~5_combout\ $ (!\FD|ULA|soma[29]~59\)))) # (GND)
-- \FD|ULA|soma[30]~61\ = CARRY((\FD|REG_ID_EX|data_s\(104) & ((\FD|mux_Banco_Ula|saida[30]~5_combout\) # (!\FD|ULA|soma[29]~59\))) # (!\FD|REG_ID_EX|data_s\(104) & (\FD|mux_Banco_Ula|saida[30]~5_combout\ & !\FD|ULA|soma[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(104),
	datab => \FD|mux_Banco_Ula|saida[30]~5_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[29]~59\,
	combout => \FD|ULA|soma[30]~60_combout\,
	cout => \FD|ULA|soma[30]~61\);

-- Location: LCCOMB_X52_Y40_N2
\FD|ULA|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~3_combout\ = (\FD|REG_ID_EX|data_s\(141)) # ((\FD|REG_ID_EX|data_s\(138)) # ((\FD|REG_ID_EX|data_s\(14)) # (!\FD|REG_ID_EX|data_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(141),
	datab => \FD|REG_ID_EX|data_s\(138),
	datac => \FD|REG_ID_EX|data_s\(1),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|ULA|Mux30~3_combout\);

-- Location: LCCOMB_X55_Y39_N8
\FD|ULA|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~2_combout\ = (\FD|REG_ID_EX|data_s\(13) & (((\FD|REG_ID_EX|data_s\(12)) # (\FD|REG_ID_EX|data_s\(10))) # (!\FD|REG_ID_EX|data_s\(11)))) # (!\FD|REG_ID_EX|data_s\(13) & ((\FD|REG_ID_EX|data_s\(11)) # ((!\FD|REG_ID_EX|data_s\(10)) # 
-- (!\FD|REG_ID_EX|data_s\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(13),
	datab => \FD|REG_ID_EX|data_s\(11),
	datac => \FD|REG_ID_EX|data_s\(12),
	datad => \FD|REG_ID_EX|data_s\(10),
	combout => \FD|ULA|Mux30~2_combout\);

-- Location: LCCOMB_X57_Y43_N0
\FD|ULA|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~4_combout\ = (\FD|ULA|Mux30~3_combout\) # ((\FD|REG_ID_EX|data_s\(140)) # (\FD|ULA|Mux30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datac => \FD|REG_ID_EX|data_s\(140),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux30~4_combout\);

-- Location: LCCOMB_X56_Y41_N26
\FD|ULA|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~3_combout\ = (\FD|UCULA|ALUctr[2]~4_combout\) # ((!\FD|ULA|Mux30~4_combout\ & !\FD|UCULA|ALUctr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~4_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux0~3_combout\);

-- Location: LCCOMB_X49_Y43_N6
\FD|ULA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~2_combout\ = (\FD|mux_Banco_Ula|saida[30]~5_combout\ & ((\FD|ULA|Mux0~3_combout\) # ((\FD|REG_ID_EX|data_s\(104) & \FD|ULA|Mux31~0_combout\)))) # (!\FD|mux_Banco_Ula|saida[30]~5_combout\ & (\FD|ULA|Mux0~3_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(104)) # (!\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~5_combout\,
	datab => \FD|REG_ID_EX|data_s\(104),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux1~2_combout\);

-- Location: LCCOMB_X49_Y43_N24
\FD|ULA|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~3_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux1~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux1~2_combout\ & (\FD|ULA|Add1~60_combout\)) # (!\FD|ULA|Mux1~2_combout\ & ((\FD|ULA|soma[30]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~60_combout\,
	datab => \FD|ULA|Mux31~0_combout\,
	datac => \FD|ULA|soma[30]~60_combout\,
	datad => \FD|ULA|Mux1~2_combout\,
	combout => \FD|ULA|Mux1~3_combout\);

-- Location: LCCOMB_X50_Y44_N10
\FD|ULA|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~4_combout\ = (\FD|ULA|Mux1~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux1~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux1~4_combout\);

-- Location: FF_X50_Y44_N11
\FD|REG_EX_MEM|data_s[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(67));

-- Location: FF_X50_Y40_N31
\FD|REG_MEM_WB|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(67),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(35));

-- Location: LCCOMB_X50_Y40_N30
\FD|mux_Ula_Memoria|saida[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[30]~5_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\,
	datab => \FD|REG_MEM_WB|data_s\(69),
	datac => \FD|REG_MEM_WB|data_s\(35),
	combout => \FD|mux_Ula_Memoria|saida[30]~5_combout\);

-- Location: LCCOMB_X55_Y40_N8
\FD|BR|saidaB[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~15_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[28]~14_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\))) # (!\FD|BR|saidaB[28]~14_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(67),
	datab => \FD|BR|saidaB[28]~14_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[28]~15_combout\);

-- Location: FF_X55_Y40_N9
\FD|REG_ID_EX|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(70));

-- Location: LCCOMB_X52_Y41_N20
\FD|REG_EX_MEM|data_s[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[33]~feeder_combout\ = \FD|REG_ID_EX|data_s\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(70),
	combout => \FD|REG_EX_MEM|data_s[33]~feeder_combout\);

-- Location: FF_X52_Y41_N21
\FD|REG_EX_MEM|data_s[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(33));

-- Location: LCCOMB_X53_Y42_N6
\FD|ULA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~2_combout\ = (\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Add1~58_combout\) # ((\FD|ULA|Mux31~0_combout\)))) # (!\FD|ULA|Mux0~3_combout\ & (((\FD|ULA|soma[29]~58_combout\ & !\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~58_combout\,
	datab => \FD|ULA|soma[29]~58_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux2~2_combout\);

-- Location: LCCOMB_X53_Y42_N20
\FD|REG_EX_MEM|data_s[49]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[49]~18_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|ULA|Mux30~4_combout\))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|UCULA|ALUctr[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~4_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	combout => \FD|REG_EX_MEM|data_s[49]~18_combout\);

-- Location: LCCOMB_X54_Y41_N18
\FD|ULA|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datac => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(71),
	combout => \FD|ULA|Mux2~3_combout\);

-- Location: LCCOMB_X53_Y42_N12
\FD|ULA|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~5_combout\ = (!\FD|UCULA|ALUctr[2]~4_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|REG_ID_EX|data_s\(103) $ (!\FD|ULA|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(103),
	datab => \FD|ULA|Mux2~3_combout\,
	datac => \FD|UCULA|ALUctr[2]~4_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux2~5_combout\);

-- Location: LCCOMB_X53_Y42_N26
\FD|ULA|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux2~5_combout\ & ((\FD|REG_ID_EX|data_s\(103)))) # (!\FD|ULA|Mux2~5_combout\ & (\FD|ULA|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux2~2_combout\,
	datab => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	datac => \FD|REG_ID_EX|data_s\(103),
	datad => \FD|ULA|Mux2~5_combout\,
	combout => \FD|ULA|Mux2~4_combout\);

-- Location: FF_X53_Y42_N27
\FD|REG_EX_MEM|data_s[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(66));

-- Location: FF_X54_Y41_N11
\FD|REG_MEM_WB|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(66),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(34));

-- Location: LCCOMB_X54_Y41_N10
\FD|mux_Ula_Memoria|saida[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[29]~6_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\,
	datac => \FD|REG_MEM_WB|data_s\(34),
	combout => \FD|mux_Ula_Memoria|saida[29]~6_combout\);

-- Location: LCCOMB_X50_Y41_N2
\FD|BR|bancoReg_rtl_1_bypass[65]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[65]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[27]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[27]~8_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[65]~feeder_combout\);

-- Location: FF_X50_Y41_N3
\FD|BR|bancoReg_rtl_1_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[65]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(65));

-- Location: LCCOMB_X50_Y41_N16
\FD|BR|saidaB[27]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~17_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[27]~16_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\)) # (!\FD|BR|saidaB[27]~16_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[27]~16_combout\,
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(65),
	combout => \FD|BR|saidaB[27]~17_combout\);

-- Location: FF_X50_Y41_N17
\FD|REG_ID_EX|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[27]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(69));

-- Location: LCCOMB_X50_Y41_N22
\FD|REG_EX_MEM|data_s[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[32]~feeder_combout\ = \FD|REG_ID_EX|data_s\(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(69),
	combout => \FD|REG_EX_MEM|data_s[32]~feeder_combout\);

-- Location: FF_X50_Y41_N23
\FD|REG_EX_MEM|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(32));

-- Location: LCCOMB_X49_Y43_N10
\FD|ULA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~2_combout\ = (\FD|REG_ID_EX|data_s\(102) & ((\FD|ULA|Mux0~3_combout\) # ((\FD|mux_Banco_Ula|saida[28]~7_combout\ & \FD|ULA|Mux31~0_combout\)))) # (!\FD|REG_ID_EX|data_s\(102) & (\FD|ULA|Mux0~3_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[28]~7_combout\) # (!\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(102),
	datab => \FD|mux_Banco_Ula|saida[28]~7_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux3~2_combout\);

-- Location: LCCOMB_X49_Y42_N8
\FD|ULA|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~3_combout\ = (\FD|ULA|Mux31~0_combout\ & (\FD|ULA|Mux3~2_combout\)) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux3~2_combout\ & (\FD|ULA|Add1~56_combout\)) # (!\FD|ULA|Mux3~2_combout\ & ((\FD|ULA|soma[28]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|ULA|Mux3~2_combout\,
	datac => \FD|ULA|Add1~56_combout\,
	datad => \FD|ULA|soma[28]~56_combout\,
	combout => \FD|ULA|Mux3~3_combout\);

-- Location: LCCOMB_X50_Y44_N28
\FD|ULA|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~4_combout\ = (\FD|ULA|Mux3~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux3~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux3~4_combout\);

-- Location: FF_X50_Y44_N29
\FD|REG_EX_MEM|data_s[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(65));

-- Location: FF_X55_Y40_N1
\FD|REG_MEM_WB|data_s[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(65),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(33));

-- Location: LCCOMB_X55_Y40_N0
\FD|mux_Ula_Memoria|saida[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[28]~7_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\,
	datab => \FD|REG_MEM_WB|data_s\(69),
	datac => \FD|REG_MEM_WB|data_s\(33),
	combout => \FD|mux_Ula_Memoria|saida[28]~7_combout\);

-- Location: FF_X50_Y41_N15
\FD|BR|bancoReg_rtl_1_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[26]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(63));

-- Location: LCCOMB_X54_Y43_N0
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

-- Location: FF_X54_Y43_N1
\FD|BR|bancoReg_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(64));

-- Location: LCCOMB_X54_Y43_N10
\FD|BR|saidaB[26]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~18_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(64) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(64),
	combout => \FD|BR|saidaB[26]~18_combout\);

-- Location: LCCOMB_X50_Y41_N12
\FD|BR|saidaB[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~19_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[26]~18_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\)) # (!\FD|BR|saidaB[26]~18_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(63),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[26]~18_combout\,
	combout => \FD|BR|saidaB[26]~19_combout\);

-- Location: FF_X50_Y41_N13
\FD|REG_ID_EX|data_s[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[26]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(68));

-- Location: LCCOMB_X52_Y41_N30
\FD|REG_EX_MEM|data_s[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[31]~feeder_combout\ = \FD|REG_ID_EX|data_s\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(68),
	combout => \FD|REG_EX_MEM|data_s[31]~feeder_combout\);

-- Location: FF_X52_Y41_N31
\FD|REG_EX_MEM|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(31));

-- Location: LCCOMB_X52_Y42_N2
\FD|ULA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~2_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~54_combout\)) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|soma[27]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|ULA|Add1~54_combout\,
	datac => \FD|ULA|soma[27]~54_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux4~2_combout\);

-- Location: LCCOMB_X52_Y41_N4
\FD|ULA|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(69),
	datab => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|ULA|Mux4~3_combout\);

-- Location: LCCOMB_X53_Y42_N22
\FD|ULA|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~5_combout\ = (!\FD|UCULA|ALUctr[1]~2_combout\ & (!\FD|UCULA|ALUctr[2]~4_combout\ & (\FD|REG_ID_EX|data_s\(101) $ (!\FD|ULA|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(101),
	datac => \FD|UCULA|ALUctr[2]~4_combout\,
	datad => \FD|ULA|Mux4~3_combout\,
	combout => \FD|ULA|Mux4~5_combout\);

-- Location: LCCOMB_X53_Y42_N4
\FD|ULA|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux4~5_combout\ & ((\FD|REG_ID_EX|data_s\(101)))) # (!\FD|ULA|Mux4~5_combout\ & (\FD|ULA|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux4~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(101),
	datac => \FD|ULA|Mux4~5_combout\,
	datad => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	combout => \FD|ULA|Mux4~4_combout\);

-- Location: FF_X53_Y42_N5
\FD|REG_EX_MEM|data_s[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(64));

-- Location: FF_X50_Y41_N21
\FD|REG_MEM_WB|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(64),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(32));

-- Location: LCCOMB_X50_Y41_N20
\FD|mux_Ula_Memoria|saida[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[27]~8_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\,
	datac => \FD|REG_MEM_WB|data_s\(32),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[27]~8_combout\);

-- Location: LCCOMB_X54_Y43_N4
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

-- Location: FF_X54_Y43_N5
\FD|BR|bancoReg_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(62));

-- Location: LCCOMB_X54_Y43_N14
\FD|BR|saidaB[25]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~20_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(62) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(62),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[25]~20_combout\);

-- Location: LCCOMB_X50_Y40_N16
\FD|BR|saidaB[25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~21_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[25]~20_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\))) # (!\FD|BR|saidaB[25]~20_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(61),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\,
	datad => \FD|BR|saidaB[25]~20_combout\,
	combout => \FD|BR|saidaB[25]~21_combout\);

-- Location: FF_X50_Y40_N17
\FD|REG_ID_EX|data_s[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[25]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(67));

-- Location: LCCOMB_X50_Y40_N26
\FD|REG_EX_MEM|data_s[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[30]~feeder_combout\ = \FD|REG_ID_EX|data_s\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(67),
	combout => \FD|REG_EX_MEM|data_s[30]~feeder_combout\);

-- Location: FF_X50_Y40_N27
\FD|REG_EX_MEM|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(30));

-- Location: LCCOMB_X49_Y42_N10
\FD|ULA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~2_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[26]~9_combout\ & ((\FD|REG_ID_EX|data_s\(100)) # (\FD|ULA|Mux0~3_combout\))) # (!\FD|mux_Banco_Ula|saida[26]~9_combout\ & (\FD|REG_ID_EX|data_s\(100) & 
-- \FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|mux_Banco_Ula|saida[26]~9_combout\,
	datac => \FD|REG_ID_EX|data_s\(100),
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux5~2_combout\);

-- Location: LCCOMB_X49_Y42_N20
\FD|ULA|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~3_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux5~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux5~2_combout\ & ((\FD|ULA|Add1~52_combout\))) # (!\FD|ULA|Mux5~2_combout\ & (\FD|ULA|soma[26]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[26]~52_combout\,
	datab => \FD|ULA|Add1~52_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux5~2_combout\,
	combout => \FD|ULA|Mux5~3_combout\);

-- Location: LCCOMB_X50_Y44_N22
\FD|ULA|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~4_combout\ = (\FD|ULA|Mux5~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux5~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux5~4_combout\);

-- Location: FF_X50_Y44_N23
\FD|REG_EX_MEM|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(63));

-- Location: FF_X50_Y41_N31
\FD|REG_MEM_WB|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(63),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(31));

-- Location: LCCOMB_X50_Y41_N30
\FD|mux_Ula_Memoria|saida[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[26]~9_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\,
	datac => \FD|REG_MEM_WB|data_s\(31),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[26]~9_combout\);

-- Location: LCCOMB_X47_Y39_N0
\FD|BR|saidaB[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~23_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[24]~22_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\))) # (!\FD|BR|saidaB[24]~22_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(59),
	datab => \FD|BR|saidaB[24]~22_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\,
	combout => \FD|BR|saidaB[24]~23_combout\);

-- Location: FF_X47_Y39_N1
\FD|REG_ID_EX|data_s[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(66));

-- Location: LCCOMB_X47_Y39_N2
\FD|REG_EX_MEM|data_s[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[29]~feeder_combout\ = \FD|REG_ID_EX|data_s\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(66),
	combout => \FD|REG_EX_MEM|data_s[29]~feeder_combout\);

-- Location: FF_X47_Y39_N3
\FD|REG_EX_MEM|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(29));

-- Location: LCCOMB_X50_Y40_N20
\FD|ULA|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(14),
	datac => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(67),
	combout => \FD|ULA|Mux6~3_combout\);

-- Location: LCCOMB_X53_Y42_N16
\FD|ULA|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~5_combout\ = (!\FD|UCULA|ALUctr[2]~4_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux6~3_combout\ $ (!\FD|REG_ID_EX|data_s\(99)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux6~3_combout\,
	datab => \FD|REG_ID_EX|data_s\(99),
	datac => \FD|UCULA|ALUctr[2]~4_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux6~5_combout\);

-- Location: LCCOMB_X53_Y42_N24
\FD|ULA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~2_combout\ = (\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Add1~50_combout\) # ((\FD|ULA|Mux31~0_combout\)))) # (!\FD|ULA|Mux0~3_combout\ & (((\FD|ULA|soma[25]~50_combout\ & !\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~50_combout\,
	datab => \FD|ULA|soma[25]~50_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux6~2_combout\);

-- Location: LCCOMB_X53_Y42_N30
\FD|ULA|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux6~5_combout\ & ((\FD|REG_ID_EX|data_s\(99)))) # (!\FD|ULA|Mux6~5_combout\ & (\FD|ULA|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux6~5_combout\,
	datab => \FD|ULA|Mux6~2_combout\,
	datac => \FD|REG_ID_EX|data_s\(99),
	datad => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	combout => \FD|ULA|Mux6~4_combout\);

-- Location: FF_X53_Y42_N31
\FD|REG_EX_MEM|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(62));

-- Location: FF_X50_Y41_N25
\FD|REG_MEM_WB|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(30));

-- Location: LCCOMB_X50_Y41_N24
\FD|mux_Ula_Memoria|saida[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[25]~10_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\,
	datac => \FD|REG_MEM_WB|data_s\(30),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[25]~10_combout\);

-- Location: LCCOMB_X55_Y40_N10
\FD|BR|saidaB[23]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~25_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[23]~24_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\))) # (!\FD|BR|saidaB[23]~24_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(57),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[23]~24_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\,
	combout => \FD|BR|saidaB[23]~25_combout\);

-- Location: FF_X55_Y40_N11
\FD|REG_ID_EX|data_s[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[23]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(65));

-- Location: LCCOMB_X52_Y41_N8
\FD|REG_EX_MEM|data_s[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[28]~feeder_combout\ = \FD|REG_ID_EX|data_s\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(65),
	combout => \FD|REG_EX_MEM|data_s[28]~feeder_combout\);

-- Location: FF_X52_Y41_N9
\FD|REG_EX_MEM|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(28));

-- Location: LCCOMB_X49_Y42_N6
\FD|ULA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~2_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_ID_EX|data_s\(98) & ((\FD|mux_Banco_Ula|saida[24]~11_combout\) # (\FD|ULA|Mux0~3_combout\))) # (!\FD|REG_ID_EX|data_s\(98) & (\FD|mux_Banco_Ula|saida[24]~11_combout\ & 
-- \FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|REG_ID_EX|data_s\(98),
	datac => \FD|mux_Banco_Ula|saida[24]~11_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux7~2_combout\);

-- Location: LCCOMB_X49_Y42_N24
\FD|ULA|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~3_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux7~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux7~2_combout\ & (\FD|ULA|Add1~48_combout\)) # (!\FD|ULA|Mux7~2_combout\ & ((\FD|ULA|soma[24]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~48_combout\,
	datab => \FD|ULA|soma[24]~48_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux7~2_combout\,
	combout => \FD|ULA|Mux7~3_combout\);

-- Location: LCCOMB_X50_Y44_N16
\FD|ULA|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~4_combout\ = (\FD|ULA|Mux7~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux7~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux7~4_combout\);

-- Location: FF_X50_Y44_N17
\FD|REG_EX_MEM|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(61));

-- Location: FF_X49_Y41_N5
\FD|REG_MEM_WB|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(61),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(29));

-- Location: LCCOMB_X49_Y41_N4
\FD|mux_Ula_Memoria|saida[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[24]~11_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\,
	datac => \FD|REG_MEM_WB|data_s\(29),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[24]~11_combout\);

-- Location: LCCOMB_X54_Y42_N6
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

-- Location: FF_X54_Y42_N7
\FD|BR|bancoReg_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(56));

-- Location: LCCOMB_X54_Y42_N8
\FD|BR|saidaB[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~26_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(56) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(56),
	combout => \FD|BR|saidaB[22]~26_combout\);

-- Location: LCCOMB_X54_Y42_N20
\FD|BR|bancoReg_rtl_1_bypass[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[22]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[22]~13_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\);

-- Location: FF_X54_Y42_N21
\FD|BR|bancoReg_rtl_1_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(55));

-- Location: LCCOMB_X54_Y42_N10
\FD|BR|saidaB[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~27_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[22]~26_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\)) # (!\FD|BR|saidaB[22]~26_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[22]~26_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(55),
	combout => \FD|BR|saidaB[22]~27_combout\);

-- Location: FF_X54_Y42_N11
\FD|REG_ID_EX|data_s[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[22]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(64));

-- Location: FF_X52_Y41_N13
\FD|REG_EX_MEM|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(64),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(27));

-- Location: LCCOMB_X55_Y41_N6
\FD|ULA|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datac => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(65),
	combout => \FD|ULA|Mux8~3_combout\);

-- Location: LCCOMB_X55_Y41_N2
\FD|ULA|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~5_combout\ = (!\FD|UCULA|ALUctr[2]~4_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux8~3_combout\ $ (!\FD|REG_ID_EX|data_s\(97)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux8~3_combout\,
	datab => \FD|UCULA|ALUctr[2]~4_combout\,
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|REG_ID_EX|data_s\(97),
	combout => \FD|ULA|Mux8~5_combout\);

-- Location: LCCOMB_X49_Y42_N26
\FD|ULA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~2_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~46_combout\)) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|soma[23]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~46_combout\,
	datab => \FD|ULA|soma[23]~46_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux8~2_combout\);

-- Location: LCCOMB_X55_Y41_N14
\FD|ULA|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux8~5_combout\ & ((\FD|REG_ID_EX|data_s\(97)))) # (!\FD|ULA|Mux8~5_combout\ & (\FD|ULA|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	datab => \FD|ULA|Mux8~5_combout\,
	datac => \FD|ULA|Mux8~2_combout\,
	datad => \FD|REG_ID_EX|data_s\(97),
	combout => \FD|ULA|Mux8~4_combout\);

-- Location: FF_X55_Y41_N15
\FD|REG_EX_MEM|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(60));

-- Location: FF_X55_Y41_N21
\FD|REG_MEM_WB|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(60),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(28));

-- Location: LCCOMB_X55_Y41_N20
\FD|mux_Ula_Memoria|saida[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[23]~12_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\,
	datac => \FD|REG_MEM_WB|data_s\(28),
	combout => \FD|mux_Ula_Memoria|saida[23]~12_combout\);

-- Location: LCCOMB_X50_Y39_N10
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

-- Location: FF_X50_Y39_N11
\FD|BR|bancoReg_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(14));

-- Location: LCCOMB_X50_Y39_N28
\FD|BR|saidaB[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~0_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(14) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(14),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[1]~0_combout\);

-- Location: FF_X50_Y39_N1
\FD|BR|bancoReg_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(13));

-- Location: LCCOMB_X50_Y39_N24
\FD|BR|saidaB[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~1_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[1]~0_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\)) # (!\FD|BR|saidaB[1]~0_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\,
	datab => \FD|BR|saidaB[1]~0_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(13),
	combout => \FD|BR|saidaB[1]~1_combout\);

-- Location: FF_X50_Y39_N25
\FD|REG_ID_EX|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(43));

-- Location: LCCOMB_X50_Y39_N18
\FD|REG_EX_MEM|data_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[6]~feeder_combout\ = \FD|REG_ID_EX|data_s\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(43),
	combout => \FD|REG_EX_MEM|data_s[6]~feeder_combout\);

-- Location: FF_X50_Y39_N19
\FD|REG_EX_MEM|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(6));

-- Location: LCCOMB_X49_Y42_N4
\FD|ULA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~2_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[22]~13_combout\ & ((\FD|REG_ID_EX|data_s\(96)) # (\FD|ULA|Mux0~3_combout\))) # (!\FD|mux_Banco_Ula|saida[22]~13_combout\ & (\FD|REG_ID_EX|data_s\(96) & 
-- \FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|mux_Banco_Ula|saida[22]~13_combout\,
	datac => \FD|REG_ID_EX|data_s\(96),
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux9~2_combout\);

-- Location: LCCOMB_X49_Y42_N14
\FD|ULA|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~3_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux9~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux9~2_combout\ & (\FD|ULA|Add1~44_combout\)) # (!\FD|ULA|Mux9~2_combout\ & ((\FD|ULA|soma[22]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~44_combout\,
	datab => \FD|ULA|soma[22]~44_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux9~2_combout\,
	combout => \FD|ULA|Mux9~3_combout\);

-- Location: LCCOMB_X50_Y44_N18
\FD|ULA|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~4_combout\ = (\FD|ULA|Mux9~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~4_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux9~3_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux9~4_combout\);

-- Location: FF_X50_Y44_N19
\FD|REG_EX_MEM|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(59));

-- Location: FF_X50_Y44_N15
\FD|REG_MEM_WB|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(59),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(27));

-- Location: LCCOMB_X50_Y44_N14
\FD|mux_Ula_Memoria|saida[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[22]~13_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\,
	datac => \FD|REG_MEM_WB|data_s\(27),
	combout => \FD|mux_Ula_Memoria|saida[22]~13_combout\);

-- Location: LCCOMB_X53_Y44_N12
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

-- Location: FF_X53_Y44_N13
\FD|BR|bancoReg_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(48));

-- Location: LCCOMB_X53_Y44_N14
\FD|BR|saidaB[18]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~34_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(48) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(48),
	combout => \FD|BR|saidaB[18]~34_combout\);

-- Location: LCCOMB_X52_Y38_N16
\FD|BR|saidaB[18]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~35_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[18]~34_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\))) # (!\FD|BR|saidaB[18]~34_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(47),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\,
	datad => \FD|BR|saidaB[18]~34_combout\,
	combout => \FD|BR|saidaB[18]~35_combout\);

-- Location: FF_X52_Y38_N17
\FD|REG_ID_EX|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(60));

-- Location: FF_X52_Y41_N17
\FD|REG_EX_MEM|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(60),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(23));

-- Location: FF_X55_Y41_N13
\FD|REG_EX_MEM|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(61),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(24));

-- Location: FF_X52_Y41_N5
\FD|REG_EX_MEM|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(25));

-- Location: FF_X52_Y41_N19
\FD|REG_EX_MEM|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(63),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(26));

-- Location: M9K_X51_Y41_N0
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
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
	port_a_first_bit_number => 4,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_EX_MEM|data_s\(102),
	portare => VCC,
	clk0 => \BTN_CLK|saida~clkctrl_outclk\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y41_N18
\FD|ULA|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(14),
	datac => \FD|REG_ID_EX|data_s\(63),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|ULA|Mux10~3_combout\);

-- Location: LCCOMB_X53_Y42_N10
\FD|ULA|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~5_combout\ = (!\FD|UCULA|ALUctr[1]~2_combout\ & (!\FD|UCULA|ALUctr[2]~4_combout\ & (\FD|ULA|Mux10~3_combout\ $ (!\FD|REG_ID_EX|data_s\(95)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux10~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|UCULA|ALUctr[2]~4_combout\,
	datad => \FD|REG_ID_EX|data_s\(95),
	combout => \FD|ULA|Mux10~5_combout\);

-- Location: LCCOMB_X53_Y42_N2
\FD|ULA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~2_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~42_combout\)) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|soma[21]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~42_combout\,
	datab => \FD|ULA|Mux31~0_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|soma[21]~42_combout\,
	combout => \FD|ULA|Mux10~2_combout\);

-- Location: LCCOMB_X53_Y42_N8
\FD|ULA|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux10~5_combout\ & ((\FD|REG_ID_EX|data_s\(95)))) # (!\FD|ULA|Mux10~5_combout\ & (\FD|ULA|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux10~5_combout\,
	datab => \FD|ULA|Mux10~2_combout\,
	datac => \FD|REG_ID_EX|data_s\(95),
	datad => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	combout => \FD|ULA|Mux10~4_combout\);

-- Location: FF_X53_Y42_N9
\FD|REG_EX_MEM|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(58));

-- Location: FF_X53_Y41_N19
\FD|REG_MEM_WB|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(26));

-- Location: LCCOMB_X53_Y41_N18
\FD|mux_Ula_Memoria|saida[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[21]~14_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\,
	datac => \FD|REG_MEM_WB|data_s\(26),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[21]~14_combout\);

-- Location: LCCOMB_X53_Y44_N20
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

-- Location: FF_X53_Y44_N21
\FD|BR|bancoReg_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(52));

-- Location: LCCOMB_X53_Y44_N30
\FD|BR|saidaB[20]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~30_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(52) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(52),
	combout => \FD|BR|saidaB[20]~30_combout\);

-- Location: LCCOMB_X52_Y42_N0
\FD|BR|saidaB[20]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~31_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[20]~30_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\))) # (!\FD|BR|saidaB[20]~30_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(51),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\,
	datad => \FD|BR|saidaB[20]~30_combout\,
	combout => \FD|BR|saidaB[20]~31_combout\);

-- Location: FF_X52_Y42_N1
\FD|REG_ID_EX|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[20]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(62));

-- Location: LCCOMB_X52_Y42_N26
\FD|mux_Banco_Ula|saida[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[20]~15_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(62),
	datac => \FD|REG_ID_EX|data_s\(14),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[20]~15_combout\);

-- Location: LCCOMB_X52_Y42_N28
\FD|ULA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~2_combout\ = (\FD|mux_Banco_Ula|saida[20]~15_combout\ & ((\FD|ULA|Mux0~3_combout\) # ((\FD|REG_ID_EX|data_s\(94) & \FD|ULA|Mux31~0_combout\)))) # (!\FD|mux_Banco_Ula|saida[20]~15_combout\ & (\FD|ULA|Mux0~3_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(94)) # (!\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~15_combout\,
	datab => \FD|REG_ID_EX|data_s\(94),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux11~2_combout\);

-- Location: LCCOMB_X52_Y42_N14
\FD|ULA|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~3_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux11~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux11~2_combout\ & (\FD|ULA|Add1~40_combout\)) # (!\FD|ULA|Mux11~2_combout\ & ((\FD|ULA|soma[20]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~40_combout\,
	datab => \FD|ULA|soma[20]~40_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux11~2_combout\,
	combout => \FD|ULA|Mux11~3_combout\);

-- Location: LCCOMB_X50_Y44_N12
\FD|ULA|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~4_combout\ = (\FD|ULA|Mux11~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux11~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux11~4_combout\);

-- Location: FF_X50_Y44_N13
\FD|REG_EX_MEM|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(57));

-- Location: FF_X52_Y42_N23
\FD|REG_MEM_WB|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(57),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(25));

-- Location: LCCOMB_X52_Y42_N22
\FD|mux_Ula_Memoria|saida[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[20]~15_combout\ = (\FD|REG_MEM_WB|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\))) # (!\FD|REG_MEM_WB|data_s\(69) & (\FD|REG_MEM_WB|data_s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datac => \FD|REG_MEM_WB|data_s\(25),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \FD|mux_Ula_Memoria|saida[20]~15_combout\);

-- Location: LCCOMB_X53_Y44_N0
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

-- Location: FF_X53_Y44_N1
\FD|BR|bancoReg_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(46));

-- Location: LCCOMB_X53_Y44_N2
\FD|BR|saidaB[17]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~36_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(46) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(46),
	combout => \FD|BR|saidaB[17]~36_combout\);

-- Location: LCCOMB_X55_Y40_N22
\FD|BR|bancoReg_rtl_1_bypass[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[45]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[17]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[17]~18_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[45]~feeder_combout\);

-- Location: FF_X55_Y40_N23
\FD|BR|bancoReg_rtl_1_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(45));

-- Location: LCCOMB_X55_Y40_N28
\FD|BR|saidaB[17]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~37_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[17]~36_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\)) # (!\FD|BR|saidaB[17]~36_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\,
	datab => \FD|BR|saidaB[17]~36_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(45),
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[17]~37_combout\);

-- Location: FF_X55_Y40_N29
\FD|REG_ID_EX|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(59));

-- Location: LCCOMB_X55_Y40_N2
\FD|REG_EX_MEM|data_s[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[22]~feeder_combout\ = \FD|REG_ID_EX|data_s\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(59),
	combout => \FD|REG_EX_MEM|data_s[22]~feeder_combout\);

-- Location: FF_X55_Y40_N3
\FD|REG_EX_MEM|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(22));

-- Location: LCCOMB_X52_Y42_N16
\FD|ULA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~2_combout\ = (\FD|ULA|Mux0~3_combout\ & (((\FD|ULA|Mux31~0_combout\) # (\FD|ULA|Add1~38_combout\)))) # (!\FD|ULA|Mux0~3_combout\ & (\FD|ULA|soma[19]~38_combout\ & (!\FD|ULA|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[19]~38_combout\,
	datab => \FD|ULA|Mux0~3_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Add1~38_combout\,
	combout => \FD|ULA|Mux12~2_combout\);

-- Location: LCCOMB_X55_Y41_N10
\FD|ULA|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(61),
	datac => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|ULA|Mux12~3_combout\);

-- Location: LCCOMB_X55_Y41_N28
\FD|ULA|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~5_combout\ = (!\FD|UCULA|ALUctr[2]~4_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux12~3_combout\ $ (!\FD|REG_ID_EX|data_s\(93)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux12~3_combout\,
	datab => \FD|UCULA|ALUctr[2]~4_combout\,
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|REG_ID_EX|data_s\(93),
	combout => \FD|ULA|Mux12~5_combout\);

-- Location: LCCOMB_X55_Y41_N4
\FD|ULA|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux12~5_combout\ & ((\FD|REG_ID_EX|data_s\(93)))) # (!\FD|ULA|Mux12~5_combout\ & (\FD|ULA|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux12~2_combout\,
	datab => \FD|ULA|Mux12~5_combout\,
	datac => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	datad => \FD|REG_ID_EX|data_s\(93),
	combout => \FD|ULA|Mux12~4_combout\);

-- Location: FF_X55_Y41_N5
\FD|REG_EX_MEM|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(56));

-- Location: FF_X55_Y41_N31
\FD|REG_MEM_WB|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(24));

-- Location: LCCOMB_X55_Y41_N30
\FD|mux_Ula_Memoria|saida[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[19]~16_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\,
	datac => \FD|REG_MEM_WB|data_s\(24),
	combout => \FD|mux_Ula_Memoria|saida[19]~16_combout\);

-- Location: LCCOMB_X52_Y44_N12
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

-- Location: FF_X52_Y44_N13
\FD|BR|bancoReg_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(44));

-- Location: LCCOMB_X52_Y44_N6
\FD|BR|saidaB[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(44) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(44),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[16]~38_combout\);

-- Location: LCCOMB_X52_Y44_N16
\FD|BR|saidaB[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~39_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[16]~38_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\))) # (!\FD|BR|saidaB[16]~38_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(43),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\,
	datad => \FD|BR|saidaB[16]~38_combout\,
	combout => \FD|BR|saidaB[16]~39_combout\);

-- Location: FF_X52_Y44_N17
\FD|REG_ID_EX|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(58));

-- Location: LCCOMB_X52_Y44_N4
\FD|REG_EX_MEM|data_s[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[21]~feeder_combout\ = \FD|REG_ID_EX|data_s\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(58),
	combout => \FD|REG_EX_MEM|data_s[21]~feeder_combout\);

-- Location: FF_X52_Y44_N5
\FD|REG_EX_MEM|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(21));

-- Location: LCCOMB_X52_Y42_N18
\FD|ULA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~2_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_ID_EX|data_s\(92) & ((\FD|mux_Banco_Ula|saida[18]~17_combout\) # (\FD|ULA|Mux0~3_combout\))) # (!\FD|REG_ID_EX|data_s\(92) & (\FD|mux_Banco_Ula|saida[18]~17_combout\ & 
-- \FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|REG_ID_EX|data_s\(92),
	datac => \FD|mux_Banco_Ula|saida[18]~17_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux13~2_combout\);

-- Location: LCCOMB_X52_Y42_N12
\FD|ULA|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~3_combout\ = (\FD|ULA|Mux13~2_combout\ & ((\FD|ULA|Add1~36_combout\) # ((\FD|ULA|Mux31~0_combout\)))) # (!\FD|ULA|Mux13~2_combout\ & (((!\FD|ULA|Mux31~0_combout\ & \FD|ULA|soma[18]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~36_combout\,
	datab => \FD|ULA|Mux13~2_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|soma[18]~36_combout\,
	combout => \FD|ULA|Mux13~3_combout\);

-- Location: LCCOMB_X53_Y42_N18
\FD|ULA|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~4_combout\ = (\FD|ULA|Mux13~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|ULA|Mux30~4_combout\))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & (!\FD|UCULA|ALUctr[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~4_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|ULA|Mux13~3_combout\,
	combout => \FD|ULA|Mux13~4_combout\);

-- Location: FF_X53_Y42_N19
\FD|REG_EX_MEM|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(55));

-- Location: FF_X52_Y38_N5
\FD|REG_MEM_WB|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(55),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(23));

-- Location: LCCOMB_X52_Y38_N4
\FD|mux_Ula_Memoria|saida[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[18]~17_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\,
	datac => \FD|REG_MEM_WB|data_s\(23),
	combout => \FD|mux_Ula_Memoria|saida[18]~17_combout\);

-- Location: FF_X52_Y41_N25
\FD|BR|bancoReg_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[15]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(41));

-- Location: LCCOMB_X52_Y41_N28
\FD|BR|saidaB[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~41_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[15]~40_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\)) # (!\FD|BR|saidaB[15]~40_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[15]~40_combout\,
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(41),
	combout => \FD|BR|saidaB[15]~41_combout\);

-- Location: FF_X52_Y41_N29
\FD|REG_ID_EX|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(57));

-- Location: LCCOMB_X52_Y41_N6
\FD|REG_EX_MEM|data_s[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[20]~feeder_combout\ = \FD|REG_ID_EX|data_s\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(57),
	combout => \FD|REG_EX_MEM|data_s[20]~feeder_combout\);

-- Location: FF_X52_Y41_N7
\FD|REG_EX_MEM|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(20));

-- Location: LCCOMB_X52_Y42_N30
\FD|ULA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~2_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Add1~34_combout\))) # (!\FD|ULA|Mux0~3_combout\ & (\FD|ULA|soma[17]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|ULA|soma[17]~34_combout\,
	datac => \FD|ULA|Add1~34_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux14~2_combout\);

-- Location: LCCOMB_X52_Y38_N2
\FD|ULA|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(59),
	datab => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|ULA|Mux14~3_combout\);

-- Location: LCCOMB_X52_Y38_N28
\FD|ULA|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~5_combout\ = (!\FD|UCULA|ALUctr[1]~2_combout\ & (!\FD|UCULA|ALUctr[2]~4_combout\ & (\FD|REG_ID_EX|data_s\(91) $ (!\FD|ULA|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(91),
	datac => \FD|UCULA|ALUctr[2]~4_combout\,
	datad => \FD|ULA|Mux14~3_combout\,
	combout => \FD|ULA|Mux14~5_combout\);

-- Location: LCCOMB_X52_Y38_N0
\FD|ULA|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux14~5_combout\ & ((\FD|REG_ID_EX|data_s\(91)))) # (!\FD|ULA|Mux14~5_combout\ & (\FD|ULA|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(91),
	datac => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	datad => \FD|ULA|Mux14~5_combout\,
	combout => \FD|ULA|Mux14~4_combout\);

-- Location: FF_X52_Y38_N1
\FD|REG_EX_MEM|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(54));

-- Location: FF_X52_Y38_N31
\FD|REG_MEM_WB|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(54),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(22));

-- Location: LCCOMB_X52_Y38_N22
\FD|mux_Ula_Memoria|saida[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[17]~18_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\,
	datac => \FD|REG_MEM_WB|data_s\(22),
	combout => \FD|mux_Ula_Memoria|saida[17]~18_combout\);

-- Location: LCCOMB_X53_Y44_N16
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

-- Location: FF_X53_Y44_N17
\FD|BR|bancoReg_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(40));

-- Location: LCCOMB_X53_Y44_N18
\FD|BR|saidaB[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~42_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(40) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(40),
	combout => \FD|BR|saidaB[14]~42_combout\);

-- Location: LCCOMB_X52_Y40_N20
\FD|BR|saidaB[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~43_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[14]~42_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\))) # (!\FD|BR|saidaB[14]~42_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(39),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\,
	datad => \FD|BR|saidaB[14]~42_combout\,
	combout => \FD|BR|saidaB[14]~43_combout\);

-- Location: FF_X52_Y40_N21
\FD|REG_ID_EX|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(56));

-- Location: FF_X52_Y41_N15
\FD|REG_EX_MEM|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(19));

-- Location: LCCOMB_X49_Y43_N12
\FD|ULA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~2_combout\ = (\FD|REG_ID_EX|data_s\(90) & ((\FD|ULA|Mux0~3_combout\) # ((\FD|mux_Banco_Ula|saida[16]~19_combout\ & \FD|ULA|Mux31~0_combout\)))) # (!\FD|REG_ID_EX|data_s\(90) & (\FD|ULA|Mux0~3_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[16]~19_combout\) # (!\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(90),
	datab => \FD|mux_Banco_Ula|saida[16]~19_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux15~2_combout\);

-- Location: LCCOMB_X49_Y42_N0
\FD|ULA|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~3_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux15~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux15~2_combout\ & (\FD|ULA|Add1~32_combout\)) # (!\FD|ULA|Mux15~2_combout\ & ((\FD|ULA|soma[16]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~32_combout\,
	datab => \FD|ULA|soma[16]~32_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux15~2_combout\,
	combout => \FD|ULA|Mux15~3_combout\);

-- Location: LCCOMB_X50_Y44_N30
\FD|ULA|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~4_combout\ = (\FD|ULA|Mux15~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux15~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux15~4_combout\);

-- Location: FF_X50_Y44_N31
\FD|REG_EX_MEM|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(53));

-- Location: FF_X50_Y44_N9
\FD|REG_MEM_WB|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(21));

-- Location: LCCOMB_X50_Y44_N8
\FD|mux_Ula_Memoria|saida[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[16]~19_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\,
	datac => \FD|REG_MEM_WB|data_s\(21),
	combout => \FD|mux_Ula_Memoria|saida[16]~19_combout\);

-- Location: LCCOMB_X54_Y42_N18
\FD|BR|bancoReg_rtl_1_bypass[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[13]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[13]~22_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\);

-- Location: FF_X54_Y42_N19
\FD|BR|bancoReg_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(37));

-- Location: LCCOMB_X54_Y42_N28
\FD|BR|saidaB[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~45_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[13]~44_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\)) # (!\FD|BR|saidaB[13]~44_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[13]~44_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(37),
	combout => \FD|BR|saidaB[13]~45_combout\);

-- Location: FF_X54_Y42_N29
\FD|REG_ID_EX|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[13]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(55));

-- Location: FF_X52_Y41_N23
\FD|REG_EX_MEM|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(55),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(18));

-- Location: LCCOMB_X48_Y41_N6
\FD|ULA|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~2_combout\ = (\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Add1~30_combout\) # ((\FD|ULA|Mux31~0_combout\)))) # (!\FD|ULA|Mux0~3_combout\ & (((\FD|ULA|soma[15]~30_combout\ & !\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux0~3_combout\,
	datab => \FD|ULA|Add1~30_combout\,
	datac => \FD|ULA|soma[15]~30_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux16~2_combout\);

-- Location: LCCOMB_X48_Y41_N12
\FD|ULA|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(14),
	datab => \FD|REG_ID_EX|data_s\(57),
	datad => \FD|REG_ID_EX|data_s\(138),
	combout => \FD|ULA|Mux16~3_combout\);

-- Location: LCCOMB_X48_Y41_N28
\FD|ULA|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~5_combout\ = (!\FD|UCULA|ALUctr[1]~2_combout\ & (!\FD|UCULA|ALUctr[2]~4_combout\ & (\FD|REG_ID_EX|data_s\(89) $ (!\FD|ULA|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(89),
	datac => \FD|ULA|Mux16~3_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux16~5_combout\);

-- Location: LCCOMB_X48_Y41_N18
\FD|ULA|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux16~5_combout\ & ((\FD|REG_ID_EX|data_s\(89)))) # (!\FD|ULA|Mux16~5_combout\ & (\FD|ULA|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(89),
	datac => \FD|ULA|Mux16~5_combout\,
	datad => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	combout => \FD|ULA|Mux16~4_combout\);

-- Location: FF_X48_Y41_N19
\FD|REG_EX_MEM|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux16~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(52));

-- Location: FF_X49_Y41_N23
\FD|REG_MEM_WB|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(52),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(20));

-- Location: LCCOMB_X49_Y41_N22
\FD|mux_Ula_Memoria|saida[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[15]~20_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\,
	datac => \FD|REG_MEM_WB|data_s\(20),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[15]~20_combout\);

-- Location: LCCOMB_X47_Y42_N6
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

-- Location: FF_X47_Y42_N7
\FD|BR|bancoReg_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(36));

-- Location: LCCOMB_X47_Y42_N0
\FD|BR|saidaB[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~46_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(36) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(36),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[12]~46_combout\);

-- Location: FF_X48_Y40_N9
\FD|BR|bancoReg_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[12]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(35));

-- Location: LCCOMB_X48_Y40_N2
\FD|BR|saidaB[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~47_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[12]~46_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\)) # (!\FD|BR|saidaB[12]~46_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\,
	datab => \FD|BR|saidaB[12]~46_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(35),
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[12]~47_combout\);

-- Location: FF_X48_Y40_N3
\FD|REG_ID_EX|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(54));

-- Location: LCCOMB_X52_Y44_N14
\FD|REG_EX_MEM|data_s[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[17]~feeder_combout\ = \FD|REG_ID_EX|data_s\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(54),
	combout => \FD|REG_EX_MEM|data_s[17]~feeder_combout\);

-- Location: FF_X52_Y44_N15
\FD|REG_EX_MEM|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(17));

-- Location: LCCOMB_X49_Y42_N2
\FD|ULA|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~2_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_ID_EX|data_s\(88) & ((\FD|mux_Banco_Ula|saida[14]~21_combout\) # (\FD|ULA|Mux0~3_combout\))) # (!\FD|REG_ID_EX|data_s\(88) & (\FD|mux_Banco_Ula|saida[14]~21_combout\ & 
-- \FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|REG_ID_EX|data_s\(88),
	datac => \FD|mux_Banco_Ula|saida[14]~21_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux17~2_combout\);

-- Location: LCCOMB_X49_Y42_N12
\FD|ULA|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~3_combout\ = (\FD|ULA|Mux17~2_combout\ & (((\FD|ULA|Mux31~0_combout\) # (\FD|ULA|Add1~28_combout\)))) # (!\FD|ULA|Mux17~2_combout\ & (\FD|ULA|soma[14]~28_combout\ & (!\FD|ULA|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[14]~28_combout\,
	datab => \FD|ULA|Mux17~2_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Add1~28_combout\,
	combout => \FD|ULA|Mux17~3_combout\);

-- Location: LCCOMB_X50_Y44_N24
\FD|ULA|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~4_combout\ = (\FD|ULA|Mux17~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux17~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux17~4_combout\);

-- Location: FF_X50_Y44_N25
\FD|REG_EX_MEM|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(51));

-- Location: FF_X49_Y41_N25
\FD|REG_MEM_WB|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(51),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(19));

-- Location: LCCOMB_X49_Y41_N24
\FD|mux_Ula_Memoria|saida[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[14]~21_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\,
	datac => \FD|REG_MEM_WB|data_s\(19),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[14]~21_combout\);

-- Location: LCCOMB_X48_Y39_N4
\FD|BR|bancoReg_rtl_1_bypass[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[33]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[11]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[11]~24_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[33]~feeder_combout\);

-- Location: FF_X48_Y39_N5
\FD|BR|bancoReg_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(33));

-- Location: LCCOMB_X47_Y42_N18
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

-- Location: FF_X47_Y42_N19
\FD|BR|bancoReg_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(34));

-- Location: LCCOMB_X47_Y42_N28
\FD|BR|saidaB[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~48_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(34) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(34),
	combout => \FD|BR|saidaB[11]~48_combout\);

-- Location: LCCOMB_X48_Y39_N8
\FD|BR|saidaB[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~49_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[11]~48_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\)) # (!\FD|BR|saidaB[11]~48_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(33),
	datad => \FD|BR|saidaB[11]~48_combout\,
	combout => \FD|BR|saidaB[11]~49_combout\);

-- Location: FF_X48_Y39_N9
\FD|REG_ID_EX|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(53));

-- Location: FF_X48_Y39_N17
\FD|REG_EX_MEM|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(16));

-- Location: LCCOMB_X48_Y41_N10
\FD|ULA|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(55),
	datac => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|ULA|Mux18~3_combout\);

-- Location: LCCOMB_X48_Y41_N22
\FD|ULA|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~5_combout\ = (!\FD|UCULA|ALUctr[1]~2_combout\ & (!\FD|UCULA|ALUctr[2]~4_combout\ & (\FD|REG_ID_EX|data_s\(87) $ (!\FD|ULA|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(87),
	datac => \FD|ULA|Mux18~3_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux18~5_combout\);

-- Location: LCCOMB_X48_Y41_N16
\FD|ULA|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~2_combout\ = (\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Add1~26_combout\) # ((\FD|ULA|Mux31~0_combout\)))) # (!\FD|ULA|Mux0~3_combout\ & (((\FD|ULA|soma[13]~26_combout\ & !\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~26_combout\,
	datab => \FD|ULA|soma[13]~26_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux18~2_combout\);

-- Location: LCCOMB_X48_Y41_N4
\FD|ULA|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux18~5_combout\ & ((\FD|REG_ID_EX|data_s\(87)))) # (!\FD|ULA|Mux18~5_combout\ & (\FD|ULA|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux18~5_combout\,
	datab => \FD|ULA|Mux18~2_combout\,
	datac => \FD|REG_ID_EX|data_s\(87),
	datad => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	combout => \FD|ULA|Mux18~4_combout\);

-- Location: FF_X48_Y41_N5
\FD|REG_EX_MEM|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux18~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(50));

-- Location: FF_X49_Y41_N19
\FD|REG_MEM_WB|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(50),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(18));

-- Location: LCCOMB_X49_Y41_N18
\FD|mux_Ula_Memoria|saida[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[13]~22_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\,
	datac => \FD|REG_MEM_WB|data_s\(18),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[13]~22_combout\);

-- Location: LCCOMB_X48_Y39_N22
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

-- Location: FF_X48_Y39_N23
\FD|BR|bancoReg_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(32));

-- Location: LCCOMB_X48_Y39_N0
\FD|BR|saidaB[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~50_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(32) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(32),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[10]~50_combout\);

-- Location: LCCOMB_X48_Y40_N30
\FD|BR|bancoReg_rtl_1_bypass[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[31]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[10]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[10]~25_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[31]~feeder_combout\);

-- Location: FF_X48_Y40_N31
\FD|BR|bancoReg_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(31));

-- Location: LCCOMB_X48_Y39_N12
\FD|BR|saidaB[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~51_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[10]~50_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\)) # (!\FD|BR|saidaB[10]~50_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\,
	datab => \FD|BR|saidaB[10]~50_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(31),
	combout => \FD|BR|saidaB[10]~51_combout\);

-- Location: FF_X48_Y39_N13
\FD|REG_ID_EX|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[10]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(52));

-- Location: LCCOMB_X48_Y39_N10
\FD|REG_EX_MEM|data_s[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[15]~feeder_combout\ = \FD|REG_ID_EX|data_s\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(52),
	combout => \FD|REG_EX_MEM|data_s[15]~feeder_combout\);

-- Location: FF_X48_Y39_N11
\FD|REG_EX_MEM|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(15));

-- Location: LCCOMB_X49_Y43_N30
\FD|ULA|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~2_combout\ = (\FD|mux_Banco_Ula|saida[12]~23_combout\ & ((\FD|ULA|Mux0~3_combout\) # ((\FD|REG_ID_EX|data_s\(86) & \FD|ULA|Mux31~0_combout\)))) # (!\FD|mux_Banco_Ula|saida[12]~23_combout\ & (\FD|ULA|Mux0~3_combout\ & 
-- ((\FD|REG_ID_EX|data_s\(86)) # (!\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~23_combout\,
	datab => \FD|REG_ID_EX|data_s\(86),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux19~2_combout\);

-- Location: LCCOMB_X49_Y43_N0
\FD|ULA|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~3_combout\ = (\FD|ULA|Mux19~2_combout\ & (((\FD|ULA|Mux31~0_combout\) # (\FD|ULA|Add1~24_combout\)))) # (!\FD|ULA|Mux19~2_combout\ & (\FD|ULA|soma[12]~24_combout\ & (!\FD|ULA|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~2_combout\,
	datab => \FD|ULA|soma[12]~24_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Add1~24_combout\,
	combout => \FD|ULA|Mux19~3_combout\);

-- Location: LCCOMB_X50_Y44_N26
\FD|ULA|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~4_combout\ = (\FD|ULA|Mux19~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux19~4_combout\);

-- Location: FF_X50_Y44_N27
\FD|REG_EX_MEM|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(49));

-- Location: FF_X48_Y40_N29
\FD|REG_MEM_WB|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(49),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(17));

-- Location: LCCOMB_X48_Y40_N28
\FD|mux_Ula_Memoria|saida[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[12]~23_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\,
	datab => \FD|REG_MEM_WB|data_s\(69),
	datac => \FD|REG_MEM_WB|data_s\(17),
	combout => \FD|mux_Ula_Memoria|saida[12]~23_combout\);

-- Location: FF_X49_Y39_N11
\FD|BR|bancoReg_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[9]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(29));

-- Location: LCCOMB_X49_Y39_N2
\FD|BR|saidaB[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~53_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[9]~52_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\)) # (!\FD|BR|saidaB[9]~52_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[9]~52_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(29),
	combout => \FD|BR|saidaB[9]~53_combout\);

-- Location: FF_X49_Y39_N3
\FD|REG_ID_EX|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[9]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(51));

-- Location: LCCOMB_X49_Y39_N12
\FD|REG_EX_MEM|data_s[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[14]~feeder_combout\ = \FD|REG_ID_EX|data_s\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(51),
	combout => \FD|REG_EX_MEM|data_s[14]~feeder_combout\);

-- Location: FF_X49_Y39_N13
\FD|REG_EX_MEM|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(14));

-- Location: LCCOMB_X49_Y39_N24
\FD|ULA|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(53),
	datac => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|ULA|Mux20~3_combout\);

-- Location: LCCOMB_X49_Y39_N18
\FD|ULA|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~5_combout\ = (!\FD|UCULA|ALUctr[2]~4_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux20~3_combout\ $ (!\FD|REG_ID_EX|data_s\(85)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~4_combout\,
	datab => \FD|ULA|Mux20~3_combout\,
	datac => \FD|REG_ID_EX|data_s\(85),
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux20~5_combout\);

-- Location: LCCOMB_X49_Y43_N26
\FD|ULA|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~2_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Add1~22_combout\))) # (!\FD|ULA|Mux0~3_combout\ & (\FD|ULA|soma[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[11]~22_combout\,
	datab => \FD|ULA|Add1~22_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux20~2_combout\);

-- Location: LCCOMB_X49_Y39_N26
\FD|ULA|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux20~5_combout\ & (\FD|REG_ID_EX|data_s\(85))) # (!\FD|ULA|Mux20~5_combout\ & ((\FD|ULA|Mux20~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	datab => \FD|ULA|Mux20~5_combout\,
	datac => \FD|REG_ID_EX|data_s\(85),
	datad => \FD|ULA|Mux20~2_combout\,
	combout => \FD|ULA|Mux20~4_combout\);

-- Location: FF_X49_Y39_N27
\FD|REG_EX_MEM|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(48));

-- Location: FF_X49_Y39_N23
\FD|REG_MEM_WB|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(16));

-- Location: LCCOMB_X49_Y39_N22
\FD|mux_Ula_Memoria|saida[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[11]~24_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\,
	datac => \FD|REG_MEM_WB|data_s\(16),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[11]~24_combout\);

-- Location: FF_X52_Y44_N9
\FD|BR|bancoReg_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[7]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(25));

-- Location: LCCOMB_X52_Y44_N24
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

-- Location: FF_X52_Y44_N25
\FD|BR|bancoReg_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(26));

-- Location: LCCOMB_X52_Y44_N18
\FD|BR|saidaB[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~56_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(26) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(26),
	combout => \FD|BR|saidaB[7]~56_combout\);

-- Location: LCCOMB_X52_Y44_N22
\FD|BR|saidaB[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~57_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[7]~56_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\)) # (!\FD|BR|saidaB[7]~56_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(25),
	datad => \FD|BR|saidaB[7]~56_combout\,
	combout => \FD|BR|saidaB[7]~57_combout\);

-- Location: FF_X52_Y44_N23
\FD|REG_ID_EX|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[7]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(49));

-- Location: FF_X52_Y44_N1
\FD|REG_EX_MEM|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(49),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(12));

-- Location: LCCOMB_X49_Y43_N4
\FD|ULA|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~2_combout\ = (\FD|REG_ID_EX|data_s\(84) & ((\FD|ULA|Mux0~3_combout\) # ((\FD|mux_Banco_Ula|saida[10]~25_combout\ & \FD|ULA|Mux31~0_combout\)))) # (!\FD|REG_ID_EX|data_s\(84) & (\FD|ULA|Mux0~3_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[10]~25_combout\) # (!\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(84),
	datab => \FD|mux_Banco_Ula|saida[10]~25_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux21~2_combout\);

-- Location: LCCOMB_X49_Y43_N22
\FD|ULA|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~3_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Add1~20_combout\) # ((\FD|ULA|Mux31~0_combout\)))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux31~0_combout\ & \FD|ULA|soma[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~2_combout\,
	datab => \FD|ULA|Add1~20_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|soma[10]~20_combout\,
	combout => \FD|ULA|Mux21~3_combout\);

-- Location: LCCOMB_X50_Y44_N4
\FD|ULA|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~4_combout\ = (\FD|ULA|Mux21~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Mux30~4_combout\)) # (!\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux21~4_combout\);

-- Location: FF_X50_Y44_N5
\FD|REG_EX_MEM|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(47));

-- Location: FF_X48_Y41_N9
\FD|REG_MEM_WB|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(15));

-- Location: LCCOMB_X48_Y41_N8
\FD|mux_Ula_Memoria|saida[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[10]~25_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \FD|REG_MEM_WB|data_s\(15),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[10]~25_combout\);

-- Location: FF_X49_Y39_N5
\FD|BR|bancoReg_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|mux_Ula_Memoria|saida[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(29));

-- Location: LCCOMB_X48_Y45_N20
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

-- Location: FF_X48_Y45_N21
\FD|BR|bancoReg_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(30));

-- Location: LCCOMB_X48_Y45_N6
\FD|BR|saidaA[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~52_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(30) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(30),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[9]~52_combout\);

-- Location: LCCOMB_X49_Y39_N6
\FD|BR|saidaA[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~53_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[9]~52_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\)) # (!\FD|BR|saidaA[9]~52_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(29),
	datac => \FD|BR|saidaA[9]~52_combout\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[9]~53_combout\);

-- Location: FF_X49_Y39_N7
\FD|REG_ID_EX|data_s[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[9]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(83));

-- Location: LCCOMB_X49_Y43_N8
\FD|ULA|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~2_combout\ = (\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~3_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & ((\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~18_combout\)) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|soma[9]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~18_combout\,
	datab => \FD|ULA|soma[9]~18_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux22~2_combout\);

-- Location: LCCOMB_X49_Y39_N16
\FD|ULA|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(14),
	datab => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(51),
	combout => \FD|ULA|Mux22~3_combout\);

-- Location: LCCOMB_X49_Y39_N28
\FD|ULA|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~5_combout\ = (!\FD|UCULA|ALUctr[2]~4_combout\ & (!\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|REG_ID_EX|data_s\(83) $ (!\FD|ULA|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(83),
	datab => \FD|ULA|Mux22~3_combout\,
	datac => \FD|UCULA|ALUctr[2]~4_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux22~5_combout\);

-- Location: LCCOMB_X49_Y39_N30
\FD|ULA|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~4_combout\ = (!\FD|REG_EX_MEM|data_s[49]~18_combout\ & ((\FD|ULA|Mux22~5_combout\ & (\FD|REG_ID_EX|data_s\(83))) # (!\FD|ULA|Mux22~5_combout\ & ((\FD|ULA|Mux22~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(83),
	datab => \FD|ULA|Mux22~2_combout\,
	datac => \FD|REG_EX_MEM|data_s[49]~18_combout\,
	datad => \FD|ULA|Mux22~5_combout\,
	combout => \FD|ULA|Mux22~4_combout\);

-- Location: FF_X49_Y39_N31
\FD|REG_EX_MEM|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(46));

-- Location: FF_X49_Y39_N17
\FD|REG_MEM_WB|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(14));

-- Location: LCCOMB_X49_Y39_N4
\FD|mux_Ula_Memoria|saida[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[9]~26_combout\ = (\FD|REG_MEM_WB|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\))) # (!\FD|REG_MEM_WB|data_s\(69) & (\FD|REG_MEM_WB|data_s\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datac => \FD|REG_MEM_WB|data_s\(14),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \FD|mux_Ula_Memoria|saida[9]~26_combout\);

-- Location: LCCOMB_X48_Y39_N24
\FD|BR|saidaB[8]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~55_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[8]~54_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\))) # (!\FD|BR|saidaB[8]~54_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[8]~54_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(27),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\,
	combout => \FD|BR|saidaB[8]~55_combout\);

-- Location: FF_X48_Y39_N25
\FD|REG_ID_EX|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[8]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(50));

-- Location: LCCOMB_X48_Y39_N2
\FD|mux_Banco_Ula|saida[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[8]~27_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(50),
	datac => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[8]~27_combout\);

-- Location: LCCOMB_X56_Y41_N12
\FD|ULA|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~2_combout\ = (\FD|ULA|Mux0~3_combout\ & (((\FD|mux_Banco_Ula|saida[8]~27_combout\) # (\FD|REG_ID_EX|data_s\(82))) # (!\FD|ULA|Mux31~0_combout\))) # (!\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Mux31~0_combout\ & 
-- (\FD|mux_Banco_Ula|saida[8]~27_combout\ & \FD|REG_ID_EX|data_s\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux0~3_combout\,
	datab => \FD|ULA|Mux31~0_combout\,
	datac => \FD|mux_Banco_Ula|saida[8]~27_combout\,
	datad => \FD|REG_ID_EX|data_s\(82),
	combout => \FD|ULA|Mux23~2_combout\);

-- Location: LCCOMB_X56_Y41_N6
\FD|ULA|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~3_combout\ = (\FD|ULA|Mux23~2_combout\ & (((\FD|ULA|Add1~16_combout\) # (\FD|ULA|Mux31~0_combout\)))) # (!\FD|ULA|Mux23~2_combout\ & (\FD|ULA|soma[8]~16_combout\ & ((!\FD|ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[8]~16_combout\,
	datab => \FD|ULA|Add1~16_combout\,
	datac => \FD|ULA|Mux23~2_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux23~3_combout\);

-- Location: LCCOMB_X56_Y41_N10
\FD|ULA|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~4_combout\ = (\FD|ULA|Mux23~3_combout\ & ((\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|ULA|Mux30~4_combout\))) # (!\FD|UCULA|ALUctr[1]~2_combout\ & (!\FD|UCULA|ALUctr[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|UCULA|ALUctr[2]~4_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux23~4_combout\);

-- Location: FF_X56_Y41_N11
\FD|REG_EX_MEM|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux23~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(45));

-- Location: FF_X54_Y41_N5
\FD|REG_MEM_WB|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(13));

-- Location: LCCOMB_X54_Y41_N4
\FD|mux_Ula_Memoria|saida[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[8]~27_combout\ = (\FD|REG_MEM_WB|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\))) # (!\FD|REG_MEM_WB|data_s\(69) & (\FD|REG_MEM_WB|data_s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datac => \FD|REG_MEM_WB|data_s\(13),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \FD|mux_Ula_Memoria|saida[8]~27_combout\);

-- Location: LCCOMB_X47_Y42_N10
\FD|BR|bancoReg_rtl_1_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[5]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[5]~30_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\);

-- Location: FF_X47_Y42_N11
\FD|BR|bancoReg_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(21));

-- Location: LCCOMB_X47_Y42_N16
\FD|BR|saidaB[5]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~61_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[5]~60_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\)) # (!\FD|BR|saidaB[5]~60_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[5]~60_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(21),
	combout => \FD|BR|saidaB[5]~61_combout\);

-- Location: FF_X47_Y42_N17
\FD|REG_ID_EX|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[5]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(47));

-- Location: LCCOMB_X47_Y42_N8
\FD|REG_EX_MEM|data_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[10]~feeder_combout\ = \FD|REG_ID_EX|data_s\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(47),
	combout => \FD|REG_EX_MEM|data_s[10]~feeder_combout\);

-- Location: FF_X47_Y42_N9
\FD|REG_EX_MEM|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(10));

-- Location: FF_X49_Y41_N13
\FD|REG_MEM_WB|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(44),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(12));

-- Location: LCCOMB_X49_Y41_N12
\FD|mux_Ula_Memoria|saida[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[7]~28_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\,
	datac => \FD|REG_MEM_WB|data_s\(12),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[7]~28_combout\);

-- Location: FF_X49_Y41_N11
\FD|BR|bancoReg_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[7]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(25));

-- Location: LCCOMB_X49_Y41_N20
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

-- Location: FF_X49_Y41_N21
\FD|BR|bancoReg_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(26));

-- Location: LCCOMB_X49_Y41_N14
\FD|BR|saidaA[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~56_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(26) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(26),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[7]~56_combout\);

-- Location: LCCOMB_X49_Y41_N2
\FD|BR|saidaA[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~57_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[7]~56_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\))) # (!\FD|BR|saidaA[7]~56_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(25),
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\,
	datac => \FD|BR|saidaA[7]~56_combout\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[7]~57_combout\);

-- Location: FF_X49_Y41_N3
\FD|REG_ID_EX|data_s[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[7]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(81));

-- Location: LCCOMB_X50_Y44_N0
\FD|ULA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|ULA|Mux30~4_combout\) # (!\FD|UCULA|ALUctr[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|UCULA|ALUctr[2]~4_combout\,
	combout => \FD|ULA|Mux0~2_combout\);

-- Location: LCCOMB_X57_Y43_N16
\FD|ULA|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~4_combout\ = (\FD|ULA|soma[7]~14_combout\ & ((\FD|ULA|Mux30~3_combout\) # ((\FD|REG_ID_EX|data_s\(140)) # (\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|soma[7]~14_combout\,
	datac => \FD|REG_ID_EX|data_s\(140),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux24~4_combout\);

-- Location: LCCOMB_X57_Y43_N14
\FD|ULA|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~2_combout\ = (\FD|ULA|Mux0~2_combout\ & ((\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~14_combout\)) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Mux24~4_combout\))))) # (!\FD|ULA|Mux0~2_combout\ & (((!\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Mux0~2_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|Mux24~4_combout\,
	combout => \FD|ULA|Mux24~2_combout\);

-- Location: LCCOMB_X49_Y42_N16
\FD|ULA|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_ID_EX|data_s\(81) & ((\FD|mux_Banco_Ula|saida[7]~28_combout\) # (!\FD|ULA|Mux24~2_combout\))) # (!\FD|REG_ID_EX|data_s\(81) & (\FD|mux_Banco_Ula|saida[7]~28_combout\ & 
-- !\FD|ULA|Mux24~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(81),
	datab => \FD|mux_Banco_Ula|saida[7]~28_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \FD|ULA|Mux24~3_combout\);

-- Location: LCCOMB_X46_Y41_N28
\FD|REG_EX_MEM|data_s[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[44]~feeder_combout\ = \FD|ULA|Mux24~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux24~3_combout\,
	combout => \FD|REG_EX_MEM|data_s[44]~feeder_combout\);

-- Location: FF_X46_Y41_N29
\FD|REG_EX_MEM|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(44));

-- Location: FF_X50_Y41_N19
\FD|REG_MEM_WB|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(43),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(11));

-- Location: LCCOMB_X50_Y41_N18
\FD|mux_Ula_Memoria|saida[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[6]~29_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\,
	datac => \FD|REG_MEM_WB|data_s\(11),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[6]~29_combout\);

-- Location: FF_X47_Y39_N17
\FD|BR|bancoReg_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(23));

-- Location: LCCOMB_X47_Y39_N20
\FD|BR|saidaB[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~59_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[6]~58_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\))) # (!\FD|BR|saidaB[6]~58_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[6]~58_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(23),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\,
	combout => \FD|BR|saidaB[6]~59_combout\);

-- Location: FF_X47_Y39_N21
\FD|REG_ID_EX|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[6]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(48));

-- Location: LCCOMB_X47_Y39_N30
\FD|mux_Banco_Ula|saida[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[6]~29_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(14)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datab => \FD|REG_ID_EX|data_s\(48),
	datac => \FD|REG_ID_EX|data_s\(14),
	combout => \FD|mux_Banco_Ula|saida[6]~29_combout\);

-- Location: LCCOMB_X57_Y43_N4
\FD|ULA|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~4_combout\ = (\FD|ULA|soma[6]~12_combout\ & ((\FD|ULA|Mux30~3_combout\) # ((\FD|REG_ID_EX|data_s\(140)) # (\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|soma[6]~12_combout\,
	datac => \FD|REG_ID_EX|data_s\(140),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux25~4_combout\);

-- Location: LCCOMB_X46_Y41_N12
\FD|ULA|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~2_combout\ = (\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~12_combout\ & (\FD|ULA|Mux0~2_combout\))) # (!\FD|ULA|Mux0~3_combout\ & (((\FD|ULA|Mux25~4_combout\) # (!\FD|ULA|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~12_combout\,
	datab => \FD|ULA|Mux0~3_combout\,
	datac => \FD|ULA|Mux0~2_combout\,
	datad => \FD|ULA|Mux25~4_combout\,
	combout => \FD|ULA|Mux25~2_combout\);

-- Location: LCCOMB_X46_Y41_N30
\FD|ULA|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~3_combout\ = (\FD|ULA|Mux25~2_combout\ & (((\FD|REG_ID_EX|data_s\(80) & \FD|mux_Banco_Ula|saida[6]~29_combout\)) # (!\FD|ULA|Mux31~0_combout\))) # (!\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_ID_EX|data_s\(80)) # 
-- (\FD|mux_Banco_Ula|saida[6]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(80),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|mux_Banco_Ula|saida[6]~29_combout\,
	combout => \FD|ULA|Mux25~3_combout\);

-- Location: FF_X46_Y41_N3
\FD|REG_EX_MEM|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|ULA|Mux25~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(43));

-- Location: FF_X50_Y41_N5
\FD|REG_MEM_WB|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(42),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(10));

-- Location: LCCOMB_X50_Y41_N4
\FD|mux_Ula_Memoria|saida[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[5]~30_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \FD|REG_MEM_WB|data_s\(10),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[5]~30_combout\);

-- Location: LCCOMB_X47_Y39_N24
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

-- Location: FF_X47_Y39_N25
\FD|BR|bancoReg_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(20));

-- Location: LCCOMB_X47_Y39_N12
\FD|BR|saidaB[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~62_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(20) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(20),
	combout => \FD|BR|saidaB[4]~62_combout\);

-- Location: LCCOMB_X47_Y39_N8
\FD|BR|saidaB[4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~63_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[4]~62_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\))) # (!\FD|BR|saidaB[4]~62_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(19),
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[4]~62_combout\,
	combout => \FD|BR|saidaB[4]~63_combout\);

-- Location: FF_X47_Y39_N9
\FD|REG_ID_EX|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(46));

-- Location: FF_X47_Y39_N15
\FD|REG_EX_MEM|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(9));

-- Location: FF_X49_Y41_N31
\FD|REG_MEM_WB|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(41),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(9));

-- Location: LCCOMB_X49_Y41_N30
\FD|mux_Ula_Memoria|saida[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[4]~31_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datac => \FD|REG_MEM_WB|data_s\(9),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[4]~31_combout\);

-- Location: LCCOMB_X48_Y45_N18
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

-- Location: FF_X48_Y45_N19
\FD|BR|bancoReg_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(22));

-- Location: LCCOMB_X48_Y45_N28
\FD|BR|saidaA[5]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~60_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(22) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(22),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[5]~60_combout\);

-- Location: FF_X48_Y45_N17
\FD|BR|bancoReg_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[5]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(21));

-- Location: LCCOMB_X48_Y45_N10
\FD|BR|saidaA[5]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~61_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[5]~60_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\)) # (!\FD|BR|saidaA[5]~60_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\,
	datab => \FD|BR|saidaA[5]~60_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(21),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[5]~61_combout\);

-- Location: FF_X48_Y45_N11
\FD|REG_ID_EX|data_s[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[5]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(79));

-- Location: LCCOMB_X57_Y43_N22
\FD|ULA|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~4_combout\ = (\FD|ULA|soma[5]~10_combout\ & ((\FD|ULA|Mux30~3_combout\) # ((\FD|REG_ID_EX|data_s\(140)) # (\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|soma[5]~10_combout\,
	datac => \FD|REG_ID_EX|data_s\(140),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux26~4_combout\);

-- Location: LCCOMB_X57_Y43_N20
\FD|ULA|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~2_combout\ = (\FD|ULA|Mux0~3_combout\ & (((\FD|ULA|Add1~10_combout\ & \FD|ULA|Mux0~2_combout\)))) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Mux26~4_combout\) # ((!\FD|ULA|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~4_combout\,
	datab => \FD|ULA|Add1~10_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|Mux0~2_combout\,
	combout => \FD|ULA|Mux26~2_combout\);

-- Location: LCCOMB_X46_Y41_N16
\FD|ULA|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_ID_EX|data_s\(79) & ((\FD|mux_Banco_Ula|saida[5]~30_combout\) # (!\FD|ULA|Mux26~2_combout\))) # (!\FD|REG_ID_EX|data_s\(79) & (\FD|mux_Banco_Ula|saida[5]~30_combout\ & 
-- !\FD|ULA|Mux26~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(79),
	datab => \FD|mux_Banco_Ula|saida[5]~30_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux26~2_combout\,
	combout => \FD|ULA|Mux26~3_combout\);

-- Location: LCCOMB_X46_Y41_N0
\FD|REG_EX_MEM|data_s[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[42]~feeder_combout\ = \FD|ULA|Mux26~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux26~3_combout\,
	combout => \FD|REG_EX_MEM|data_s[42]~feeder_combout\);

-- Location: FF_X46_Y41_N1
\FD|REG_EX_MEM|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(42));

-- Location: FF_X52_Y42_N21
\FD|REG_MEM_WB|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(40),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(8));

-- Location: LCCOMB_X52_Y42_N20
\FD|mux_Ula_Memoria|saida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[3]~2_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\,
	datac => \FD|REG_MEM_WB|data_s\(8),
	combout => \FD|mux_Ula_Memoria|saida[3]~2_combout\);

-- Location: LCCOMB_X49_Y41_N26
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

-- Location: FF_X49_Y41_N27
\FD|BR|bancoReg_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(20));

-- Location: LCCOMB_X49_Y41_N16
\FD|BR|saidaA[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~62_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(20) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(20),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[4]~62_combout\);

-- Location: FF_X49_Y41_N17
\FD|BR|bancoReg_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[4]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(19));

-- Location: LCCOMB_X49_Y41_N28
\FD|BR|saidaA[4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~63_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[4]~62_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\)) # (!\FD|BR|saidaA[4]~62_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\,
	datab => \FD|BR|saidaA[4]~62_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(19),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[4]~63_combout\);

-- Location: FF_X49_Y41_N29
\FD|REG_ID_EX|data_s[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(78));

-- Location: LCCOMB_X57_Y43_N18
\FD|ULA|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~4_combout\ = (\FD|ULA|soma[4]~8_combout\ & ((\FD|ULA|Mux30~3_combout\) # ((\FD|REG_ID_EX|data_s\(140)) # (\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|soma[4]~8_combout\,
	datac => \FD|REG_ID_EX|data_s\(140),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux27~4_combout\);

-- Location: LCCOMB_X57_Y43_N24
\FD|ULA|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~2_combout\ = (\FD|ULA|Mux0~2_combout\ & ((\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Add1~8_combout\))) # (!\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Mux27~4_combout\)))) # (!\FD|ULA|Mux0~2_combout\ & (((!\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~4_combout\,
	datab => \FD|ULA|Mux0~2_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|Add1~8_combout\,
	combout => \FD|ULA|Mux27~2_combout\);

-- Location: LCCOMB_X46_Y41_N18
\FD|ULA|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_ID_EX|data_s\(78) & ((\FD|mux_Banco_Ula|saida[4]~31_combout\) # (!\FD|ULA|Mux27~2_combout\))) # (!\FD|REG_ID_EX|data_s\(78) & (\FD|mux_Banco_Ula|saida[4]~31_combout\ & 
-- !\FD|ULA|Mux27~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(78),
	datab => \FD|mux_Banco_Ula|saida[4]~31_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux27~2_combout\,
	combout => \FD|ULA|Mux27~3_combout\);

-- Location: LCCOMB_X46_Y41_N14
\FD|REG_EX_MEM|data_s[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[41]~feeder_combout\ = \FD|ULA|Mux27~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \FD|REG_EX_MEM|data_s[41]~feeder_combout\);

-- Location: FF_X46_Y41_N15
\FD|REG_EX_MEM|data_s[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(41));

-- Location: FF_X55_Y43_N7
\FD|REG_MEM_WB|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(39),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(7));

-- Location: LCCOMB_X55_Y43_N6
\FD|mux_Ula_Memoria|saida[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[2]~3_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\,
	datac => \FD|REG_MEM_WB|data_s\(7),
	datad => \FD|REG_MEM_WB|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[2]~3_combout\);

-- Location: LCCOMB_X54_Y42_N14
\FD|BR|bancoReg_rtl_1_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[2]~3_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\);

-- Location: FF_X54_Y42_N15
\FD|BR|bancoReg_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(15));

-- Location: LCCOMB_X54_Y42_N16
\FD|BR|saidaB[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~7_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[2]~6_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\))) # (!\FD|BR|saidaB[2]~6_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[2]~6_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(15),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\,
	combout => \FD|BR|saidaB[2]~7_combout\);

-- Location: FF_X54_Y42_N17
\FD|REG_ID_EX|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(44));

-- Location: LCCOMB_X55_Y39_N14
\FD|mux_Banco_Ula|saida[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[2]~3_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(12))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(138),
	datac => \FD|REG_ID_EX|data_s\(12),
	datad => \FD|REG_ID_EX|data_s\(44),
	combout => \FD|mux_Banco_Ula|saida[2]~3_combout\);

-- Location: LCCOMB_X57_Y43_N28
\FD|ULA|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~4_combout\ = (\FD|ULA|soma[2]~4_combout\ & ((\FD|ULA|Mux30~3_combout\) # ((\FD|REG_ID_EX|data_s\(140)) # (\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|soma[2]~4_combout\,
	datac => \FD|REG_ID_EX|data_s\(140),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux29~4_combout\);

-- Location: LCCOMB_X52_Y43_N2
\FD|ULA|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~2_combout\ = (\FD|ULA|Mux0~2_combout\ & ((\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~4_combout\)) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Mux29~4_combout\))))) # (!\FD|ULA|Mux0~2_combout\ & (!\FD|ULA|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux0~2_combout\,
	datab => \FD|ULA|Mux0~3_combout\,
	datac => \FD|ULA|Add1~4_combout\,
	datad => \FD|ULA|Mux29~4_combout\,
	combout => \FD|ULA|Mux29~2_combout\);

-- Location: LCCOMB_X55_Y43_N20
\FD|ULA|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~3_combout\ = (\FD|ULA|Mux29~2_combout\ & (((\FD|mux_Banco_Ula|saida[2]~3_combout\ & \FD|REG_ID_EX|data_s\(76))) # (!\FD|ULA|Mux31~0_combout\))) # (!\FD|ULA|Mux29~2_combout\ & (\FD|ULA|Mux31~0_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[2]~3_combout\) # (\FD|REG_ID_EX|data_s\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~3_combout\,
	datab => \FD|REG_ID_EX|data_s\(76),
	datac => \FD|ULA|Mux29~2_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux29~3_combout\);

-- Location: LCCOMB_X55_Y43_N8
\FD|REG_EX_MEM|data_s[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[39]~feeder_combout\ = \FD|ULA|Mux29~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux29~3_combout\,
	combout => \FD|REG_EX_MEM|data_s[39]~feeder_combout\);

-- Location: FF_X55_Y43_N9
\FD|REG_EX_MEM|data_s[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(39));

-- Location: LCCOMB_X57_Y43_N6
\FD|ULA|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~7_combout\ = (\FD|ULA|soma[1]~2_combout\ & ((\FD|ULA|Mux30~3_combout\) # ((\FD|REG_ID_EX|data_s\(140)) # (\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|soma[1]~2_combout\,
	datac => \FD|REG_ID_EX|data_s\(140),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux30~7_combout\);

-- Location: LCCOMB_X57_Y43_N10
\FD|ULA|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~5_combout\ = (\FD|ULA|Mux0~2_combout\ & ((\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~2_combout\)) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Mux30~7_combout\))))) # (!\FD|ULA|Mux0~2_combout\ & (((!\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~2_combout\,
	datab => \FD|ULA|Mux0~2_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|Mux30~7_combout\,
	combout => \FD|ULA|Mux30~5_combout\);

-- Location: LCCOMB_X55_Y43_N24
\FD|ULA|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~6_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[1]~0_combout\ & ((\FD|REG_ID_EX|data_s\(75)) # (!\FD|ULA|Mux30~5_combout\))) # (!\FD|mux_Banco_Ula|saida[1]~0_combout\ & (\FD|REG_ID_EX|data_s\(75) & 
-- !\FD|ULA|Mux30~5_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~0_combout\,
	datab => \FD|ULA|Mux31~0_combout\,
	datac => \FD|REG_ID_EX|data_s\(75),
	datad => \FD|ULA|Mux30~5_combout\,
	combout => \FD|ULA|Mux30~6_combout\);

-- Location: FF_X56_Y41_N29
\FD|REG_EX_MEM|data_s[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|ULA|Mux30~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(38));

-- Location: FF_X56_Y41_N9
\FD|REG_MEM_WB|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(6));

-- Location: LCCOMB_X56_Y41_N8
\FD|mux_Ula_Memoria|saida[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[1]~0_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \FD|REG_MEM_WB|data_s\(6),
	combout => \FD|mux_Ula_Memoria|saida[1]~0_combout\);

-- Location: LCCOMB_X50_Y39_N20
\FD|BR|saidaB[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~3_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[0]~2_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\))) # (!\FD|BR|saidaB[0]~2_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(11),
	datab => \FD|BR|saidaB[0]~2_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \FD|BR|saidaB[0]~3_combout\);

-- Location: FF_X50_Y39_N21
\FD|REG_ID_EX|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(42));

-- Location: FF_X55_Y39_N7
\FD|REG_EX_MEM|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(42),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(5));

-- Location: LCCOMB_X52_Y43_N28
\FD|ULA|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~1_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[0]~1_combout\ & ((\FD|REG_ID_EX|data_s\(74)) # (!\FD|ULA|Mux30~4_combout\))) # (!\FD|mux_Banco_Ula|saida[0]~1_combout\ & (\FD|REG_ID_EX|data_s\(74) & 
-- !\FD|ULA|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[0]~1_combout\,
	datab => \FD|REG_ID_EX|data_s\(74),
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux31~1_combout\);

-- Location: LCCOMB_X52_Y43_N20
\FD|ULA|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~3_combout\ = \FD|ULA|Add1~62_combout\ $ (((\FD|ULA|Mux0~5_combout\ & (!\FD|REG_ID_EX|data_s\(105) & !\FD|mux_Banco_Ula|saida[31]~4_combout\)) # (!\FD|ULA|Mux0~5_combout\ & (\FD|REG_ID_EX|data_s\(105) & 
-- \FD|mux_Banco_Ula|saida[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux0~5_combout\,
	datab => \FD|REG_ID_EX|data_s\(105),
	datac => \FD|ULA|Add1~62_combout\,
	datad => \FD|mux_Banco_Ula|saida[31]~4_combout\,
	combout => \FD|ULA|Mux31~3_combout\);

-- Location: LCCOMB_X52_Y43_N6
\FD|ULA|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~2_combout\ = (\FD|UCULA|ALUctr[2]~4_combout\ & ((\FD|ULA|Add1~0_combout\))) # (!\FD|UCULA|ALUctr[2]~4_combout\ & (\FD|ULA|soma[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[0]~0_combout\,
	datac => \FD|UCULA|ALUctr[2]~4_combout\,
	datad => \FD|ULA|Add1~0_combout\,
	combout => \FD|ULA|Mux31~2_combout\);

-- Location: LCCOMB_X52_Y43_N30
\FD|ULA|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~4_combout\ = (\FD|ULA|Mux30~4_combout\ & (((\FD|ULA|Mux31~2_combout\)))) # (!\FD|ULA|Mux30~4_combout\ & (\FD|UCULA|ALUctr[2]~4_combout\ & (\FD|ULA|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~4_combout\,
	datab => \FD|ULA|Mux31~3_combout\,
	datac => \FD|ULA|Mux30~4_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux31~4_combout\);

-- Location: LCCOMB_X52_Y43_N8
\FD|ULA|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~5_combout\ = (\FD|ULA|Mux31~1_combout\) # ((\FD|ULA|Mux31~4_combout\ & \FD|UCULA|ALUctr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux31~1_combout\,
	datac => \FD|ULA|Mux31~4_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux31~5_combout\);

-- Location: FF_X52_Y43_N9
\FD|REG_EX_MEM|data_s[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux31~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(37));

-- Location: FF_X52_Y43_N25
\FD|REG_MEM_WB|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(5));

-- Location: LCCOMB_X52_Y43_N24
\FD|mux_Ula_Memoria|saida[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[0]~1_combout\ = (\FD|REG_MEM_WB|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\FD|REG_MEM_WB|data_s\(69) & ((\FD|REG_MEM_WB|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \FD|REG_MEM_WB|data_s\(5),
	combout => \FD|mux_Ula_Memoria|saida[0]~1_combout\);

-- Location: FF_X54_Y41_N27
\FD|BR|bancoReg_rtl_1_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[31]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(73));

-- Location: LCCOMB_X47_Y42_N26
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

-- Location: FF_X47_Y42_N27
\FD|BR|bancoReg_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(74));

-- Location: LCCOMB_X47_Y42_N4
\FD|BR|saidaB[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~8_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(74) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(74),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[31]~8_combout\);

-- Location: LCCOMB_X54_Y41_N16
\FD|BR|saidaB[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~9_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[31]~8_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\)) # (!\FD|BR|saidaB[31]~8_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(73),
	datad => \FD|BR|saidaB[31]~8_combout\,
	combout => \FD|BR|saidaB[31]~9_combout\);

-- Location: FF_X54_Y41_N17
\FD|REG_ID_EX|data_s[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(73));

-- Location: LCCOMB_X54_Y41_N26
\FD|mux_Banco_Ula|saida[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[31]~4_combout\ = (\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(14))) # (!\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(14),
	datab => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(73),
	combout => \FD|mux_Banco_Ula|saida[31]~4_combout\);

-- Location: LCCOMB_X50_Y42_N30
\FD|ULA|soma[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[31]~62_combout\ = \FD|REG_ID_EX|data_s\(105) $ (\FD|ULA|soma[30]~61\ $ (\FD|mux_Banco_Ula|saida[31]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_ID_EX|data_s\(105),
	datad => \FD|mux_Banco_Ula|saida[31]~4_combout\,
	cin => \FD|ULA|soma[30]~61\,
	combout => \FD|ULA|soma[31]~62_combout\);

-- Location: LCCOMB_X57_Y43_N2
\FD|ULA|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~6_combout\ = (\FD|ULA|soma[31]~62_combout\ & ((\FD|ULA|Mux30~3_combout\) # ((\FD|REG_ID_EX|data_s\(140)) # (\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|soma[31]~62_combout\,
	datac => \FD|REG_ID_EX|data_s\(140),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux0~6_combout\);

-- Location: LCCOMB_X52_Y43_N0
\FD|ULA|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~4_combout\ = (\FD|ULA|Mux0~2_combout\ & ((\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~62_combout\)) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Mux0~6_combout\))))) # (!\FD|ULA|Mux0~2_combout\ & (!\FD|ULA|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux0~2_combout\,
	datab => \FD|ULA|Mux0~3_combout\,
	datac => \FD|ULA|Add1~62_combout\,
	datad => \FD|ULA|Mux0~6_combout\,
	combout => \FD|ULA|Mux0~4_combout\);

-- Location: LCCOMB_X52_Y43_N26
\FD|ULA|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~5_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[31]~4_combout\ & ((\FD|REG_ID_EX|data_s\(105)) # (!\FD|ULA|Mux0~4_combout\))) # (!\FD|mux_Banco_Ula|saida[31]~4_combout\ & (\FD|REG_ID_EX|data_s\(105) & 
-- !\FD|ULA|Mux0~4_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|mux_Banco_Ula|saida[31]~4_combout\,
	datac => \FD|REG_ID_EX|data_s\(105),
	datad => \FD|ULA|Mux0~4_combout\,
	combout => \FD|ULA|Mux0~5_combout\);

-- Location: FF_X52_Y43_N27
\FD|REG_EX_MEM|data_s[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(68));

-- Location: FF_X54_Y41_N9
\FD|REG_MEM_WB|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_EX_MEM|data_s\(68),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(36));

-- Location: LCCOMB_X54_Y41_N8
\FD|mux_Ula_Memoria|saida[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[31]~4_combout\ = (\FD|REG_MEM_WB|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\))) # (!\FD|REG_MEM_WB|data_s\(69) & (\FD|REG_MEM_WB|data_s\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MEM_WB|data_s\(69),
	datac => \FD|REG_MEM_WB|data_s\(36),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\,
	combout => \FD|mux_Ula_Memoria|saida[31]~4_combout\);

-- Location: FF_X54_Y41_N3
\FD|BR|bancoReg_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[31]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(73));

-- Location: LCCOMB_X53_Y43_N0
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

-- Location: FF_X53_Y43_N1
\FD|BR|bancoReg_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(74));

-- Location: LCCOMB_X53_Y43_N2
\FD|BR|saidaA[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~8_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(74) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(74),
	datac => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[31]~8_combout\);

-- Location: LCCOMB_X53_Y43_N24
\FD|BR|saidaA[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~9_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[31]~8_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\))) # (!\FD|BR|saidaA[31]~8_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(73),
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|saidaA[31]~8_combout\,
	combout => \FD|BR|saidaA[31]~9_combout\);

-- Location: FF_X53_Y43_N25
\FD|REG_ID_EX|data_s[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(105));

-- Location: LCCOMB_X48_Y42_N30
\FD|ULA|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~62_combout\ = \FD|REG_ID_EX|data_s\(105) $ (\FD|ULA|Add1~61\ $ (!\FD|mux_Banco_Ula|saida[31]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(105),
	datad => \FD|mux_Banco_Ula|saida[31]~4_combout\,
	cin => \FD|ULA|Add1~61\,
	combout => \FD|ULA|Add1~62_combout\);

-- Location: LCCOMB_X52_Y43_N18
\FD|ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~0_combout\ = (!\FD|ULA|Add1~62_combout\ & (!\FD|ULA|Add1~4_combout\ & (!\FD|ULA|Add1~2_combout\ & !\FD|ULA|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~62_combout\,
	datab => \FD|ULA|Add1~4_combout\,
	datac => \FD|ULA|Add1~2_combout\,
	datad => \FD|ULA|Add1~0_combout\,
	combout => \FD|ULA|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y43_N16
\FD|ULA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~2_combout\ = (!\FD|ULA|Add1~16_combout\ & !\FD|ULA|Add1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Add1~16_combout\,
	datad => \FD|ULA|Add1~58_combout\,
	combout => \FD|ULA|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y43_N18
\FD|ULA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~3_combout\ = (!\FD|ULA|Add1~20_combout\ & (!\FD|ULA|Add1~22_combout\ & (!\FD|ULA|Add1~18_combout\ & !\FD|ULA|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~20_combout\,
	datab => \FD|ULA|Add1~22_combout\,
	datac => \FD|ULA|Add1~18_combout\,
	datad => \FD|ULA|Add1~24_combout\,
	combout => \FD|ULA|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y43_N28
\FD|ULA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~4_combout\ = (!\FD|ULA|Add1~12_combout\ & (\FD|ULA|Equal0~2_combout\ & (!\FD|ULA|Add1~60_combout\ & \FD|ULA|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~12_combout\,
	datab => \FD|ULA|Equal0~2_combout\,
	datac => \FD|ULA|Add1~60_combout\,
	datad => \FD|ULA|Equal0~3_combout\,
	combout => \FD|ULA|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y42_N18
\FD|ULA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~5_combout\ = (!\FD|ULA|Add1~28_combout\ & (!\FD|ULA|Add1~32_combout\ & (!\FD|ULA|Add1~30_combout\ & !\FD|ULA|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~28_combout\,
	datab => \FD|ULA|Add1~32_combout\,
	datac => \FD|ULA|Add1~30_combout\,
	datad => \FD|ULA|Add1~26_combout\,
	combout => \FD|ULA|Equal0~5_combout\);

-- Location: LCCOMB_X49_Y42_N30
\FD|ULA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~8_combout\ = (!\FD|ULA|Add1~56_combout\ & (!\FD|ULA|Add1~52_combout\ & (!\FD|ULA|Add1~54_combout\ & !\FD|ULA|Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~56_combout\,
	datab => \FD|ULA|Add1~52_combout\,
	datac => \FD|ULA|Add1~54_combout\,
	datad => \FD|ULA|Add1~50_combout\,
	combout => \FD|ULA|Equal0~8_combout\);

-- Location: LCCOMB_X49_Y42_N28
\FD|ULA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~7_combout\ = (!\FD|ULA|Add1~42_combout\ & (!\FD|ULA|Add1~46_combout\ & (!\FD|ULA|Add1~48_combout\ & !\FD|ULA|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~42_combout\,
	datab => \FD|ULA|Add1~46_combout\,
	datac => \FD|ULA|Add1~48_combout\,
	datad => \FD|ULA|Add1~44_combout\,
	combout => \FD|ULA|Equal0~7_combout\);

-- Location: LCCOMB_X52_Y42_N8
\FD|ULA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~6_combout\ = (!\FD|ULA|Add1~38_combout\ & (!\FD|ULA|Add1~34_combout\ & (!\FD|ULA|Add1~36_combout\ & !\FD|ULA|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~38_combout\,
	datab => \FD|ULA|Add1~34_combout\,
	datac => \FD|ULA|Add1~36_combout\,
	datad => \FD|ULA|Add1~40_combout\,
	combout => \FD|ULA|Equal0~6_combout\);

-- Location: LCCOMB_X53_Y42_N0
\FD|ULA|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~9_combout\ = (\FD|ULA|Equal0~5_combout\ & (\FD|ULA|Equal0~8_combout\ & (\FD|ULA|Equal0~7_combout\ & \FD|ULA|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~5_combout\,
	datab => \FD|ULA|Equal0~8_combout\,
	datac => \FD|ULA|Equal0~7_combout\,
	datad => \FD|ULA|Equal0~6_combout\,
	combout => \FD|ULA|Equal0~9_combout\);

-- Location: LCCOMB_X57_Y43_N12
\FD|ULA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~1_combout\ = (!\FD|ULA|Add1~14_combout\ & (!\FD|ULA|Add1~10_combout\ & (!\FD|ULA|Add1~6_combout\ & !\FD|ULA|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Add1~10_combout\,
	datac => \FD|ULA|Add1~6_combout\,
	datad => \FD|ULA|Add1~8_combout\,
	combout => \FD|ULA|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y43_N26
\FD|ULA|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~10_combout\ = (\FD|ULA|Equal0~0_combout\ & (\FD|ULA|Equal0~4_combout\ & (\FD|ULA|Equal0~9_combout\ & \FD|ULA|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~0_combout\,
	datab => \FD|ULA|Equal0~4_combout\,
	datac => \FD|ULA|Equal0~9_combout\,
	datad => \FD|ULA|Equal0~1_combout\,
	combout => \FD|ULA|Equal0~10_combout\);

-- Location: FF_X57_Y43_N27
\FD|REG_EX_MEM|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ULA|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(69));

-- Location: LCCOMB_X53_Y40_N14
\FD|sel_mux_beq\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|sel_mux_beq~combout\ = (\FD|REG_EX_MEM|data_s\(104) & \FD|REG_EX_MEM|data_s\(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_EX_MEM|data_s\(104),
	datad => \FD|REG_EX_MEM|data_s\(69),
	combout => \FD|sel_mux_beq~combout\);

-- Location: LCCOMB_X55_Y38_N4
\FD|PC|data_s[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[6]~4_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_EX_MEM|data_s\(76)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[6]~8_combout\,
	datab => \FD|REG_EX_MEM|data_s\(76),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[6]~4_combout\);

-- Location: FF_X55_Y38_N5
\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[6]~4_combout\,
	asdata => \FD|REG_IF_ID|data_s\(28),
	sload => \UC|pontosDeControle[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

-- Location: LCCOMB_X58_Y36_N16
\FD|ROM|memROM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~12_combout\);

-- Location: LCCOMB_X55_Y38_N8
\FD|ROM|memROM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~25_combout\ = (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) & (\FD|ROM|memROM~12_combout\ & !\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(4),
	datac => \FD|ROM|memROM~12_combout\,
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~25_combout\);

-- Location: FF_X55_Y38_N9
\FD|REG_IF_ID|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(2));

-- Location: FF_X55_Y39_N15
\FD|REG_ID_EX|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_IF_ID|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(12));

-- Location: FF_X55_Y39_N25
\FD|REG_EX_MEM|data_s[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[74]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(74));

-- Location: LCCOMB_X55_Y38_N28
\FD|PC|data_s[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~2_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_EX_MEM|data_s\(74))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_EX_MEM|data_s\(74),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[4]~4_combout\,
	combout => \FD|PC|data_s[4]~2_combout\);

-- Location: FF_X55_Y38_N29
\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[4]~2_combout\,
	asdata => \FD|REG_IF_ID|data_s\(2),
	sload => \UC|pontosDeControle[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

-- Location: LCCOMB_X54_Y39_N0
\FD|ROM|memROM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2) & (!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5))) # (!\FD|PC|data_s\(2) & (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~13_combout\);

-- Location: LCCOMB_X54_Y39_N26
\FD|ROM|memROM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~28_combout\ = (\FD|ROM|memROM~13_combout\ & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~13_combout\,
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~28_combout\);

-- Location: FF_X54_Y39_N27
\FD|REG_IF_ID|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(1));

-- Location: FF_X55_Y39_N17
\FD|REG_ID_EX|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_IF_ID|data_s\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(11));

-- Location: FF_X55_Y39_N23
\FD|REG_EX_MEM|data_s[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[73]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(73));

-- Location: LCCOMB_X55_Y38_N0
\FD|PC|data_s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[3]~0_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_EX_MEM|data_s\(73))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_EX_MEM|data_s\(73),
	datab => \FD|Somador|saida[3]~2_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[3]~0_combout\);

-- Location: FF_X55_Y38_N1
\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[3]~0_combout\,
	asdata => \FD|REG_IF_ID|data_s\(1),
	sload => \UC|pontosDeControle[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

-- Location: LCCOMB_X55_Y38_N24
\FD|ROM|memROM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~24_combout\ = (\FD|PC|data_s\(3) & (((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(3) & ((\FD|PC|data_s\(5)) # ((\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~24_combout\);

-- Location: LCCOMB_X54_Y39_N30
\FD|ROM|memROM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~33_combout\ = (!\FD|PC|data_s\(7) & (!\FD|ROM|memROM~24_combout\ & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~24_combout\,
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~33_combout\);

-- Location: FF_X54_Y39_N31
\FD|REG_IF_ID|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(3));

-- Location: FF_X54_Y39_N17
\FD|REG_ID_EX|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_IF_ID|data_s\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(13));

-- Location: FF_X55_Y39_N27
\FD|REG_EX_MEM|data_s[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[75]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(75));

-- Location: LCCOMB_X55_Y38_N10
\FD|PC|data_s[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[5]~5_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_EX_MEM|data_s\(75))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_EX_MEM|data_s\(75),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[5]~6_combout\,
	combout => \FD|PC|data_s[5]~5_combout\);

-- Location: FF_X55_Y38_N11
\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[5]~5_combout\,
	asdata => \FD|REG_IF_ID|data_s\(3),
	sload => \UC|pontosDeControle[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

-- Location: LCCOMB_X58_Y36_N0
\FD|ROM|memROM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~22_combout\ = (\FD|PC|data_s\(3) & (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(6) & !\FD|PC|data_s\(2)))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(6) & \FD|PC|data_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~22_combout\);

-- Location: LCCOMB_X55_Y38_N26
\FD|ROM|memROM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~23_combout\ = (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datad => \FD|ROM|memROM~22_combout\,
	combout => \FD|ROM|memROM~23_combout\);

-- Location: FF_X55_Y38_N27
\FD|REG_IF_ID|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(0));

-- Location: FF_X55_Y39_N19
\FD|REG_ID_EX|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_IF_ID|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(10));

-- Location: LCCOMB_X55_Y38_N30
\FD|REG_EX_MEM|data_s[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[72]~feeder_combout\ = \FD|REG_EX_MEM|data_s[72]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_EX_MEM|data_s[72]~6_combout\,
	combout => \FD|REG_EX_MEM|data_s[72]~feeder_combout\);

-- Location: FF_X55_Y38_N31
\FD|REG_EX_MEM|data_s[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(72));

-- Location: LCCOMB_X55_Y38_N6
\FD|PC|data_s[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[2]~1_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_EX_MEM|data_s\(72))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_EX_MEM|data_s\(72),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[2]~0_combout\,
	combout => \FD|PC|data_s[2]~1_combout\);

-- Location: FF_X55_Y38_N7
\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[2]~1_combout\,
	asdata => \FD|REG_IF_ID|data_s\(0),
	sload => \UC|pontosDeControle[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

-- Location: LCCOMB_X54_Y39_N18
\FD|ROM|memROM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~15_combout\ = (\FD|PC|data_s\(5) & (!\FD|PC|data_s\(2) & ((\FD|PC|data_s\(3))))) # (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (((\FD|PC|data_s\(2) & \FD|PC|data_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~15_combout\);

-- Location: LCCOMB_X54_Y39_N2
\FD|ROM|memROM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~30_combout\ = (\FD|ROM|memROM~15_combout\ & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~15_combout\,
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~30_combout\);

-- Location: FF_X52_Y40_N25
\FD|REG_IF_ID|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(24));

-- Location: LCCOMB_X52_Y40_N8
\FD|REG_ID_EX|data_s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_ID_EX|data_s[1]~feeder_combout\ = \FD|REG_IF_ID|data_s\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_IF_ID|data_s\(24),
	combout => \FD|REG_ID_EX|data_s[1]~feeder_combout\);

-- Location: FF_X52_Y40_N9
\FD|REG_ID_EX|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_ID_EX|data_s[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(1));

-- Location: LCCOMB_X55_Y38_N22
\FD|Somador|saida[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[7]~10_combout\ = \FD|Somador|saida[6]~9\ $ (\FD|PC|data_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|data_s\(7),
	cin => \FD|Somador|saida[6]~9\,
	combout => \FD|Somador|saida[7]~10_combout\);

-- Location: FF_X55_Y38_N23
\FD|REG_IF_ID|data_s[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(39));

-- Location: FF_X53_Y38_N1
\FD|REG_ID_EX|data_s[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_IF_ID|data_s\(39),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(113));

-- Location: LCCOMB_X55_Y39_N30
\FD|REG_EX_MEM|data_s[77]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[77]~16_combout\ = \FD|REG_ID_EX|data_s\(1) $ (\FD|REG_EX_MEM|data_s[76]~15\ $ (\FD|REG_ID_EX|data_s\(113)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(1),
	datad => \FD|REG_ID_EX|data_s\(113),
	cin => \FD|REG_EX_MEM|data_s[76]~15\,
	combout => \FD|REG_EX_MEM|data_s[77]~16_combout\);

-- Location: FF_X55_Y39_N31
\FD|REG_EX_MEM|data_s[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[77]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(77));

-- Location: LCCOMB_X55_Y38_N2
\FD|PC|data_s[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[7]~3_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_EX_MEM|data_s\(77))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_EX_MEM|data_s\(77),
	datab => \FD|Somador|saida[7]~10_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[7]~3_combout\);

-- Location: FF_X55_Y38_N3
\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[7]~3_combout\,
	asdata => \FD|REG_IF_ID|data_s\(24),
	sload => \UC|pontosDeControle[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

-- Location: LCCOMB_X58_Y36_N22
\FD|ROM|memROM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~17_combout\ = (\FD|PC|data_s\(4)) # ((\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(6))))

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
	combout => \FD|ROM|memROM~17_combout\);

-- Location: LCCOMB_X56_Y38_N24
\FD|ROM|memROM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~18_combout\ = (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(5) & !\FD|ROM|memROM~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(5),
	datad => \FD|ROM|memROM~17_combout\,
	combout => \FD|ROM|memROM~18_combout\);

-- Location: FF_X56_Y38_N25
\FD|REG_IF_ID|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(27));

-- Location: LCCOMB_X53_Y40_N26
\UC|pontosDeControle[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[7]~4_combout\ = (\FD|REG_IF_ID|data_s\(27) & ((\FD|REG_IF_ID|data_s\(28)) # (\FD|REG_IF_ID|data_s\(29) $ (\FD|REG_IF_ID|data_s\(31))))) # (!\FD|REG_IF_ID|data_s\(27) & ((\FD|REG_IF_ID|data_s\(29)) # ((\FD|REG_IF_ID|data_s\(31)) # 
-- (!\FD|REG_IF_ID|data_s\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_IF_ID|data_s\(27),
	datab => \FD|REG_IF_ID|data_s\(29),
	datac => \FD|REG_IF_ID|data_s\(28),
	datad => \FD|REG_IF_ID|data_s\(31),
	combout => \UC|pontosDeControle[7]~4_combout\);

-- Location: FF_X53_Y40_N27
\FD|REG_ID_EX|data_s[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \UC|pontosDeControle[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(147));

-- Location: FF_X53_Y40_N7
\FD|REG_EX_MEM|data_s[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	asdata => \FD|REG_ID_EX|data_s\(147),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(106));

-- Location: LCCOMB_X53_Y40_N8
\FD|REG_MEM_WB|data_s[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_MEM_WB|data_s[70]~feeder_combout\ = \FD|REG_EX_MEM|data_s\(106)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_EX_MEM|data_s\(106),
	combout => \FD|REG_MEM_WB|data_s[70]~feeder_combout\);

-- Location: FF_X53_Y40_N9
\FD|REG_MEM_WB|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_MEM_WB|data_s[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MEM_WB|data_s\(70));

-- Location: LCCOMB_X50_Y39_N22
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

-- Location: FF_X50_Y39_N23
\FD|BR|bancoReg_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(18));

-- Location: LCCOMB_X50_Y39_N16
\FD|BR|saidaB[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~4_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(18) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(18),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[3]~4_combout\);

-- Location: LCCOMB_X50_Y39_N4
\FD|BR|bancoReg_rtl_1_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[3]~2_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\);

-- Location: FF_X50_Y39_N5
\FD|BR|bancoReg_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(17));

-- Location: LCCOMB_X50_Y39_N6
\FD|BR|saidaB[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~5_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[3]~4_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\)) # (!\FD|BR|saidaB[3]~4_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\,
	datab => \FD|BR|saidaB[3]~4_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(17),
	combout => \FD|BR|saidaB[3]~5_combout\);

-- Location: FF_X50_Y39_N7
\FD|REG_ID_EX|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(45));

-- Location: LCCOMB_X54_Y39_N10
\FD|mux_Banco_Ula|saida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[3]~2_combout\ = (\FD|REG_ID_EX|data_s\(138) & ((\FD|REG_ID_EX|data_s\(13)))) # (!\FD|REG_ID_EX|data_s\(138) & (\FD|REG_ID_EX|data_s\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_ID_EX|data_s\(45),
	datac => \FD|REG_ID_EX|data_s\(138),
	datad => \FD|REG_ID_EX|data_s\(13),
	combout => \FD|mux_Banco_Ula|saida[3]~2_combout\);

-- Location: LCCOMB_X57_Y43_N8
\FD|ULA|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~4_combout\ = (\FD|ULA|soma[3]~6_combout\ & ((\FD|ULA|Mux30~3_combout\) # ((\FD|REG_ID_EX|data_s\(140)) # (\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|soma[3]~6_combout\,
	datac => \FD|REG_ID_EX|data_s\(140),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux28~4_combout\);

-- Location: LCCOMB_X54_Y39_N4
\FD|ULA|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~2_combout\ = (\FD|ULA|Mux0~2_combout\ & ((\FD|ULA|Mux0~3_combout\ & (\FD|ULA|Add1~6_combout\)) # (!\FD|ULA|Mux0~3_combout\ & ((\FD|ULA|Mux28~4_combout\))))) # (!\FD|ULA|Mux0~2_combout\ & (((!\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux0~2_combout\,
	datab => \FD|ULA|Add1~6_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|Mux28~4_combout\,
	combout => \FD|ULA|Mux28~2_combout\);

-- Location: LCCOMB_X54_Y39_N6
\FD|ULA|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~3_combout\ = (\FD|ULA|Mux28~2_combout\ & (((\FD|mux_Banco_Ula|saida[3]~2_combout\ & \FD|REG_ID_EX|data_s\(77))) # (!\FD|ULA|Mux31~0_combout\))) # (!\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux31~0_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[3]~2_combout\) # (\FD|REG_ID_EX|data_s\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~2_combout\,
	datab => \FD|REG_ID_EX|data_s\(77),
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux28~3_combout\);

-- Location: LCCOMB_X55_Y43_N14
\DISPLAY0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux31~5_combout\ & (\FD|ULA|Mux29~3_combout\ $ (\FD|ULA|Mux30~6_combout\)))) # (!\FD|ULA|Mux28~3_combout\ & (!\FD|ULA|Mux30~6_combout\ & (\FD|ULA|Mux29~3_combout\ $ 
-- (\FD|ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~3_combout\,
	datab => \FD|ULA|Mux29~3_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux30~6_combout\,
	combout => \DISPLAY0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X55_Y43_N0
\DISPLAY0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux28~3_combout\ & ((\FD|ULA|Mux31~5_combout\ & ((\FD|ULA|Mux30~6_combout\))) # (!\FD|ULA|Mux31~5_combout\ & (\FD|ULA|Mux29~3_combout\)))) # (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux29~3_combout\ & 
-- (\FD|ULA|Mux31~5_combout\ $ (\FD|ULA|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~3_combout\,
	datab => \FD|ULA|Mux29~3_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux30~6_combout\,
	combout => \DISPLAY0|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X55_Y43_N26
\DISPLAY0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux29~3_combout\ & ((\FD|ULA|Mux30~6_combout\) # (!\FD|ULA|Mux31~5_combout\)))) # (!\FD|ULA|Mux28~3_combout\ & (!\FD|ULA|Mux29~3_combout\ & (!\FD|ULA|Mux31~5_combout\ & 
-- \FD|ULA|Mux30~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~3_combout\,
	datab => \FD|ULA|Mux29~3_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux30~6_combout\,
	combout => \DISPLAY0|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X55_Y43_N12
\DISPLAY0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux30~6_combout\ & ((\FD|ULA|Mux29~3_combout\ & ((\FD|ULA|Mux31~5_combout\))) # (!\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux28~3_combout\ & !\FD|ULA|Mux31~5_combout\)))) # (!\FD|ULA|Mux30~6_combout\ & 
-- (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux29~3_combout\ $ (\FD|ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~3_combout\,
	datab => \FD|ULA|Mux29~3_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux30~6_combout\,
	combout => \DISPLAY0|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X55_Y43_N22
\DISPLAY0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux30~6_combout\ & (!\FD|ULA|Mux28~3_combout\ & ((\FD|ULA|Mux31~5_combout\)))) # (!\FD|ULA|Mux30~6_combout\ & ((\FD|ULA|Mux29~3_combout\ & (!\FD|ULA|Mux28~3_combout\)) # (!\FD|ULA|Mux29~3_combout\ & 
-- ((\FD|ULA|Mux31~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~3_combout\,
	datab => \FD|ULA|Mux29~3_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux30~6_combout\,
	combout => \DISPLAY0|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X55_Y43_N16
\DISPLAY0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux31~5_combout\ & (\FD|ULA|Mux28~3_combout\ $ (\FD|ULA|Mux30~6_combout\)))) # (!\FD|ULA|Mux29~3_combout\ & (!\FD|ULA|Mux28~3_combout\ & ((\FD|ULA|Mux31~5_combout\) # 
-- (\FD|ULA|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~3_combout\,
	datab => \FD|ULA|Mux29~3_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux30~6_combout\,
	combout => \DISPLAY0|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X55_Y43_N18
\DISPLAY0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux31~5_combout\ & (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux29~3_combout\ $ (!\FD|ULA|Mux30~6_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (!\FD|ULA|Mux30~6_combout\ & (\FD|ULA|Mux28~3_combout\ $ 
-- (!\FD|ULA|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~3_combout\,
	datab => \FD|ULA|Mux29~3_combout\,
	datac => \FD|ULA|Mux31~5_combout\,
	datad => \FD|ULA|Mux30~6_combout\,
	combout => \DISPLAY0|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X46_Y41_N24
\DISPLAY1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux26~3_combout\ $ (\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux24~3_combout\ & (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux25~3_combout\ $ 
-- (\FD|ULA|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux26~3_combout\,
	datac => \FD|ULA|Mux25~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X46_Y41_N10
\DISPLAY1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux24~3_combout\ & ((\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux26~3_combout\)) # (!\FD|ULA|Mux27~3_combout\ & ((\FD|ULA|Mux25~3_combout\))))) # (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux25~3_combout\ & 
-- (\FD|ULA|Mux26~3_combout\ $ (\FD|ULA|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux26~3_combout\,
	datac => \FD|ULA|Mux25~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X46_Y41_N4
\DISPLAY1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux25~3_combout\ & ((\FD|ULA|Mux26~3_combout\) # (!\FD|ULA|Mux27~3_combout\)))) # (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux26~3_combout\ & (!\FD|ULA|Mux25~3_combout\ & 
-- !\FD|ULA|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux26~3_combout\,
	datac => \FD|ULA|Mux25~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X46_Y41_N22
\DISPLAY1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux25~3_combout\ & ((\FD|ULA|Mux27~3_combout\))) # (!\FD|ULA|Mux25~3_combout\ & (\FD|ULA|Mux24~3_combout\ & !\FD|ULA|Mux27~3_combout\)))) # (!\FD|ULA|Mux26~3_combout\ & 
-- (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux25~3_combout\ $ (\FD|ULA|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux26~3_combout\,
	datac => \FD|ULA|Mux25~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X46_Y41_N8
\DISPLAY1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux26~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & ((\FD|ULA|Mux27~3_combout\)))) # (!\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux25~3_combout\ & (!\FD|ULA|Mux24~3_combout\)) # (!\FD|ULA|Mux25~3_combout\ & 
-- ((\FD|ULA|Mux27~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux26~3_combout\,
	datac => \FD|ULA|Mux25~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X46_Y41_N26
\DISPLAY1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux26~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & ((\FD|ULA|Mux27~3_combout\) # (!\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux24~3_combout\ $ 
-- (!\FD|ULA|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux26~3_combout\,
	datac => \FD|ULA|Mux25~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X46_Y41_N20
\DISPLAY1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux26~3_combout\ $ (!\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux24~3_combout\ $ 
-- (!\FD|ULA|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux26~3_combout\,
	datac => \FD|ULA|Mux25~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X61_Y2_N20
\FD|REG_IF_ID|data_s[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_IF_ID|data_s[32]~feeder_combout\ = \FD|PC|data_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|data_s\(0),
	combout => \FD|REG_IF_ID|data_s[32]~feeder_combout\);

-- Location: FF_X61_Y2_N21
\FD|REG_IF_ID|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_IF_ID|data_s[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_IF_ID|data_s\(32));

-- Location: LCCOMB_X61_Y2_N18
\FD|REG_ID_EX|data_s[106]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_ID_EX|data_s[106]~feeder_combout\ = \FD|REG_IF_ID|data_s\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_IF_ID|data_s\(32),
	combout => \FD|REG_ID_EX|data_s[106]~feeder_combout\);

-- Location: FF_X61_Y2_N19
\FD|REG_ID_EX|data_s[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_ID_EX|data_s[106]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_ID_EX|data_s\(106));

-- Location: LCCOMB_X61_Y2_N0
\FD|REG_EX_MEM|data_s[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_EX_MEM|data_s[70]~feeder_combout\ = \FD|REG_ID_EX|data_s\(106)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_ID_EX|data_s\(106),
	combout => \FD|REG_EX_MEM|data_s[70]~feeder_combout\);

-- Location: FF_X61_Y2_N1
\FD|REG_EX_MEM|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|REG_EX_MEM|data_s[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_EX_MEM|data_s\(70));

-- Location: LCCOMB_X61_Y2_N16
\FD|mux_jump|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[0]~0_combout\ = (!\UC|pontosDeControle[10]~2_combout\ & ((\FD|sel_mux_beq~combout\ & ((\FD|REG_EX_MEM|data_s\(70)))) # (!\FD|sel_mux_beq~combout\ & (\FD|PC|data_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \UC|pontosDeControle[10]~2_combout\,
	datac => \FD|PC|data_s\(0),
	datad => \FD|REG_EX_MEM|data_s\(70),
	combout => \FD|mux_jump|saida[0]~0_combout\);

-- Location: FF_X61_Y2_N17
\FD|PC|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BTN_CLK|saida~clkctrl_outclk\,
	d => \FD|mux_jump|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(0));

-- Location: LCCOMB_X61_Y2_N2
\DISPLAY6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(3) & (!\FD|PC|data_s\(2) & \FD|PC|data_s\(0))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) & !\FD|PC|data_s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(0),
	combout => \DISPLAY6|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X61_Y2_N4
\DISPLAY6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[1]~1_combout\ = ((!\FD|PC|data_s\(2) & !\FD|PC|data_s\(0))) # (!\FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(0),
	combout => \DISPLAY6|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X61_Y2_N6
\DISPLAY6|rascSaida7seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg~2_combout\ = (\FD|PC|data_s\(2) & \FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg~2_combout\);

-- Location: LCCOMB_X61_Y2_N24
\DISPLAY6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(2) & ((\FD|PC|data_s\(0)) # (!\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(0),
	combout => \DISPLAY6|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X61_Y2_N10
\DISPLAY6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(3)) # ((!\FD|PC|data_s\(2) & !\FD|PC|data_s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(0),
	combout => \DISPLAY6|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X61_Y2_N12
\DISPLAY6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[5]~5_combout\ = (!\FD|PC|data_s\(3) & \FD|PC|data_s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(0),
	combout => \DISPLAY6|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X61_Y2_N22
\DISPLAY6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) & !\FD|PC|data_s\(0))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (!\FD|PC|data_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(0),
	combout => \DISPLAY6|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X58_Y36_N24
\DISPLAY7|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(7) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) $ (\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(6) $ (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X58_Y36_N26
\DISPLAY7|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[1]~1_combout\ = (\FD|PC|data_s\(5) & ((\FD|PC|data_s\(4) & (\FD|PC|data_s\(7))) # (!\FD|PC|data_s\(4) & ((\FD|PC|data_s\(6)))))) # (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(6) & (\FD|PC|data_s\(7) $ (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X58_Y36_N28
\DISPLAY7|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[2]~2_combout\ = (\FD|PC|data_s\(7) & (\FD|PC|data_s\(6) & ((\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(5) & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X58_Y36_N6
\DISPLAY7|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(5) & ((\FD|PC|data_s\(6) & ((\FD|PC|data_s\(4)))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(7) & !\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(6) $ 
-- (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X58_Y36_N8
\DISPLAY7|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & ((\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(5) & ((\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7))) # (!\FD|PC|data_s\(6) & ((\FD|PC|data_s\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X54_Y39_N8
\DISPLAY7|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[5]~5_combout\ = (\FD|PC|data_s\(4) & (\FD|PC|data_s\(7) $ (((\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(6)))))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(5) & !\FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(6),
	combout => \DISPLAY7|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X58_Y36_N18
\DISPLAY7|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(5) $ (!\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(7) $ (!\FD|PC|data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[6]~6_combout\);

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


