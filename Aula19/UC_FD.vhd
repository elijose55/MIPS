-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: UC.vhd
-- date: 08/10/2019

library IEEE;
use ieee.std_logic_1164.all;

entity UC_FD is
    generic
    (
        opcodeWidth : natural := 6
    );
    port
    (
       opcode : in std_logic_vector(opcodeWidth-1 downto 0); -- opcode(da rom)
		 RegDst : out std_logic; -- Write no banco de registradores
		 opULA : out std_logic_vector(1 downto 0); -- Operacao que a ULA deve fazer
		 ALUSrc : out std_logic;
		 MemtoReg : out std_logic;
		 RegWrite	: out std_logic;
		 MemRead: out std_logic;
		 MemWrite: out std_logic;

		 Branch: out std_logic
    );
end entity;

architecture UCarch of UC_FD is


constant Rformat : std_logic_vector(opcodeWidth-1 downto 0) := "000000"; -- Opcode da Instrucao Branch on Equal
constant BEQ : std_logic_vector(opcodeWidth-1 downto 0) := "000100"; -- Opcode da Instrucao Branch on Equal
constant LW : std_logic_vector(opcodeWidth-1 downto 0) := "100011"; -- Opcode da Instrucao Load Word
constant SW : std_logic_vector(opcodeWidth-1 downto 0) := "101011"; -- Opcode da Instrucao Store Word
	
begin

	opULA <= "00" when opcode = LW or opcode = SW else
				"01" when opcode = BEQ else
				"10" when opcode = Rformat else
				"11"
	
	RegDst <= '1' when opcode = Rformat else
				'0';
	
	ALUSrc <= '1' when (opcode = SW or opcode = LW) else
				'0';
	
	MemtoReg <= '1' when opcode = LW else
				'0';
	
	RegWrite <= '1' when (opcode = LW or opcode = Rformat) else
				'0';
	
	MemRead <= '1' when (opcode = LW) else
				'0';
	
	MemWrite <= '1' when opcode = SW else
				'0';
	
	Branch <= '1' when opcode = BEQ else
				'0';

					 
end architecture;