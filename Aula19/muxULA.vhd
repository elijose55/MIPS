-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: muxULA.vhd
-- date: 08/10/2019

library ieee;
use ieee.std_logic_1164.all;

entity muxULA is
    generic (
        -- Total de bits das entradas e saidas
        larguraBarramentoDados    : natural  :=   32
    );
    port (
        entradaBancoReg_MUX    : in  std_logic_vector(larguraBarramentoDados-1 downto 0);
        entradaExtensor    : in  std_logic_vector(larguraBarramentoDados-1 downto 0);
        seletor   : in  std_logic;

        saida_MUX   : out std_logic_vector(larguraBarramentoDados-1 downto 0)
    );
end entity;

architecture comportamento of muxULA is
begin
    process(entradaBancoReg_MUX, entradaExtensor, seletor) is
    begin
        if(seletor='0') then
            saida_MUX <= entradaBancoReg_MUX;
        else
            saida_MUX <= entradaExtensor;
        end if;
    end process;
end architecture;