-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: switches.vhd
-- date: 08/10/2019

-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it.        
library ieee;
use ieee.std_logic_1164.all;

entity switches is
    generic (
        quantidadeChaves    : natural := 18
    );
    port
    (
        SW   : IN STD_LOGIC_VECTOR(quantidadeChaves-1 downto 0);
        saida           : OUT STD_LOGIC_VECTOR(1 downto 0);
		  saida_CPU : OUT STD_LOGIC
		 
    );
end entity;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)
architecture swArch of switches is

	
begin
	-- Passa a entrada para a saida
	saida <= SW(1) & SW(0);  -- saida de um vetor de 2 bits (dois primeiros switches)
	saida_CPU <= SW(17);
	
end swArch;
