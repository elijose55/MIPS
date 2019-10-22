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
		sel	: in std_logic_vector	(2 downto 0);
		outULA	: out std_logic_vector	(larguraBarramentoDados-1 downto 0);
		flagEqual : out std_logic
	);

end entity;

architecture arc_ula of ULA is
	signal equal : std_logic;
begin
	
		outULA <= std_logic_vector(unsigned(inA) + unsigned(inB)) when sel = "000" else -- soma A + B
					inA when sel = "011" else -- passa A
					inB when sel = "010" else -- passa B
					"00000000";  -- nao faz nada

	
		flagEqual <= '1' when inA=inB else --seta flag quand A = B
		'0';
		
end arc_ula;