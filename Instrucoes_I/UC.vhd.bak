-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: UC.vhd
-- date: 08/10/2019

library IEEE;
use ieee.std_logic_1164.all;

entity UC is
    port
    (
       opcode : in std_logic_vector(2 downto 0); -- opcode(da rom)
		 flagEqual : in std_logic; -- =1 se inA = inB
		 muxJMP : out std_logic; -- MUX que define o que entra no PC
		 wrReg : out std_logic; -- Write no banco de registradores
		 muxMain : out std_logic_vector(1 downto 0); -- Mux que define o dado que entra no banco de reg.
		 opUla : out std_logic_vector(2 downto 0); -- Funcao que a ULA deve fazer
		 RD : out std_logic; -- read decoder
		 WR : out std_logic -- write decoder
    );
end entity;

architecture UCarch of UC is

constant LOAD : std_logic_vector(2 downto 0) := "000"; -- copia conteudo do registrador no endereço passado
constant CMP : std_logic_vector(2 downto 0) := "001"; -- CMP R1, R2, R3 => salva em r2 caso r1 > r3
constant MOV : std_logic_vector(2 downto 0) := "010"; -- Move o conteudo registrador no endereço passado
constant ADD : std_logic_vector(2 downto 0) := "100"; -- R3 = R2 + R1
constant STORE : std_logic_vector(2 downto 0) := "101"; -- Salva conteudo do registrador no endereço passado
constant JNE : std_logic_vector(2 downto 0) := "110"; -- Pula para o imediato se a flag de igualdade nao for setada
constant JMP : std_logic_vector(2 downto 0) := "111"; -- Pulo incondicional para o imediato
	
begin

	muxJMP <= '1' when opcode = JMP OR (opcode = JNE and flagEqual = '0') else
				'0';
				
	wrReg <= '1' when opcode=LOAD else
				'1' when opcode = ADD else
				'1' when opcode = MOV else
					 '0';
	
	opUla <= "000" when opcode = ADD  else
				  "001" when opcode = CMP else
				  "111";
		
			  
	RD <= '1' when opcode = LOAD else
					  '0';
	
	WR <= '1' when opcode = STORE else
						'0';
						
	muxMain <= "10" when opcode = LOAD else
					"01" when opcode = ADD else
					"00" when opcode = MOV else
					 "11";
					 
end architecture;