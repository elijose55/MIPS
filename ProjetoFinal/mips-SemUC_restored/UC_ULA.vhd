-- Design de Computadores
-- file: UC_ULA.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity UC_ULA is
	port
    (
        funct               : IN STD_LOGIC_VECTOR(FUNCT_WIDTH-1 DOWNTO 0);
        ALUop               : IN STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
        ALUctr              : OUT STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of ALUControl is
begin
	process(ULAOp, funct)
	begin
		if(ULAOp = aluOpAdd) then
			ALUctr <= ulaCtrlAdd;
			
		elsif (ULAOp = aluOpSub) then
			ALUctr <= ulaCtrlSub;
			
		elsif(ULAOp = readFunctULA) then
			if(funct = functADD) then
				ALUctr <= ulaCtrlAdd;
			elsif(funct = functSUB) then
				ALUctr <= ulaCtrlSub;
			elsif(funct = functAND) then
				ALUctr <= ulaCtrlAnd;
			elsif(funct = functOR) then 
				ALUctr <= ulaCtrlOr;
			elsif(funct = functSLT) then
				ALUctr <= ulaCtrlSlt;
			else
				ALUctr <= "0000";
			end if;
		else 
			ULActrl <= "0000";
		end if;
	end process;
end bhv;