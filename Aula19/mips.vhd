-- Design de Computadores
-- file: topLevel.vhd
-- date: 20/09/2019
-- Autores: Eli Jose e Pedro Azambuja
library ieee;
use ieee.std_logic_1164.all;

entity mips is
	generic (
		larguraBarramentoEnderecos	: natural := 32;
		larguraBarramentoDados		: natural := 32;
		quantidadeChaves    		: natural := 18;
		quantidadeDisplays			: natural := 8;
		quantidadeBotoes			: natural := 3
    );
	port
    (
		CLOCK_50 : IN STD_LOGIC;
		-- CHAVES
        SW : IN STD_LOGIC_VECTOR(quantidadeChaves-1 downto 0);
		-- BOTOES
        KEY : IN STD_LOGIC_VECTOR(quantidadeBotoes-1 downto 0);
		-- DISPLAYS 7 SEG
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0) := "0000000";
		LEDG : out std_logic_vector(7 downto 0);
		LEDR : out std_logic_vector(17 downto 0) := "000000000000000000"
    );
end entity;

architecture estrutural of mips is

	-- Sinais de barramentos
	signal barramentoDadosSaida		: STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
	signal barramentoDadosEntrada		: STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
	signal barramentoEnderecoSaida	: STD_LOGIC_VECTOR(larguraBarramentoEnderecos-1 DOWNTO 0);

	-- Sinais de habilitacao dos componentes
	signal LCD_US, LCD_DS, LCD_UM, LCD_DM, LCD_UH, LCD_DH, enable_switch	: STD_LOGIC;
	signal reset: STD_LOGIC;
	-- Sinais auxiliares
	signal switches : std_logic_vector(1 downto 0);
	
begin
	-- Instanciação da CPU
	CPU : entity work.cpu 
	port map
	(
	
		LEDG => LEDG(6 downto 0),
		clk						=> CLOCK_50,
		barramentoDadosSaida	=> barramentoDadosSaida,
		barramentoDadosEntrada	=> barramentoDadosEntrada,
		barramentoEnderecoSaida => barramentoEnderecoSaida,
		SW => SW,
		KEY => KEY
		
	);
	
	-- Instanciação da RAM
	RAM : entity work.single_port_ram 
	port map
	(
	
		addr => barramentoEnderecoSaida,
		we => SW(4),
		clk  => CLOCK_50,
		dado_out	=> barramentoDadosEntrada,
		dado_in => barramentoDadosSaida
		
	);
	

	-- Instanciação de cada Display
	DISPLAY2 : entity work.display7Seg 
	port map
	(
		clk			=> CLOCK_50,
		dadoHex		=> barramentoDadosSaida(3 downto 0),
		habilita	=> LCD_US,
		saida7seg	=> HEX2
	);

	DISPLAY3 : entity work.display7Seg 
	port map
	(
		clk			=> CLOCK_50,
		dadoHex		=> barramentoDadosSaida(3 downto 0),
		habilita	=> LCD_DS,
		saida7seg	=> HEX3
	);
	DISPLAY4 : entity work.display7Seg 
	port map
	(
		clk			=> CLOCK_50,
		dadoHex		=> barramentoDadosSaida(3 downto 0),
		habilita	=> LCD_UM,
		saida7seg	=> HEX4
	);
	DISPLAY5 : entity work.display7Seg 
	port map
	(
		clk			=> CLOCK_50,
		dadoHex		=> barramentoDadosSaida(3 downto 0),
		habilita	=> LCD_DM,
		saida7seg	=> HEX5
	);
	DISPLAY6 : entity work.display7Seg 
	port map
	(
		clk			=> CLOCK_50,
		dadoHex		=> barramentoDadosSaida(3 downto 0),
		habilita	=> LCD_UH,
		saida7seg	=> HEX6
	);
	DISPLAY7 : entity work.display7Seg 
	port map
	(
		clk			=> CLOCK_50,
		dadoHex		=> barramentoDadosSaida(3 downto 0),
		habilita	=> LCD_DH,
		saida7seg	=> HEX7
	);
	DISPLAY1 : entity work.display7Seg 
	port map
	(
		clk			=> CLOCK_50,
		dadoHex		=> "1101",
		habilita	=> '1',
		saida7seg	=> HEX1
	);
	DISPLAY0 : entity work.display7Seg 
	port map
	(
		clk			=> CLOCK_50,
		dadoHex		=> "1101",
		habilita	=> '1',
		saida7seg	=> HEX0
	);


	
LEDR(0) <= SW(0); -- acende se o primeiro switch estiver ativo
LEDR(1) <= SW(1); -- acende se o segundo switch estiver ativo

end architecture;