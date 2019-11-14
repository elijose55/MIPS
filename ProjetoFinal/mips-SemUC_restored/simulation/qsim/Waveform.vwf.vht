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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/14/2019 15:12:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fluxo_dados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fluxo_dados_vhd_vec_tst IS
END fluxo_dados_vhd_vec_tst;
ARCHITECTURE fluxo_dados_arch OF fluxo_dados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL instrucao : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pontosDeControle : STD_LOGIC_VECTOR(10 DOWNTO 0);
COMPONENT fluxo_dados
	PORT (
	clk : IN STD_LOGIC;
	instrucao : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pontosDeControle : IN STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fluxo_dados
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	instrucao => instrucao,
	pontosDeControle => pontosDeControle
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- pontosDeControle[10]
t_prcs_pontosDeControle_10: PROCESS
BEGIN
	pontosDeControle(10) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_10;
-- pontosDeControle[9]
t_prcs_pontosDeControle_9: PROCESS
BEGIN
	pontosDeControle(9) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_9;
-- pontosDeControle[8]
t_prcs_pontosDeControle_8: PROCESS
BEGIN
	pontosDeControle(8) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_8;
-- pontosDeControle[7]
t_prcs_pontosDeControle_7: PROCESS
BEGIN
	pontosDeControle(7) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_7;
-- pontosDeControle[6]
t_prcs_pontosDeControle_6: PROCESS
BEGIN
	pontosDeControle(6) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_6;
-- pontosDeControle[5]
t_prcs_pontosDeControle_5: PROCESS
BEGIN
	pontosDeControle(5) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_5;
-- pontosDeControle[4]
t_prcs_pontosDeControle_4: PROCESS
BEGIN
	pontosDeControle(4) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_4;
-- pontosDeControle[3]
t_prcs_pontosDeControle_3: PROCESS
BEGIN
	pontosDeControle(3) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_3;
-- pontosDeControle[2]
t_prcs_pontosDeControle_2: PROCESS
BEGIN
	pontosDeControle(2) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_2;
-- pontosDeControle[1]
t_prcs_pontosDeControle_1: PROCESS
BEGIN
	pontosDeControle(1) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_1;
-- pontosDeControle[0]
t_prcs_pontosDeControle_0: PROCESS
BEGIN
	pontosDeControle(0) <= '0';
WAIT;
END PROCESS t_prcs_pontosDeControle_0;
END fluxo_dados_arch;
