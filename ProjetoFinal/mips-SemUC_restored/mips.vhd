-- Design de Computadores
-- file: mips.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity mips is
	port
    (
        CLOCK_50			            : IN  STD_LOGIC;
		  saidaUla : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		  saidaPC : OUT STD_LOGIC_VECTOR(DATA_WIDTH -1 DOWNTO 0);
		  KEY      : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- buttons 
		  
		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: OUT STD_LOGIC_VECTOR(6 downto 0) -- 7-segments Display
    );
end entity;

architecture estrutural of mips is

	-- Declaração de sinais auxiliares
    signal pontosDeControle     : STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
    signal instrucao            : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    signal ALUop                : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
    signal ALUctr               : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0);
	 
	 signal btn_reset, btn_clock : STD_LOGIC := '0';
	 signal dadoDisplay, saidaDisplay, PCdisplay: std_logic_vector(31 downto 0) := (others=> '0'); 
	 signal enableDisplay: std_logic := '1';

    alias opcode : std_logic_vector(OPCODE_WIDTH-1 downto 0) is instrucao(31 DOWNTO 26);
	 
	 
begin

    -- CLOCK generator auxiliar para simulação
    -- CG : entity work.clock_generator port map (clk	=> clk);
	 
	 BTN_RST : entity work.edgeDetector port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => btn_reset);
	 BTN_CLK : entity work.edgeDetector port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => btn_clock);
	 
	 DISPLAY0 : entity work.conversorHex7seg port map (saida7seg => HEX0, dadoHex => "0001"); -- saidaUla(3 DOWNTO 0)
	 DISPLAY1 : entity work.conversorHex7seg port map (saida7seg => HEX1, dadoHex => "1111");	-- saidaUla(7 DOWNTO 4)
	 DISPLAY2 : entity work.conversorHex7seg port map (saida7seg => HEX2, dadoHex => "1110");	 
	 DISPLAY3 : entity work.conversorHex7seg port map (saida7seg => HEX3, dadoHex => "0000");	 
	 
	 DISPLAY6 : entity work.conversorHex7seg port map (saida7seg => HEX6, dadoHex => PCdisplay(3 DOWNTO 0));
	 DISPLAY7 : entity work.conversorHex7seg port map (saida7seg => HEX7, dadoHex => PCdisplay(7 DOWNTO 4));

    FD : entity work.fluxo_dados 
	port map
	(
        clk	                    => btn_clock,
        pontosDeControle        => pontosDeControle,
        instrucao               => instrucao,
		  saidaUla => saidaUla,
		  programCounter => saidaPC,
		  
		  dadoDisplay => dadoDisplay,
		  PCdisplay => PCdisplay
		  
    );
	 
	 

    UC : entity work.uc 
	port map
	(
        opcode              	=> opcode,
        pontosDeControle    	=> pontosDeControle
    );
end architecture;
