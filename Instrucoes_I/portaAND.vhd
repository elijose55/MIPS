-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: portaAND.vhd
-- date: 08/10/2019

library ieee;
use ieee.std_logic_1164.all;

entity portaAND is
	port 
	(
		inA	   	: in  std_logic;
		inB			: in  std_logic;
		outC 			: out  std_logic
	);

end entity;

architecture arch of portaAND is
begin
	-- Faz um AND entre a saida BEQ da UC e a FlagEqual da ULA

	outC <= inA and inB;

end arch;