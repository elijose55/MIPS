-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: UC.vhd
-- date: 08/10/2019

library IEEE;
use ieee.std_logic_1164.all;

entity UC is
    generic
    (
        opcodeWidth : natural := 6
    );
    port
    (
       opcode : in std_logic_vector(opcodeWidth-1 downto 0); -- opcode(da rom)
		 habEscritaReg : out std_logic; -- Write no banco de registradores
		 opULA : out std_logic_vector(2 downto 0); -- Operacao que a ULA deve fazer
		 habLeituraMem : out std_logic;
		 habEscritaMem : out std_logic;
		 muxULA	: out std_logic;
		 flagBEQ: out std_logic;
		 selExtensor: out std_logic
    );
end entity;

architecture UCarch of UC is

constant BEQ : std_logic_vector(opcodeWidth-1 downto 0) := "000100"; -- Opcode da Instrucao Branch on Equal
constant LW : std_logic_vector(opcodeWidth-1 downto 0) := "100011"; -- Opcode da Instrucao Load Word
constant SW : std_logic_vector(opcodeWidth-1 downto 0) := "101011"; -- Opcode da Instrucao Store Word

	
begin
	habEscritaReg <= '1' when opcode = LW else '0';
	
	habLeituraMem <= '1' when opcode = LW else '0';
	
	
	opULA <= "001" when opcode = LW OR opcode = SW else
				"111";
	
	habEscritaMem <= '1' when opcode = SW else '0';
	
	flagBEQ <= '1' when opcode = BEQ else '0';
	
	selExtensor <= '1' when opcode = BEQ else '0';
	
	muxULA <= '1' when opcode = BEQ else '0';


					 
end architecture;