-- multiplexer, problem 5.1(page 85) from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

package mux_types is
--	type vector 	is array(natural range<>) of std_logic;
	type matrix		is array(natural range<>) of std_logic_vector;
end package;

library ieee;
use ieee.std_logic_1164.all;
use work.mux_types.all;

entity mux_generic is
	generic(
		number_of_inputs		: integer := 7;
		m		: integer := 7
	);
	port(
		input 	: in 	matrix(number_of_inputs downto 0, m downto 0);
		sel		: in	std_logic_vector(number_of_inputs downto 0);
		output	: out 	std_logic_vector(m downto 0)
	);
end mux_generic;

architecture mux_generic of mux_generic is
	signal temp	: std_logic_vector(m downto 0);
begin
	temp <= (others => '0');
	
	g1: for i in number_of_inputs to 0 generate
		with sel(i) select
			temp <= temp and input(i) when '1';
	end generate;

	output <= temp;
end mux_generic;

