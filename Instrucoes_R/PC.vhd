-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: PC.vhd
-- date: 08/10/2019

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity PC is
	generic (
		larguraBarramentoDados		: natural := 8
	);
    port(
        clk     : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
		  enable : in STD_LOGIC;
        input     : in  STD_LOGIC_VECTOR(larguraBarramentoDados -1 downto 0);
        output    : out STD_LOGIC_VECTOR(larguraBarramentoDados -1 downto 0)
    );
end entity;

architecture arch of PC is
  signal toout : STD_LOGIC_VECTOR(larguraBarramentoDados -1 downto 0) := (others => '0');

begin
  process (clk) begin
    if rising_edge(clk) then
	 if(enable) then
			-- Passa  a entrada para a saida a cada borda de subida do clock
        toout <= input;
		  end if;
		  if(reset) then
			toout <= (others => '0');
  
		end if;
     
    end if;
  end process;

  output <= toout;

	end architecture;