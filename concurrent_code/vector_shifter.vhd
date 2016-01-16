-- multiplexer, example 5.6(page 80) from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

entity vec_shifter is
	port(
		input	: in 	std_logic_vector(3 downto 0);
		sel		: in 	integer range 0 to 4;
		output	: out	std_logic_vector(7 downto 0)
	);
end vec_shifter;

architecture vec_shifter of vec_shifter is
	subtype 	row 	is std_logic_vector(7 downto 0);
	type 		matrix 	is array (4 downto 0) of row;
	
	signal shifted_vectors : matrix;
begin
	shifted_vectors(0) <= "0000" & input;
	
	shift: for i in 1 to 4 generate
		shifted_vectors(i) <= shifted_vectors(i - 1)(6 downto 0) & '0';
	end generate;

	output <= shifted_vectors(sel);
end vec_shifter;