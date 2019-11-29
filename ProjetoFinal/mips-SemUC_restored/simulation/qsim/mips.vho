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

-- DATE "11/29/2019 15:31:11"

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

ENTITY 	mips IS
    PORT (
	clk : IN std_logic;
	saidaUla : OUT std_logic_vector(31 DOWNTO 0);
	saidaPC : OUT std_logic_vector(31 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END mips;

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
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \FD|Somador|saida[2]~1\ : std_logic;
SIGNAL \FD|Somador|saida[3]~3\ : std_logic;
SIGNAL \FD|Somador|saida[4]~5\ : std_logic;
SIGNAL \FD|Somador|saida[5]~6_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~14_combout\ : std_logic;
SIGNAL \FD|Somador|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|Somador|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[72]~31\ : std_logic;
SIGNAL \FD|REG_P3|data_s[73]~33\ : std_logic;
SIGNAL \FD|REG_P3|data_s[74]~35\ : std_logic;
SIGNAL \FD|REG_P3|data_s[75]~36_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[5]~59_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~20_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~21_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[10]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~17_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~29_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[73]~32_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[3]~57_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~15_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~16_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[72]~30_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[2]~56_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~18_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~30_combout\ : std_logic;
SIGNAL \FD|Somador|saida[5]~7\ : std_logic;
SIGNAL \FD|Somador|saida[6]~9\ : std_logic;
SIGNAL \FD|Somador|saida[7]~10_combout\ : std_logic;
SIGNAL \FD|Somador|saida[6]~8_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[75]~37\ : std_logic;
SIGNAL \FD|REG_P3|data_s[76]~39\ : std_logic;
SIGNAL \FD|REG_P3|data_s[77]~40_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[7]~61_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~19_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~22_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[7]~3_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[6]~4_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \UC|Equal4~0_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[7]~25_combout\ : std_logic;
SIGNAL \UC|Equal2~0_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[1]~31_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[2]~2_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[3]~3_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~25_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FD|ROM|memROM~26_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~32_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \FD|BR|bancoReg~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~39_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~62_combout\ : std_logic;
SIGNAL \FD|BR|Equal1~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~63_combout\ : std_logic;
SIGNAL \FD|REG_P2|data_s[140]~0_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[1]~31_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~27_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~33_combout\ : std_logic;
SIGNAL \FD|BR|Equal0~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \FD|BR|bancoReg~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~41_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~62_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~63_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~1_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~1_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~1\ : std_logic;
SIGNAL \FD|ULA|Add1~2_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~1_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[9]~1_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~1\ : std_logic;
SIGNAL \FD|ULA|soma[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~4_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~3_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~4_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~5_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~6_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~7_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~3_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[1]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~50_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~51_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[7]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~50_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~51_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~52_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~53_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~54_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~55_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~56_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~57_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~58_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~59_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~60_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~61_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~3\ : std_logic;
SIGNAL \FD|ULA|Add1~5\ : std_logic;
SIGNAL \FD|ULA|Add1~7\ : std_logic;
SIGNAL \FD|ULA|Add1~9\ : std_logic;
SIGNAL \FD|ULA|Add1~11\ : std_logic;
SIGNAL \FD|ULA|Add1~13\ : std_logic;
SIGNAL \FD|ULA|Add1~14_combout\ : std_logic;
SIGNAL \FD|ULA|soma[1]~3\ : std_logic;
SIGNAL \FD|ULA|soma[2]~5\ : std_logic;
SIGNAL \FD|ULA|soma[3]~7\ : std_logic;
SIGNAL \FD|ULA|soma[4]~9\ : std_logic;
SIGNAL \FD|ULA|soma[5]~11\ : std_logic;
SIGNAL \FD|ULA|soma[6]~13\ : std_logic;
SIGNAL \FD|ULA|soma[7]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[6]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~52_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~53_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[6]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~12_combout\ : std_logic;
SIGNAL \FD|ULA|soma[6]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[5]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~54_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[5]~27_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~10_combout\ : std_logic;
SIGNAL \FD|ULA|soma[5]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[4]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~56_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~57_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[4]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~8_combout\ : std_logic;
SIGNAL \FD|ULA|soma[4]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[3]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~58_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~59_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[3]~29_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~6_combout\ : std_logic;
SIGNAL \FD|ULA|soma[3]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[2]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~60_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~61_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[2]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~4_combout\ : std_logic;
SIGNAL \FD|ULA|soma[2]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~2_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~4_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~5_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~7_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~8_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~9_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~10_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~11_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~12_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~13_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~14_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~15_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~16_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~17_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~19_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~20_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~21_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~22_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~23_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~24_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~25_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~26_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~27_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~28_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~29_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~31_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~32_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~33_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~34_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~35_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~36_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~37_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~38_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~39_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~40_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~41_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~42_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~43_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~44_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~45_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~46_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~47_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~48_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~49_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~15\ : std_logic;
SIGNAL \FD|ULA|Add1~16_combout\ : std_logic;
SIGNAL \FD|ULA|soma[7]~15\ : std_logic;
SIGNAL \FD|ULA|soma[8]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[8]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~48_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~49_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[8]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~17\ : std_logic;
SIGNAL \FD|ULA|Add1~18_combout\ : std_logic;
SIGNAL \FD|ULA|soma[8]~17\ : std_logic;
SIGNAL \FD|ULA|soma[9]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[9]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~46_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~47_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[9]~23_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~19\ : std_logic;
SIGNAL \FD|ULA|Add1~20_combout\ : std_logic;
SIGNAL \FD|ULA|soma[9]~19\ : std_logic;
SIGNAL \FD|ULA|soma[10]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~5_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[10]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~44_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~45_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[10]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~21\ : std_logic;
SIGNAL \FD|ULA|Add1~22_combout\ : std_logic;
SIGNAL \FD|ULA|soma[10]~21\ : std_logic;
SIGNAL \FD|ULA|soma[11]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[11]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~42_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~43_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[11]~21_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~23\ : std_logic;
SIGNAL \FD|ULA|Add1~24_combout\ : std_logic;
SIGNAL \FD|ULA|soma[11]~23\ : std_logic;
SIGNAL \FD|ULA|soma[12]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~40_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~41_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~25\ : std_logic;
SIGNAL \FD|ULA|Add1~26_combout\ : std_logic;
SIGNAL \FD|ULA|soma[12]~25\ : std_logic;
SIGNAL \FD|ULA|soma[13]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[13]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~38_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~39_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[13]~19_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~27\ : std_logic;
SIGNAL \FD|ULA|Add1~28_combout\ : std_logic;
SIGNAL \FD|ULA|soma[13]~27\ : std_logic;
SIGNAL \FD|ULA|soma[14]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[14]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~36_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~37_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[14]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~29\ : std_logic;
SIGNAL \FD|ULA|Add1~30_combout\ : std_logic;
SIGNAL \FD|ULA|soma[14]~29\ : std_logic;
SIGNAL \FD|ULA|soma[15]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[15]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~34_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~35_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[15]~17_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~31\ : std_logic;
SIGNAL \FD|ULA|Add1~32_combout\ : std_logic;
SIGNAL \FD|ULA|soma[15]~31\ : std_logic;
SIGNAL \FD|ULA|soma[16]~32_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[16]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~32_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~33_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[16]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~33\ : std_logic;
SIGNAL \FD|ULA|Add1~34_combout\ : std_logic;
SIGNAL \FD|ULA|soma[16]~33\ : std_logic;
SIGNAL \FD|ULA|soma[17]~34_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[17]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~31_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[17]~15_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~35\ : std_logic;
SIGNAL \FD|ULA|Add1~36_combout\ : std_logic;
SIGNAL \FD|ULA|soma[17]~35\ : std_logic;
SIGNAL \FD|ULA|soma[18]~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[18]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~28_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~29_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[18]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~37\ : std_logic;
SIGNAL \FD|ULA|Add1~38_combout\ : std_logic;
SIGNAL \FD|ULA|soma[18]~37\ : std_logic;
SIGNAL \FD|ULA|soma[19]~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[19]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~26_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~27_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[19]~13_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~39\ : std_logic;
SIGNAL \FD|ULA|Add1~40_combout\ : std_logic;
SIGNAL \FD|ULA|soma[19]~39\ : std_logic;
SIGNAL \FD|ULA|soma[20]~40_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[20]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~24_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~25_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[20]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~41\ : std_logic;
SIGNAL \FD|ULA|Add1~42_combout\ : std_logic;
SIGNAL \FD|ULA|soma[20]~41\ : std_logic;
SIGNAL \FD|ULA|soma[21]~42_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[21]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~22_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~23_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[21]~11_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~43\ : std_logic;
SIGNAL \FD|ULA|Add1~44_combout\ : std_logic;
SIGNAL \FD|ULA|soma[21]~43\ : std_logic;
SIGNAL \FD|ULA|soma[22]~44_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[22]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~20_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~21_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[22]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~45\ : std_logic;
SIGNAL \FD|ULA|Add1~46_combout\ : std_logic;
SIGNAL \FD|ULA|soma[22]~45\ : std_logic;
SIGNAL \FD|ULA|soma[23]~46_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[23]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~19_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[23]~9_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~47\ : std_logic;
SIGNAL \FD|ULA|Add1~48_combout\ : std_logic;
SIGNAL \FD|ULA|soma[23]~47\ : std_logic;
SIGNAL \FD|ULA|soma[24]~48_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[24]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~16_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~17_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[24]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~49\ : std_logic;
SIGNAL \FD|ULA|Add1~50_combout\ : std_logic;
SIGNAL \FD|ULA|soma[24]~49\ : std_logic;
SIGNAL \FD|ULA|soma[25]~50_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[25]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~14_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~15_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[25]~7_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~51\ : std_logic;
SIGNAL \FD|ULA|Add1~52_combout\ : std_logic;
SIGNAL \FD|ULA|soma[25]~51\ : std_logic;
SIGNAL \FD|ULA|soma[26]~52_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[26]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~12_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~13_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[26]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~53\ : std_logic;
SIGNAL \FD|ULA|Add1~54_combout\ : std_logic;
SIGNAL \FD|ULA|soma[26]~53\ : std_logic;
SIGNAL \FD|ULA|soma[27]~54_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~10_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~11_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~55\ : std_logic;
SIGNAL \FD|ULA|Add1~56_combout\ : std_logic;
SIGNAL \FD|ULA|soma[27]~55\ : std_logic;
SIGNAL \FD|ULA|soma[28]~56_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[28]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~8_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~9_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[28]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~57\ : std_logic;
SIGNAL \FD|ULA|Add1~58_combout\ : std_logic;
SIGNAL \FD|ULA|soma[28]~57\ : std_logic;
SIGNAL \FD|ULA|soma[29]~58_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[29]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~7_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[29]~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~59\ : std_logic;
SIGNAL \FD|ULA|Add1~60_combout\ : std_logic;
SIGNAL \FD|ULA|soma[29]~59\ : std_logic;
SIGNAL \FD|ULA|soma[30]~60_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[30]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~4_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~5_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[30]~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[30]~61\ : std_logic;
SIGNAL \FD|ULA|soma[31]~62_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[31]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~2_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~3_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[31]~1_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~61\ : std_logic;
SIGNAL \FD|ULA|Add1~62_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~6_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~7_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~8_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~9_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~10_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[74]~34_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[4]~58_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~23_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~24_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[1]~2_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[76]~38_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[6]~60_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~28_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~0_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~3_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~11_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~9_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~7_combout\ : std_logic;
SIGNAL \FD|mux_beq|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[7]~11\ : std_logic;
SIGNAL \FD|Somador|saida[8]~12_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[77]~41\ : std_logic;
SIGNAL \FD|REG_P3|data_s[78]~42_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[8]~62_combout\ : std_logic;
SIGNAL \FD|Somador|saida[8]~13\ : std_logic;
SIGNAL \FD|Somador|saida[9]~14_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[78]~43\ : std_logic;
SIGNAL \FD|REG_P3|data_s[79]~44_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[9]~63_combout\ : std_logic;
SIGNAL \FD|Somador|saida[9]~15\ : std_logic;
SIGNAL \FD|Somador|saida[10]~16_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[79]~45\ : std_logic;
SIGNAL \FD|REG_P3|data_s[80]~46_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[10]~64_combout\ : std_logic;
SIGNAL \FD|Somador|saida[10]~17\ : std_logic;
SIGNAL \FD|Somador|saida[11]~18_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[80]~47\ : std_logic;
SIGNAL \FD|REG_P3|data_s[81]~48_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[11]~65_combout\ : std_logic;
SIGNAL \FD|Somador|saida[11]~19\ : std_logic;
SIGNAL \FD|Somador|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[81]~49\ : std_logic;
SIGNAL \FD|REG_P3|data_s[82]~50_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[12]~66_combout\ : std_logic;
SIGNAL \FD|Somador|saida[12]~21\ : std_logic;
SIGNAL \FD|Somador|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[82]~51\ : std_logic;
SIGNAL \FD|REG_P3|data_s[83]~52_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[13]~67_combout\ : std_logic;
SIGNAL \FD|Somador|saida[13]~23\ : std_logic;
SIGNAL \FD|Somador|saida[14]~24_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[83]~53\ : std_logic;
SIGNAL \FD|REG_P3|data_s[84]~54_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[14]~68_combout\ : std_logic;
SIGNAL \FD|Somador|saida[14]~25\ : std_logic;
SIGNAL \FD|Somador|saida[15]~26_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[84]~55\ : std_logic;
SIGNAL \FD|REG_P3|data_s[85]~56_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[15]~69_combout\ : std_logic;
SIGNAL \FD|Somador|saida[15]~27\ : std_logic;
SIGNAL \FD|Somador|saida[16]~28_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[85]~57\ : std_logic;
SIGNAL \FD|REG_P3|data_s[86]~58_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[16]~70_combout\ : std_logic;
SIGNAL \FD|Somador|saida[16]~29\ : std_logic;
SIGNAL \FD|Somador|saida[17]~30_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[86]~59\ : std_logic;
SIGNAL \FD|REG_P3|data_s[87]~60_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[17]~71_combout\ : std_logic;
SIGNAL \FD|Somador|saida[17]~31\ : std_logic;
SIGNAL \FD|Somador|saida[18]~32_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[87]~61\ : std_logic;
SIGNAL \FD|REG_P3|data_s[88]~62_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[18]~72_combout\ : std_logic;
SIGNAL \FD|Somador|saida[18]~33\ : std_logic;
SIGNAL \FD|Somador|saida[19]~34_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[88]~63\ : std_logic;
SIGNAL \FD|REG_P3|data_s[89]~64_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[19]~73_combout\ : std_logic;
SIGNAL \FD|Somador|saida[19]~35\ : std_logic;
SIGNAL \FD|Somador|saida[20]~36_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[89]~65\ : std_logic;
SIGNAL \FD|REG_P3|data_s[90]~66_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[20]~74_combout\ : std_logic;
SIGNAL \FD|Somador|saida[20]~37\ : std_logic;
SIGNAL \FD|Somador|saida[21]~38_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[90]~67\ : std_logic;
SIGNAL \FD|REG_P3|data_s[91]~68_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[21]~75_combout\ : std_logic;
SIGNAL \FD|Somador|saida[21]~39\ : std_logic;
SIGNAL \FD|Somador|saida[22]~40_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[91]~69\ : std_logic;
SIGNAL \FD|REG_P3|data_s[92]~70_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[22]~76_combout\ : std_logic;
SIGNAL \FD|Somador|saida[22]~41\ : std_logic;
SIGNAL \FD|Somador|saida[23]~42_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[92]~71\ : std_logic;
SIGNAL \FD|REG_P3|data_s[93]~72_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[23]~77_combout\ : std_logic;
SIGNAL \FD|Somador|saida[23]~43\ : std_logic;
SIGNAL \FD|Somador|saida[24]~44_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[93]~73\ : std_logic;
SIGNAL \FD|REG_P3|data_s[94]~74_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[24]~78_combout\ : std_logic;
SIGNAL \FD|Somador|saida[24]~45\ : std_logic;
SIGNAL \FD|Somador|saida[25]~46_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[94]~75\ : std_logic;
SIGNAL \FD|REG_P3|data_s[95]~76_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[25]~79_combout\ : std_logic;
SIGNAL \FD|Somador|saida[25]~47\ : std_logic;
SIGNAL \FD|Somador|saida[26]~48_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[95]~77\ : std_logic;
SIGNAL \FD|REG_P3|data_s[96]~78_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[26]~80_combout\ : std_logic;
SIGNAL \FD|Somador|saida[26]~49\ : std_logic;
SIGNAL \FD|Somador|saida[27]~50_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[96]~79\ : std_logic;
SIGNAL \FD|REG_P3|data_s[97]~80_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[27]~81_combout\ : std_logic;
SIGNAL \FD|Somador|saida[27]~51\ : std_logic;
SIGNAL \FD|Somador|saida[28]~52_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[97]~81\ : std_logic;
SIGNAL \FD|REG_P3|data_s[98]~82_combout\ : std_logic;
SIGNAL \FD|sel_mux_beq~combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[28]~52_combout\ : std_logic;
SIGNAL \FD|Somador|saida[28]~53\ : std_logic;
SIGNAL \FD|Somador|saida[29]~54_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[98]~83\ : std_logic;
SIGNAL \FD|REG_P3|data_s[99]~84_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[29]~53_combout\ : std_logic;
SIGNAL \FD|Somador|saida[29]~55\ : std_logic;
SIGNAL \FD|Somador|saida[30]~56_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[99]~85\ : std_logic;
SIGNAL \FD|REG_P3|data_s[100]~86_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[30]~54_combout\ : std_logic;
SIGNAL \FD|Somador|saida[30]~57\ : std_logic;
SIGNAL \FD|Somador|saida[31]~58_combout\ : std_logic;
SIGNAL \FD|REG_P3|data_s[100]~87\ : std_logic;
SIGNAL \FD|REG_P3|data_s[101]~88_combout\ : std_logic;
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
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|REG_P4|data_s\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \FD|REG_P1|data_s\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \FD|REG_P3|data_s\ : std_logic_vector(107 DOWNTO 0);
SIGNAL \FD|REG_P2|data_s\ : std_logic_vector(148 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|BR|bancoReg_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \DISPLAY6|ALT_INV_rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DISPLAY6|ALT_INV_rascSaida7seg[1]~1_combout\ : std_logic;

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

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[0]~0_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[0]~0_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[31]~1_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[31]~1_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[30]~2_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[30]~2_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[29]~3_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[29]~3_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[28]~4_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[28]~4_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[27]~5_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[27]~5_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[26]~6_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[26]~6_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[25]~7_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[25]~7_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[24]~8_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[24]~8_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[23]~9_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[23]~9_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[22]~10_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[22]~10_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[21]~11_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[21]~11_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[20]~12_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[20]~12_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[19]~13_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[19]~13_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[18]~14_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[18]~14_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[17]~15_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[17]~15_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[16]~16_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[16]~16_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[15]~17_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[15]~17_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[14]~18_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[14]~18_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[13]~19_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[13]~19_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[12]~20_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[12]~20_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[11]~21_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[11]~21_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[10]~22_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[10]~22_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[9]~23_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[9]~23_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[8]~24_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[8]~24_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[7]~25_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[7]~25_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[6]~26_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[6]~26_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[5]~27_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[5]~27_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[4]~28_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[4]~28_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[3]~29_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[3]~29_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[2]~30_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[2]~30_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[1]~31_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[1]~31_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\FD|REG_P4|data_s\(4) & \FD|REG_P4|data_s\(3) & \FD|REG_P4|data_s\(2) & \FD|REG_P4|data_s\(1) & \FD|REG_P4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(5);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(36);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(35);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(34);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(33);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(32);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(31);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(30);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(29);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(28);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(27);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(26);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(25);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(24);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(23);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(22);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(21);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(20);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(19);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(18);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(17);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(16);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(15);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(14);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(13);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(12);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(11);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(10);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(9);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(8);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(7);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \FD|REG_P3|data_s\(6);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\FD|REG_P3|data_s\(44) & \FD|REG_P3|data_s\(43) & \FD|REG_P3|data_s\(42) & \FD|REG_P3|data_s\(41) & \FD|REG_P3|data_s\(40) & \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\DISPLAY6|ALT_INV_rascSaida7seg[4]~4_combout\ <= NOT \DISPLAY6|rascSaida7seg[4]~4_combout\;
\DISPLAY6|ALT_INV_rascSaida7seg[1]~1_combout\ <= NOT \DISPLAY6|rascSaida7seg[1]~1_combout\;

\saidaUla[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux31~7_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(0));

\saidaUla[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux30~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(1));

\saidaUla[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux29~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(2));

\saidaUla[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux28~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(3));

\saidaUla[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux27~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(4));

\saidaUla[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux26~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(5));

\saidaUla[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux25~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(6));

\saidaUla[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux24~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(7));

\saidaUla[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux23~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(8));

\saidaUla[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux22~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(9));

\saidaUla[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux21~5_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(10));

\saidaUla[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux20~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(11));

\saidaUla[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux19~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(12));

\saidaUla[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux18~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(13));

\saidaUla[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux17~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(14));

\saidaUla[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux16~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(15));

\saidaUla[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux15~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(16));

\saidaUla[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux14~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(17));

\saidaUla[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux13~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(18));

\saidaUla[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux12~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(19));

\saidaUla[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux11~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(20));

\saidaUla[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux10~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(21));

\saidaUla[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux9~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(22));

\saidaUla[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux8~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(23));

\saidaUla[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux7~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(24));

\saidaUla[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux6~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(25));

\saidaUla[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux5~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(26));

\saidaUla[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux4~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(27));

\saidaUla[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux3~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(28));

\saidaUla[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux2~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(29));

\saidaUla[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux1~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(30));

\saidaUla[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux0~3_combout\,
	devoe => ww_devoe,
	o => ww_saidaUla(31));

\saidaPC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => ww_saidaPC(0));

\saidaPC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => ww_saidaPC(1));

\saidaPC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(2),
	devoe => ww_devoe,
	o => ww_saidaPC(2));

\saidaPC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(3),
	devoe => ww_devoe,
	o => ww_saidaPC(3));

\saidaPC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(4),
	devoe => ww_devoe,
	o => ww_saidaPC(4));

\saidaPC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(5),
	devoe => ww_devoe,
	o => ww_saidaPC(5));

\saidaPC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(6),
	devoe => ww_devoe,
	o => ww_saidaPC(6));

\saidaPC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(7),
	devoe => ww_devoe,
	o => ww_saidaPC(7));

\saidaPC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(8),
	devoe => ww_devoe,
	o => ww_saidaPC(8));

\saidaPC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(9),
	devoe => ww_devoe,
	o => ww_saidaPC(9));

\saidaPC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(10),
	devoe => ww_devoe,
	o => ww_saidaPC(10));

\saidaPC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(11),
	devoe => ww_devoe,
	o => ww_saidaPC(11));

\saidaPC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(12),
	devoe => ww_devoe,
	o => ww_saidaPC(12));

\saidaPC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(13),
	devoe => ww_devoe,
	o => ww_saidaPC(13));

\saidaPC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(14),
	devoe => ww_devoe,
	o => ww_saidaPC(14));

\saidaPC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(15),
	devoe => ww_devoe,
	o => ww_saidaPC(15));

\saidaPC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(16),
	devoe => ww_devoe,
	o => ww_saidaPC(16));

\saidaPC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(17),
	devoe => ww_devoe,
	o => ww_saidaPC(17));

\saidaPC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(18),
	devoe => ww_devoe,
	o => ww_saidaPC(18));

\saidaPC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(19),
	devoe => ww_devoe,
	o => ww_saidaPC(19));

\saidaPC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(20),
	devoe => ww_devoe,
	o => ww_saidaPC(20));

\saidaPC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(21),
	devoe => ww_devoe,
	o => ww_saidaPC(21));

\saidaPC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(22),
	devoe => ww_devoe,
	o => ww_saidaPC(22));

\saidaPC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(23),
	devoe => ww_devoe,
	o => ww_saidaPC(23));

\saidaPC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(24),
	devoe => ww_devoe,
	o => ww_saidaPC(24));

\saidaPC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(25),
	devoe => ww_devoe,
	o => ww_saidaPC(25));

\saidaPC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(26),
	devoe => ww_devoe,
	o => ww_saidaPC(26));

\saidaPC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(27),
	devoe => ww_devoe,
	o => ww_saidaPC(27));

\saidaPC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(28),
	devoe => ww_devoe,
	o => ww_saidaPC(28));

\saidaPC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(29),
	devoe => ww_devoe,
	o => ww_saidaPC(29));

\saidaPC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(30),
	devoe => ww_devoe,
	o => ww_saidaPC(30));

\saidaPC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(31),
	devoe => ww_devoe,
	o => ww_saidaPC(31));

\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(0));

\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|ALT_INV_rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(1));

\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|rascSaida7seg~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(2));

\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(3));

\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|ALT_INV_rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(4));

\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(5));

\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY6|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(6));

\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(0));

\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(1));

\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(2));

\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(3));

\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(4));

\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(5));

\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY7|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(6));

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\FD|REG_P2|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(14));

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

\FD|Somador|saida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[3]~2_combout\ = (\FD|PC|data_s\(3) & (!\FD|Somador|saida[2]~1\)) # (!\FD|PC|data_s\(3) & ((\FD|Somador|saida[2]~1\) # (GND)))
-- \FD|Somador|saida[3]~3\ = CARRY((!\FD|Somador|saida[2]~1\) # (!\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datad => VCC,
	cin => \FD|Somador|saida[2]~1\,
	combout => \FD|Somador|saida[3]~2_combout\,
	cout => \FD|Somador|saida[3]~3\);

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

\FD|REG_P1|data_s[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(37));

\FD|REG_P2|data_s[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(111));

\FD|ROM|memROM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~14_combout\ = (\FD|PC|data_s\(4) & (\FD|ROM|memROM~13_combout\ & (!\FD|PC|data_s\(3) & !\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|ROM|memROM~13_combout\,
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~14_combout\);

\FD|REG_P1|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(2));

\FD|REG_P2|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(12));

\FD|REG_P1|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(36));

\FD|REG_P2|data_s[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(110));

\FD|REG_P1|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(35));

\FD|REG_P2|data_s[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(109));

\FD|REG_P1|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(34));

\FD|REG_P2|data_s[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(108));

\FD|REG_P3|data_s[72]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[72]~30_combout\ = (\FD|REG_P2|data_s\(10) & (\FD|REG_P2|data_s\(108) $ (VCC))) # (!\FD|REG_P2|data_s\(10) & (\FD|REG_P2|data_s\(108) & VCC))
-- \FD|REG_P3|data_s[72]~31\ = CARRY((\FD|REG_P2|data_s\(10) & \FD|REG_P2|data_s\(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(10),
	datab => \FD|REG_P2|data_s\(108),
	datad => VCC,
	combout => \FD|REG_P3|data_s[72]~30_combout\,
	cout => \FD|REG_P3|data_s[72]~31\);

\FD|REG_P3|data_s[73]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[73]~32_combout\ = (\FD|REG_P2|data_s\(11) & ((\FD|REG_P2|data_s\(109) & (\FD|REG_P3|data_s[72]~31\ & VCC)) # (!\FD|REG_P2|data_s\(109) & (!\FD|REG_P3|data_s[72]~31\)))) # (!\FD|REG_P2|data_s\(11) & ((\FD|REG_P2|data_s\(109) & 
-- (!\FD|REG_P3|data_s[72]~31\)) # (!\FD|REG_P2|data_s\(109) & ((\FD|REG_P3|data_s[72]~31\) # (GND)))))
-- \FD|REG_P3|data_s[73]~33\ = CARRY((\FD|REG_P2|data_s\(11) & (!\FD|REG_P2|data_s\(109) & !\FD|REG_P3|data_s[72]~31\)) # (!\FD|REG_P2|data_s\(11) & ((!\FD|REG_P3|data_s[72]~31\) # (!\FD|REG_P2|data_s\(109)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(11),
	datab => \FD|REG_P2|data_s\(109),
	datad => VCC,
	cin => \FD|REG_P3|data_s[72]~31\,
	combout => \FD|REG_P3|data_s[73]~32_combout\,
	cout => \FD|REG_P3|data_s[73]~33\);

\FD|REG_P3|data_s[74]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[74]~34_combout\ = ((\FD|REG_P2|data_s\(12) $ (\FD|REG_P2|data_s\(110) $ (!\FD|REG_P3|data_s[73]~33\)))) # (GND)
-- \FD|REG_P3|data_s[74]~35\ = CARRY((\FD|REG_P2|data_s\(12) & ((\FD|REG_P2|data_s\(110)) # (!\FD|REG_P3|data_s[73]~33\))) # (!\FD|REG_P2|data_s\(12) & (\FD|REG_P2|data_s\(110) & !\FD|REG_P3|data_s[73]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(12),
	datab => \FD|REG_P2|data_s\(110),
	datad => VCC,
	cin => \FD|REG_P3|data_s[73]~33\,
	combout => \FD|REG_P3|data_s[74]~34_combout\,
	cout => \FD|REG_P3|data_s[74]~35\);

\FD|REG_P3|data_s[75]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[75]~36_combout\ = (\FD|REG_P2|data_s\(13) & ((\FD|REG_P2|data_s\(111) & (\FD|REG_P3|data_s[74]~35\ & VCC)) # (!\FD|REG_P2|data_s\(111) & (!\FD|REG_P3|data_s[74]~35\)))) # (!\FD|REG_P2|data_s\(13) & ((\FD|REG_P2|data_s\(111) & 
-- (!\FD|REG_P3|data_s[74]~35\)) # (!\FD|REG_P2|data_s\(111) & ((\FD|REG_P3|data_s[74]~35\) # (GND)))))
-- \FD|REG_P3|data_s[75]~37\ = CARRY((\FD|REG_P2|data_s\(13) & (!\FD|REG_P2|data_s\(111) & !\FD|REG_P3|data_s[74]~35\)) # (!\FD|REG_P2|data_s\(13) & ((!\FD|REG_P3|data_s[74]~35\) # (!\FD|REG_P2|data_s\(111)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(13),
	datab => \FD|REG_P2|data_s\(111),
	datad => VCC,
	cin => \FD|REG_P3|data_s[74]~35\,
	combout => \FD|REG_P3|data_s[75]~36_combout\,
	cout => \FD|REG_P3|data_s[75]~37\);

\FD|REG_P3|data_s[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[75]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(75));

\FD|mux_jump|saida[5]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[5]~59_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(75))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[5]~6_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(75),
	datad => \FD|Somador|saida[5]~6_combout\,
	combout => \FD|mux_jump|saida[5]~59_combout\);

\FD|REG_P1|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(31));

\FD|ROM|memROM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~20_combout\ = (\FD|PC|data_s\(4)) # ((\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(3) & ((\FD|PC|data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~20_combout\);

\FD|ROM|memROM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~21_combout\ = (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~20_combout\,
	combout => \FD|ROM|memROM~21_combout\);

\FD|REG_P1|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(27));

\UC|pontosDeControle[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[10]~0_combout\ = (\FD|REG_P1|data_s\(31) & (((\FD|REG_P1|data_s\(4))) # (!\FD|REG_P1|data_s\(27)))) # (!\FD|REG_P1|data_s\(31) & ((\FD|REG_P1|data_s\(27)) # ((\FD|REG_P1|data_s\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P1|data_s\(31),
	datab => \FD|REG_P1|data_s\(27),
	datac => \FD|REG_P1|data_s\(29),
	datad => \FD|REG_P1|data_s\(4),
	combout => \UC|pontosDeControle[10]~0_combout\);

\FD|REG_P2|data_s[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(141));

\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[5]~59_combout\,
	asdata => \FD|REG_P1|data_s\(3),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

\FD|ROM|memROM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~17_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2) & (!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5))) # (!\FD|PC|data_s\(2) & (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~17_combout\);

\FD|ROM|memROM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~29_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~17_combout\,
	combout => \FD|ROM|memROM~29_combout\);

\FD|REG_P1|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(1));

\FD|REG_P2|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(11));

\FD|REG_P3|data_s[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[73]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(73));

\FD|mux_jump|saida[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[3]~57_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(73))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[3]~2_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(73),
	datad => \FD|Somador|saida[3]~2_combout\,
	combout => \FD|mux_jump|saida[3]~57_combout\);

\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[3]~57_combout\,
	asdata => \FD|REG_P1|data_s\(1),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

\FD|ROM|memROM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~15_combout\ = (\FD|PC|data_s\(2) & (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(4) & !\FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(2) & (\FD|PC|data_s\(3) & (!\FD|PC|data_s\(4) & \FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~15_combout\);

\FD|ROM|memROM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~16_combout\ = (\FD|ROM|memROM~15_combout\ & (!\FD|PC|data_s\(5) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~15_combout\,
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~16_combout\);

\FD|REG_P1|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(0));

\FD|REG_P2|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(10));

\FD|REG_P3|data_s[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[72]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(72));

\FD|mux_jump|saida[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[2]~56_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(72))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[2]~0_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(72),
	datad => \FD|Somador|saida[2]~0_combout\,
	combout => \FD|mux_jump|saida[2]~56_combout\);

\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[2]~56_combout\,
	asdata => \FD|REG_P1|data_s\(0),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

\FD|ROM|memROM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~18_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(4) & !\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~18_combout\);

\FD|ROM|memROM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~30_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~18_combout\,
	combout => \FD|ROM|memROM~30_combout\);

\FD|REG_P1|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(5));

\FD|REG_P2|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(15));

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

\FD|Somador|saida[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[7]~10_combout\ = (\FD|PC|data_s\(7) & (!\FD|Somador|saida[6]~9\)) # (!\FD|PC|data_s\(7) & ((\FD|Somador|saida[6]~9\) # (GND)))
-- \FD|Somador|saida[7]~11\ = CARRY((!\FD|Somador|saida[6]~9\) # (!\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datad => VCC,
	cin => \FD|Somador|saida[6]~9\,
	combout => \FD|Somador|saida[7]~10_combout\,
	cout => \FD|Somador|saida[7]~11\);

\FD|REG_P1|data_s[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(39));

\FD|REG_P2|data_s[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(113));

\FD|REG_P1|data_s[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(38));

\FD|REG_P2|data_s[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(112));

\FD|REG_P3|data_s[76]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[76]~38_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(112) $ (!\FD|REG_P3|data_s[75]~37\)))) # (GND)
-- \FD|REG_P3|data_s[76]~39\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(112)) # (!\FD|REG_P3|data_s[75]~37\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(112) & !\FD|REG_P3|data_s[75]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(112),
	datad => VCC,
	cin => \FD|REG_P3|data_s[75]~37\,
	combout => \FD|REG_P3|data_s[76]~38_combout\,
	cout => \FD|REG_P3|data_s[76]~39\);

\FD|REG_P3|data_s[77]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[77]~40_combout\ = (\FD|REG_P2|data_s\(15) & ((\FD|REG_P2|data_s\(113) & (\FD|REG_P3|data_s[76]~39\ & VCC)) # (!\FD|REG_P2|data_s\(113) & (!\FD|REG_P3|data_s[76]~39\)))) # (!\FD|REG_P2|data_s\(15) & ((\FD|REG_P2|data_s\(113) & 
-- (!\FD|REG_P3|data_s[76]~39\)) # (!\FD|REG_P2|data_s\(113) & ((\FD|REG_P3|data_s[76]~39\) # (GND)))))
-- \FD|REG_P3|data_s[77]~41\ = CARRY((\FD|REG_P2|data_s\(15) & (!\FD|REG_P2|data_s\(113) & !\FD|REG_P3|data_s[76]~39\)) # (!\FD|REG_P2|data_s\(15) & ((!\FD|REG_P3|data_s[76]~39\) # (!\FD|REG_P2|data_s\(113)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(15),
	datab => \FD|REG_P2|data_s\(113),
	datad => VCC,
	cin => \FD|REG_P3|data_s[76]~39\,
	combout => \FD|REG_P3|data_s[77]~40_combout\,
	cout => \FD|REG_P3|data_s[77]~41\);

\FD|REG_P3|data_s[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[77]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(77));

\FD|mux_jump|saida[7]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[7]~61_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(77))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[7]~10_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(77),
	datad => \FD|Somador|saida[7]~10_combout\,
	combout => \FD|mux_jump|saida[7]~61_combout\);

\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[7]~61_combout\,
	asdata => \FD|REG_P1|data_s\(5),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

\FD|ROM|memROM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~13_combout\);

\FD|ROM|memROM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~19_combout\ = (\FD|ROM|memROM~13_combout\ & (!\FD|PC|data_s\(3) & (!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~13_combout\,
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~19_combout\);

\FD|ROM|memROM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~22_combout\ = (\FD|ROM|memROM~19_combout\ & !\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~19_combout\,
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~22_combout\);

\FD|REG_P1|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(29));

\UC|pontosDeControle[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[7]~3_combout\ = (\FD|REG_P1|data_s\(4) & ((\FD|REG_P1|data_s\(29)) # ((\FD|REG_P1|data_s\(31)) # (\FD|REG_P1|data_s\(27))))) # (!\FD|REG_P1|data_s\(4) & ((\FD|REG_P1|data_s\(29) $ (\FD|REG_P1|data_s\(31))) # 
-- (!\FD|REG_P1|data_s\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P1|data_s\(4),
	datab => \FD|REG_P1|data_s\(29),
	datac => \FD|REG_P1|data_s\(31),
	datad => \FD|REG_P1|data_s\(27),
	combout => \UC|pontosDeControle[7]~3_combout\);

\FD|REG_P2|data_s[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|pontosDeControle[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(147));

\FD|REG_P3|data_s[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(147),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(106));

\FD|REG_P4|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(106),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(70));

\UC|pontosDeControle[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[6]~4_combout\ = (\FD|REG_P1|data_s\(29)) # ((\FD|REG_P1|data_s\(27) & (\FD|REG_P1|data_s\(4))) # (!\FD|REG_P1|data_s\(27) & ((\FD|REG_P1|data_s\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P1|data_s\(29),
	datab => \FD|REG_P1|data_s\(4),
	datac => \FD|REG_P1|data_s\(31),
	datad => \FD|REG_P1|data_s\(27),
	combout => \UC|pontosDeControle[6]~4_combout\);

\FD|REG_P2|data_s[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|pontosDeControle[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(143));

\FD|REG_P3|data_s[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(143),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(102));

\FD|REG_P3|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(73),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(36));

\FD|REG_P3|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(7));

\FD|REG_P3|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(8));

\FD|REG_P3|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(9));

\FD|REG_P3|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(10));

\FD|REG_P3|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(11));

\FD|REG_P3|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(12));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\FD|REG_P4|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(12));

\UC|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal4~0_combout\ = (\FD|REG_P1|data_s\(29)) # ((\FD|REG_P1|data_s\(31)) # ((\FD|REG_P1|data_s\(27)) # (\FD|REG_P1|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P1|data_s\(29),
	datab => \FD|REG_P1|data_s\(31),
	datac => \FD|REG_P1|data_s\(27),
	datad => \FD|REG_P1|data_s\(4),
	combout => \UC|Equal4~0_combout\);

\FD|REG_P2|data_s[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(146));

\FD|REG_P3|data_s[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(146),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(105));

\FD|REG_P4|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(105),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(69));

\FD|mux_Ula_Memoria|saida[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[7]~25_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datab => \FD|REG_P4|data_s\(12),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[7]~25_combout\);

\FD|REG_P3|data_s[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux31~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(37));

\FD|REG_P4|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(5));

\UC|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~0_combout\ = (((\FD|REG_P1|data_s\(29)) # (\FD|REG_P1|data_s\(4))) # (!\FD|REG_P1|data_s\(27))) # (!\FD|REG_P1|data_s\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P1|data_s\(31),
	datab => \FD|REG_P1|data_s\(27),
	datac => \FD|REG_P1|data_s\(29),
	datad => \FD|REG_P1|data_s\(4),
	combout => \UC|Equal2~0_combout\);

\FD|REG_P2|data_s[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(142));

\FD|mux_Rd_Rt|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[0]~0_combout\ = (\FD|REG_P2|data_s\(142) & (\FD|REG_P4|data_s\(5))) # (!\FD|REG_P2|data_s\(142) & ((\FD|REG_P4|data_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(5),
	datab => \FD|REG_P4|data_s\(0),
	datad => \FD|REG_P2|data_s\(142),
	combout => \FD|mux_Rd_Rt|saida[0]~0_combout\);

\FD|REG_P3|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Rd_Rt|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(0));

\FD|REG_P4|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(0));

\FD|REG_P3|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(6));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\FD|mux_Ula_Memoria|saida[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[1]~31_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datab => \FD|REG_P4|data_s\(6),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[1]~31_combout\);

\FD|REG_P4|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(7));

\FD|mux_Rd_Rt|saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[2]~2_combout\ = (\FD|REG_P2|data_s\(142) & (\FD|REG_P4|data_s\(7))) # (!\FD|REG_P2|data_s\(142) & ((\FD|REG_P4|data_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(7),
	datab => \FD|REG_P4|data_s\(2),
	datad => \FD|REG_P2|data_s\(142),
	combout => \FD|mux_Rd_Rt|saida[2]~2_combout\);

\FD|REG_P3|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Rd_Rt|saida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(2));

\FD|REG_P4|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(2));

\FD|REG_P4|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(8));

\FD|mux_Rd_Rt|saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[3]~3_combout\ = (\FD|REG_P2|data_s\(142) & (\FD|REG_P4|data_s\(8))) # (!\FD|REG_P2|data_s\(142) & ((\FD|REG_P4|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(8),
	datab => \FD|REG_P4|data_s\(3),
	datad => \FD|REG_P2|data_s\(142),
	combout => \FD|mux_Rd_Rt|saida[3]~3_combout\);

\FD|REG_P3|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Rd_Rt|saida[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(3));

\FD|REG_P4|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(3));

\FD|REG_P4|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(9));

\FD|mux_Rd_Rt|saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[4]~4_combout\ = (\FD|REG_P2|data_s\(142) & (\FD|REG_P4|data_s\(9))) # (!\FD|REG_P2|data_s\(142) & ((\FD|REG_P4|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(9),
	datab => \FD|REG_P4|data_s\(4),
	datad => \FD|REG_P2|data_s\(142),
	combout => \FD|mux_Rd_Rt|saida[4]~4_combout\);

\FD|REG_P3|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Rd_Rt|saida[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(4));

\FD|REG_P4|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(4));

\FD|ROM|memROM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~25_combout\ = (\FD|PC|data_s\(2)) # ((\FD|PC|data_s\(3) & ((!\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4)))) # (!\FD|PC|data_s\(3) & ((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~25_combout\);

\FD|ROM|memROM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~31_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~25_combout\,
	combout => \FD|ROM|memROM~31_combout\);

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

\FD|ROM|memROM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~26_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~26_combout\);

\FD|ROM|memROM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~32_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~26_combout\,
	combout => \FD|ROM|memROM~32_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000026C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(13));

\FD|BR|bancoReg_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(14));

\FD|BR|bancoReg_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(9));

\FD|BR|bancoReg_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(1));

\FD|BR|bancoReg_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(3));

\FD|BR|bancoReg_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(4));

\FD|BR|bancoReg_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(2));

\FD|BR|bancoReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(1) & (\FD|BR|bancoReg_rtl_1_bypass\(2) & (\FD|BR|bancoReg_rtl_1_bypass\(3) $ (!\FD|BR|bancoReg_rtl_1_bypass\(4))))) # (!\FD|BR|bancoReg_rtl_1_bypass\(1) & (!\FD|BR|bancoReg_rtl_1_bypass\(2) & 
-- (\FD|BR|bancoReg_rtl_1_bypass\(3) $ (!\FD|BR|bancoReg_rtl_1_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(1),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(3),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(4),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(2),
	combout => \FD|BR|bancoReg~38_combout\);

\FD|BR|bancoReg_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(70),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(0));

\FD|BR|bancoReg_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(7));

\FD|BR|bancoReg_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(8));

\FD|BR|bancoReg_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(5));

\FD|BR|bancoReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~39_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(0) & (!\FD|BR|bancoReg_rtl_1_bypass\(5) & (\FD|BR|bancoReg_rtl_1_bypass\(7) $ (!\FD|BR|bancoReg_rtl_1_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(0),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(7),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(8),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(5),
	combout => \FD|BR|bancoReg~39_combout\);

\FD|BR|saidaB[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~62_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(14) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(14),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[1]~62_combout\);

\FD|REG_P1|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(19));

\FD|REG_P1|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(16));

\FD|BR|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal1~0_combout\ = (!\FD|REG_P1|data_s\(5) & (!\FD|REG_P1|data_s\(19) & !\FD|REG_P1|data_s\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_P1|data_s\(5),
	datac => \FD|REG_P1|data_s\(19),
	datad => \FD|REG_P1|data_s\(16),
	combout => \FD|BR|Equal1~0_combout\);

\FD|BR|saidaB[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~63_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[1]~62_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1~portbdataout\)) # (!\FD|BR|saidaB[1]~62_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(13),
	datac => \FD|BR|saidaB[1]~62_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[1]~63_combout\);

\FD|REG_P2|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[1]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(43));

\FD|REG_P2|data_s[140]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P2|data_s[140]~0_combout\ = (\FD|REG_P1|data_s\(29)) # ((\FD|REG_P1|data_s\(31)) # (\FD|REG_P1|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P1|data_s\(29),
	datab => \FD|REG_P1|data_s\(31),
	datac => \FD|REG_P1|data_s\(27),
	combout => \FD|REG_P2|data_s[140]~0_combout\);

\FD|REG_P2|data_s[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s[140]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(138));

\FD|mux_Banco_Ula|saida[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[1]~31_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(11))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(11),
	datab => \FD|REG_P2|data_s\(43),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[1]~31_combout\);

\FD|ROM|memROM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~27_combout\ = (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (((\FD|PC|data_s\(2) & \FD|PC|data_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~27_combout\);

\FD|ROM|memROM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~33_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~27_combout\,
	combout => \FD|ROM|memROM~33_combout\);

\FD|REG_P1|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(21));

\FD|BR|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal0~0_combout\ = (\FD|REG_P1|data_s\(5)) # (\FD|REG_P1|data_s\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P1|data_s\(5),
	datab => \FD|REG_P1|data_s\(21),
	combout => \FD|BR|Equal0~0_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000026C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(13));

\FD|BR|bancoReg_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(14));

\FD|BR|bancoReg_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(1));

\FD|BR|bancoReg_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(7));

\FD|BR|bancoReg_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(8));

\FD|BR|bancoReg_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(2));

\FD|BR|bancoReg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(1) & (\FD|BR|bancoReg_rtl_0_bypass\(2) & (\FD|BR|bancoReg_rtl_0_bypass\(7) $ (!\FD|BR|bancoReg_rtl_0_bypass\(8))))) # (!\FD|BR|bancoReg_rtl_0_bypass\(1) & (!\FD|BR|bancoReg_rtl_0_bypass\(2) & 
-- (\FD|BR|bancoReg_rtl_0_bypass\(7) $ (!\FD|BR|bancoReg_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(1),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(7),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(8),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(2),
	combout => \FD|BR|bancoReg~40_combout\);

\FD|BR|bancoReg_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(70),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(0));

\FD|BR|bancoReg_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(3));

\FD|BR|bancoReg_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(5));

\FD|BR|bancoReg_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P4|data_s\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(9));

\FD|BR|bancoReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~41_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(0) & (!\FD|BR|bancoReg_rtl_0_bypass\(3) & (!\FD|BR|bancoReg_rtl_0_bypass\(5) & !\FD|BR|bancoReg_rtl_0_bypass\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(0),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(3),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(5),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(9),
	combout => \FD|BR|bancoReg~41_combout\);

\FD|BR|saidaA[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~62_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(14) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(14),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[1]~62_combout\);

\FD|BR|saidaA[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~63_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[1]~62_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1~portbdataout\)) # (!\FD|BR|saidaA[1]~62_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(13),
	datad => \FD|BR|saidaA[1]~62_combout\,
	combout => \FD|BR|saidaA[1]~63_combout\);

\FD|REG_P2|data_s[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[1]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(75));

\FD|REG_P3|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(5));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\FD|mux_Ula_Memoria|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[0]~0_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \FD|REG_P4|data_s\(5),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[0]~0_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00001500",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
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
	port_b_data_width => 1,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(11));

\FD|BR|bancoReg_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(12));

\FD|BR|saidaB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~0_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(12) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(12),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[0]~0_combout\);

\FD|BR|saidaB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~1_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[0]~0_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\)) # (!\FD|BR|saidaB[0]~0_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(11),
	datac => \FD|BR|saidaB[0]~0_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[0]~1_combout\);

\FD|REG_P2|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(42));

\FD|mux_Banco_Ula|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[0]~0_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(10))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(10),
	datab => \FD|REG_P2|data_s\(42),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[0]~0_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00001500",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
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
	port_b_data_width => 1,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(11));

\FD|BR|bancoReg_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(12));

\FD|BR|saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~0_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(12) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(12),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[0]~0_combout\);

\FD|BR|saidaA[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~1_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[0]~0_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\FD|BR|saidaA[0]~0_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(11),
	datad => \FD|BR|saidaA[0]~0_combout\,
	combout => \FD|BR|saidaA[0]~1_combout\);

\FD|REG_P2|data_s[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(74));

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

\FD|ULA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|REG_P2|data_s\(75) & (!\FD|ULA|Add1~1\)) # (!\FD|REG_P2|data_s\(75) & ((\FD|ULA|Add1~1\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|REG_P2|data_s\(75) & 
-- (\FD|ULA|Add1~1\ & VCC)) # (!\FD|REG_P2|data_s\(75) & (!\FD|ULA|Add1~1\))))
-- \FD|ULA|Add1~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((!\FD|ULA|Add1~1\) # (!\FD|REG_P2|data_s\(75)))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & (!\FD|REG_P2|data_s\(75) & !\FD|ULA|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datab => \FD|REG_P2|data_s\(75),
	datad => VCC,
	cin => \FD|ULA|Add1~1\,
	combout => \FD|ULA|Add1~2_combout\,
	cout => \FD|ULA|Add1~3\);

\FD|UCULA|ALUctr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~1_combout\ = (\FD|REG_P2|data_s\(15) & (!\FD|REG_P2|data_s\(141) & (!\FD|REG_P2|data_s\(138) & !\FD|REG_P2|data_s\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(15),
	datab => \FD|REG_P2|data_s\(141),
	datac => \FD|REG_P2|data_s\(138),
	datad => \FD|REG_P2|data_s\(14),
	combout => \FD|UCULA|ALUctr[0]~1_combout\);

\UC|pontosDeControle[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[9]~1_combout\ = (\FD|REG_P1|data_s\(4)) # ((\FD|REG_P1|data_s\(31) & ((!\FD|REG_P1|data_s\(27)))) # (!\FD|REG_P1|data_s\(31) & ((\FD|REG_P1|data_s\(29)) # (\FD|REG_P1|data_s\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P1|data_s\(4),
	datab => \FD|REG_P1|data_s\(29),
	datac => \FD|REG_P1|data_s\(31),
	datad => \FD|REG_P1|data_s\(27),
	combout => \UC|pontosDeControle[9]~1_combout\);

\FD|REG_P2|data_s[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|pontosDeControle[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(140));

\FD|ULA|soma[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[0]~0_combout\ = (\FD|mux_Banco_Ula|saida[0]~0_combout\ & (\FD|REG_P2|data_s\(74) $ (VCC))) # (!\FD|mux_Banco_Ula|saida[0]~0_combout\ & (\FD|REG_P2|data_s\(74) & VCC))
-- \FD|ULA|soma[0]~1\ = CARRY((\FD|mux_Banco_Ula|saida[0]~0_combout\ & \FD|REG_P2|data_s\(74)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datab => \FD|REG_P2|data_s\(74),
	datad => VCC,
	combout => \FD|ULA|soma[0]~0_combout\,
	cout => \FD|ULA|soma[0]~1\);

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

\FD|ULA|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~4_combout\ = (\FD|ULA|soma[1]~2_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[1]~2_combout\,
	combout => \FD|ULA|Mux30~4_combout\);

\FD|UCULA|ALUctr[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~3_combout\ = (\FD|REG_P2|data_s\(15) & (!\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(12) & !\FD|REG_P2|data_s\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(15),
	datab => \FD|REG_P2|data_s\(14),
	datac => \FD|REG_P2|data_s\(12),
	datad => \FD|REG_P2|data_s\(10),
	combout => \FD|UCULA|ALUctr[1]~3_combout\);

\FD|UCULA|ALUctr[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~4_combout\ = (\FD|REG_P2|data_s\(140)) # ((\FD|UCULA|ALUctr[1]~3_combout\ & ((\FD|REG_P2|data_s\(11)) # (!\FD|REG_P2|data_s\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(140),
	datab => \FD|UCULA|ALUctr[1]~3_combout\,
	datac => \FD|REG_P2|data_s\(11),
	datad => \FD|REG_P2|data_s\(13),
	combout => \FD|UCULA|ALUctr[1]~4_combout\);

\FD|UCULA|ALUctr[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~5_combout\ = (!\FD|REG_P2|data_s\(141) & ((\FD|REG_P2|data_s\(138) & ((!\FD|REG_P2|data_s\(140)))) # (!\FD|REG_P2|data_s\(138) & (\FD|UCULA|ALUctr[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~4_combout\,
	datab => \FD|REG_P2|data_s\(138),
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|REG_P2|data_s\(141),
	combout => \FD|UCULA|ALUctr[1]~5_combout\);

\FD|UCULA|ALUctr[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~6_combout\ = (!\FD|REG_P2|data_s\(141) & !\FD|REG_P2|data_s\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_P2|data_s\(141),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|UCULA|ALUctr[2]~6_combout\);

\FD|UCULA|ALUctr[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~7_combout\ = (\FD|UCULA|ALUctr[2]~6_combout\ & ((\FD|REG_P2|data_s\(140)) # ((\FD|REG_P2|data_s\(11) & \FD|UCULA|ALUctr[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~6_combout\,
	datab => \FD|REG_P2|data_s\(140),
	datac => \FD|REG_P2|data_s\(11),
	datad => \FD|UCULA|ALUctr[1]~3_combout\,
	combout => \FD|UCULA|ALUctr[2]~7_combout\);

\FD|ULA|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~2_combout\ = (\FD|UCULA|ALUctr[1]~5_combout\ & ((!\FD|UCULA|ALUctr[0]~2_combout\) # (!\FD|UCULA|ALUctr[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~5_combout\,
	datac => \FD|UCULA|ALUctr[2]~7_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux21~2_combout\);

\FD|ULA|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~3_combout\ = (\FD|UCULA|ALUctr[2]~7_combout\) # ((\FD|UCULA|ALUctr[0]~2_combout\ & !\FD|UCULA|ALUctr[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~7_combout\,
	datab => \FD|UCULA|ALUctr[0]~2_combout\,
	datad => \FD|UCULA|ALUctr[1]~5_combout\,
	combout => \FD|ULA|Mux21~3_combout\);

\FD|ULA|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~2_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux30~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~2_combout\,
	datab => \FD|ULA|Mux30~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux30~2_combout\);

\FD|ULA|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~2_combout\ = (!\FD|UCULA|ALUctr[1]~5_combout\ & !\FD|UCULA|ALUctr[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[1]~5_combout\,
	datad => \FD|UCULA|ALUctr[2]~7_combout\,
	combout => \FD|ULA|Mux31~2_combout\);

\FD|ULA|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~3_combout\ = (\FD|ULA|Mux30~2_combout\ & (((\FD|mux_Banco_Ula|saida[1]~31_combout\ & \FD|REG_P2|data_s\(75))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux30~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[1]~31_combout\) # (\FD|REG_P2|data_s\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datab => \FD|REG_P2|data_s\(75),
	datac => \FD|ULA|Mux30~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux30~3_combout\);

\FD|REG_P3|data_s[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(38));

\FD|REG_P4|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(6));

\FD|mux_Rd_Rt|saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[1]~1_combout\ = (\FD|REG_P2|data_s\(142) & (\FD|REG_P4|data_s\(6))) # (!\FD|REG_P2|data_s\(142) & ((\FD|REG_P4|data_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P4|data_s\(6),
	datab => \FD|REG_P4|data_s\(1),
	datad => \FD|REG_P2|data_s\(142),
	combout => \FD|mux_Rd_Rt|saida[1]~1_combout\);

\FD|REG_P3|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Rd_Rt|saida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(1));

\FD|REG_P4|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(1));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(25));

\FD|BR|bancoReg_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(26));

\FD|BR|saidaB[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~50_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(26) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(26),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[7]~50_combout\);

\FD|BR|saidaB[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~51_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[7]~50_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7~portbdataout\)) # (!\FD|BR|saidaB[7]~50_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(25),
	datac => \FD|BR|saidaB[7]~50_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[7]~51_combout\);

\FD|REG_P2|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[7]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(49));

\FD|mux_Banco_Ula|saida[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[7]~25_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(49),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[7]~25_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(25));

\FD|BR|bancoReg_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(26));

\FD|BR|saidaA[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~50_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(26) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(26),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[7]~50_combout\);

\FD|BR|saidaA[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~51_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[7]~50_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7~portbdataout\)) # (!\FD|BR|saidaA[7]~50_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(25),
	datad => \FD|BR|saidaA[7]~50_combout\,
	combout => \FD|BR|saidaA[7]~51_combout\);

\FD|REG_P2|data_s[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[7]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(81));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(23));

\FD|BR|bancoReg_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(24));

\FD|BR|saidaA[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~52_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(24) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(24),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[6]~52_combout\);

\FD|BR|saidaA[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~53_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[6]~52_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6~portbdataout\)) # (!\FD|BR|saidaA[6]~52_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(23),
	datad => \FD|BR|saidaA[6]~52_combout\,
	combout => \FD|BR|saidaA[6]~53_combout\);

\FD|REG_P2|data_s[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[6]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(80));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(21));

\FD|BR|bancoReg_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(22));

\FD|BR|saidaA[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~54_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(22) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(22),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[5]~54_combout\);

\FD|BR|saidaA[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~55_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[5]~54_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5~portbdataout\)) # (!\FD|BR|saidaA[5]~54_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(21),
	datad => \FD|BR|saidaA[5]~54_combout\,
	combout => \FD|BR|saidaA[5]~55_combout\);

\FD|REG_P2|data_s[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[5]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(79));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(19));

\FD|BR|bancoReg_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(20));

\FD|BR|saidaA[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~56_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(20) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(20),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[4]~56_combout\);

\FD|BR|saidaA[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~57_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[4]~56_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4~portbdataout\)) # (!\FD|BR|saidaA[4]~56_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(19),
	datad => \FD|BR|saidaA[4]~56_combout\,
	combout => \FD|BR|saidaA[4]~57_combout\);

\FD|REG_P2|data_s[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(78));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00003F80",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(17));

\FD|BR|bancoReg_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(18));

\FD|BR|saidaA[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~58_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(18) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(18),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[3]~58_combout\);

\FD|BR|saidaA[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~59_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[3]~58_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3~portbdataout\)) # (!\FD|BR|saidaA[3]~58_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(17),
	datad => \FD|BR|saidaA[3]~58_combout\,
	combout => \FD|BR|saidaA[3]~59_combout\);

\FD|REG_P2|data_s[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(77));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00003840",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(15));

\FD|BR|bancoReg_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(16));

\FD|BR|saidaA[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~60_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(16) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(16),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[2]~60_combout\);

\FD|BR|saidaA[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~61_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[2]~60_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2~portbdataout\)) # (!\FD|BR|saidaA[2]~60_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(15),
	datad => \FD|BR|saidaA[2]~60_combout\,
	combout => \FD|BR|saidaA[2]~61_combout\);

\FD|REG_P2|data_s[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(76));

\FD|ULA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~4_combout\ = ((\FD|mux_Banco_Ula|saida[2]~30_combout\ $ (\FD|REG_P2|data_s\(76) $ (\FD|ULA|Add1~3\)))) # (GND)
-- \FD|ULA|Add1~5\ = CARRY((\FD|mux_Banco_Ula|saida[2]~30_combout\ & (\FD|REG_P2|data_s\(76) & !\FD|ULA|Add1~3\)) # (!\FD|mux_Banco_Ula|saida[2]~30_combout\ & ((\FD|REG_P2|data_s\(76)) # (!\FD|ULA|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|REG_P2|data_s\(76),
	datad => VCC,
	cin => \FD|ULA|Add1~3\,
	combout => \FD|ULA|Add1~4_combout\,
	cout => \FD|ULA|Add1~5\);

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

\FD|ULA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|REG_P2|data_s\(79) & (!\FD|ULA|Add1~9\)) # (!\FD|REG_P2|data_s\(79) & ((\FD|ULA|Add1~9\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|REG_P2|data_s\(79) & 
-- (\FD|ULA|Add1~9\ & VCC)) # (!\FD|REG_P2|data_s\(79) & (!\FD|ULA|Add1~9\))))
-- \FD|ULA|Add1~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((!\FD|ULA|Add1~9\) # (!\FD|REG_P2|data_s\(79)))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & (!\FD|REG_P2|data_s\(79) & !\FD|ULA|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datab => \FD|REG_P2|data_s\(79),
	datad => VCC,
	cin => \FD|ULA|Add1~9\,
	combout => \FD|ULA|Add1~10_combout\,
	cout => \FD|ULA|Add1~11\);

\FD|ULA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~12_combout\ = ((\FD|mux_Banco_Ula|saida[6]~26_combout\ $ (\FD|REG_P2|data_s\(80) $ (\FD|ULA|Add1~11\)))) # (GND)
-- \FD|ULA|Add1~13\ = CARRY((\FD|mux_Banco_Ula|saida[6]~26_combout\ & (\FD|REG_P2|data_s\(80) & !\FD|ULA|Add1~11\)) # (!\FD|mux_Banco_Ula|saida[6]~26_combout\ & ((\FD|REG_P2|data_s\(80)) # (!\FD|ULA|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datab => \FD|REG_P2|data_s\(80),
	datad => VCC,
	cin => \FD|ULA|Add1~11\,
	combout => \FD|ULA|Add1~12_combout\,
	cout => \FD|ULA|Add1~13\);

\FD|ULA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~14_combout\ = (\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|REG_P2|data_s\(81) & (!\FD|ULA|Add1~13\)) # (!\FD|REG_P2|data_s\(81) & ((\FD|ULA|Add1~13\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|REG_P2|data_s\(81) & 
-- (\FD|ULA|Add1~13\ & VCC)) # (!\FD|REG_P2|data_s\(81) & (!\FD|ULA|Add1~13\))))
-- \FD|ULA|Add1~15\ = CARRY((\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((!\FD|ULA|Add1~13\) # (!\FD|REG_P2|data_s\(81)))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & (!\FD|REG_P2|data_s\(81) & !\FD|ULA|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datab => \FD|REG_P2|data_s\(81),
	datad => VCC,
	cin => \FD|ULA|Add1~13\,
	combout => \FD|ULA|Add1~14_combout\,
	cout => \FD|ULA|Add1~15\);

\FD|ULA|soma[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[2]~4_combout\ = ((\FD|mux_Banco_Ula|saida[2]~30_combout\ $ (\FD|REG_P2|data_s\(76) $ (!\FD|ULA|soma[1]~3\)))) # (GND)
-- \FD|ULA|soma[2]~5\ = CARRY((\FD|mux_Banco_Ula|saida[2]~30_combout\ & ((\FD|REG_P2|data_s\(76)) # (!\FD|ULA|soma[1]~3\))) # (!\FD|mux_Banco_Ula|saida[2]~30_combout\ & (\FD|REG_P2|data_s\(76) & !\FD|ULA|soma[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|REG_P2|data_s\(76),
	datad => VCC,
	cin => \FD|ULA|soma[1]~3\,
	combout => \FD|ULA|soma[2]~4_combout\,
	cout => \FD|ULA|soma[2]~5\);

\FD|ULA|soma[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[3]~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|REG_P2|data_s\(77) & (\FD|ULA|soma[2]~5\ & VCC)) # (!\FD|REG_P2|data_s\(77) & (!\FD|ULA|soma[2]~5\)))) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|REG_P2|data_s\(77) & 
-- (!\FD|ULA|soma[2]~5\)) # (!\FD|REG_P2|data_s\(77) & ((\FD|ULA|soma[2]~5\) # (GND)))))
-- \FD|ULA|soma[3]~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~29_combout\ & (!\FD|REG_P2|data_s\(77) & !\FD|ULA|soma[2]~5\)) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((!\FD|ULA|soma[2]~5\) # (!\FD|REG_P2|data_s\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datab => \FD|REG_P2|data_s\(77),
	datad => VCC,
	cin => \FD|ULA|soma[2]~5\,
	combout => \FD|ULA|soma[3]~6_combout\,
	cout => \FD|ULA|soma[3]~7\);

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

\FD|ULA|soma[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[6]~12_combout\ = ((\FD|mux_Banco_Ula|saida[6]~26_combout\ $ (\FD|REG_P2|data_s\(80) $ (!\FD|ULA|soma[5]~11\)))) # (GND)
-- \FD|ULA|soma[6]~13\ = CARRY((\FD|mux_Banco_Ula|saida[6]~26_combout\ & ((\FD|REG_P2|data_s\(80)) # (!\FD|ULA|soma[5]~11\))) # (!\FD|mux_Banco_Ula|saida[6]~26_combout\ & (\FD|REG_P2|data_s\(80) & !\FD|ULA|soma[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datab => \FD|REG_P2|data_s\(80),
	datad => VCC,
	cin => \FD|ULA|soma[5]~11\,
	combout => \FD|ULA|soma[6]~12_combout\,
	cout => \FD|ULA|soma[6]~13\);

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

\FD|ULA|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~4_combout\ = (\FD|ULA|soma[7]~14_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[7]~14_combout\,
	combout => \FD|ULA|Mux24~4_combout\);

\FD|ULA|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~14_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux24~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Mux24~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux24~2_combout\);

\FD|ULA|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~3_combout\ = (\FD|ULA|Mux24~2_combout\ & (((\FD|mux_Banco_Ula|saida[7]~25_combout\ & \FD|REG_P2|data_s\(81))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux24~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[7]~25_combout\) # (\FD|REG_P2|data_s\(81)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datab => \FD|REG_P2|data_s\(81),
	datac => \FD|ULA|Mux24~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux24~3_combout\);

\FD|REG_P3|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(44));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\FD|REG_P4|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(11));

\FD|mux_Ula_Memoria|saida[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[6]~26_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6~portadataout\,
	datab => \FD|REG_P4|data_s\(11),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[6]~26_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(23));

\FD|BR|bancoReg_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(24));

\FD|BR|saidaB[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~52_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(24) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(24),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[6]~52_combout\);

\FD|BR|saidaB[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~53_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[6]~52_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6~portbdataout\)) # (!\FD|BR|saidaB[6]~52_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(23),
	datac => \FD|BR|saidaB[6]~52_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[6]~53_combout\);

\FD|REG_P2|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[6]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(48));

\FD|mux_Banco_Ula|saida[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[6]~26_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(48),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[6]~26_combout\);

\FD|ULA|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~4_combout\ = (\FD|ULA|soma[6]~12_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[6]~12_combout\,
	combout => \FD|ULA|Mux25~4_combout\);

\FD|ULA|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~12_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux25~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~12_combout\,
	datab => \FD|ULA|Mux25~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux25~2_combout\);

\FD|ULA|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~3_combout\ = (\FD|ULA|Mux25~2_combout\ & (((\FD|mux_Banco_Ula|saida[6]~26_combout\ & \FD|REG_P2|data_s\(80))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[6]~26_combout\) # (\FD|REG_P2|data_s\(80)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datab => \FD|REG_P2|data_s\(80),
	datac => \FD|ULA|Mux25~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux25~3_combout\);

\FD|REG_P3|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux25~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(43));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\FD|REG_P4|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(10));

\FD|mux_Ula_Memoria|saida[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[5]~27_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datab => \FD|REG_P4|data_s\(10),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[5]~27_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(21));

\FD|BR|bancoReg_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(22));

\FD|BR|saidaB[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~54_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(22) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(22),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[5]~54_combout\);

\FD|BR|saidaB[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~55_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[5]~54_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5~portbdataout\)) # (!\FD|BR|saidaB[5]~54_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(21),
	datac => \FD|BR|saidaB[5]~54_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[5]~55_combout\);

\FD|REG_P2|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[5]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(47));

\FD|mux_Banco_Ula|saida[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[5]~27_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(15))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(15),
	datab => \FD|REG_P2|data_s\(47),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[5]~27_combout\);

\FD|ULA|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~4_combout\ = (\FD|ULA|soma[5]~10_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[5]~10_combout\,
	combout => \FD|ULA|Mux26~4_combout\);

\FD|ULA|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~10_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux26~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~10_combout\,
	datab => \FD|ULA|Mux26~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux26~2_combout\);

\FD|ULA|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~3_combout\ = (\FD|ULA|Mux26~2_combout\ & (((\FD|mux_Banco_Ula|saida[5]~27_combout\ & \FD|REG_P2|data_s\(79))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux26~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[5]~27_combout\) # (\FD|REG_P2|data_s\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datab => \FD|REG_P2|data_s\(79),
	datac => \FD|ULA|Mux26~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux26~3_combout\);

\FD|REG_P3|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(42));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\FD|mux_Ula_Memoria|saida[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[4]~28_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datab => \FD|REG_P4|data_s\(9),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[4]~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(19));

\FD|BR|bancoReg_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(20));

\FD|BR|saidaB[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~56_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(20) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(20),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[4]~56_combout\);

\FD|BR|saidaB[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~57_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[4]~56_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4~portbdataout\)) # (!\FD|BR|saidaB[4]~56_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(19),
	datac => \FD|BR|saidaB[4]~56_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[4]~57_combout\);

\FD|REG_P2|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(46));

\FD|mux_Banco_Ula|saida[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[4]~28_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(46),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[4]~28_combout\);

\FD|ULA|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~4_combout\ = (\FD|ULA|soma[4]~8_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[4]~8_combout\,
	combout => \FD|ULA|Mux27~4_combout\);

\FD|ULA|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~8_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux27~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~8_combout\,
	datab => \FD|ULA|Mux27~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux27~2_combout\);

\FD|ULA|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~3_combout\ = (\FD|ULA|Mux27~2_combout\ & (((\FD|mux_Banco_Ula|saida[4]~28_combout\ & \FD|REG_P2|data_s\(78))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux27~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[4]~28_combout\) # (\FD|REG_P2|data_s\(78)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	datab => \FD|REG_P2|data_s\(78),
	datac => \FD|ULA|Mux27~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux27~3_combout\);

\FD|REG_P3|data_s[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(41));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\FD|mux_Ula_Memoria|saida[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[3]~29_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3~portadataout\,
	datab => \FD|REG_P4|data_s\(8),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[3]~29_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00003F80",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(17));

\FD|BR|bancoReg_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(18));

\FD|BR|saidaB[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~58_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(18) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(18),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[3]~58_combout\);

\FD|BR|saidaB[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~59_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[3]~58_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3~portbdataout\)) # (!\FD|BR|saidaB[3]~58_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(17),
	datac => \FD|BR|saidaB[3]~58_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[3]~59_combout\);

\FD|REG_P2|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(45));

\FD|mux_Banco_Ula|saida[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[3]~29_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(13))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(13),
	datab => \FD|REG_P2|data_s\(45),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[3]~29_combout\);

\FD|ULA|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~4_combout\ = (\FD|ULA|soma[3]~6_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[3]~6_combout\,
	combout => \FD|ULA|Mux28~4_combout\);

\FD|ULA|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~6_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux28~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~6_combout\,
	datab => \FD|ULA|Mux28~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux28~2_combout\);

\FD|ULA|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~3_combout\ = (\FD|ULA|Mux28~2_combout\ & (((\FD|mux_Banco_Ula|saida[3]~29_combout\ & \FD|REG_P2|data_s\(77))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[3]~29_combout\) # (\FD|REG_P2|data_s\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datab => \FD|REG_P2|data_s\(77),
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux28~3_combout\);

\FD|REG_P3|data_s[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux28~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(40));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\FD|mux_Ula_Memoria|saida[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[2]~30_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2~portadataout\,
	datab => \FD|REG_P4|data_s\(7),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[2]~30_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00003840",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(15));

\FD|BR|bancoReg_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(16));

\FD|BR|saidaB[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~60_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(16) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(16),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[2]~60_combout\);

\FD|BR|saidaB[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~61_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[2]~60_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2~portbdataout\)) # (!\FD|BR|saidaB[2]~60_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(15),
	datac => \FD|BR|saidaB[2]~60_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[2]~61_combout\);

\FD|REG_P2|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(44));

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

\FD|ULA|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~4_combout\ = (\FD|ULA|soma[2]~4_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[2]~4_combout\,
	combout => \FD|ULA|Mux29~4_combout\);

\FD|ULA|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~4_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux29~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~4_combout\,
	datab => \FD|ULA|Mux29~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux29~2_combout\);

\FD|ULA|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~3_combout\ = (\FD|ULA|Mux29~2_combout\ & (((\FD|mux_Banco_Ula|saida[2]~30_combout\ & \FD|REG_P2|data_s\(76))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux29~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[2]~30_combout\) # (\FD|REG_P2|data_s\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|REG_P2|data_s\(76),
	datac => \FD|ULA|Mux29~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux29~3_combout\);

\FD|REG_P3|data_s[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux29~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(73));

\FD|BR|bancoReg_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(74));

\FD|BR|saidaA[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~2_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(74) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(74),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[31]~2_combout\);

\FD|BR|saidaA[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~3_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[31]~2_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31~portbdataout\)) # (!\FD|BR|saidaA[31]~2_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(73),
	datad => \FD|BR|saidaA[31]~2_combout\,
	combout => \FD|BR|saidaA[31]~3_combout\);

\FD|REG_P2|data_s[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(105));

\FD|REG_P3|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(72),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(35));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(71));

\FD|BR|bancoReg_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(72));

\FD|BR|saidaA[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~4_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(72) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(72),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[30]~4_combout\);

\FD|BR|saidaA[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~5_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[30]~4_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30~portbdataout\)) # (!\FD|BR|saidaA[30]~4_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(71),
	datad => \FD|BR|saidaA[30]~4_combout\,
	combout => \FD|BR|saidaA[30]~5_combout\);

\FD|REG_P2|data_s[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(104));

\FD|REG_P3|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(71),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(34));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(69));

\FD|BR|bancoReg_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(70));

\FD|BR|saidaA[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~6_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(70) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(70),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[29]~6_combout\);

\FD|BR|saidaA[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~7_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[29]~6_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29~portbdataout\)) # (!\FD|BR|saidaA[29]~6_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(69),
	datad => \FD|BR|saidaA[29]~6_combout\,
	combout => \FD|BR|saidaA[29]~7_combout\);

\FD|REG_P2|data_s[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(103));

\FD|REG_P3|data_s[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(70),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(33));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(67));

\FD|BR|bancoReg_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(68));

\FD|BR|saidaA[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~8_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(68) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(68),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[28]~8_combout\);

\FD|BR|saidaA[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~9_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[28]~8_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28~portbdataout\)) # (!\FD|BR|saidaA[28]~8_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(67))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(67),
	datad => \FD|BR|saidaA[28]~8_combout\,
	combout => \FD|BR|saidaA[28]~9_combout\);

\FD|REG_P2|data_s[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(102));

\FD|REG_P3|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(69),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(32));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(65));

\FD|BR|bancoReg_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(66));

\FD|BR|saidaA[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~10_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(66) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(66),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[27]~10_combout\);

\FD|BR|saidaA[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~11_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[27]~10_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27~portbdataout\)) # (!\FD|BR|saidaA[27]~10_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(65),
	datad => \FD|BR|saidaA[27]~10_combout\,
	combout => \FD|BR|saidaA[27]~11_combout\);

\FD|REG_P2|data_s[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(101));

\FD|REG_P3|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(68),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(31));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(63));

\FD|BR|bancoReg_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(64));

\FD|BR|saidaA[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~12_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(64) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(64),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[26]~12_combout\);

\FD|BR|saidaA[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~13_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[26]~12_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26~portbdataout\)) # (!\FD|BR|saidaA[26]~12_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(63),
	datad => \FD|BR|saidaA[26]~12_combout\,
	combout => \FD|BR|saidaA[26]~13_combout\);

\FD|REG_P2|data_s[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(100));

\FD|REG_P3|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(67),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(30));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(61));

\FD|BR|bancoReg_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(62));

\FD|BR|saidaA[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~14_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(62) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(62),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[25]~14_combout\);

\FD|BR|saidaA[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~15_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[25]~14_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25~portbdataout\)) # (!\FD|BR|saidaA[25]~14_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(61))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(61),
	datad => \FD|BR|saidaA[25]~14_combout\,
	combout => \FD|BR|saidaA[25]~15_combout\);

\FD|REG_P2|data_s[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(99));

\FD|REG_P3|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(66),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(29));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(59));

\FD|BR|bancoReg_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(60));

\FD|BR|saidaA[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~16_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(60) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(60),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[24]~16_combout\);

\FD|BR|saidaA[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~17_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[24]~16_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24~portbdataout\)) # (!\FD|BR|saidaA[24]~16_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(59))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(59),
	datad => \FD|BR|saidaA[24]~16_combout\,
	combout => \FD|BR|saidaA[24]~17_combout\);

\FD|REG_P2|data_s[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(98));

\FD|REG_P3|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(65),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(28));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(57));

\FD|BR|bancoReg_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(58));

\FD|BR|saidaA[23]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~18_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(58) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(58),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[23]~18_combout\);

\FD|BR|saidaA[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~19_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[23]~18_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23~portbdataout\)) # (!\FD|BR|saidaA[23]~18_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(57))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(57),
	datad => \FD|BR|saidaA[23]~18_combout\,
	combout => \FD|BR|saidaA[23]~19_combout\);

\FD|REG_P2|data_s[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(97));

\FD|REG_P3|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(64),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(27));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(55));

\FD|BR|bancoReg_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(56));

\FD|BR|saidaA[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~20_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(56) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(56),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[22]~20_combout\);

\FD|BR|saidaA[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~21_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[22]~20_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22~portbdataout\)) # (!\FD|BR|saidaA[22]~20_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(55),
	datad => \FD|BR|saidaA[22]~20_combout\,
	combout => \FD|BR|saidaA[22]~21_combout\);

\FD|REG_P2|data_s[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(96));

\FD|REG_P3|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(26));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(53));

\FD|BR|bancoReg_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(54));

\FD|BR|saidaA[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~22_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(54) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(54),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[21]~22_combout\);

\FD|BR|saidaA[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~23_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[21]~22_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21~portbdataout\)) # (!\FD|BR|saidaA[21]~22_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(53),
	datad => \FD|BR|saidaA[21]~22_combout\,
	combout => \FD|BR|saidaA[21]~23_combout\);

\FD|REG_P2|data_s[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[21]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(95));

\FD|REG_P3|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(25));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(51));

\FD|BR|bancoReg_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(52));

\FD|BR|saidaA[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~24_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(52) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(52),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[20]~24_combout\);

\FD|BR|saidaA[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~25_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[20]~24_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20~portbdataout\)) # (!\FD|BR|saidaA[20]~24_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(51),
	datad => \FD|BR|saidaA[20]~24_combout\,
	combout => \FD|BR|saidaA[20]~25_combout\);

\FD|REG_P2|data_s[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(94));

\FD|REG_P3|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(24));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(49));

\FD|BR|bancoReg_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(50));

\FD|BR|saidaA[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~26_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(50) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(50),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[19]~26_combout\);

\FD|BR|saidaA[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~27_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[19]~26_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19~portbdataout\)) # (!\FD|BR|saidaA[19]~26_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(49),
	datad => \FD|BR|saidaA[19]~26_combout\,
	combout => \FD|BR|saidaA[19]~27_combout\);

\FD|REG_P2|data_s[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(93));

\FD|REG_P3|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(23));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(47));

\FD|BR|bancoReg_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(48));

\FD|BR|saidaA[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~28_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(48) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(48),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[18]~28_combout\);

\FD|BR|saidaA[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~29_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[18]~28_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18~portbdataout\)) # (!\FD|BR|saidaA[18]~28_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(47),
	datad => \FD|BR|saidaA[18]~28_combout\,
	combout => \FD|BR|saidaA[18]~29_combout\);

\FD|REG_P2|data_s[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[18]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(92));

\FD|REG_P3|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(22));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(45));

\FD|BR|bancoReg_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(46));

\FD|BR|saidaA[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~30_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(46) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(46),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[17]~30_combout\);

\FD|BR|saidaA[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~31_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[17]~30_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17~portbdataout\)) # (!\FD|BR|saidaA[17]~30_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(45),
	datad => \FD|BR|saidaA[17]~30_combout\,
	combout => \FD|BR|saidaA[17]~31_combout\);

\FD|REG_P2|data_s[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[17]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(91));

\FD|REG_P3|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(21));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(43));

\FD|BR|bancoReg_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(44));

\FD|BR|saidaA[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~32_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(44) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(44),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[16]~32_combout\);

\FD|BR|saidaA[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~33_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[16]~32_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16~portbdataout\)) # (!\FD|BR|saidaA[16]~32_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(43),
	datad => \FD|BR|saidaA[16]~32_combout\,
	combout => \FD|BR|saidaA[16]~33_combout\);

\FD|REG_P2|data_s[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(90));

\FD|REG_P3|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(20));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(41));

\FD|BR|bancoReg_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(42));

\FD|BR|saidaA[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~34_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(42) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(42),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[15]~34_combout\);

\FD|BR|saidaA[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~35_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[15]~34_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15~portbdataout\)) # (!\FD|BR|saidaA[15]~34_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(41),
	datad => \FD|BR|saidaA[15]~34_combout\,
	combout => \FD|BR|saidaA[15]~35_combout\);

\FD|REG_P2|data_s[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(89));

\FD|REG_P3|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(19));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(39));

\FD|BR|bancoReg_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(40));

\FD|BR|saidaA[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~36_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(40) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(40),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[14]~36_combout\);

\FD|BR|saidaA[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~37_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[14]~36_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14~portbdataout\)) # (!\FD|BR|saidaA[14]~36_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(39),
	datad => \FD|BR|saidaA[14]~36_combout\,
	combout => \FD|BR|saidaA[14]~37_combout\);

\FD|REG_P2|data_s[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(88));

\FD|REG_P3|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(18));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(37));

\FD|BR|bancoReg_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(38));

\FD|BR|saidaA[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~38_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(38) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(38),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[13]~38_combout\);

\FD|BR|saidaA[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~39_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[13]~38_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13~portbdataout\)) # (!\FD|BR|saidaA[13]~38_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(37),
	datad => \FD|BR|saidaA[13]~38_combout\,
	combout => \FD|BR|saidaA[13]~39_combout\);

\FD|REG_P2|data_s[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(87));

\FD|REG_P3|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(17));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(35));

\FD|BR|bancoReg_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(36));

\FD|BR|saidaA[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(36) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(36),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[12]~40_combout\);

\FD|BR|saidaA[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~41_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[12]~40_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12~portbdataout\)) # (!\FD|BR|saidaA[12]~40_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(35),
	datad => \FD|BR|saidaA[12]~40_combout\,
	combout => \FD|BR|saidaA[12]~41_combout\);

\FD|REG_P2|data_s[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(86));

\FD|REG_P3|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(16));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(33));

\FD|BR|bancoReg_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(34));

\FD|BR|saidaA[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~42_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(34) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(34),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[11]~42_combout\);

\FD|BR|saidaA[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~43_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[11]~42_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11~portbdataout\)) # (!\FD|BR|saidaA[11]~42_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(33),
	datad => \FD|BR|saidaA[11]~42_combout\,
	combout => \FD|BR|saidaA[11]~43_combout\);

\FD|REG_P2|data_s[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(85));

\FD|REG_P3|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(15));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(31));

\FD|BR|bancoReg_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(32));

\FD|BR|saidaA[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~44_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(32) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(32),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[10]~44_combout\);

\FD|BR|saidaA[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~45_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[10]~44_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10~portbdataout\)) # (!\FD|BR|saidaA[10]~44_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(31),
	datad => \FD|BR|saidaA[10]~44_combout\,
	combout => \FD|BR|saidaA[10]~45_combout\);

\FD|REG_P2|data_s[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(84));

\FD|REG_P3|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(14));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(29));

\FD|BR|bancoReg_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(30));

\FD|BR|saidaA[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~46_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(30) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(30),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[9]~46_combout\);

\FD|BR|saidaA[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~47_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[9]~46_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9~portbdataout\)) # (!\FD|BR|saidaA[9]~46_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(29),
	datad => \FD|BR|saidaA[9]~46_combout\,
	combout => \FD|BR|saidaA[9]~47_combout\);

\FD|REG_P2|data_s[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(83));

\FD|REG_P3|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(13));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
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
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_P3|data_s\(102),
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(27));

\FD|BR|bancoReg_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(28));

\FD|BR|saidaA[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~48_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(28) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(28),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[8]~48_combout\);

\FD|BR|saidaA[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~49_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[8]~48_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8~portbdataout\)) # (!\FD|BR|saidaA[8]~48_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(27),
	datad => \FD|BR|saidaA[8]~48_combout\,
	combout => \FD|BR|saidaA[8]~49_combout\);

\FD|REG_P2|data_s[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[8]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(82));

\FD|ULA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~16_combout\ = ((\FD|mux_Banco_Ula|saida[8]~24_combout\ $ (\FD|REG_P2|data_s\(82) $ (\FD|ULA|Add1~15\)))) # (GND)
-- \FD|ULA|Add1~17\ = CARRY((\FD|mux_Banco_Ula|saida[8]~24_combout\ & (\FD|REG_P2|data_s\(82) & !\FD|ULA|Add1~15\)) # (!\FD|mux_Banco_Ula|saida[8]~24_combout\ & ((\FD|REG_P2|data_s\(82)) # (!\FD|ULA|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datab => \FD|REG_P2|data_s\(82),
	datad => VCC,
	cin => \FD|ULA|Add1~15\,
	combout => \FD|ULA|Add1~16_combout\,
	cout => \FD|ULA|Add1~17\);

\FD|ULA|soma[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[8]~16_combout\ = ((\FD|mux_Banco_Ula|saida[8]~24_combout\ $ (\FD|REG_P2|data_s\(82) $ (!\FD|ULA|soma[7]~15\)))) # (GND)
-- \FD|ULA|soma[8]~17\ = CARRY((\FD|mux_Banco_Ula|saida[8]~24_combout\ & ((\FD|REG_P2|data_s\(82)) # (!\FD|ULA|soma[7]~15\))) # (!\FD|mux_Banco_Ula|saida[8]~24_combout\ & (\FD|REG_P2|data_s\(82) & !\FD|ULA|soma[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datab => \FD|REG_P2|data_s\(82),
	datad => VCC,
	cin => \FD|ULA|soma[7]~15\,
	combout => \FD|ULA|soma[8]~16_combout\,
	cout => \FD|ULA|soma[8]~17\);

\FD|ULA|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~4_combout\ = (\FD|ULA|soma[8]~16_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[8]~16_combout\,
	combout => \FD|ULA|Mux23~4_combout\);

\FD|ULA|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~16_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux23~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~16_combout\,
	datab => \FD|ULA|Mux23~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux23~2_combout\);

\FD|ULA|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~3_combout\ = (\FD|ULA|Mux23~2_combout\ & (((\FD|mux_Banco_Ula|saida[8]~24_combout\ & \FD|REG_P2|data_s\(82))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux23~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[8]~24_combout\) # (\FD|REG_P2|data_s\(82)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datab => \FD|REG_P2|data_s\(82),
	datac => \FD|ULA|Mux23~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux23~3_combout\);

\FD|REG_P3|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux23~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(45));

\FD|REG_P4|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(13));

\FD|mux_Ula_Memoria|saida[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[8]~24_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\,
	datab => \FD|REG_P4|data_s\(13),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[8]~24_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(27));

\FD|BR|bancoReg_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(28));

\FD|BR|saidaB[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~48_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(28) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(28),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[8]~48_combout\);

\FD|BR|saidaB[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~49_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[8]~48_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8~portbdataout\)) # (!\FD|BR|saidaB[8]~48_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(27),
	datac => \FD|BR|saidaB[8]~48_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[8]~49_combout\);

\FD|REG_P2|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[8]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(50));

\FD|mux_Banco_Ula|saida[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[8]~24_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(50),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[8]~24_combout\);

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

\FD|ULA|soma[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[9]~18_combout\ = (\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|REG_P2|data_s\(83) & (\FD|ULA|soma[8]~17\ & VCC)) # (!\FD|REG_P2|data_s\(83) & (!\FD|ULA|soma[8]~17\)))) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|REG_P2|data_s\(83) & 
-- (!\FD|ULA|soma[8]~17\)) # (!\FD|REG_P2|data_s\(83) & ((\FD|ULA|soma[8]~17\) # (GND)))))
-- \FD|ULA|soma[9]~19\ = CARRY((\FD|mux_Banco_Ula|saida[9]~23_combout\ & (!\FD|REG_P2|data_s\(83) & !\FD|ULA|soma[8]~17\)) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((!\FD|ULA|soma[8]~17\) # (!\FD|REG_P2|data_s\(83)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datab => \FD|REG_P2|data_s\(83),
	datad => VCC,
	cin => \FD|ULA|soma[8]~17\,
	combout => \FD|ULA|soma[9]~18_combout\,
	cout => \FD|ULA|soma[9]~19\);

\FD|ULA|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~4_combout\ = (\FD|ULA|soma[9]~18_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[9]~18_combout\,
	combout => \FD|ULA|Mux22~4_combout\);

\FD|ULA|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~18_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux22~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~18_combout\,
	datab => \FD|ULA|Mux22~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux22~2_combout\);

\FD|ULA|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~3_combout\ = (\FD|ULA|Mux22~2_combout\ & (((\FD|mux_Banco_Ula|saida[9]~23_combout\ & \FD|REG_P2|data_s\(83))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux22~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[9]~23_combout\) # (\FD|REG_P2|data_s\(83)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datab => \FD|REG_P2|data_s\(83),
	datac => \FD|ULA|Mux22~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux22~3_combout\);

\FD|REG_P3|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(46));

\FD|REG_P4|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(14));

\FD|mux_Ula_Memoria|saida[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[9]~23_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9~portadataout\,
	datab => \FD|REG_P4|data_s\(14),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[9]~23_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(29));

\FD|BR|bancoReg_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(30));

\FD|BR|saidaB[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~46_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(30) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(30),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[9]~46_combout\);

\FD|BR|saidaB[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~47_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[9]~46_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9~portbdataout\)) # (!\FD|BR|saidaB[9]~46_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(29),
	datac => \FD|BR|saidaB[9]~46_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[9]~47_combout\);

\FD|REG_P2|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(51));

\FD|mux_Banco_Ula|saida[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[9]~23_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(51),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[9]~23_combout\);

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

\FD|ULA|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~6_combout\ = (\FD|ULA|soma[10]~20_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[10]~20_combout\,
	combout => \FD|ULA|Mux21~6_combout\);

\FD|ULA|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~4_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~20_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux21~6_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~20_combout\,
	datab => \FD|ULA|Mux21~6_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux21~4_combout\);

\FD|ULA|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~5_combout\ = (\FD|ULA|Mux21~4_combout\ & (((\FD|mux_Banco_Ula|saida[10]~22_combout\ & \FD|REG_P2|data_s\(84))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux21~4_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[10]~22_combout\) # (\FD|REG_P2|data_s\(84)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datab => \FD|REG_P2|data_s\(84),
	datac => \FD|ULA|Mux21~4_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux21~5_combout\);

\FD|REG_P3|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux21~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(47));

\FD|REG_P4|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(15));

\FD|mux_Ula_Memoria|saida[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[10]~22_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10~portadataout\,
	datab => \FD|REG_P4|data_s\(15),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[10]~22_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(31));

\FD|BR|bancoReg_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(32));

\FD|BR|saidaB[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~44_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(32) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(32),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[10]~44_combout\);

\FD|BR|saidaB[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~45_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[10]~44_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10~portbdataout\)) # (!\FD|BR|saidaB[10]~44_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(31),
	datac => \FD|BR|saidaB[10]~44_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[10]~45_combout\);

\FD|REG_P2|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(52));

\FD|mux_Banco_Ula|saida[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[10]~22_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(52),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[10]~22_combout\);

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

\FD|ULA|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~4_combout\ = (\FD|ULA|soma[11]~22_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[11]~22_combout\,
	combout => \FD|ULA|Mux20~4_combout\);

\FD|ULA|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~22_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux20~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~22_combout\,
	datab => \FD|ULA|Mux20~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux20~2_combout\);

\FD|ULA|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~3_combout\ = (\FD|ULA|Mux20~2_combout\ & (((\FD|mux_Banco_Ula|saida[11]~21_combout\ & \FD|REG_P2|data_s\(85))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux20~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[11]~21_combout\) # (\FD|REG_P2|data_s\(85)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datab => \FD|REG_P2|data_s\(85),
	datac => \FD|ULA|Mux20~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux20~3_combout\);

\FD|REG_P3|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(48));

\FD|REG_P4|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(16));

\FD|mux_Ula_Memoria|saida[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[11]~21_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11~portadataout\,
	datab => \FD|REG_P4|data_s\(16),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[11]~21_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(33));

\FD|BR|bancoReg_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(34));

\FD|BR|saidaB[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~42_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(34) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(34),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[11]~42_combout\);

\FD|BR|saidaB[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~43_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[11]~42_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11~portbdataout\)) # (!\FD|BR|saidaB[11]~42_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(33),
	datac => \FD|BR|saidaB[11]~42_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[11]~43_combout\);

\FD|REG_P2|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(53));

\FD|mux_Banco_Ula|saida[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[11]~21_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(53),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[11]~21_combout\);

\FD|ULA|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~20_combout\ $ (\FD|REG_P2|data_s\(86) $ (\FD|ULA|Add1~23\)))) # (GND)
-- \FD|ULA|Add1~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~20_combout\ & (\FD|REG_P2|data_s\(86) & !\FD|ULA|Add1~23\)) # (!\FD|mux_Banco_Ula|saida[12]~20_combout\ & ((\FD|REG_P2|data_s\(86)) # (!\FD|ULA|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datab => \FD|REG_P2|data_s\(86),
	datad => VCC,
	cin => \FD|ULA|Add1~23\,
	combout => \FD|ULA|Add1~24_combout\,
	cout => \FD|ULA|Add1~25\);

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

\FD|ULA|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~4_combout\ = (\FD|ULA|soma[12]~24_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[12]~24_combout\,
	combout => \FD|ULA|Mux19~4_combout\);

\FD|ULA|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~24_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux19~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~24_combout\,
	datab => \FD|ULA|Mux19~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux19~2_combout\);

\FD|ULA|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~3_combout\ = (\FD|ULA|Mux19~2_combout\ & (((\FD|mux_Banco_Ula|saida[12]~20_combout\ & \FD|REG_P2|data_s\(86))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux19~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[12]~20_combout\) # (\FD|REG_P2|data_s\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datab => \FD|REG_P2|data_s\(86),
	datac => \FD|ULA|Mux19~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux19~3_combout\);

\FD|REG_P3|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(49));

\FD|REG_P4|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(17));

\FD|mux_Ula_Memoria|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[12]~20_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12~portadataout\,
	datab => \FD|REG_P4|data_s\(17),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[12]~20_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(35));

\FD|BR|bancoReg_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(36));

\FD|BR|saidaB[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~40_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(36) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(36),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[12]~40_combout\);

\FD|BR|saidaB[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~41_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[12]~40_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12~portbdataout\)) # (!\FD|BR|saidaB[12]~40_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(35),
	datac => \FD|BR|saidaB[12]~40_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[12]~41_combout\);

\FD|REG_P2|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(54));

\FD|mux_Banco_Ula|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[12]~20_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(54),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[12]~20_combout\);

\FD|ULA|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~26_combout\ = (\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|REG_P2|data_s\(87) & (!\FD|ULA|Add1~25\)) # (!\FD|REG_P2|data_s\(87) & ((\FD|ULA|Add1~25\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|REG_P2|data_s\(87) & 
-- (\FD|ULA|Add1~25\ & VCC)) # (!\FD|REG_P2|data_s\(87) & (!\FD|ULA|Add1~25\))))
-- \FD|ULA|Add1~27\ = CARRY((\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((!\FD|ULA|Add1~25\) # (!\FD|REG_P2|data_s\(87)))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|REG_P2|data_s\(87) & !\FD|ULA|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datab => \FD|REG_P2|data_s\(87),
	datad => VCC,
	cin => \FD|ULA|Add1~25\,
	combout => \FD|ULA|Add1~26_combout\,
	cout => \FD|ULA|Add1~27\);

\FD|ULA|soma[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[13]~26_combout\ = (\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|REG_P2|data_s\(87) & (\FD|ULA|soma[12]~25\ & VCC)) # (!\FD|REG_P2|data_s\(87) & (!\FD|ULA|soma[12]~25\)))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & 
-- ((\FD|REG_P2|data_s\(87) & (!\FD|ULA|soma[12]~25\)) # (!\FD|REG_P2|data_s\(87) & ((\FD|ULA|soma[12]~25\) # (GND)))))
-- \FD|ULA|soma[13]~27\ = CARRY((\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|REG_P2|data_s\(87) & !\FD|ULA|soma[12]~25\)) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((!\FD|ULA|soma[12]~25\) # (!\FD|REG_P2|data_s\(87)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datab => \FD|REG_P2|data_s\(87),
	datad => VCC,
	cin => \FD|ULA|soma[12]~25\,
	combout => \FD|ULA|soma[13]~26_combout\,
	cout => \FD|ULA|soma[13]~27\);

\FD|ULA|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~4_combout\ = (\FD|ULA|soma[13]~26_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[13]~26_combout\,
	combout => \FD|ULA|Mux18~4_combout\);

\FD|ULA|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~26_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux18~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~26_combout\,
	datab => \FD|ULA|Mux18~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux18~2_combout\);

\FD|ULA|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~3_combout\ = (\FD|ULA|Mux18~2_combout\ & (((\FD|mux_Banco_Ula|saida[13]~19_combout\ & \FD|REG_P2|data_s\(87))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux18~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[13]~19_combout\) # (\FD|REG_P2|data_s\(87)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datab => \FD|REG_P2|data_s\(87),
	datac => \FD|ULA|Mux18~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux18~3_combout\);

\FD|REG_P3|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(50));

\FD|REG_P4|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(18));

\FD|mux_Ula_Memoria|saida[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[13]~19_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13~portadataout\,
	datab => \FD|REG_P4|data_s\(18),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[13]~19_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(37));

\FD|BR|bancoReg_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(38));

\FD|BR|saidaB[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(38) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(38),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[13]~38_combout\);

\FD|BR|saidaB[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~39_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[13]~38_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13~portbdataout\)) # (!\FD|BR|saidaB[13]~38_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(37),
	datac => \FD|BR|saidaB[13]~38_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[13]~39_combout\);

\FD|REG_P2|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(55));

\FD|mux_Banco_Ula|saida[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[13]~19_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(55),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[13]~19_combout\);

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

\FD|ULA|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~4_combout\ = (\FD|ULA|soma[14]~28_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[14]~28_combout\,
	combout => \FD|ULA|Mux17~4_combout\);

\FD|ULA|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~28_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux17~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~28_combout\,
	datab => \FD|ULA|Mux17~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux17~2_combout\);

\FD|ULA|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~3_combout\ = (\FD|ULA|Mux17~2_combout\ & (((\FD|mux_Banco_Ula|saida[14]~18_combout\ & \FD|REG_P2|data_s\(88))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux17~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[14]~18_combout\) # (\FD|REG_P2|data_s\(88)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datab => \FD|REG_P2|data_s\(88),
	datac => \FD|ULA|Mux17~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux17~3_combout\);

\FD|REG_P3|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux17~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(51));

\FD|REG_P4|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(19));

\FD|mux_Ula_Memoria|saida[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[14]~18_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datab => \FD|REG_P4|data_s\(19),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[14]~18_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(39));

\FD|BR|bancoReg_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(40));

\FD|BR|saidaB[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~36_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(40) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(40),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[14]~36_combout\);

\FD|BR|saidaB[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~37_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[14]~36_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14~portbdataout\)) # (!\FD|BR|saidaB[14]~36_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(39),
	datac => \FD|BR|saidaB[14]~36_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[14]~37_combout\);

\FD|REG_P2|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(56));

\FD|mux_Banco_Ula|saida[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[14]~18_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(15))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(15),
	datab => \FD|REG_P2|data_s\(56),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[14]~18_combout\);

\FD|ULA|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~30_combout\ = (\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|REG_P2|data_s\(89) & (!\FD|ULA|Add1~29\)) # (!\FD|REG_P2|data_s\(89) & ((\FD|ULA|Add1~29\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|REG_P2|data_s\(89) & 
-- (\FD|ULA|Add1~29\ & VCC)) # (!\FD|REG_P2|data_s\(89) & (!\FD|ULA|Add1~29\))))
-- \FD|ULA|Add1~31\ = CARRY((\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((!\FD|ULA|Add1~29\) # (!\FD|REG_P2|data_s\(89)))) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & (!\FD|REG_P2|data_s\(89) & !\FD|ULA|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datab => \FD|REG_P2|data_s\(89),
	datad => VCC,
	cin => \FD|ULA|Add1~29\,
	combout => \FD|ULA|Add1~30_combout\,
	cout => \FD|ULA|Add1~31\);

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

\FD|ULA|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~4_combout\ = (\FD|ULA|soma[15]~30_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[15]~30_combout\,
	combout => \FD|ULA|Mux16~4_combout\);

\FD|ULA|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~30_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux16~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~30_combout\,
	datab => \FD|ULA|Mux16~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux16~2_combout\);

\FD|ULA|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~3_combout\ = (\FD|ULA|Mux16~2_combout\ & (((\FD|mux_Banco_Ula|saida[15]~17_combout\ & \FD|REG_P2|data_s\(89))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux16~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[15]~17_combout\) # (\FD|REG_P2|data_s\(89)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datab => \FD|REG_P2|data_s\(89),
	datac => \FD|ULA|Mux16~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux16~3_combout\);

\FD|REG_P3|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(52));

\FD|REG_P4|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(20));

\FD|mux_Ula_Memoria|saida[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[15]~17_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15~portadataout\,
	datab => \FD|REG_P4|data_s\(20),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[15]~17_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(41));

\FD|BR|bancoReg_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(42));

\FD|BR|saidaB[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~34_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(42) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(42),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[15]~34_combout\);

\FD|BR|saidaB[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~35_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[15]~34_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15~portbdataout\)) # (!\FD|BR|saidaB[15]~34_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(41),
	datac => \FD|BR|saidaB[15]~34_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[15]~35_combout\);

\FD|REG_P2|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(57));

\FD|mux_Banco_Ula|saida[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[15]~17_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(57),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[15]~17_combout\);

\FD|ULA|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~32_combout\ = ((\FD|mux_Banco_Ula|saida[16]~16_combout\ $ (\FD|REG_P2|data_s\(90) $ (\FD|ULA|Add1~31\)))) # (GND)
-- \FD|ULA|Add1~33\ = CARRY((\FD|mux_Banco_Ula|saida[16]~16_combout\ & (\FD|REG_P2|data_s\(90) & !\FD|ULA|Add1~31\)) # (!\FD|mux_Banco_Ula|saida[16]~16_combout\ & ((\FD|REG_P2|data_s\(90)) # (!\FD|ULA|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datab => \FD|REG_P2|data_s\(90),
	datad => VCC,
	cin => \FD|ULA|Add1~31\,
	combout => \FD|ULA|Add1~32_combout\,
	cout => \FD|ULA|Add1~33\);

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

\FD|ULA|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~4_combout\ = (\FD|ULA|soma[16]~32_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[16]~32_combout\,
	combout => \FD|ULA|Mux15~4_combout\);

\FD|ULA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~32_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux15~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~32_combout\,
	datab => \FD|ULA|Mux15~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux15~2_combout\);

\FD|ULA|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~3_combout\ = (\FD|ULA|Mux15~2_combout\ & (((\FD|mux_Banco_Ula|saida[16]~16_combout\ & \FD|REG_P2|data_s\(90))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux15~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[16]~16_combout\) # (\FD|REG_P2|data_s\(90)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datab => \FD|REG_P2|data_s\(90),
	datac => \FD|ULA|Mux15~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux15~3_combout\);

\FD|REG_P3|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(53));

\FD|REG_P4|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(21));

\FD|mux_Ula_Memoria|saida[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[16]~16_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	datab => \FD|REG_P4|data_s\(21),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[16]~16_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(43));

\FD|BR|bancoReg_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(44));

\FD|BR|saidaB[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~32_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(44) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(44),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[16]~32_combout\);

\FD|BR|saidaB[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~33_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[16]~32_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16~portbdataout\)) # (!\FD|BR|saidaB[16]~32_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(43),
	datac => \FD|BR|saidaB[16]~32_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[16]~33_combout\);

\FD|REG_P2|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(58));

\FD|mux_Banco_Ula|saida[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[16]~16_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(58),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[16]~16_combout\);

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

\FD|ULA|soma[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[17]~34_combout\ = (\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|REG_P2|data_s\(91) & (\FD|ULA|soma[16]~33\ & VCC)) # (!\FD|REG_P2|data_s\(91) & (!\FD|ULA|soma[16]~33\)))) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & 
-- ((\FD|REG_P2|data_s\(91) & (!\FD|ULA|soma[16]~33\)) # (!\FD|REG_P2|data_s\(91) & ((\FD|ULA|soma[16]~33\) # (GND)))))
-- \FD|ULA|soma[17]~35\ = CARRY((\FD|mux_Banco_Ula|saida[17]~15_combout\ & (!\FD|REG_P2|data_s\(91) & !\FD|ULA|soma[16]~33\)) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((!\FD|ULA|soma[16]~33\) # (!\FD|REG_P2|data_s\(91)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datab => \FD|REG_P2|data_s\(91),
	datad => VCC,
	cin => \FD|ULA|soma[16]~33\,
	combout => \FD|ULA|soma[17]~34_combout\,
	cout => \FD|ULA|soma[17]~35\);

\FD|ULA|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~4_combout\ = (\FD|ULA|soma[17]~34_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[17]~34_combout\,
	combout => \FD|ULA|Mux14~4_combout\);

\FD|ULA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~34_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux14~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~34_combout\,
	datab => \FD|ULA|Mux14~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux14~2_combout\);

\FD|ULA|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~3_combout\ = (\FD|ULA|Mux14~2_combout\ & (((\FD|mux_Banco_Ula|saida[17]~15_combout\ & \FD|REG_P2|data_s\(91))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux14~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[17]~15_combout\) # (\FD|REG_P2|data_s\(91)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datab => \FD|REG_P2|data_s\(91),
	datac => \FD|ULA|Mux14~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux14~3_combout\);

\FD|REG_P3|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(54));

\FD|REG_P4|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(22));

\FD|mux_Ula_Memoria|saida[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[17]~15_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17~portadataout\,
	datab => \FD|REG_P4|data_s\(22),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[17]~15_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(45));

\FD|BR|bancoReg_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(46));

\FD|BR|saidaB[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~30_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(46) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(46),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[17]~30_combout\);

\FD|BR|saidaB[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~31_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[17]~30_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17~portbdataout\)) # (!\FD|BR|saidaB[17]~30_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(45),
	datac => \FD|BR|saidaB[17]~30_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[17]~31_combout\);

\FD|REG_P2|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[17]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(59));

\FD|mux_Banco_Ula|saida[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[17]~15_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(59),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[17]~15_combout\);

\FD|ULA|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~36_combout\ = ((\FD|mux_Banco_Ula|saida[18]~14_combout\ $ (\FD|REG_P2|data_s\(92) $ (\FD|ULA|Add1~35\)))) # (GND)
-- \FD|ULA|Add1~37\ = CARRY((\FD|mux_Banco_Ula|saida[18]~14_combout\ & (\FD|REG_P2|data_s\(92) & !\FD|ULA|Add1~35\)) # (!\FD|mux_Banco_Ula|saida[18]~14_combout\ & ((\FD|REG_P2|data_s\(92)) # (!\FD|ULA|Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datab => \FD|REG_P2|data_s\(92),
	datad => VCC,
	cin => \FD|ULA|Add1~35\,
	combout => \FD|ULA|Add1~36_combout\,
	cout => \FD|ULA|Add1~37\);

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

\FD|ULA|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~4_combout\ = (\FD|ULA|soma[18]~36_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[18]~36_combout\,
	combout => \FD|ULA|Mux13~4_combout\);

\FD|ULA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~36_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux13~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~36_combout\,
	datab => \FD|ULA|Mux13~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux13~2_combout\);

\FD|ULA|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~3_combout\ = (\FD|ULA|Mux13~2_combout\ & (((\FD|mux_Banco_Ula|saida[18]~14_combout\ & \FD|REG_P2|data_s\(92))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux13~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[18]~14_combout\) # (\FD|REG_P2|data_s\(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datab => \FD|REG_P2|data_s\(92),
	datac => \FD|ULA|Mux13~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux13~3_combout\);

\FD|REG_P3|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux13~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(55));

\FD|REG_P4|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(23));

\FD|mux_Ula_Memoria|saida[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[18]~14_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datab => \FD|REG_P4|data_s\(23),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[18]~14_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(47));

\FD|BR|bancoReg_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(48));

\FD|BR|saidaB[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~28_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(48) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(48),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[18]~28_combout\);

\FD|BR|saidaB[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~29_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[18]~28_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18~portbdataout\)) # (!\FD|BR|saidaB[18]~28_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(47),
	datac => \FD|BR|saidaB[18]~28_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[18]~29_combout\);

\FD|REG_P2|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[18]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(60));

\FD|mux_Banco_Ula|saida[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[18]~14_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(60),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[18]~14_combout\);

\FD|ULA|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~38_combout\ = (\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|REG_P2|data_s\(93) & (!\FD|ULA|Add1~37\)) # (!\FD|REG_P2|data_s\(93) & ((\FD|ULA|Add1~37\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|REG_P2|data_s\(93) & 
-- (\FD|ULA|Add1~37\ & VCC)) # (!\FD|REG_P2|data_s\(93) & (!\FD|ULA|Add1~37\))))
-- \FD|ULA|Add1~39\ = CARRY((\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((!\FD|ULA|Add1~37\) # (!\FD|REG_P2|data_s\(93)))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|REG_P2|data_s\(93) & !\FD|ULA|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datab => \FD|REG_P2|data_s\(93),
	datad => VCC,
	cin => \FD|ULA|Add1~37\,
	combout => \FD|ULA|Add1~38_combout\,
	cout => \FD|ULA|Add1~39\);

\FD|ULA|soma[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[19]~38_combout\ = (\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|REG_P2|data_s\(93) & (\FD|ULA|soma[18]~37\ & VCC)) # (!\FD|REG_P2|data_s\(93) & (!\FD|ULA|soma[18]~37\)))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & 
-- ((\FD|REG_P2|data_s\(93) & (!\FD|ULA|soma[18]~37\)) # (!\FD|REG_P2|data_s\(93) & ((\FD|ULA|soma[18]~37\) # (GND)))))
-- \FD|ULA|soma[19]~39\ = CARRY((\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|REG_P2|data_s\(93) & !\FD|ULA|soma[18]~37\)) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((!\FD|ULA|soma[18]~37\) # (!\FD|REG_P2|data_s\(93)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datab => \FD|REG_P2|data_s\(93),
	datad => VCC,
	cin => \FD|ULA|soma[18]~37\,
	combout => \FD|ULA|soma[19]~38_combout\,
	cout => \FD|ULA|soma[19]~39\);

\FD|ULA|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~4_combout\ = (\FD|ULA|soma[19]~38_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[19]~38_combout\,
	combout => \FD|ULA|Mux12~4_combout\);

\FD|ULA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~38_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux12~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~38_combout\,
	datab => \FD|ULA|Mux12~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux12~2_combout\);

\FD|ULA|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~3_combout\ = (\FD|ULA|Mux12~2_combout\ & (((\FD|mux_Banco_Ula|saida[19]~13_combout\ & \FD|REG_P2|data_s\(93))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux12~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[19]~13_combout\) # (\FD|REG_P2|data_s\(93)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datab => \FD|REG_P2|data_s\(93),
	datac => \FD|ULA|Mux12~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux12~3_combout\);

\FD|REG_P3|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(56));

\FD|REG_P4|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(24));

\FD|mux_Ula_Memoria|saida[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[19]~13_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19~portadataout\,
	datab => \FD|REG_P4|data_s\(24),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[19]~13_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(49));

\FD|BR|bancoReg_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(50));

\FD|BR|saidaB[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~26_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(50) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(50),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[19]~26_combout\);

\FD|BR|saidaB[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~27_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[19]~26_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19~portbdataout\)) # (!\FD|BR|saidaB[19]~26_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(49),
	datac => \FD|BR|saidaB[19]~26_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[19]~27_combout\);

\FD|REG_P2|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(61));

\FD|mux_Banco_Ula|saida[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[19]~13_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(61),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[19]~13_combout\);

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

\FD|ULA|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~4_combout\ = (\FD|ULA|soma[20]~40_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[20]~40_combout\,
	combout => \FD|ULA|Mux11~4_combout\);

\FD|ULA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~40_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux11~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~40_combout\,
	datab => \FD|ULA|Mux11~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux11~2_combout\);

\FD|ULA|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~3_combout\ = (\FD|ULA|Mux11~2_combout\ & (((\FD|mux_Banco_Ula|saida[20]~12_combout\ & \FD|REG_P2|data_s\(94))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux11~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[20]~12_combout\) # (\FD|REG_P2|data_s\(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datab => \FD|REG_P2|data_s\(94),
	datac => \FD|ULA|Mux11~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux11~3_combout\);

\FD|REG_P3|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(57));

\FD|REG_P4|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(25));

\FD|mux_Ula_Memoria|saida[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[20]~12_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20~portadataout\,
	datab => \FD|REG_P4|data_s\(25),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[20]~12_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(51));

\FD|BR|bancoReg_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(52));

\FD|BR|saidaB[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~24_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(52) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(52),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[20]~24_combout\);

\FD|BR|saidaB[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~25_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[20]~24_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20~portbdataout\)) # (!\FD|BR|saidaB[20]~24_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(51),
	datac => \FD|BR|saidaB[20]~24_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[20]~25_combout\);

\FD|REG_P2|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(62));

\FD|mux_Banco_Ula|saida[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[20]~12_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(62),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[20]~12_combout\);

\FD|ULA|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~42_combout\ = (\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|REG_P2|data_s\(95) & (!\FD|ULA|Add1~41\)) # (!\FD|REG_P2|data_s\(95) & ((\FD|ULA|Add1~41\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|REG_P2|data_s\(95) & 
-- (\FD|ULA|Add1~41\ & VCC)) # (!\FD|REG_P2|data_s\(95) & (!\FD|ULA|Add1~41\))))
-- \FD|ULA|Add1~43\ = CARRY((\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((!\FD|ULA|Add1~41\) # (!\FD|REG_P2|data_s\(95)))) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|REG_P2|data_s\(95) & !\FD|ULA|Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datab => \FD|REG_P2|data_s\(95),
	datad => VCC,
	cin => \FD|ULA|Add1~41\,
	combout => \FD|ULA|Add1~42_combout\,
	cout => \FD|ULA|Add1~43\);

\FD|ULA|soma[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[21]~42_combout\ = (\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|REG_P2|data_s\(95) & (\FD|ULA|soma[20]~41\ & VCC)) # (!\FD|REG_P2|data_s\(95) & (!\FD|ULA|soma[20]~41\)))) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & 
-- ((\FD|REG_P2|data_s\(95) & (!\FD|ULA|soma[20]~41\)) # (!\FD|REG_P2|data_s\(95) & ((\FD|ULA|soma[20]~41\) # (GND)))))
-- \FD|ULA|soma[21]~43\ = CARRY((\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|REG_P2|data_s\(95) & !\FD|ULA|soma[20]~41\)) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((!\FD|ULA|soma[20]~41\) # (!\FD|REG_P2|data_s\(95)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datab => \FD|REG_P2|data_s\(95),
	datad => VCC,
	cin => \FD|ULA|soma[20]~41\,
	combout => \FD|ULA|soma[21]~42_combout\,
	cout => \FD|ULA|soma[21]~43\);

\FD|ULA|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~4_combout\ = (\FD|ULA|soma[21]~42_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[21]~42_combout\,
	combout => \FD|ULA|Mux10~4_combout\);

\FD|ULA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~42_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux10~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~42_combout\,
	datab => \FD|ULA|Mux10~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux10~2_combout\);

\FD|ULA|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~3_combout\ = (\FD|ULA|Mux10~2_combout\ & (((\FD|mux_Banco_Ula|saida[21]~11_combout\ & \FD|REG_P2|data_s\(95))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux10~2_combout\ & (\FD|ULA|Mux31~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[21]~11_combout\) # (\FD|REG_P2|data_s\(95)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datab => \FD|REG_P2|data_s\(95),
	datac => \FD|ULA|Mux10~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux10~3_combout\);

\FD|REG_P3|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(58));

\FD|REG_P4|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(26));

\FD|mux_Ula_Memoria|saida[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[21]~11_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21~portadataout\,
	datab => \FD|REG_P4|data_s\(26),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[21]~11_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(53));

\FD|BR|bancoReg_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(54));

\FD|BR|saidaB[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~22_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(54) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(54),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[21]~22_combout\);

\FD|BR|saidaB[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~23_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[21]~22_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21~portbdataout\)) # (!\FD|BR|saidaB[21]~22_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(53),
	datac => \FD|BR|saidaB[21]~22_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[21]~23_combout\);

\FD|REG_P2|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[21]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(63));

\FD|mux_Banco_Ula|saida[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[21]~11_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(63),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[21]~11_combout\);

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

\FD|ULA|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~4_combout\ = (\FD|ULA|soma[22]~44_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[22]~44_combout\,
	combout => \FD|ULA|Mux9~4_combout\);

\FD|ULA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~44_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux9~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~44_combout\,
	datab => \FD|ULA|Mux9~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux9~2_combout\);

\FD|ULA|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~3_combout\ = (\FD|ULA|Mux9~2_combout\ & (((\FD|mux_Banco_Ula|saida[22]~10_combout\ & \FD|REG_P2|data_s\(96))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux9~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[22]~10_combout\) 
-- # (\FD|REG_P2|data_s\(96)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datab => \FD|REG_P2|data_s\(96),
	datac => \FD|ULA|Mux9~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux9~3_combout\);

\FD|REG_P3|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(59));

\FD|REG_P4|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(27));

\FD|mux_Ula_Memoria|saida[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[22]~10_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22~portadataout\,
	datab => \FD|REG_P4|data_s\(27),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[22]~10_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(55));

\FD|BR|bancoReg_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(56));

\FD|BR|saidaB[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~20_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(56) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(56),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[22]~20_combout\);

\FD|BR|saidaB[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~21_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[22]~20_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22~portbdataout\)) # (!\FD|BR|saidaB[22]~20_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(55),
	datac => \FD|BR|saidaB[22]~20_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[22]~21_combout\);

\FD|REG_P2|data_s[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(64));

\FD|mux_Banco_Ula|saida[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[22]~10_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(64),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[22]~10_combout\);

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

\FD|ULA|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~4_combout\ = (\FD|ULA|soma[23]~46_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[23]~46_combout\,
	combout => \FD|ULA|Mux8~4_combout\);

\FD|ULA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~46_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux8~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~46_combout\,
	datab => \FD|ULA|Mux8~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux8~2_combout\);

\FD|ULA|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~3_combout\ = (\FD|ULA|Mux8~2_combout\ & (((\FD|mux_Banco_Ula|saida[23]~9_combout\ & \FD|REG_P2|data_s\(97))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux8~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[23]~9_combout\) # 
-- (\FD|REG_P2|data_s\(97)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	datab => \FD|REG_P2|data_s\(97),
	datac => \FD|ULA|Mux8~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux8~3_combout\);

\FD|REG_P3|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(60));

\FD|REG_P4|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(28));

\FD|mux_Ula_Memoria|saida[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[23]~9_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23~portadataout\,
	datab => \FD|REG_P4|data_s\(28),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[23]~9_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(57));

\FD|BR|bancoReg_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(58));

\FD|BR|saidaB[23]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~18_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(58) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(58),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[23]~18_combout\);

\FD|BR|saidaB[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~19_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[23]~18_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23~portbdataout\)) # (!\FD|BR|saidaB[23]~18_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(57))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(57),
	datac => \FD|BR|saidaB[23]~18_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[23]~19_combout\);

\FD|REG_P2|data_s[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(65));

\FD|mux_Banco_Ula|saida[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[23]~9_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(65),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[23]~9_combout\);

\FD|ULA|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~48_combout\ = ((\FD|mux_Banco_Ula|saida[24]~8_combout\ $ (\FD|REG_P2|data_s\(98) $ (\FD|ULA|Add1~47\)))) # (GND)
-- \FD|ULA|Add1~49\ = CARRY((\FD|mux_Banco_Ula|saida[24]~8_combout\ & (\FD|REG_P2|data_s\(98) & !\FD|ULA|Add1~47\)) # (!\FD|mux_Banco_Ula|saida[24]~8_combout\ & ((\FD|REG_P2|data_s\(98)) # (!\FD|ULA|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datab => \FD|REG_P2|data_s\(98),
	datad => VCC,
	cin => \FD|ULA|Add1~47\,
	combout => \FD|ULA|Add1~48_combout\,
	cout => \FD|ULA|Add1~49\);

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

\FD|ULA|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~4_combout\ = (\FD|ULA|soma[24]~48_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[24]~48_combout\,
	combout => \FD|ULA|Mux7~4_combout\);

\FD|ULA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~48_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux7~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~48_combout\,
	datab => \FD|ULA|Mux7~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux7~2_combout\);

\FD|ULA|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~3_combout\ = (\FD|ULA|Mux7~2_combout\ & (((\FD|mux_Banco_Ula|saida[24]~8_combout\ & \FD|REG_P2|data_s\(98))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux7~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[24]~8_combout\) # 
-- (\FD|REG_P2|data_s\(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datab => \FD|REG_P2|data_s\(98),
	datac => \FD|ULA|Mux7~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux7~3_combout\);

\FD|REG_P3|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(61));

\FD|REG_P4|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(29));

\FD|mux_Ula_Memoria|saida[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[24]~8_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24~portadataout\,
	datab => \FD|REG_P4|data_s\(29),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[24]~8_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(59));

\FD|BR|bancoReg_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(60));

\FD|BR|saidaB[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~16_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(60) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(60),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[24]~16_combout\);

\FD|BR|saidaB[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~17_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[24]~16_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24~portbdataout\)) # (!\FD|BR|saidaB[24]~16_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(59))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(59),
	datac => \FD|BR|saidaB[24]~16_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[24]~17_combout\);

\FD|REG_P2|data_s[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(66));

\FD|mux_Banco_Ula|saida[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[24]~8_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(66),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[24]~8_combout\);

\FD|ULA|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~50_combout\ = (\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|REG_P2|data_s\(99) & (!\FD|ULA|Add1~49\)) # (!\FD|REG_P2|data_s\(99) & ((\FD|ULA|Add1~49\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|REG_P2|data_s\(99) & 
-- (\FD|ULA|Add1~49\ & VCC)) # (!\FD|REG_P2|data_s\(99) & (!\FD|ULA|Add1~49\))))
-- \FD|ULA|Add1~51\ = CARRY((\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((!\FD|ULA|Add1~49\) # (!\FD|REG_P2|data_s\(99)))) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|REG_P2|data_s\(99) & !\FD|ULA|Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datab => \FD|REG_P2|data_s\(99),
	datad => VCC,
	cin => \FD|ULA|Add1~49\,
	combout => \FD|ULA|Add1~50_combout\,
	cout => \FD|ULA|Add1~51\);

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

\FD|ULA|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~4_combout\ = (\FD|ULA|soma[25]~50_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[25]~50_combout\,
	combout => \FD|ULA|Mux6~4_combout\);

\FD|ULA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~50_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux6~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~50_combout\,
	datab => \FD|ULA|Mux6~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux6~2_combout\);

\FD|ULA|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~3_combout\ = (\FD|ULA|Mux6~2_combout\ & (((\FD|mux_Banco_Ula|saida[25]~7_combout\ & \FD|REG_P2|data_s\(99))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux6~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[25]~7_combout\) # 
-- (\FD|REG_P2|data_s\(99)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datab => \FD|REG_P2|data_s\(99),
	datac => \FD|ULA|Mux6~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux6~3_combout\);

\FD|REG_P3|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(62));

\FD|REG_P4|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(30));

\FD|mux_Ula_Memoria|saida[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[25]~7_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25~portadataout\,
	datab => \FD|REG_P4|data_s\(30),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[25]~7_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(61));

\FD|BR|bancoReg_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(62));

\FD|BR|saidaB[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~14_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(62) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(62),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[25]~14_combout\);

\FD|BR|saidaB[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~15_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[25]~14_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25~portbdataout\)) # (!\FD|BR|saidaB[25]~14_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(61))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(61),
	datac => \FD|BR|saidaB[25]~14_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[25]~15_combout\);

\FD|REG_P2|data_s[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(67));

\FD|mux_Banco_Ula|saida[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[25]~7_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(67),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[25]~7_combout\);

\FD|ULA|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~52_combout\ = ((\FD|mux_Banco_Ula|saida[26]~6_combout\ $ (\FD|REG_P2|data_s\(100) $ (\FD|ULA|Add1~51\)))) # (GND)
-- \FD|ULA|Add1~53\ = CARRY((\FD|mux_Banco_Ula|saida[26]~6_combout\ & (\FD|REG_P2|data_s\(100) & !\FD|ULA|Add1~51\)) # (!\FD|mux_Banco_Ula|saida[26]~6_combout\ & ((\FD|REG_P2|data_s\(100)) # (!\FD|ULA|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datab => \FD|REG_P2|data_s\(100),
	datad => VCC,
	cin => \FD|ULA|Add1~51\,
	combout => \FD|ULA|Add1~52_combout\,
	cout => \FD|ULA|Add1~53\);

\FD|ULA|soma[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[26]~52_combout\ = ((\FD|mux_Banco_Ula|saida[26]~6_combout\ $ (\FD|REG_P2|data_s\(100) $ (!\FD|ULA|soma[25]~51\)))) # (GND)
-- \FD|ULA|soma[26]~53\ = CARRY((\FD|mux_Banco_Ula|saida[26]~6_combout\ & ((\FD|REG_P2|data_s\(100)) # (!\FD|ULA|soma[25]~51\))) # (!\FD|mux_Banco_Ula|saida[26]~6_combout\ & (\FD|REG_P2|data_s\(100) & !\FD|ULA|soma[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datab => \FD|REG_P2|data_s\(100),
	datad => VCC,
	cin => \FD|ULA|soma[25]~51\,
	combout => \FD|ULA|soma[26]~52_combout\,
	cout => \FD|ULA|soma[26]~53\);

\FD|ULA|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~4_combout\ = (\FD|ULA|soma[26]~52_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[26]~52_combout\,
	combout => \FD|ULA|Mux5~4_combout\);

\FD|ULA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~52_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux5~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~52_combout\,
	datab => \FD|ULA|Mux5~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux5~2_combout\);

\FD|ULA|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~3_combout\ = (\FD|ULA|Mux5~2_combout\ & (((\FD|mux_Banco_Ula|saida[26]~6_combout\ & \FD|REG_P2|data_s\(100))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux5~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[26]~6_combout\) 
-- # (\FD|REG_P2|data_s\(100)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datab => \FD|REG_P2|data_s\(100),
	datac => \FD|ULA|Mux5~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux5~3_combout\);

\FD|REG_P3|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(63));

\FD|REG_P4|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(31));

\FD|mux_Ula_Memoria|saida[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[26]~6_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26~portadataout\,
	datab => \FD|REG_P4|data_s\(31),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[26]~6_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(63));

\FD|BR|bancoReg_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(64));

\FD|BR|saidaB[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~12_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(64) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(64),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[26]~12_combout\);

\FD|BR|saidaB[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~13_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[26]~12_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26~portbdataout\)) # (!\FD|BR|saidaB[26]~12_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(63),
	datac => \FD|BR|saidaB[26]~12_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[26]~13_combout\);

\FD|REG_P2|data_s[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(68));

\FD|mux_Banco_Ula|saida[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[26]~6_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(68),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[26]~6_combout\);

\FD|ULA|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~54_combout\ = (\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|REG_P2|data_s\(101) & (!\FD|ULA|Add1~53\)) # (!\FD|REG_P2|data_s\(101) & ((\FD|ULA|Add1~53\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|REG_P2|data_s\(101) & 
-- (\FD|ULA|Add1~53\ & VCC)) # (!\FD|REG_P2|data_s\(101) & (!\FD|ULA|Add1~53\))))
-- \FD|ULA|Add1~55\ = CARRY((\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((!\FD|ULA|Add1~53\) # (!\FD|REG_P2|data_s\(101)))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & (!\FD|REG_P2|data_s\(101) & !\FD|ULA|Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datab => \FD|REG_P2|data_s\(101),
	datad => VCC,
	cin => \FD|ULA|Add1~53\,
	combout => \FD|ULA|Add1~54_combout\,
	cout => \FD|ULA|Add1~55\);

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

\FD|ULA|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~4_combout\ = (\FD|ULA|soma[27]~54_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[27]~54_combout\,
	combout => \FD|ULA|Mux4~4_combout\);

\FD|ULA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~54_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux4~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~54_combout\,
	datab => \FD|ULA|Mux4~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux4~2_combout\);

\FD|ULA|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~3_combout\ = (\FD|ULA|Mux4~2_combout\ & (((\FD|mux_Banco_Ula|saida[27]~5_combout\ & \FD|REG_P2|data_s\(101))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux4~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[27]~5_combout\) 
-- # (\FD|REG_P2|data_s\(101)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datab => \FD|REG_P2|data_s\(101),
	datac => \FD|ULA|Mux4~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux4~3_combout\);

\FD|REG_P3|data_s[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(64));

\FD|REG_P4|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(64),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(32));

\FD|mux_Ula_Memoria|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[27]~5_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27~portadataout\,
	datab => \FD|REG_P4|data_s\(32),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[27]~5_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(65));

\FD|BR|bancoReg_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(66));

\FD|BR|saidaB[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~10_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(66) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(66),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[27]~10_combout\);

\FD|BR|saidaB[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~11_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[27]~10_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27~portbdataout\)) # (!\FD|BR|saidaB[27]~10_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(65),
	datac => \FD|BR|saidaB[27]~10_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[27]~11_combout\);

\FD|REG_P2|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(69));

\FD|mux_Banco_Ula|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[27]~5_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(69))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(69),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[27]~5_combout\);

\FD|ULA|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~56_combout\ = ((\FD|mux_Banco_Ula|saida[28]~4_combout\ $ (\FD|REG_P2|data_s\(102) $ (\FD|ULA|Add1~55\)))) # (GND)
-- \FD|ULA|Add1~57\ = CARRY((\FD|mux_Banco_Ula|saida[28]~4_combout\ & (\FD|REG_P2|data_s\(102) & !\FD|ULA|Add1~55\)) # (!\FD|mux_Banco_Ula|saida[28]~4_combout\ & ((\FD|REG_P2|data_s\(102)) # (!\FD|ULA|Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datab => \FD|REG_P2|data_s\(102),
	datad => VCC,
	cin => \FD|ULA|Add1~55\,
	combout => \FD|ULA|Add1~56_combout\,
	cout => \FD|ULA|Add1~57\);

\FD|ULA|soma[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[28]~56_combout\ = ((\FD|mux_Banco_Ula|saida[28]~4_combout\ $ (\FD|REG_P2|data_s\(102) $ (!\FD|ULA|soma[27]~55\)))) # (GND)
-- \FD|ULA|soma[28]~57\ = CARRY((\FD|mux_Banco_Ula|saida[28]~4_combout\ & ((\FD|REG_P2|data_s\(102)) # (!\FD|ULA|soma[27]~55\))) # (!\FD|mux_Banco_Ula|saida[28]~4_combout\ & (\FD|REG_P2|data_s\(102) & !\FD|ULA|soma[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datab => \FD|REG_P2|data_s\(102),
	datad => VCC,
	cin => \FD|ULA|soma[27]~55\,
	combout => \FD|ULA|soma[28]~56_combout\,
	cout => \FD|ULA|soma[28]~57\);

\FD|ULA|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~4_combout\ = (\FD|ULA|soma[28]~56_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[28]~56_combout\,
	combout => \FD|ULA|Mux3~4_combout\);

\FD|ULA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~56_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux3~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~56_combout\,
	datab => \FD|ULA|Mux3~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux3~2_combout\);

\FD|ULA|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~3_combout\ = (\FD|ULA|Mux3~2_combout\ & (((\FD|mux_Banco_Ula|saida[28]~4_combout\ & \FD|REG_P2|data_s\(102))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux3~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[28]~4_combout\) 
-- # (\FD|REG_P2|data_s\(102)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datab => \FD|REG_P2|data_s\(102),
	datac => \FD|ULA|Mux3~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux3~3_combout\);

\FD|REG_P3|data_s[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(65));

\FD|REG_P4|data_s[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(65),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(33));

\FD|mux_Ula_Memoria|saida[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[28]~4_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28~portadataout\,
	datab => \FD|REG_P4|data_s\(33),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[28]~4_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(67));

\FD|BR|bancoReg_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(68));

\FD|BR|saidaB[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~8_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(68) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(68),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[28]~8_combout\);

\FD|BR|saidaB[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~9_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[28]~8_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28~portbdataout\)) # (!\FD|BR|saidaB[28]~8_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(67))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(67),
	datac => \FD|BR|saidaB[28]~8_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[28]~9_combout\);

\FD|REG_P2|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(70));

\FD|mux_Banco_Ula|saida[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[28]~4_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(70),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[28]~4_combout\);

\FD|ULA|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~58_combout\ = (\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|REG_P2|data_s\(103) & (!\FD|ULA|Add1~57\)) # (!\FD|REG_P2|data_s\(103) & ((\FD|ULA|Add1~57\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|REG_P2|data_s\(103) & 
-- (\FD|ULA|Add1~57\ & VCC)) # (!\FD|REG_P2|data_s\(103) & (!\FD|ULA|Add1~57\))))
-- \FD|ULA|Add1~59\ = CARRY((\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((!\FD|ULA|Add1~57\) # (!\FD|REG_P2|data_s\(103)))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|REG_P2|data_s\(103) & !\FD|ULA|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datab => \FD|REG_P2|data_s\(103),
	datad => VCC,
	cin => \FD|ULA|Add1~57\,
	combout => \FD|ULA|Add1~58_combout\,
	cout => \FD|ULA|Add1~59\);

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

\FD|ULA|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~4_combout\ = (\FD|ULA|soma[29]~58_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[29]~58_combout\,
	combout => \FD|ULA|Mux2~4_combout\);

\FD|ULA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~58_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux2~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~58_combout\,
	datab => \FD|ULA|Mux2~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux2~2_combout\);

\FD|ULA|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~3_combout\ = (\FD|ULA|Mux2~2_combout\ & (((\FD|mux_Banco_Ula|saida[29]~3_combout\ & \FD|REG_P2|data_s\(103))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux2~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[29]~3_combout\) 
-- # (\FD|REG_P2|data_s\(103)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datab => \FD|REG_P2|data_s\(103),
	datac => \FD|ULA|Mux2~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux2~3_combout\);

\FD|REG_P3|data_s[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(66));

\FD|REG_P4|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(66),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(34));

\FD|mux_Ula_Memoria|saida[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[29]~3_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29~portadataout\,
	datab => \FD|REG_P4|data_s\(34),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[29]~3_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(69));

\FD|BR|bancoReg_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(70));

\FD|BR|saidaB[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~6_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(70) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(70),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[29]~6_combout\);

\FD|BR|saidaB[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~7_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[29]~6_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29~portbdataout\)) # (!\FD|BR|saidaB[29]~6_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(69),
	datac => \FD|BR|saidaB[29]~6_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[29]~7_combout\);

\FD|REG_P2|data_s[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(71));

\FD|mux_Banco_Ula|saida[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[29]~3_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(71),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[29]~3_combout\);

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

\FD|ULA|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~4_combout\ = (\FD|ULA|soma[30]~60_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[30]~60_combout\,
	combout => \FD|ULA|Mux1~4_combout\);

\FD|ULA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~60_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux1~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~60_combout\,
	datab => \FD|ULA|Mux1~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux1~2_combout\);

\FD|ULA|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~3_combout\ = (\FD|ULA|Mux1~2_combout\ & (((\FD|mux_Banco_Ula|saida[30]~2_combout\ & \FD|REG_P2|data_s\(104))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux1~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[30]~2_combout\) 
-- # (\FD|REG_P2|data_s\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datab => \FD|REG_P2|data_s\(104),
	datac => \FD|ULA|Mux1~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux1~3_combout\);

\FD|REG_P3|data_s[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(67));

\FD|REG_P4|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(67),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(35));

\FD|mux_Ula_Memoria|saida[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[30]~2_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30~portadataout\,
	datab => \FD|REG_P4|data_s\(35),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[30]~2_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(71));

\FD|BR|bancoReg_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(72));

\FD|BR|saidaB[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~4_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(72) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(72),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[30]~4_combout\);

\FD|BR|saidaB[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~5_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[30]~4_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30~portbdataout\)) # (!\FD|BR|saidaB[30]~4_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(71),
	datac => \FD|BR|saidaB[30]~4_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[30]~5_combout\);

\FD|REG_P2|data_s[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(72));

\FD|mux_Banco_Ula|saida[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[30]~2_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(72),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[30]~2_combout\);

\FD|ULA|soma[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[31]~62_combout\ = \FD|mux_Banco_Ula|saida[31]~1_combout\ $ (\FD|REG_P2|data_s\(105) $ (\FD|ULA|soma[30]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|REG_P2|data_s\(105),
	cin => \FD|ULA|soma[30]~61\,
	combout => \FD|ULA|soma[31]~62_combout\);

\FD|ULA|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~4_combout\ = (\FD|ULA|soma[31]~62_combout\ & (((\FD|REG_P2|data_s\(140)) # (!\FD|UCULA|ALUctr[0]~1_combout\)) # (!\FD|UCULA|ALUctr[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|REG_P2|data_s\(140),
	datad => \FD|ULA|soma[31]~62_combout\,
	combout => \FD|ULA|Mux0~4_combout\);

\FD|ULA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~62_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux0~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~62_combout\,
	datab => \FD|ULA|Mux0~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux0~2_combout\);

\FD|ULA|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~3_combout\ = (\FD|ULA|Mux0~2_combout\ & (((\FD|mux_Banco_Ula|saida[31]~1_combout\ & \FD|REG_P2|data_s\(105))) # (!\FD|ULA|Mux31~2_combout\))) # (!\FD|ULA|Mux0~2_combout\ & (\FD|ULA|Mux31~2_combout\ & ((\FD|mux_Banco_Ula|saida[31]~1_combout\) 
-- # (\FD|REG_P2|data_s\(105)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|REG_P2|data_s\(105),
	datac => \FD|ULA|Mux0~2_combout\,
	datad => \FD|ULA|Mux31~2_combout\,
	combout => \FD|ULA|Mux0~3_combout\);

\FD|REG_P3|data_s[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(68));

\FD|REG_P4|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s\(68),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P4|data_s\(36));

\FD|mux_Ula_Memoria|saida[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[31]~1_combout\ = (\FD|REG_P4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31~portadataout\)) # (!\FD|REG_P4|data_s\(69) & ((\FD|REG_P4|data_s\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31~portadataout\,
	datab => \FD|REG_P4|data_s\(36),
	datad => \FD|REG_P4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[31]~1_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
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
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(73));

\FD|BR|bancoReg_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(74));

\FD|BR|saidaB[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~2_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(74) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(74),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[31]~2_combout\);

\FD|BR|saidaB[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~3_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[31]~2_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31~portbdataout\)) # (!\FD|BR|saidaB[31]~2_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(73),
	datac => \FD|BR|saidaB[31]~2_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[31]~3_combout\);

\FD|REG_P2|data_s[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(73));

\FD|mux_Banco_Ula|saida[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[31]~1_combout\ = (\FD|REG_P2|data_s\(138) & (\FD|REG_P2|data_s\(14))) # (!\FD|REG_P2|data_s\(138) & ((\FD|REG_P2|data_s\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(73),
	datad => \FD|REG_P2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[31]~1_combout\);

\FD|ULA|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~62_combout\ = \FD|mux_Banco_Ula|saida[31]~1_combout\ $ (\FD|REG_P2|data_s\(105) $ (!\FD|ULA|Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|REG_P2|data_s\(105),
	cin => \FD|ULA|Add1~61\,
	combout => \FD|ULA|Add1~62_combout\);

\FD|ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~0_combout\ = (!\FD|ULA|Add1~46_combout\ & (!\FD|ULA|Add1~48_combout\ & (!\FD|ULA|Add1~50_combout\ & !\FD|ULA|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~46_combout\,
	datab => \FD|ULA|Add1~48_combout\,
	datac => \FD|ULA|Add1~50_combout\,
	datad => \FD|ULA|Add1~52_combout\,
	combout => \FD|ULA|Equal0~0_combout\);

\FD|ULA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~1_combout\ = (!\FD|ULA|Add1~6_combout\ & (!\FD|ULA|Add1~8_combout\ & (!\FD|ULA|Add1~10_combout\ & !\FD|ULA|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~6_combout\,
	datab => \FD|ULA|Add1~8_combout\,
	datac => \FD|ULA|Add1~10_combout\,
	datad => \FD|ULA|Add1~12_combout\,
	combout => \FD|ULA|Equal0~1_combout\);

\FD|ULA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~2_combout\ = (!\FD|ULA|Add1~14_combout\ & (!\FD|ULA|Add1~16_combout\ & (!\FD|ULA|Add1~18_combout\ & !\FD|ULA|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Add1~16_combout\,
	datac => \FD|ULA|Add1~18_combout\,
	datad => \FD|ULA|Add1~20_combout\,
	combout => \FD|ULA|Equal0~2_combout\);

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

\FD|ULA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~4_combout\ = (\FD|ULA|Equal0~2_combout\ & (\FD|ULA|Equal0~3_combout\ & (!\FD|ULA|Add1~26_combout\ & !\FD|ULA|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~2_combout\,
	datab => \FD|ULA|Equal0~3_combout\,
	datac => \FD|ULA|Add1~26_combout\,
	datad => \FD|ULA|Add1~28_combout\,
	combout => \FD|ULA|Equal0~4_combout\);

\FD|ULA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~5_combout\ = (!\FD|ULA|Add1~38_combout\ & (!\FD|ULA|Add1~40_combout\ & (!\FD|ULA|Add1~42_combout\ & !\FD|ULA|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~38_combout\,
	datab => \FD|ULA|Add1~40_combout\,
	datac => \FD|ULA|Add1~42_combout\,
	datad => \FD|ULA|Add1~44_combout\,
	combout => \FD|ULA|Equal0~5_combout\);

\FD|ULA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~6_combout\ = (!\FD|ULA|Add1~30_combout\ & (!\FD|ULA|Add1~32_combout\ & (!\FD|ULA|Add1~34_combout\ & !\FD|ULA|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~30_combout\,
	datab => \FD|ULA|Add1~32_combout\,
	datac => \FD|ULA|Add1~34_combout\,
	datad => \FD|ULA|Add1~36_combout\,
	combout => \FD|ULA|Equal0~6_combout\);

\FD|ULA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~7_combout\ = (!\FD|ULA|Add1~0_combout\ & (!\FD|ULA|Add1~2_combout\ & (!\FD|ULA|Add1~4_combout\ & \FD|ULA|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~0_combout\,
	datab => \FD|ULA|Add1~2_combout\,
	datac => \FD|ULA|Add1~4_combout\,
	datad => \FD|ULA|Equal0~6_combout\,
	combout => \FD|ULA|Equal0~7_combout\);

\FD|ULA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~8_combout\ = (\FD|ULA|Equal0~1_combout\ & (\FD|ULA|Equal0~4_combout\ & (\FD|ULA|Equal0~5_combout\ & \FD|ULA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~1_combout\,
	datab => \FD|ULA|Equal0~4_combout\,
	datac => \FD|ULA|Equal0~5_combout\,
	datad => \FD|ULA|Equal0~7_combout\,
	combout => \FD|ULA|Equal0~8_combout\);

\FD|ULA|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~9_combout\ = (\FD|ULA|Equal0~0_combout\ & (!\FD|ULA|Add1~54_combout\ & (!\FD|ULA|Add1~56_combout\ & \FD|ULA|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~0_combout\,
	datab => \FD|ULA|Add1~54_combout\,
	datac => \FD|ULA|Add1~56_combout\,
	datad => \FD|ULA|Equal0~8_combout\,
	combout => \FD|ULA|Equal0~9_combout\);

\FD|ULA|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~10_combout\ = (!\FD|ULA|Add1~62_combout\ & (!\FD|ULA|Add1~58_combout\ & (!\FD|ULA|Add1~60_combout\ & \FD|ULA|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~62_combout\,
	datab => \FD|ULA|Add1~58_combout\,
	datac => \FD|ULA|Add1~60_combout\,
	datad => \FD|ULA|Equal0~9_combout\,
	combout => \FD|ULA|Equal0~10_combout\);

\FD|REG_P3|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(69));

\FD|REG_P3|data_s[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[74]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(74));

\FD|mux_jump|saida[4]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[4]~58_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(74))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[4]~4_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(74),
	datad => \FD|Somador|saida[4]~4_combout\,
	combout => \FD|mux_jump|saida[4]~58_combout\);

\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[4]~58_combout\,
	asdata => \FD|REG_P1|data_s\(2),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

\FD|ROM|memROM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~23_combout\ = (\FD|PC|data_s\(3) & !\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~23_combout\);

\FD|ROM|memROM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~24_combout\ = (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) & (\FD|ROM|memROM~23_combout\ & \FD|ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|ROM|memROM~23_combout\,
	datad => \FD|ROM|memROM~13_combout\,
	combout => \FD|ROM|memROM~24_combout\);

\FD|REG_P1|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(4));

\UC|pontosDeControle[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[1]~2_combout\ = (\FD|REG_P1|data_s\(4)) # ((\FD|REG_P1|data_s\(31) & ((!\FD|REG_P1|data_s\(27)))) # (!\FD|REG_P1|data_s\(31) & (\FD|REG_P1|data_s\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P1|data_s\(4),
	datab => \FD|REG_P1|data_s\(29),
	datac => \FD|REG_P1|data_s\(31),
	datad => \FD|REG_P1|data_s\(27),
	combout => \UC|pontosDeControle[1]~2_combout\);

\FD|REG_P2|data_s[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|pontosDeControle[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(145));

\FD|REG_P3|data_s[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(145),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(104));

\FD|REG_P3|data_s[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[76]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(76));

\FD|mux_jump|saida[6]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[6]~60_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(76))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[6]~8_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(76),
	datad => \FD|Somador|saida[6]~8_combout\,
	combout => \FD|mux_jump|saida[6]~60_combout\);

\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[6]~60_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

\FD|ROM|memROM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2)) # ((!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~12_combout\);

\FD|ROM|memROM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~28_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~12_combout\,
	combout => \FD|ROM|memROM~28_combout\);

\FD|REG_P1|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(3));

\FD|REG_P2|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(13));

\FD|UCULA|ALUctr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~0_combout\ = (\FD|REG_P2|data_s\(13) & (!\FD|REG_P2|data_s\(12) & (!\FD|REG_P2|data_s\(10) & \FD|REG_P2|data_s\(11)))) # (!\FD|REG_P2|data_s\(13) & (\FD|REG_P2|data_s\(12) & (\FD|REG_P2|data_s\(10) & !\FD|REG_P2|data_s\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(13),
	datab => \FD|REG_P2|data_s\(12),
	datac => \FD|REG_P2|data_s\(10),
	datad => \FD|REG_P2|data_s\(11),
	combout => \FD|UCULA|ALUctr[0]~0_combout\);

\FD|UCULA|ALUctr[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~2_combout\ = (\FD|UCULA|ALUctr[0]~0_combout\ & (\FD|UCULA|ALUctr[0]~1_combout\ & !\FD|REG_P2|data_s\(140)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datad => \FD|REG_P2|data_s\(140),
	combout => \FD|UCULA|ALUctr[0]~2_combout\);

\FD|ULA|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~3_combout\ = (\FD|ULA|Mux31~2_combout\ & ((\FD|UCULA|ALUctr[0]~2_combout\ & ((\FD|mux_Banco_Ula|saida[0]~0_combout\) # (\FD|REG_P2|data_s\(74)))) # (!\FD|UCULA|ALUctr[0]~2_combout\ & (\FD|mux_Banco_Ula|saida[0]~0_combout\ & 
-- \FD|REG_P2|data_s\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~2_combout\,
	datab => \FD|ULA|Mux31~2_combout\,
	datac => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datad => \FD|REG_P2|data_s\(74),
	combout => \FD|ULA|Mux31~3_combout\);

\FD|ULA|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~10_combout\ = (\FD|UCULA|ALUctr[2]~7_combout\ & (((\FD|UCULA|ALUctr[0]~2_combout\)))) # (!\FD|UCULA|ALUctr[2]~7_combout\ & ((\FD|REG_P2|data_s\(74) & ((\FD|mux_Banco_Ula|saida[0]~0_combout\) # (\FD|UCULA|ALUctr[0]~2_combout\))) # 
-- (!\FD|REG_P2|data_s\(74) & (\FD|mux_Banco_Ula|saida[0]~0_combout\ & \FD|UCULA|ALUctr[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~7_combout\,
	datab => \FD|REG_P2|data_s\(74),
	datac => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux31~10_combout\);

\FD|ULA|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~11_combout\ = (\FD|UCULA|ALUctr[2]~7_combout\ & (\FD|UCULA|ALUctr[1]~5_combout\ & ((\FD|ULA|Mux31~10_combout\) # (\FD|ULA|Add1~0_combout\)))) # (!\FD|UCULA|ALUctr[2]~7_combout\ & ((\FD|ULA|Mux31~10_combout\) # 
-- ((\FD|UCULA|ALUctr[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~7_combout\,
	datab => \FD|ULA|Mux31~10_combout\,
	datac => \FD|ULA|Add1~0_combout\,
	datad => \FD|UCULA|ALUctr[1]~5_combout\,
	combout => \FD|ULA|Mux31~11_combout\);

\FD|ULA|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~4_combout\ = (\FD|UCULA|ALUctr[0]~2_combout\ & (((!\FD|mux_Banco_Ula|saida[0]~0_combout\ & !\FD|REG_P2|data_s\(74))) # (!\FD|ULA|Mux31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~2_combout\,
	datab => \FD|ULA|Mux31~2_combout\,
	datac => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datad => \FD|REG_P2|data_s\(74),
	combout => \FD|ULA|Mux31~4_combout\);

\FD|ULA|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~5_combout\ = (\FD|ULA|Mux31~11_combout\ & ((\FD|UCULA|ALUctr[2]~7_combout\) # ((\FD|ULA|soma[0]~0_combout\ & !\FD|ULA|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~7_combout\,
	datab => \FD|ULA|soma[0]~0_combout\,
	datac => \FD|ULA|Mux31~11_combout\,
	datad => \FD|ULA|Mux31~4_combout\,
	combout => \FD|ULA|Mux31~5_combout\);

\FD|ULA|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~6_combout\ = (\FD|UCULA|ALUctr[2]~7_combout\ & ((\FD|UCULA|ALUctr[0]~2_combout\) # (!\FD|ULA|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~2_combout\,
	datab => \FD|ULA|Add1~0_combout\,
	datac => \FD|UCULA|ALUctr[2]~7_combout\,
	combout => \FD|ULA|Mux31~6_combout\);

\FD|ULA|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~8_combout\ = (\FD|UCULA|ALUctr[0]~2_combout\ & ((\FD|REG_P2|data_s\(105) & ((\FD|ULA|Mux0~3_combout\) # (!\FD|mux_Banco_Ula|saida[31]~1_combout\))) # (!\FD|REG_P2|data_s\(105) & ((\FD|mux_Banco_Ula|saida[31]~1_combout\) # 
-- (!\FD|ULA|Mux0~3_combout\))))) # (!\FD|UCULA|ALUctr[0]~2_combout\ & (((\FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~2_combout\,
	datab => \FD|REG_P2|data_s\(105),
	datac => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux31~8_combout\);

\FD|ULA|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~9_combout\ = \FD|ULA|Mux31~8_combout\ $ (((\FD|ULA|Add1~62_combout\ & ((\FD|UCULA|ALUctr[0]~2_combout\) # (\FD|REG_P2|data_s\(105))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~2_combout\,
	datab => \FD|ULA|Mux31~8_combout\,
	datac => \FD|REG_P2|data_s\(105),
	datad => \FD|ULA|Add1~62_combout\,
	combout => \FD|ULA|Mux31~9_combout\);

\FD|ULA|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~7_combout\ = (\FD|ULA|Mux31~3_combout\) # ((\FD|ULA|Mux31~5_combout\ & ((!\FD|ULA|Mux31~9_combout\) # (!\FD|ULA|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~3_combout\,
	datab => \FD|ULA|Mux31~5_combout\,
	datac => \FD|ULA|Mux31~6_combout\,
	datad => \FD|ULA|Mux31~9_combout\,
	combout => \FD|ULA|Mux31~7_combout\);

\FD|REG_P1|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(32));

\FD|REG_P2|data_s[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(106));

\FD|REG_P3|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P2|data_s\(106),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(70));

\FD|mux_beq|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_beq|saida[0]~0_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(70))) # (!\FD|REG_P3|data_s\(69) & ((\FD|PC|data_s\(0)))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|PC|data_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(70),
	datab => \FD|PC|data_s\(0),
	datac => \FD|REG_P3|data_s\(104),
	datad => \FD|REG_P3|data_s\(69),
	combout => \FD|mux_beq|saida[0]~0_combout\);

\FD|PC|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_beq|saida[0]~0_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(0));

\FD|Somador|saida[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[8]~12_combout\ = (\FD|PC|data_s\(8) & (\FD|Somador|saida[7]~11\ $ (GND))) # (!\FD|PC|data_s\(8) & (!\FD|Somador|saida[7]~11\ & VCC))
-- \FD|Somador|saida[8]~13\ = CARRY((\FD|PC|data_s\(8) & !\FD|Somador|saida[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(8),
	datad => VCC,
	cin => \FD|Somador|saida[7]~11\,
	combout => \FD|Somador|saida[8]~12_combout\,
	cout => \FD|Somador|saida[8]~13\);

\FD|REG_P1|data_s[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(40));

\FD|REG_P2|data_s[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(114));

\FD|REG_P3|data_s[78]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[78]~42_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(114) $ (!\FD|REG_P3|data_s[77]~41\)))) # (GND)
-- \FD|REG_P3|data_s[78]~43\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(114)) # (!\FD|REG_P3|data_s[77]~41\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(114) & !\FD|REG_P3|data_s[77]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(114),
	datad => VCC,
	cin => \FD|REG_P3|data_s[77]~41\,
	combout => \FD|REG_P3|data_s[78]~42_combout\,
	cout => \FD|REG_P3|data_s[78]~43\);

\FD|REG_P3|data_s[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[78]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(78));

\FD|mux_jump|saida[8]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[8]~62_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(78))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[8]~12_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(78),
	datad => \FD|Somador|saida[8]~12_combout\,
	combout => \FD|mux_jump|saida[8]~62_combout\);

\FD|PC|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[8]~62_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(8));

\FD|Somador|saida[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[9]~14_combout\ = (\FD|PC|data_s\(9) & (!\FD|Somador|saida[8]~13\)) # (!\FD|PC|data_s\(9) & ((\FD|Somador|saida[8]~13\) # (GND)))
-- \FD|Somador|saida[9]~15\ = CARRY((!\FD|Somador|saida[8]~13\) # (!\FD|PC|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(9),
	datad => VCC,
	cin => \FD|Somador|saida[8]~13\,
	combout => \FD|Somador|saida[9]~14_combout\,
	cout => \FD|Somador|saida[9]~15\);

\FD|REG_P1|data_s[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(41));

\FD|REG_P2|data_s[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(115));

\FD|REG_P3|data_s[79]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[79]~44_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(115) & (\FD|REG_P3|data_s[78]~43\ & VCC)) # (!\FD|REG_P2|data_s\(115) & (!\FD|REG_P3|data_s[78]~43\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(115) & 
-- (!\FD|REG_P3|data_s[78]~43\)) # (!\FD|REG_P2|data_s\(115) & ((\FD|REG_P3|data_s[78]~43\) # (GND)))))
-- \FD|REG_P3|data_s[79]~45\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(115) & !\FD|REG_P3|data_s[78]~43\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[78]~43\) # (!\FD|REG_P2|data_s\(115)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(115),
	datad => VCC,
	cin => \FD|REG_P3|data_s[78]~43\,
	combout => \FD|REG_P3|data_s[79]~44_combout\,
	cout => \FD|REG_P3|data_s[79]~45\);

\FD|REG_P3|data_s[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[79]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(79));

\FD|mux_jump|saida[9]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[9]~63_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(79))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[9]~14_combout\))))) # (!\FD|REG_P3|data_s\(104) & (((\FD|Somador|saida[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(79),
	datad => \FD|Somador|saida[9]~14_combout\,
	combout => \FD|mux_jump|saida[9]~63_combout\);

\FD|PC|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[9]~63_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(9));

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

\FD|REG_P1|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(42));

\FD|REG_P2|data_s[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(116));

\FD|REG_P3|data_s[80]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[80]~46_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(116) $ (!\FD|REG_P3|data_s[79]~45\)))) # (GND)
-- \FD|REG_P3|data_s[80]~47\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(116)) # (!\FD|REG_P3|data_s[79]~45\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(116) & !\FD|REG_P3|data_s[79]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(116),
	datad => VCC,
	cin => \FD|REG_P3|data_s[79]~45\,
	combout => \FD|REG_P3|data_s[80]~46_combout\,
	cout => \FD|REG_P3|data_s[80]~47\);

\FD|REG_P3|data_s[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[80]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(80));

\FD|mux_jump|saida[10]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[10]~64_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(80))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[10]~16_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(80),
	datad => \FD|Somador|saida[10]~16_combout\,
	combout => \FD|mux_jump|saida[10]~64_combout\);

\FD|PC|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[10]~64_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(10));

\FD|Somador|saida[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[11]~18_combout\ = (\FD|PC|data_s\(11) & (!\FD|Somador|saida[10]~17\)) # (!\FD|PC|data_s\(11) & ((\FD|Somador|saida[10]~17\) # (GND)))
-- \FD|Somador|saida[11]~19\ = CARRY((!\FD|Somador|saida[10]~17\) # (!\FD|PC|data_s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(11),
	datad => VCC,
	cin => \FD|Somador|saida[10]~17\,
	combout => \FD|Somador|saida[11]~18_combout\,
	cout => \FD|Somador|saida[11]~19\);

\FD|REG_P1|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(43));

\FD|REG_P2|data_s[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(117));

\FD|REG_P3|data_s[81]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[81]~48_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(117) & (\FD|REG_P3|data_s[80]~47\ & VCC)) # (!\FD|REG_P2|data_s\(117) & (!\FD|REG_P3|data_s[80]~47\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(117) & 
-- (!\FD|REG_P3|data_s[80]~47\)) # (!\FD|REG_P2|data_s\(117) & ((\FD|REG_P3|data_s[80]~47\) # (GND)))))
-- \FD|REG_P3|data_s[81]~49\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(117) & !\FD|REG_P3|data_s[80]~47\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[80]~47\) # (!\FD|REG_P2|data_s\(117)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(117),
	datad => VCC,
	cin => \FD|REG_P3|data_s[80]~47\,
	combout => \FD|REG_P3|data_s[81]~48_combout\,
	cout => \FD|REG_P3|data_s[81]~49\);

\FD|REG_P3|data_s[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[81]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(81));

\FD|mux_jump|saida[11]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[11]~65_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(81))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[11]~18_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(81),
	datad => \FD|Somador|saida[11]~18_combout\,
	combout => \FD|mux_jump|saida[11]~65_combout\);

\FD|PC|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[11]~65_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(11));

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

\FD|REG_P1|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(44));

\FD|REG_P2|data_s[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(118));

\FD|REG_P3|data_s[82]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[82]~50_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(118) $ (!\FD|REG_P3|data_s[81]~49\)))) # (GND)
-- \FD|REG_P3|data_s[82]~51\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(118)) # (!\FD|REG_P3|data_s[81]~49\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(118) & !\FD|REG_P3|data_s[81]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(118),
	datad => VCC,
	cin => \FD|REG_P3|data_s[81]~49\,
	combout => \FD|REG_P3|data_s[82]~50_combout\,
	cout => \FD|REG_P3|data_s[82]~51\);

\FD|REG_P3|data_s[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[82]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(82));

\FD|mux_jump|saida[12]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[12]~66_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(82))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[12]~20_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(82),
	datad => \FD|Somador|saida[12]~20_combout\,
	combout => \FD|mux_jump|saida[12]~66_combout\);

\FD|PC|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[12]~66_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(12));

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

\FD|REG_P1|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(45));

\FD|REG_P2|data_s[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(119));

\FD|REG_P3|data_s[83]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[83]~52_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(119) & (\FD|REG_P3|data_s[82]~51\ & VCC)) # (!\FD|REG_P2|data_s\(119) & (!\FD|REG_P3|data_s[82]~51\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(119) & 
-- (!\FD|REG_P3|data_s[82]~51\)) # (!\FD|REG_P2|data_s\(119) & ((\FD|REG_P3|data_s[82]~51\) # (GND)))))
-- \FD|REG_P3|data_s[83]~53\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(119) & !\FD|REG_P3|data_s[82]~51\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[82]~51\) # (!\FD|REG_P2|data_s\(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(119),
	datad => VCC,
	cin => \FD|REG_P3|data_s[82]~51\,
	combout => \FD|REG_P3|data_s[83]~52_combout\,
	cout => \FD|REG_P3|data_s[83]~53\);

\FD|REG_P3|data_s[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[83]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(83));

\FD|mux_jump|saida[13]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[13]~67_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(83))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[13]~22_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(83),
	datad => \FD|Somador|saida[13]~22_combout\,
	combout => \FD|mux_jump|saida[13]~67_combout\);

\FD|PC|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[13]~67_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(13));

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

\FD|REG_P1|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[14]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(46));

\FD|REG_P2|data_s[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(120));

\FD|REG_P3|data_s[84]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[84]~54_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(120) $ (!\FD|REG_P3|data_s[83]~53\)))) # (GND)
-- \FD|REG_P3|data_s[84]~55\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(120)) # (!\FD|REG_P3|data_s[83]~53\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(120) & !\FD|REG_P3|data_s[83]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(120),
	datad => VCC,
	cin => \FD|REG_P3|data_s[83]~53\,
	combout => \FD|REG_P3|data_s[84]~54_combout\,
	cout => \FD|REG_P3|data_s[84]~55\);

\FD|REG_P3|data_s[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[84]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(84));

\FD|mux_jump|saida[14]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[14]~68_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(84))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[14]~24_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[14]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(84),
	datad => \FD|Somador|saida[14]~24_combout\,
	combout => \FD|mux_jump|saida[14]~68_combout\);

\FD|PC|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[14]~68_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(14));

\FD|Somador|saida[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[15]~26_combout\ = (\FD|PC|data_s\(15) & (!\FD|Somador|saida[14]~25\)) # (!\FD|PC|data_s\(15) & ((\FD|Somador|saida[14]~25\) # (GND)))
-- \FD|Somador|saida[15]~27\ = CARRY((!\FD|Somador|saida[14]~25\) # (!\FD|PC|data_s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(15),
	datad => VCC,
	cin => \FD|Somador|saida[14]~25\,
	combout => \FD|Somador|saida[15]~26_combout\,
	cout => \FD|Somador|saida[15]~27\);

\FD|REG_P1|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(47));

\FD|REG_P2|data_s[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(121));

\FD|REG_P3|data_s[85]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[85]~56_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(121) & (\FD|REG_P3|data_s[84]~55\ & VCC)) # (!\FD|REG_P2|data_s\(121) & (!\FD|REG_P3|data_s[84]~55\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(121) & 
-- (!\FD|REG_P3|data_s[84]~55\)) # (!\FD|REG_P2|data_s\(121) & ((\FD|REG_P3|data_s[84]~55\) # (GND)))))
-- \FD|REG_P3|data_s[85]~57\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(121) & !\FD|REG_P3|data_s[84]~55\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[84]~55\) # (!\FD|REG_P2|data_s\(121)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(121),
	datad => VCC,
	cin => \FD|REG_P3|data_s[84]~55\,
	combout => \FD|REG_P3|data_s[85]~56_combout\,
	cout => \FD|REG_P3|data_s[85]~57\);

\FD|REG_P3|data_s[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[85]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(85));

\FD|mux_jump|saida[15]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[15]~69_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(85))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[15]~26_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[15]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(85),
	datad => \FD|Somador|saida[15]~26_combout\,
	combout => \FD|mux_jump|saida[15]~69_combout\);

\FD|PC|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[15]~69_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(15));

\FD|Somador|saida[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[16]~28_combout\ = (\FD|PC|data_s\(16) & (\FD|Somador|saida[15]~27\ $ (GND))) # (!\FD|PC|data_s\(16) & (!\FD|Somador|saida[15]~27\ & VCC))
-- \FD|Somador|saida[16]~29\ = CARRY((\FD|PC|data_s\(16) & !\FD|Somador|saida[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(16),
	datad => VCC,
	cin => \FD|Somador|saida[15]~27\,
	combout => \FD|Somador|saida[16]~28_combout\,
	cout => \FD|Somador|saida[16]~29\);

\FD|REG_P1|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[16]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(48));

\FD|REG_P2|data_s[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(122));

\FD|REG_P3|data_s[86]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[86]~58_combout\ = ((\FD|REG_P2|data_s\(15) $ (\FD|REG_P2|data_s\(122) $ (!\FD|REG_P3|data_s[85]~57\)))) # (GND)
-- \FD|REG_P3|data_s[86]~59\ = CARRY((\FD|REG_P2|data_s\(15) & ((\FD|REG_P2|data_s\(122)) # (!\FD|REG_P3|data_s[85]~57\))) # (!\FD|REG_P2|data_s\(15) & (\FD|REG_P2|data_s\(122) & !\FD|REG_P3|data_s[85]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(15),
	datab => \FD|REG_P2|data_s\(122),
	datad => VCC,
	cin => \FD|REG_P3|data_s[85]~57\,
	combout => \FD|REG_P3|data_s[86]~58_combout\,
	cout => \FD|REG_P3|data_s[86]~59\);

\FD|REG_P3|data_s[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[86]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(86));

\FD|mux_jump|saida[16]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[16]~70_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(86))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[16]~28_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[16]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(86),
	datad => \FD|Somador|saida[16]~28_combout\,
	combout => \FD|mux_jump|saida[16]~70_combout\);

\FD|PC|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[16]~70_combout\,
	asdata => \FD|REG_P1|data_s\(5),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(16));

\FD|Somador|saida[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[17]~30_combout\ = (\FD|PC|data_s\(17) & (!\FD|Somador|saida[16]~29\)) # (!\FD|PC|data_s\(17) & ((\FD|Somador|saida[16]~29\) # (GND)))
-- \FD|Somador|saida[17]~31\ = CARRY((!\FD|Somador|saida[16]~29\) # (!\FD|PC|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(17),
	datad => VCC,
	cin => \FD|Somador|saida[16]~29\,
	combout => \FD|Somador|saida[17]~30_combout\,
	cout => \FD|Somador|saida[17]~31\);

\FD|REG_P1|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[17]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(49));

\FD|REG_P2|data_s[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(123));

\FD|REG_P3|data_s[87]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[87]~60_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(123) & (\FD|REG_P3|data_s[86]~59\ & VCC)) # (!\FD|REG_P2|data_s\(123) & (!\FD|REG_P3|data_s[86]~59\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(123) & 
-- (!\FD|REG_P3|data_s[86]~59\)) # (!\FD|REG_P2|data_s\(123) & ((\FD|REG_P3|data_s[86]~59\) # (GND)))))
-- \FD|REG_P3|data_s[87]~61\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(123) & !\FD|REG_P3|data_s[86]~59\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[86]~59\) # (!\FD|REG_P2|data_s\(123)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(123),
	datad => VCC,
	cin => \FD|REG_P3|data_s[86]~59\,
	combout => \FD|REG_P3|data_s[87]~60_combout\,
	cout => \FD|REG_P3|data_s[87]~61\);

\FD|REG_P3|data_s[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[87]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(87));

\FD|mux_jump|saida[17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[17]~71_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(87))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[17]~30_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(87),
	datad => \FD|Somador|saida[17]~30_combout\,
	combout => \FD|mux_jump|saida[17]~71_combout\);

\FD|PC|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[17]~71_combout\,
	asdata => \FD|REG_P1|data_s\(4),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(17));

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

\FD|REG_P1|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[18]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(50));

\FD|REG_P2|data_s[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(124));

\FD|REG_P3|data_s[88]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[88]~62_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(124) $ (!\FD|REG_P3|data_s[87]~61\)))) # (GND)
-- \FD|REG_P3|data_s[88]~63\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(124)) # (!\FD|REG_P3|data_s[87]~61\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(124) & !\FD|REG_P3|data_s[87]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(124),
	datad => VCC,
	cin => \FD|REG_P3|data_s[87]~61\,
	combout => \FD|REG_P3|data_s[88]~62_combout\,
	cout => \FD|REG_P3|data_s[88]~63\);

\FD|REG_P3|data_s[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[88]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(88));

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

\FD|PC|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[18]~72_combout\,
	asdata => \FD|REG_P1|data_s\(16),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(18));

\FD|Somador|saida[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[19]~34_combout\ = (\FD|PC|data_s\(19) & (!\FD|Somador|saida[18]~33\)) # (!\FD|PC|data_s\(19) & ((\FD|Somador|saida[18]~33\) # (GND)))
-- \FD|Somador|saida[19]~35\ = CARRY((!\FD|Somador|saida[18]~33\) # (!\FD|PC|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(19),
	datad => VCC,
	cin => \FD|Somador|saida[18]~33\,
	combout => \FD|Somador|saida[19]~34_combout\,
	cout => \FD|Somador|saida[19]~35\);

\FD|REG_P1|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(51));

\FD|REG_P2|data_s[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(125));

\FD|REG_P3|data_s[89]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[89]~64_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(125) & (\FD|REG_P3|data_s[88]~63\ & VCC)) # (!\FD|REG_P2|data_s\(125) & (!\FD|REG_P3|data_s[88]~63\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(125) & 
-- (!\FD|REG_P3|data_s[88]~63\)) # (!\FD|REG_P2|data_s\(125) & ((\FD|REG_P3|data_s[88]~63\) # (GND)))))
-- \FD|REG_P3|data_s[89]~65\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(125) & !\FD|REG_P3|data_s[88]~63\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[88]~63\) # (!\FD|REG_P2|data_s\(125)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(125),
	datad => VCC,
	cin => \FD|REG_P3|data_s[88]~63\,
	combout => \FD|REG_P3|data_s[89]~64_combout\,
	cout => \FD|REG_P3|data_s[89]~65\);

\FD|REG_P3|data_s[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[89]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(89));

\FD|mux_jump|saida[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[19]~73_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(89))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[19]~34_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[19]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(89),
	datad => \FD|Somador|saida[19]~34_combout\,
	combout => \FD|mux_jump|saida[19]~73_combout\);

\FD|PC|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[19]~73_combout\,
	asdata => \FD|REG_P1|data_s\(5),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(19));

\FD|Somador|saida[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[20]~36_combout\ = (\FD|PC|data_s\(20) & (\FD|Somador|saida[19]~35\ $ (GND))) # (!\FD|PC|data_s\(20) & (!\FD|Somador|saida[19]~35\ & VCC))
-- \FD|Somador|saida[20]~37\ = CARRY((\FD|PC|data_s\(20) & !\FD|Somador|saida[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(20),
	datad => VCC,
	cin => \FD|Somador|saida[19]~35\,
	combout => \FD|Somador|saida[20]~36_combout\,
	cout => \FD|Somador|saida[20]~37\);

\FD|REG_P1|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[20]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(52));

\FD|REG_P2|data_s[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(126));

\FD|REG_P3|data_s[90]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[90]~66_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(126) $ (!\FD|REG_P3|data_s[89]~65\)))) # (GND)
-- \FD|REG_P3|data_s[90]~67\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(126)) # (!\FD|REG_P3|data_s[89]~65\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(126) & !\FD|REG_P3|data_s[89]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(126),
	datad => VCC,
	cin => \FD|REG_P3|data_s[89]~65\,
	combout => \FD|REG_P3|data_s[90]~66_combout\,
	cout => \FD|REG_P3|data_s[90]~67\);

\FD|REG_P3|data_s[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[90]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(90));

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

\FD|PC|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[20]~74_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(20));

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

\FD|REG_P1|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[21]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(53));

\FD|REG_P2|data_s[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(127));

\FD|REG_P3|data_s[91]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[91]~68_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(127) & (\FD|REG_P3|data_s[90]~67\ & VCC)) # (!\FD|REG_P2|data_s\(127) & (!\FD|REG_P3|data_s[90]~67\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(127) & 
-- (!\FD|REG_P3|data_s[90]~67\)) # (!\FD|REG_P2|data_s\(127) & ((\FD|REG_P3|data_s[90]~67\) # (GND)))))
-- \FD|REG_P3|data_s[91]~69\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(127) & !\FD|REG_P3|data_s[90]~67\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[90]~67\) # (!\FD|REG_P2|data_s\(127)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(127),
	datad => VCC,
	cin => \FD|REG_P3|data_s[90]~67\,
	combout => \FD|REG_P3|data_s[91]~68_combout\,
	cout => \FD|REG_P3|data_s[91]~69\);

\FD|REG_P3|data_s[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[91]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(91));

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

\FD|PC|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[21]~75_combout\,
	asdata => \FD|REG_P1|data_s\(19),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(21));

\FD|Somador|saida[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[22]~40_combout\ = (\FD|PC|data_s\(22) & (\FD|Somador|saida[21]~39\ $ (GND))) # (!\FD|PC|data_s\(22) & (!\FD|Somador|saida[21]~39\ & VCC))
-- \FD|Somador|saida[22]~41\ = CARRY((\FD|PC|data_s\(22) & !\FD|Somador|saida[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(22),
	datad => VCC,
	cin => \FD|Somador|saida[21]~39\,
	combout => \FD|Somador|saida[22]~40_combout\,
	cout => \FD|Somador|saida[22]~41\);

\FD|REG_P1|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[22]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(54));

\FD|REG_P2|data_s[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(128));

\FD|REG_P3|data_s[92]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[92]~70_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(128) $ (!\FD|REG_P3|data_s[91]~69\)))) # (GND)
-- \FD|REG_P3|data_s[92]~71\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(128)) # (!\FD|REG_P3|data_s[91]~69\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(128) & !\FD|REG_P3|data_s[91]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(128),
	datad => VCC,
	cin => \FD|REG_P3|data_s[91]~69\,
	combout => \FD|REG_P3|data_s[92]~70_combout\,
	cout => \FD|REG_P3|data_s[92]~71\);

\FD|REG_P3|data_s[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[92]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(92));

\FD|mux_jump|saida[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[22]~76_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(92))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[22]~40_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[22]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(92),
	datad => \FD|Somador|saida[22]~40_combout\,
	combout => \FD|mux_jump|saida[22]~76_combout\);

\FD|PC|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[22]~76_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(22));

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

\FD|REG_P1|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[23]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(55));

\FD|REG_P2|data_s[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(129));

\FD|REG_P3|data_s[93]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[93]~72_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(129) & (\FD|REG_P3|data_s[92]~71\ & VCC)) # (!\FD|REG_P2|data_s\(129) & (!\FD|REG_P3|data_s[92]~71\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(129) & 
-- (!\FD|REG_P3|data_s[92]~71\)) # (!\FD|REG_P2|data_s\(129) & ((\FD|REG_P3|data_s[92]~71\) # (GND)))))
-- \FD|REG_P3|data_s[93]~73\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(129) & !\FD|REG_P3|data_s[92]~71\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[92]~71\) # (!\FD|REG_P2|data_s\(129)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(129),
	datad => VCC,
	cin => \FD|REG_P3|data_s[92]~71\,
	combout => \FD|REG_P3|data_s[93]~72_combout\,
	cout => \FD|REG_P3|data_s[93]~73\);

\FD|REG_P3|data_s[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[93]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(93));

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

\FD|PC|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[23]~77_combout\,
	asdata => \FD|REG_P1|data_s\(21),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(23));

\FD|Somador|saida[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[24]~44_combout\ = (\FD|PC|data_s\(24) & (\FD|Somador|saida[23]~43\ $ (GND))) # (!\FD|PC|data_s\(24) & (!\FD|Somador|saida[23]~43\ & VCC))
-- \FD|Somador|saida[24]~45\ = CARRY((\FD|PC|data_s\(24) & !\FD|Somador|saida[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(24),
	datad => VCC,
	cin => \FD|Somador|saida[23]~43\,
	combout => \FD|Somador|saida[24]~44_combout\,
	cout => \FD|Somador|saida[24]~45\);

\FD|REG_P1|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[24]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(56));

\FD|REG_P2|data_s[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(130));

\FD|REG_P3|data_s[94]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[94]~74_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(130) $ (!\FD|REG_P3|data_s[93]~73\)))) # (GND)
-- \FD|REG_P3|data_s[94]~75\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(130)) # (!\FD|REG_P3|data_s[93]~73\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(130) & !\FD|REG_P3|data_s[93]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(130),
	datad => VCC,
	cin => \FD|REG_P3|data_s[93]~73\,
	combout => \FD|REG_P3|data_s[94]~74_combout\,
	cout => \FD|REG_P3|data_s[94]~75\);

\FD|REG_P3|data_s[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[94]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(94));

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

\FD|PC|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[24]~78_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(24));

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

\FD|REG_P1|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[25]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(57));

\FD|REG_P2|data_s[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(131));

\FD|REG_P3|data_s[95]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[95]~76_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(131) & (\FD|REG_P3|data_s[94]~75\ & VCC)) # (!\FD|REG_P2|data_s\(131) & (!\FD|REG_P3|data_s[94]~75\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(131) & 
-- (!\FD|REG_P3|data_s[94]~75\)) # (!\FD|REG_P2|data_s\(131) & ((\FD|REG_P3|data_s[94]~75\) # (GND)))))
-- \FD|REG_P3|data_s[95]~77\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(131) & !\FD|REG_P3|data_s[94]~75\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[94]~75\) # (!\FD|REG_P2|data_s\(131)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(131),
	datad => VCC,
	cin => \FD|REG_P3|data_s[94]~75\,
	combout => \FD|REG_P3|data_s[95]~76_combout\,
	cout => \FD|REG_P3|data_s[95]~77\);

\FD|REG_P3|data_s[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[95]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(95));

\FD|mux_jump|saida[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[25]~79_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(95))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[25]~46_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[25]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(95),
	datad => \FD|Somador|saida[25]~46_combout\,
	combout => \FD|mux_jump|saida[25]~79_combout\);

\FD|PC|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[25]~79_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(25));

\FD|Somador|saida[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[26]~48_combout\ = (\FD|PC|data_s\(26) & (\FD|Somador|saida[25]~47\ $ (GND))) # (!\FD|PC|data_s\(26) & (!\FD|Somador|saida[25]~47\ & VCC))
-- \FD|Somador|saida[26]~49\ = CARRY((\FD|PC|data_s\(26) & !\FD|Somador|saida[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(26),
	datad => VCC,
	cin => \FD|Somador|saida[25]~47\,
	combout => \FD|Somador|saida[26]~48_combout\,
	cout => \FD|Somador|saida[26]~49\);

\FD|REG_P1|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[26]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(58));

\FD|REG_P2|data_s[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(132));

\FD|REG_P3|data_s[96]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[96]~78_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(132) $ (!\FD|REG_P3|data_s[95]~77\)))) # (GND)
-- \FD|REG_P3|data_s[96]~79\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(132)) # (!\FD|REG_P3|data_s[95]~77\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(132) & !\FD|REG_P3|data_s[95]~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(132),
	datad => VCC,
	cin => \FD|REG_P3|data_s[95]~77\,
	combout => \FD|REG_P3|data_s[96]~78_combout\,
	cout => \FD|REG_P3|data_s[96]~79\);

\FD|REG_P3|data_s[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[96]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(96));

\FD|mux_jump|saida[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[26]~80_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(96))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[26]~48_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[26]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(96),
	datad => \FD|Somador|saida[26]~48_combout\,
	combout => \FD|mux_jump|saida[26]~80_combout\);

\FD|PC|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[26]~80_combout\,
	asdata => \FD|REG_P1|data_s\(5),
	sload => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(26));

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

\FD|REG_P1|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[27]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(59));

\FD|REG_P2|data_s[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(133));

\FD|REG_P3|data_s[97]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[97]~80_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(133) & (\FD|REG_P3|data_s[96]~79\ & VCC)) # (!\FD|REG_P2|data_s\(133) & (!\FD|REG_P3|data_s[96]~79\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(133) & 
-- (!\FD|REG_P3|data_s[96]~79\)) # (!\FD|REG_P2|data_s\(133) & ((\FD|REG_P3|data_s[96]~79\) # (GND)))))
-- \FD|REG_P3|data_s[97]~81\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(133) & !\FD|REG_P3|data_s[96]~79\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[96]~79\) # (!\FD|REG_P2|data_s\(133)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(133),
	datad => VCC,
	cin => \FD|REG_P3|data_s[96]~79\,
	combout => \FD|REG_P3|data_s[97]~80_combout\,
	cout => \FD|REG_P3|data_s[97]~81\);

\FD|REG_P3|data_s[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[97]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(97));

\FD|mux_jump|saida[27]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[27]~81_combout\ = (\FD|REG_P3|data_s\(104) & ((\FD|REG_P3|data_s\(69) & (\FD|REG_P3|data_s\(97))) # (!\FD|REG_P3|data_s\(69) & ((\FD|Somador|saida[27]~50_combout\))))) # (!\FD|REG_P3|data_s\(104) & 
-- (((\FD|Somador|saida[27]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	datac => \FD|REG_P3|data_s\(97),
	datad => \FD|Somador|saida[27]~50_combout\,
	combout => \FD|mux_jump|saida[27]~81_combout\);

\FD|PC|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[27]~81_combout\,
	sclr => \FD|REG_P2|data_s\(141),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(27));

\FD|Somador|saida[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[28]~52_combout\ = (\FD|PC|data_s\(28) & (\FD|Somador|saida[27]~51\ $ (GND))) # (!\FD|PC|data_s\(28) & (!\FD|Somador|saida[27]~51\ & VCC))
-- \FD|Somador|saida[28]~53\ = CARRY((\FD|PC|data_s\(28) & !\FD|Somador|saida[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(28),
	datad => VCC,
	cin => \FD|Somador|saida[27]~51\,
	combout => \FD|Somador|saida[28]~52_combout\,
	cout => \FD|Somador|saida[28]~53\);

\FD|REG_P1|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[28]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(60));

\FD|REG_P2|data_s[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(134));

\FD|REG_P3|data_s[98]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[98]~82_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(134) $ (!\FD|REG_P3|data_s[97]~81\)))) # (GND)
-- \FD|REG_P3|data_s[98]~83\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(134)) # (!\FD|REG_P3|data_s[97]~81\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(134) & !\FD|REG_P3|data_s[97]~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(134),
	datad => VCC,
	cin => \FD|REG_P3|data_s[97]~81\,
	combout => \FD|REG_P3|data_s[98]~82_combout\,
	cout => \FD|REG_P3|data_s[98]~83\);

\FD|REG_P3|data_s[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[98]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(98));

\FD|sel_mux_beq\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|sel_mux_beq~combout\ = (\FD|REG_P3|data_s\(104) & \FD|REG_P3|data_s\(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P3|data_s\(104),
	datab => \FD|REG_P3|data_s\(69),
	combout => \FD|sel_mux_beq~combout\);

\FD|mux_jump|saida[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[28]~52_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_P2|data_s\(141) & (\FD|Somador|saida[28]~52_combout\)) # (!\FD|REG_P2|data_s\(141) & ((\FD|REG_P3|data_s\(98)))))) # (!\FD|sel_mux_beq~combout\ & 
-- (\FD|Somador|saida[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[28]~52_combout\,
	datab => \FD|REG_P3|data_s\(98),
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|REG_P2|data_s\(141),
	combout => \FD|mux_jump|saida[28]~52_combout\);

\FD|PC|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[28]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(28));

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

\FD|REG_P1|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[29]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(61));

\FD|REG_P2|data_s[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(135));

\FD|REG_P3|data_s[99]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[99]~84_combout\ = (\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(135) & (\FD|REG_P3|data_s[98]~83\ & VCC)) # (!\FD|REG_P2|data_s\(135) & (!\FD|REG_P3|data_s[98]~83\)))) # (!\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(135) & 
-- (!\FD|REG_P3|data_s[98]~83\)) # (!\FD|REG_P2|data_s\(135) & ((\FD|REG_P3|data_s[98]~83\) # (GND)))))
-- \FD|REG_P3|data_s[99]~85\ = CARRY((\FD|REG_P2|data_s\(14) & (!\FD|REG_P2|data_s\(135) & !\FD|REG_P3|data_s[98]~83\)) # (!\FD|REG_P2|data_s\(14) & ((!\FD|REG_P3|data_s[98]~83\) # (!\FD|REG_P2|data_s\(135)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(135),
	datad => VCC,
	cin => \FD|REG_P3|data_s[98]~83\,
	combout => \FD|REG_P3|data_s[99]~84_combout\,
	cout => \FD|REG_P3|data_s[99]~85\);

\FD|REG_P3|data_s[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[99]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(99));

\FD|mux_jump|saida[29]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[29]~53_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_P2|data_s\(141) & (\FD|Somador|saida[29]~54_combout\)) # (!\FD|REG_P2|data_s\(141) & ((\FD|REG_P3|data_s\(99)))))) # (!\FD|sel_mux_beq~combout\ & 
-- (\FD|Somador|saida[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[29]~54_combout\,
	datab => \FD|REG_P3|data_s\(99),
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|REG_P2|data_s\(141),
	combout => \FD|mux_jump|saida[29]~53_combout\);

\FD|PC|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[29]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(29));

\FD|Somador|saida[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[30]~56_combout\ = (\FD|PC|data_s\(30) & (\FD|Somador|saida[29]~55\ $ (GND))) # (!\FD|PC|data_s\(30) & (!\FD|Somador|saida[29]~55\ & VCC))
-- \FD|Somador|saida[30]~57\ = CARRY((\FD|PC|data_s\(30) & !\FD|Somador|saida[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(30),
	datad => VCC,
	cin => \FD|Somador|saida[29]~55\,
	combout => \FD|Somador|saida[30]~56_combout\,
	cout => \FD|Somador|saida[30]~57\);

\FD|REG_P1|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[30]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(62));

\FD|REG_P2|data_s[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(136));

\FD|REG_P3|data_s[100]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[100]~86_combout\ = ((\FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(136) $ (!\FD|REG_P3|data_s[99]~85\)))) # (GND)
-- \FD|REG_P3|data_s[100]~87\ = CARRY((\FD|REG_P2|data_s\(14) & ((\FD|REG_P2|data_s\(136)) # (!\FD|REG_P3|data_s[99]~85\))) # (!\FD|REG_P2|data_s\(14) & (\FD|REG_P2|data_s\(136) & !\FD|REG_P3|data_s[99]~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(136),
	datad => VCC,
	cin => \FD|REG_P3|data_s[99]~85\,
	combout => \FD|REG_P3|data_s[100]~86_combout\,
	cout => \FD|REG_P3|data_s[100]~87\);

\FD|REG_P3|data_s[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[100]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(100));

\FD|mux_jump|saida[30]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[30]~54_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_P2|data_s\(141) & (\FD|Somador|saida[30]~56_combout\)) # (!\FD|REG_P2|data_s\(141) & ((\FD|REG_P3|data_s\(100)))))) # (!\FD|sel_mux_beq~combout\ & 
-- (\FD|Somador|saida[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[30]~56_combout\,
	datab => \FD|REG_P3|data_s\(100),
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|REG_P2|data_s\(141),
	combout => \FD|mux_jump|saida[30]~54_combout\);

\FD|PC|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[30]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(30));

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

\FD|REG_P1|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[31]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P1|data_s\(63));

\FD|REG_P2|data_s[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P1|data_s\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P2|data_s\(137));

\FD|REG_P3|data_s[101]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_P3|data_s[101]~88_combout\ = \FD|REG_P2|data_s\(14) $ (\FD|REG_P2|data_s\(137) $ (\FD|REG_P3|data_s[100]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_P2|data_s\(14),
	datab => \FD|REG_P2|data_s\(137),
	cin => \FD|REG_P3|data_s[100]~87\,
	combout => \FD|REG_P3|data_s[101]~88_combout\);

\FD|REG_P3|data_s[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|REG_P3|data_s[101]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_P3|data_s\(101));

\FD|mux_jump|saida[31]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[31]~55_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_P2|data_s\(141) & (\FD|Somador|saida[31]~58_combout\)) # (!\FD|REG_P2|data_s\(141) & ((\FD|REG_P3|data_s\(101)))))) # (!\FD|sel_mux_beq~combout\ & 
-- (\FD|Somador|saida[31]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[31]~58_combout\,
	datab => \FD|REG_P3|data_s\(101),
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|REG_P2|data_s\(141),
	combout => \FD|mux_jump|saida[31]~55_combout\);

\FD|PC|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(31));

\DISPLAY0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux31~7_combout\ & (\FD|ULA|Mux30~3_combout\ $ (\FD|ULA|Mux29~3_combout\)))) # (!\FD|ULA|Mux28~3_combout\ & (!\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux31~7_combout\ $ 
-- (\FD|ULA|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \FD|ULA|Mux31~7_combout\,
	datad => \FD|ULA|Mux29~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[0]~0_combout\);

\DISPLAY0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux30~3_combout\ & ((\FD|ULA|Mux31~7_combout\ & (\FD|ULA|Mux28~3_combout\)) # (!\FD|ULA|Mux31~7_combout\ & ((\FD|ULA|Mux29~3_combout\))))) # (!\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux29~3_combout\ & 
-- (\FD|ULA|Mux28~3_combout\ $ (\FD|ULA|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \FD|ULA|Mux29~3_combout\,
	datad => \FD|ULA|Mux31~7_combout\,
	combout => \DISPLAY0|rascSaida7seg[1]~1_combout\);

\DISPLAY0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux28~3_combout\ & ((\FD|ULA|Mux30~3_combout\) # (!\FD|ULA|Mux31~7_combout\)))) # (!\FD|ULA|Mux29~3_combout\ & (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux30~3_combout\ & 
-- !\FD|ULA|Mux31~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \FD|ULA|Mux30~3_combout\,
	datad => \FD|ULA|Mux31~7_combout\,
	combout => \DISPLAY0|rascSaida7seg[2]~2_combout\);

\DISPLAY0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux30~3_combout\ & ((\FD|ULA|Mux31~7_combout\ & (\FD|ULA|Mux29~3_combout\)) # (!\FD|ULA|Mux31~7_combout\ & (!\FD|ULA|Mux29~3_combout\ & \FD|ULA|Mux28~3_combout\)))) # (!\FD|ULA|Mux30~3_combout\ & 
-- (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux31~7_combout\ $ (\FD|ULA|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~7_combout\,
	datab => \FD|ULA|Mux30~3_combout\,
	datac => \FD|ULA|Mux29~3_combout\,
	datad => \FD|ULA|Mux28~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[3]~3_combout\);

\DISPLAY0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux31~7_combout\ & (!\FD|ULA|Mux28~3_combout\))) # (!\FD|ULA|Mux30~3_combout\ & ((\FD|ULA|Mux29~3_combout\ & ((!\FD|ULA|Mux28~3_combout\))) # (!\FD|ULA|Mux29~3_combout\ & 
-- (\FD|ULA|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|Mux31~7_combout\,
	datac => \FD|ULA|Mux28~3_combout\,
	datad => \FD|ULA|Mux29~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[4]~4_combout\);

\DISPLAY0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux31~7_combout\ & (\FD|ULA|Mux30~3_combout\ $ (\FD|ULA|Mux28~3_combout\)))) # (!\FD|ULA|Mux29~3_combout\ & (!\FD|ULA|Mux28~3_combout\ & ((\FD|ULA|Mux31~7_combout\) # 
-- (\FD|ULA|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux31~7_combout\,
	datac => \FD|ULA|Mux30~3_combout\,
	datad => \FD|ULA|Mux28~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[5]~5_combout\);

\DISPLAY0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux31~7_combout\ & (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux29~3_combout\ $ (!\FD|ULA|Mux30~3_combout\)))) # (!\FD|ULA|Mux31~7_combout\ & (!\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux29~3_combout\ $ 
-- (!\FD|ULA|Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux31~7_combout\,
	datac => \FD|ULA|Mux30~3_combout\,
	datad => \FD|ULA|Mux28~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[6]~6_combout\);

\DISPLAY1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux26~3_combout\ $ (\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux24~3_combout\ & (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux27~3_combout\ $ 
-- (\FD|ULA|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \FD|ULA|Mux24~3_combout\,
	datac => \FD|ULA|Mux27~3_combout\,
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[0]~0_combout\);

\DISPLAY1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux24~3_combout\)) # (!\FD|ULA|Mux27~3_combout\ & ((\FD|ULA|Mux25~3_combout\))))) # (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux25~3_combout\ & 
-- (\FD|ULA|Mux24~3_combout\ $ (\FD|ULA|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \FD|ULA|Mux24~3_combout\,
	datac => \FD|ULA|Mux25~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[1]~1_combout\);

\DISPLAY1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux25~3_combout\ & (\FD|ULA|Mux24~3_combout\ & ((\FD|ULA|Mux26~3_combout\) # (!\FD|ULA|Mux27~3_combout\)))) # (!\FD|ULA|Mux25~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux26~3_combout\ & 
-- !\FD|ULA|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~3_combout\,
	datab => \FD|ULA|Mux24~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[2]~2_combout\);

\DISPLAY1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux25~3_combout\)) # (!\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux25~3_combout\ & \FD|ULA|Mux24~3_combout\)))) # (!\FD|ULA|Mux26~3_combout\ & 
-- (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux27~3_combout\ $ (\FD|ULA|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~3_combout\,
	datab => \FD|ULA|Mux26~3_combout\,
	datac => \FD|ULA|Mux25~3_combout\,
	datad => \FD|ULA|Mux24~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[3]~3_combout\);

\DISPLAY1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux24~3_combout\))) # (!\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux25~3_combout\ & ((!\FD|ULA|Mux24~3_combout\))) # (!\FD|ULA|Mux25~3_combout\ & 
-- (\FD|ULA|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux24~3_combout\,
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[4]~4_combout\);

\DISPLAY1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux25~3_combout\ & (\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux26~3_combout\ $ (\FD|ULA|Mux24~3_combout\)))) # (!\FD|ULA|Mux25~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & ((\FD|ULA|Mux27~3_combout\) # 
-- (\FD|ULA|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux24~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[5]~5_combout\);

\DISPLAY1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY1|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux25~3_combout\ $ (!\FD|ULA|Mux26~3_combout\)))) # (!\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux25~3_combout\ $ 
-- (!\FD|ULA|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux24~3_combout\,
	combout => \DISPLAY1|rascSaida7seg[6]~6_combout\);

\DISPLAY6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(0) & (\FD|PC|data_s\(3) & !\FD|PC|data_s\(2))) # (!\FD|PC|data_s\(0) & (!\FD|PC|data_s\(3) & \FD|PC|data_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(0),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \DISPLAY6|rascSaida7seg[0]~0_combout\);

\DISPLAY6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[1]~1_combout\ = ((!\FD|PC|data_s\(0) & !\FD|PC|data_s\(2))) # (!\FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(0),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[1]~1_combout\);

\DISPLAY6|rascSaida7seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg~2_combout\ = (\FD|PC|data_s\(2) & \FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg~2_combout\);

\DISPLAY6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(2) & ((\FD|PC|data_s\(0)) # (!\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[3]~3_combout\);

\DISPLAY6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(3)) # ((!\FD|PC|data_s\(0) & !\FD|PC|data_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(2),
	combout => \DISPLAY6|rascSaida7seg[4]~4_combout\);

\DISPLAY6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[5]~5_combout\ = (\FD|PC|data_s\(0) & !\FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[5]~5_combout\);

\DISPLAY6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY6|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(2) & (\FD|PC|data_s\(0) $ (\FD|PC|data_s\(3)))) # (!\FD|PC|data_s\(2) & (!\FD|PC|data_s\(0) & !\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \DISPLAY6|rascSaida7seg[6]~6_combout\);

\DISPLAY7|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(7) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) $ (\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (\FD|PC|data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(6),
	combout => \DISPLAY7|rascSaida7seg[0]~0_combout\);

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

\DISPLAY7|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[2]~2_combout\ = (\FD|PC|data_s\(6) & (\FD|PC|data_s\(7) & ((\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(5) & !\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(4),
	combout => \DISPLAY7|rascSaida7seg[2]~2_combout\);

\DISPLAY7|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(5) & ((\FD|PC|data_s\(4) & (\FD|PC|data_s\(6))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(6) & \FD|PC|data_s\(7))))) # (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(4) $ 
-- (\FD|PC|data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \DISPLAY7|rascSaida7seg[3]~3_combout\);

\DISPLAY7|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(7)))) # (!\FD|PC|data_s\(5) & ((\FD|PC|data_s\(6) & ((!\FD|PC|data_s\(7)))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(6),
	combout => \DISPLAY7|rascSaida7seg[4]~4_combout\);

\DISPLAY7|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[5]~5_combout\ = (\FD|PC|data_s\(6) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) $ (\FD|PC|data_s\(7))))) # (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & ((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \DISPLAY7|rascSaida7seg[5]~5_combout\);

\DISPLAY7|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY7|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(6) $ (!\FD|PC|data_s\(5))))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(6) $ (!\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \DISPLAY7|rascSaida7seg[6]~6_combout\);

\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


