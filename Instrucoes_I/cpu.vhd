-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: cpu.vhd
-- date: 08/10/2019
library ieee;
use ieee.std_logic_1164.all;

entity cpu is
    generic (
		larguraBarramentoDados			: natural := 32;
		larguraBarramentoEnderecos		: natural := 32;
				quantidadeChaves    		: natural := 18;
				quantidadeBotoes			: natural := 3

		
    );
	port
    (
       clk			            		: IN  STD_LOGIC;
		 barramentoDadosEntrada			: IN STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
       barramentoEnderecoSaida		: OUT STD_LOGIC_VECTOR(larguraBarramentoEnderecos-1 DOWNTO 0);
	    barramentoDadosSaida			: OUT STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
		 SW 	: IN STD_LOGIC_VECTOR(quantidadeChaves -1 DOWNTO 0);
		 LEDG : out std_logic_vector(6 downto 0);
		 KEY 	: IN STD_LOGIC_VECTOR(quantidadeBotoes -1 DOWNTO 0)

    );
end entity;

architecture estrutural of cpu is

	-- Declaração de sinais auxiliares
	signal ROM_instruction : STD_LOGIC_VECTOR(larguraBarramentoDados - 1 downto 0);
	signal reg1_out, reg2_out, ULA_out, dadoEscritaReg3, Somador_out, Somador2_out, muxSomadorOut, PC_out, saidaMuxULA : STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
   signal wrReg, flagEqualOut, saidaAND : STD_LOGIC;
	signal sinalEstendido : STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
	signal opULA : STD_LOGIC_VECTOR(3 downto 0);

	
    -- ...

begin

	    -- Instanciacao da ROM
	 ROM : entity work.ROM
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
		enderecoReg1			=> ROM_instruction(25 downto 21),
		enderecoReg2			=> ROM_instruction(20 downto 16),
		enderecoReg3			=> ROM_instruction(20 downto 16),
      dadoEscritaReg3	   => ULA_out,
      escreveReg3	        	=> SW(1),
      saidaReg1   		   => reg1_out,
		saidaReg2   		   => reg2_out 
    );

    -- Instanciação do Program Counter
    PC : entity work.PC 
     generic map (
	  larguraBarramentoDados => larguraBarramentoDados
     )
	port map
	(
      clk	        	=> clk,
		input				=> muxSomadorOut,
      output	    	=> PC_out,
		enable 			=> KEY(0),
		reset 			=> KEY(1)
		  
    );

    
    -- Instanciação de Somador com Constante
    SC : entity work.somadorConstante 
    generic map (
        larguraBarramentoDados    => larguraBarramentoDados
    )
	port map
	(
		inSomador			=> PC_out,
		outSomador	      => Somador_out
    );
	 
	 
    -- Instanciação de Somador com Variavel
    SV : entity work.somadorVariavel 
    generic map (
        larguraBarramentoDados    => larguraBarramentoDados
    )
	port map
	(
		inSomador			=> Somador_out,
		inExtensor			=> sinalEstendido,
		outSomador	      => Somador2_out
    );
	 
	 
    -- Instanciação do Mux dos somadores
    MUXSOMADOR : entity work.muxSomador 
    generic map (
        larguraBarramentoDados    => larguraBarramentoDados
    )
	port map
	(
		entradaSomadorA			=> Somador_out,
		entradaSomadorB			=> Somador2_out,
		seletor 						=> saidaAND,
		saida_MUX	      		=> muxSomadorOut
    );
	 
    -- Instanciação do Mux dos somadores
    muxULA : entity work.muxULA 
    generic map (
        larguraBarramentoDados    => larguraBarramentoDados
    )
	port map
	(
		entradaBancoReg_MUX		=> reg2_out,
		entradaExtensor			=> sinalEstendido,
		seletor 						=> SW(3),
		saida_MUX	      		=> saidaMuxULA
    );
	 
	
    -- Instanciação da porta AND
    PORTA_AND : entity work.portaAND 
	port map
	(
		inA			=> flagEqualOut,
		inB			=> SW(2),
		outC 			=> saidaAND
    );
	 
    -- Instanciação do extensor de sinal
    EXTENSOR : entity work.extensorSinal 
	port map
	(
		estendeSinal_IN			=> ROM_instruction(15 downto 0),
		estendeSinal_OUT			=> sinalEstendido
    );
	 
	 
	 -- Instanciacao da ULA
	 ULA : entity work.ULA
	generic map (
        larguraBarramentoDados    => larguraBarramentoDados
    )
	port map
	(
		sel			=> SW(0),
		inA	     	=> reg1_out,
		inB 			=> saidaMuxULA,
		outULA 		=> ULA_out,
		flagEqual 	=> flagEqualOut
    );
	 BarramentoDadosSaida <= ULA_out;
    LEDG(6 downto 0) <= PC_out(6 downto 0); -- Acompanhamento de instrucoes

end architecture;
