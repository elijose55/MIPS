-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: somadorVariavel.vhd
-- date: 08/10/2019

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

entity somadorVariavel is
	generic (
		larguraBarramentoDados		: natural := 32
	);
	port 
	(
		inSomador	   	: in std_logic_vector  (larguraBarramentoDados-1 downto 0);
		inExtensor			: in std_logic_vector  (larguraBarramentoDados-1 downto 0);
		outSomador 			: out std_logic_vector (larguraBarramentoDados-1 downto 0)
	);

end entity;

architecture arc_somadorConstante of somadorVariavel is
begin
	-- Soma a saida do somador constante com a saida do extensor de sinal

	outSomador <= inSomador + inExtensor;

end arc_somadorConstante;