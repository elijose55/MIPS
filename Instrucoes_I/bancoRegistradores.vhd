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
        enderecoReg1       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
		  enderecoReg2       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
		  enderecoReg3       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);

--
        dadoEscritaReg3    : in std_logic_vector((larguraBarramentoDados-1) downto 0);
--
        escreveReg3        : in std_logic := '0';
        saidaReg1          : out std_logic_vector((larguraBarramentoDados -1) downto 0);
		  saidaReg2          : out std_logic_vector((larguraBarramentoDados -1) downto 0)

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
            if (escreveReg3 = '1') then
                registrador(to_integer(unsigned(enderecoReg3))) := dadoEscritaReg3; -- escreve no registrador 3 o dado que chega
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(enderecoReg1) = 0) then
            saidaReg1 <= (others => '0');
         else
            saidaReg1 <= registrador(to_integer(unsigned(enderecoReg1)));
         end if;
			
         if (unsigned(enderecoReg2) = 0) then
            saidaReg2 <= (others => '0');
         else
            saidaReg2 <= registrador(to_integer(unsigned(enderecoReg2)));
         end if;
     end process;
end architecture;