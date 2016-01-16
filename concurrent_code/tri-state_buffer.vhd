-- multiplexer, example 5.3(page 73) solution 2 from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

entity tri_state is
	port(
		ena		: in 	std_logic;
		input	: in 	std_logic_vector(7 downto 0);
		output	: out	std_logic_vector(7 downto 0)
	);
end tri_state;

architecture tri_state of tri_state is
begin
	output <= 	input when ena = '0' else
				(others => 'Z');
end tri_state;