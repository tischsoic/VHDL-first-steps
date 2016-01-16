-- multiplexer, example 5.2(page 70) solution 2 from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

entity mux_3 is 
	port(
		a, b, c, d	: in 	std_logic;
		sel			: in 	std_logic_vector(1 downto 0);
		y			: out 	std_logic
	);
end mux_3;

architecture mux_3 of mux_3 is
begin
	with sel select
		y <= 	a when "00",
				b when "01",
				c when "10",
				d when others;
end mux_3;