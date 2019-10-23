-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: muxPC.vhd
-- date: 08/10/2019


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity muxPC is
	generic (
		larguraBarramentoDados		: natural := 8
	);
	port 
	(
		inSomadorConstante	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		inJump	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		sel	: in std_logic;
		outMux	: out std_logic_vector	(larguraBarramentoDados-1 downto 0)
	);

end entity;

architecture comportamentoMuxPc of muxPC is
begin

	with sel select 
		outMux <= inSomadorConstante when '0',
				  inJump when '1'; -- Realiza a instrucao de pulo quando o seletor possuir valor 1


end architecture;