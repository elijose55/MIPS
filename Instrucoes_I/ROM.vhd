-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: ROM.vhd
-- date: 08/10/2019

-- link de referencia : https://insper.blackboard.com/bbcswebdav/pid-624290-dt-content-rid-4022180_2/courses/201962.GRENGCOM_201561_0004.DESIGNCOMP_6ENGCOMPA/Atividades/vhdl/_componentesVHDL.html

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is

    generic
    (
        dataWidth : natural := 32;
        addrWidth : natural := 32;
		  memoryAddrWidth:  natural := 6
    );

    port (
			--clk      : IN  STD_LOGIC;
         Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
         Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture initFileROM of rom is

	type memory_t is array (0 to 2**addrWidth -1) of std_logic_vector (dataWidth-1 downto 0);
	signal content: memory_t;
	attribute ram_init_file : string;
	attribute ram_init_file of content:
	signal is "binario.mif"; -- Arquivo que contem o set de intrucoes

-- Utiliza uma quantidade menor de endereços locais:
	signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
	EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
   Dado <= content(to_integer(unsigned(EnderecoLocal)));
end architecture;