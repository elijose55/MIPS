-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: cpu.vhd
-- date: date: 08/10/2019
library ieee;
use ieee.std_logic_1164.all;

entity cpu is
    generic (
		larguraBarramentoDados		: natural := 32;
				quantidadeChaves    		: natural := 18;
				quantidadeBotoes			: natural := 3

		
    );
	port
    (
	 	 LEDG : out std_logic_vector(6 downto 0);

        clk			            : IN  STD_LOGIC;
--        barramentoDadosEntrada	: IN STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
--        barramentoEnderecos		: OUT STD_LOGIC_VECTOR(larguraBarramentoEnderecos-1 DOWNTO 0);
	    barramentoDadosSaida	: OUT STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
		 SW : IN STD_LOGIC_VECTOR(quantidadeChaves -1 DOWNTO 0);
		 KEY : IN STD_LOGIC_VECTOR(quantidadeBotoes -1 DOWNTO 0)

    );
end entity;

architecture estrutural of cpu is

	-- Declaração de sinais auxiliares
	signal ROM_instruction : STD_LOGIC_VECTOR(larguraBarramentoDados - 1 downto 0);
	signal regS_out,regT_out, ULA_out,dadoEscritaD, Somador_out, PC_out : STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
   signal wrReg : STD_LOGIC;
	signal opULA : STD_LOGIC_VECTOR(3 downto 0);

	
    -- ...

begin

	    -- Instanciacao da ROM
	 ROM : entity work.romMif
	 generic map (dataWidth => larguraBarramentoDados, addrWidth => larguraBarramentoDados)
	 port map(
	 Dado => ROM_instruction,
	 Endereco => PC_out
	 );
	 

    -- Instanciação de Banco de Registradores
    BR : entity work.bancoRegistradores 
    generic map (
        larguraBarramentoDados    => larguraBarramentoDados
    )
	port map
	(
        clk	                => clk,
		enderecoS			=> ROM_instruction(25 downto 21),
		enderecoT			=> ROM_instruction(20 downto 16),
		enderecoD			=> ROM_instruction(15 downto 11),
        dadoEscritaD	    => ULA_out,
        escreveD	        => SW(1),
        saidaS   		    => RegS_out,
		  saidaT   		    => RegT_out 
    );

    -- Instanciação do Program Counter
    PC : entity work.PC 
     generic map (
	  larguraBarramentoDados => larguraBarramentoDados
     )
	port map
	(
        clk	        => clk,
		input			=> Somador_out,
        output	    => PC_out,
		  enable => KEY(0),
		  reset => KEY(1)
		  
    );

    
    -- Instanciação de Somador com Constante
    SOMADOR : entity work.somadorConstante 
    generic map (
        larguraBarramentoDados    => larguraBarramentoDados
    )
	port map
	(
		inSomador			=> PC_out,
		outSomador	        => Somador_out
    );
	 
	 
	 -- Instanciacao da ULA
	 ULA : entity work.ULA
	generic map (
        larguraBarramentoDados    => larguraBarramentoDados
    )
	port map
	(
		sel			=> SW(0),
		inA	        => regS_out,
		inB => regT_out,
		outULA => ULA_out
    );
	 BarramentoDadosSaida <= ULA_out;
    LEDG(6 downto 0) <= PC_out(6 downto 0); -- Acompanhamento de instrucoes

end architecture;
