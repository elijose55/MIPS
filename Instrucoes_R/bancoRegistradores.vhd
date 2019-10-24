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
		  -- enderecos dos 3 registradores
        enderecoD       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
		  enderecoS       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
		  enderecoT       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);

		  -- Dado a ser escrito em C
        dadoEscritaD    : in std_logic_vector((larguraBarramentoDados-1) downto 0);
		  -- Hab escrita em C
        escreveD        : in std_logic;
		  -- Saida dos registradores A e B
        saidaS          : out std_logic_vector((larguraBarramentoDados -1) downto 0);
		  saidaT          : out std_logic_vector((larguraBarramentoDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoRegistradores is

    subtype palavra_t is std_logic_vector((larguraBarramentoDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

	  function initMemory
        return memoria_t is variable tmp : memoria_t := (others => (others => '0'));
  begin
        -- Inicializa os endereços:

        tmp(9) := x"00000005";
        tmp(10) := x"00000004";
        tmp(11) := x"00000002";
        tmp(12) := x"00000001";
--        tmp(13) := x"46";
--        tmp(14) := x"47";
--        tmp(15) := x"55";
        return tmp;
    end initMemory;	 
	 
    -- Declaracao dos registradores:
    shared variable registrador : memoria_t := initMemory;

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveD = '1') then
                registrador(to_integer(unsigned(enderecoD))) := dadoEscritaD; -- escreve no registrador Rd o dado que chega
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(enderecoS) = 0) then
            saidaS <= (others => '0');
         else
            saidaS <= registrador(to_integer(unsigned(enderecoS)));
         end if;
			if (unsigned(enderecoT) = 0) then
            saidaT <= (others => '0');
         else
            saidaT <= registrador(to_integer(unsigned(enderecoT)));
         end if;
     end process;
end architecture;