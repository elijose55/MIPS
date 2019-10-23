-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: muxBancoReg.vhd
-- date: 08/10/2019

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity muxBancoReg is
	generic (
		larguraBarramentoDados		: natural := 8
	);
	port 
	(
		inA	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		inB	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		inC	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		sel	: in std_logic_vector (1 downto 0);
		outMux	: out std_logic_vector	(larguraBarramentoDados-1 downto 0)
	);

end entity;

architecture comportamentoMuxBancoReg of muxBancoReg is
begin

	with sel select 
		outMux <= inA when "00", -- passa valor que chega do imediato
				  inB when "01", -- passa valor que chega da saida da ULA
				  inC when "10", -- passa valor que chega do I/O
				  (others => '0') when others;


end architecture;