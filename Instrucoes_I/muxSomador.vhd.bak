library ieee;
use ieee.std_logic_1164.all;

entity muxSomador is
    generic (
        -- Total de bits das entradas e saidas
        larguraDados    : natural  :=   32
    );
    port (
        entradaSomadorA    : in  std_logic_vector(larguraDados-1 downto 0);
        entradaSomadorB    : in  std_logic_vector(larguraDados-1 downto 0);
        seletor   : in  std_logic;

        saida_MUX   : out std_logic_vector(larguraDados-1 downto 0)
    );
end entity;

architecture comportamento of muxSomador is
begin
    process(entradaSomadorA, entradaSomadorB, seletor) is
    begin
        if(seletor='0') then
            saida_MUX <= entradaSomadorB;
        else
            saida_MUX <= entradaSomadorA;
        end if;
    end process;
end architecture;