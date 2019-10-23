-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: ULA.vhd
-- date: 08/10/2019

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ULA is
	generic (
		larguraBarramentoDados		: natural := 8
	);
	port 
	(
		inA	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		inB	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
--		sel	: in std_logic_vector	(3 downto 0);
		sel	: in std_logic;
		outULA	: out std_logic_vector	(larguraBarramentoDados-1 downto 0)
	);

end entity;

architecture arc_ula of ULA is
begin
	
		outULA <= std_logic_vector(unsigned(inA) + unsigned(inB)) when sel = '0' else -- soma A + B
					std_logic_vector(unsigned(inA) - unsigned(inB)) when sel = '1' else -- subtracao A - B
					"00000000000000000000000000000000";  -- nao faz nada
		
end arc_ula;