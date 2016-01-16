-- multiplexer, example 5.2(page 70) solution 2 from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

entity mux_3 is 
	port(
		a, b, c, d	: in 	std_logic;
		sel			: in 	integer range 0 to 3;
		y			: out 	std_logic
	);
end mux_3;

architecture mux_3_1 of mux_3 is
begin
	y <= 	a when sel = 0 else
			b when sel = 1 else
			c when sel = 2 else
			d;
end mux_3_1;

architecture mux_3_2 of mux_3 is
begin
	with sel select
		y <= 	a when 0,
				b when 1,
				c when 2,
				d when others;
end mux_3_2;