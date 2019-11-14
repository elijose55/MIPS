-- Design de Computadores
-- file: uc.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity uc is
	port
    (
        opcode              	: IN STD_LOGIC_VECTOR(OPCODE_WIDTH-1 DOWNTO 0);
        pontosDeControle    	: OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of uc is


constant tipoR : std_logic_vector(OPCODE_WIDTH-1 downto 0) := "000000"; -- Opcode da Instrucao Branch on Equal
constant BEQ : std_logic_vector(OPCODE_WIDTH-1 downto 0) := "000100"; -- Opcode da Instrucao Branch on Equal
constant LW : std_logic_vector(OPCODE_WIDTH-1 downto 0) := "100011"; -- Opcode da Instrucao Load Word
constant SW : std_logic_vector(OPCODE_WIDTH-1 downto 0) := "101011"; -- Opcode da Instrucao Store Word
constant J : std_logic_vector(OPCODE_WIDTH-1 downto 0) := "000010"; -- Opcode da Instrucao Store Word

begin
--    process(opcode)
	 
	pontosDeControle <= ctrlTipoR when opcode = tipoR else
	ctrlTipoBEQ when opcode = BEQ else
	ctrlTipoLW when opcode = LW else
	ctrlTipoSW when opcode = SW else
	ctrlTipoJ when opcode = J else
	ctrlNop;
								


end bhv;