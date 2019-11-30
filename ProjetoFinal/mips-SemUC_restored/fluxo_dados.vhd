-- Design de Computadores
-- file: fluxo_dados.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity fluxo_dados is
    generic (
        larguraROM          : natural := 8 -- deve ser menor ou igual a 32
    );
	port
    (
        clk			            : IN STD_LOGIC;
        pontosDeControle        : IN STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
        instrucao               : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		  saidaUla : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		  programCounter : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		  
		  PCdisplay		  : OUT STD_LOGIC_VECTOR (DATA_WIDTH-1 DOWNTO 0);
		  ULADisplay	      : OUT STD_LOGIC_VECTOR (DATA_WIDTH-1 DOWNTO 0)
		  
    );
end entity;

architecture estrutural of fluxo_dados is

    -- Declaração de sinais auxiliares
    
    -- Sinais auxiliar da instrução
    signal instrucao_s : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para o banco de registradores
    signal RA, RB : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a ULA
    signal saida_ula : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal Z_out : std_logic;

    -- Sinais auxiliares para a lógica do PC
    signal PC_s, PC_mais_4, PC_mais_4_mais_imediato, entrada_somador_beq : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a RAM
    signal dado_lido_mem : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do imediato
    signal sinal_ext : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do endereço de jump
    signal PC_4_concat_imed : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_shift_jump : std_logic_vector(27 downto 0);
            
    -- Sinais auxiliares dos MUXs
    signal sel_mux_beq : std_logic;
    signal saida_mux_ula_mem, saida_mux_banco_ula, saida_mux_beq, saida_mux_jump : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_mux_rd_rt : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
     
    -- Controle da ULA
    signal ULActr : std_logic_vector(CTRL_ALU_WIDTH-1 downto 0);
	 signal fun : std_logic_vector(5 downto 0);  -- funct da ULA
	 
	 -- PipeLines
	 signal entradaP1, saidaP1 : std_logic_vector(63 downto 0)  := (others=> '0');  -- entradas e saidas do registrador IF/ID
	 signal entradaP2, saidaP2 : std_logic_vector(148 downto 0) := (others=> '0');  -- entradas e saidas do registrador ID/EX
	 signal entradaP3, saidaP3 : std_logic_vector(107 downto 0) := (others=> '0');  -- entradas e saidas do registrador EX/MEM
	 signal entradaP4, saidaP4 : std_logic_vector(70 downto 0)  := (others=> '0');  -- entradas e saidas do registrador MEM/WB

    -- Codigos da palavra de controle:
    alias ULAop             : std_logic_vector(ALU_OP_WIDTH-1 downto 0) is pontosDeControle(10 downto 8);
    alias escreve_RC        : std_logic is pontosDeControle(7);
    alias escreve_RAM       : std_logic is pontosDeControle(6);
    alias leitura_RAM       : std_logic is pontosDeControle(5);
    alias sel_mux_ula_mem   : std_logic is pontosDeControle(4);
    alias sel_mux_rd_rt     : std_logic is pontosDeControle(3);
    alias sel_mux_banco_ula : std_logic is pontosDeControle(2);
    alias sel_beq           : std_logic is pontosDeControle(1);
    alias sel_mux_jump      : std_logic is pontosDeControle(0);

    -- Parsing da instrucao
    alias RS_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao_s(25 downto 21);
    alias RT_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao_s(20 downto 16);
    alias RD_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao_s(15 downto 11);
    alias funct     : std_logic_vector(FUNCT_WIDTH-1 downto 0) is  instrucao_s(5 DOWNTO 0);
    alias imediato  : std_logic_vector(15 downto 0) is instrucao_s(15 downto 0);

begin

    instrucao <= saidaP1(31 DOWNTO 0);
	 

    sel_mux_beq <= saidaP3(104) AND saidaP3(69);
	 
	 PCdisplay <= PC_s;
	 ULADisplay <= saida_ula;
	 fun <= saidaP2(15 downto 10);
	 	

    -- Ajuste do PC para jump (concatena com imediato multiplicado por 4)
    PC_4_concat_imed <= PC_mais_4(31 downto 28) & saida_shift_jump;
	 
	 
	 -- Pipeline Registrador IF/ID:
	 entradaP1(31 downto 0)  <= instrucao_s;
	 entradaP1(63 downto 32) <= PC_mais_4;
	 REG_IF_ID: entity work.Registrador
	 	 generic map(NUM_BITS=> 64)
	 	 port map (clk=> clk, enable=> '1', reset=> '1', data_in=> entradaP1, data_out=> saidaP1);
		 
		 
	-- Pipeline Registrador ID/EX: 
	entradaP2(4 downto 0)		<= saidaP1(20 downto 16); --RT_addr
	entradaP2(9 downto 5)		<= saidaP1(15 downto 11); --RD_addr
	entradaP2(41 downto 10)		<= sinal_ext;
	entradaP2(73 downto 42)		<= RB; --read2 do Banco de reg
	entradaP2(105 downto 74)	<= RA; --read1 do Banco de reg
	entradaP2(137 downto 106)	<= saidaP1(63 downto 32);  --PC_mais_4
	entradaP2(138)					<= sel_mux_banco_ula;
	entradaP2(141 downto 139)	<= ULAop;
	entradaP2(142)					<= sel_mux_rd_rt;
	entradaP2(143)					<= escreve_RAM;
	entradaP2(144)					<= leitura_RAM;
	entradaP2(145)					<= sel_beq;
	entradaP2(146)					<= sel_mux_ula_mem;
	entradaP2(147)					<= escreve_RC;


	
	REG_ID_EX: entity work.registrador
		generic map(NUM_BITS=> 149)
		port map (clk=> clk, enable=> '1', reset=> '1', data_in=> entradaP2, data_out=> saidaP2);
		
		
	-- Pipeline Registrador EX/MEM:
	entradaP3(4 downto 0)		<= saida_mux_rd_rt;
	entradaP3(36 downto 5)		<= saidaP2(73 downto 42);
	entradaP3(68 downto 37)		<= saida_ula;
	entradaP3(69)					<= Z_out;
	entradaP3(101 downto 70)	<= PC_mais_4_mais_imediato;
	entradaP3(102)					<= saidaP2(143);
	entradaP3(103)					<= saidaP2(144);
	entradaP3(104)					<= saidaP2(145);
	entradaP3(105)					<= saidaP2(146);
	entradaP3(106)					<= saidaP2(147);
	entradaP3(107)					<= saidaP2(148);
	
	
	REG_EX_MEM: entity work.registrador
		generic map(NUM_BITS=> 108)
		port map (clk=> clk, enable=> '1', reset=> '1', data_in=> entradaP3, data_out=> saidaP3);
		
		
	-- Pipeline Registrador MEM/WB:
	entradaP4(4 downto 0) 	<= saidaP3(4 downto 0);
	entradaP4(36 downto 5) 	<= saidaP3(68 downto 37);
	entradaP4(68 downto 37) <= dado_lido_mem;
	entradaP4(69)				<= saidaP3(105);
	entradaP4(70)				<= saidaP3(106);
	
	REG_MEM_WB: entity work.registrador
		generic map(NUM_BITS=> 71)
		port map (clk=> clk, enable=> '1', reset=> '1', data_in=> entradaP4, data_out=> saidaP4);

    -- Banco de registradores
     BR: entity work.bancoRegistradores 
        generic map (
            larguraDados => DATA_WIDTH, 
            larguraEndBancoRegs => 5
        )
        port map (
				enderecoA => saidaP1(25 downto 21),
            enderecoB => saidaP1(20 downto 16),
            enderecoC => saidaP4(4 downto 0),
            clk          => clk,
            dadoEscritaC => saida_mux_ula_mem, 
            escreveC     => saidaP4(70),
            saidaA       => RA,
            saidaB       => RB
        );
    
    -- ULA
     ULA: entity work.ULA
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
				A   => saidaP2(105 downto 74),
            B   => saida_mux_banco_ula,
            ctr => ULActr,
            C   => saida_ula,
            Z   => Z_out
        );
    
    UCULA : entity work.uc_ula 
        port map
        (
            funct  => fun,
            ALUop  => saidaP2(141 downto 139),
            ALUctr => ULActr
        );
     
    -- PC e somadores
     PC: entity work.Registrador
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            data_out => PC_s,
            data_in  => saida_mux_jump,
            clk      => clk,
            enable   => '1',
            reset    => '1' -- reset negado
        );
		  
    
     Somador_imediato: entity work.somador 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => entrada_somador_beq,
            entradaB => saidaP2(137 downto 106),
            saida    => PC_mais_4_mais_imediato
        );
    
     Somador: entity work.soma4
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entrada => PC_s,
            saida   => PC_mais_4
        ); 

    -- ROM
    ROM: entity work.ROM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => larguraROM
        ) 
		port map (
            endereco => PC_s(larguraROM-1 downto 0),
            dado     => instrucao_s
        );
    
    -- RAM: escreve valor lido no registrador B no endereço de memória de acordo com a saída da ULA
     RAM: entity work.single_port_RAM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => ADDR_WIDTH
        )
		port map (
            endereco    => saidaP3(68 downto 37), 
				we          => saidaP3(102),
            re          => saidaP3(103),
            clk         => clk,
            dado_write  => saidaP3(36 downto 5),
            dado_read   => dado_lido_mem
        ); 

     -- Componentes manipuladores do imediato
     extensor: entity work.estendeSinalGenerico 
        generic map (
            larguraDadoEntrada => 16,
            larguraDadoSaida   => DATA_WIDTH
        )
		port map (
            estendeSinal_IN  => saidaP1(15 downto 0),
            estendeSinal_OUT => sinal_ext 
        ); 

     shift: entity work.shift2_imediato 
        generic map (
            larguraDado => DATA_WIDTH
        )
		port map (
            shift_IN  => saidaP2(41 downto 10),
            shift_OUT => entrada_somador_beq
        );
    
    -- Componentes manipuladores do endereço de jump
     shift_jump: entity work.shift2 
        generic map (
            larguraDado => 26
        )
		port map (
            shift_IN  => saidaP1(25 downto 0),
            shift_OUT => saida_shift_jump
        );
    
    -- MUXs
     mux_Ula_Memoria: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => saidaP4(36 downto 5), 
            entradaB => saidaP4(68 downto 37), 
            seletor  => saidaP4(69),
            saida    => saida_mux_ula_mem
        );
	 
     mux_Rd_Rt: entity work.muxGenerico2 
        generic map (
            larguraDados => REGBANK_ADDR_WIDTH
        )
		port map (
            entradaA => saidaP2(4 downto 0), 
            entradaB => saidaP2(9 downto 5),
            seletor  => saidaP2(142),
            saida    => saida_mux_rd_rt
        );
	
     mux_Banco_Ula: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => saidaP2(73 downto 42), 
            entradaB => saidaP2(41 downto 10),  
            seletor  => saidaP2(138),
            saida    => saida_mux_banco_ula
        );
		
     mux_beq: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => PC_mais_4,
            entradaB => saidaP3(101 downto 70),
            seletor  => sel_mux_beq,
            saida    => saida_mux_beq
        );
		
     mux_jump: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => saida_mux_beq,
            entradaB => PC_4_concat_imed,
            seletor  => sel_mux_jump,
            saida    => saida_mux_jump
        );
		  
		  saidaUla <= saida_ula;
		  programCounter <= PC_s;

end architecture;
