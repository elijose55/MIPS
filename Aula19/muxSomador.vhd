-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: muxSomador.vhd
-- date: 08/10/2019

library ieee;
use ieee.std_logic_1164.all;

entity muxSomador is
    generic (
        -- Total de bits das entradas e saidas
        larguraBarramentoDados    : natural  :=   32
    );
    port (
        entradaSomadorA    : in  std_logic_vector(larguraBarramentoDados-1 downto 0);
        entradaSomadorB    : in  std_logic_vector(larguraBarramentoDados-1 downto 0);
        seletor   			: in  std_logic;

        saida_MUX   : out std_logic_vector(larguraBarramentoDados-1 downto 0)
    );
end entity;

architecture comportamento of muxSomador is
begin
    process(entradaSomadorA, entradaSomadorB, seletor) is
    begin
        if(seletor='0') then
            saida_MUX <= entradaSomadorA;
        else
            saida_MUX <= entradaSomadorB;
        end if;
    end process;
end architecture;