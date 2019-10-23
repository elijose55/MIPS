-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: bancoRegistradores.vhd
-- date: 08/10/2019


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity bancoRegistradores is
    generic
    (
        larguraBarramentoDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);

--
        dadoEscritaA    : in std_logic_vector((larguraBarramentoDados-1) downto 0);
--
        escreveA        : in std_logic;
        saidaA          : out std_logic_vector((larguraBarramentoDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoRegistradores is

    subtype palavra_t is std_logic_vector((larguraBarramentoDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveA = '1') then
                registrador(to_integer(unsigned(enderecoA))) := dadoEscritaA; -- escreve no registrador A o dado que chega
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(enderecoA) = 0) then
            saidaA <= (others => '0');
         else
            saidaA <= registrador(to_integer(unsigned(enderecoA)));
         end if;
     end process;
end architecture;