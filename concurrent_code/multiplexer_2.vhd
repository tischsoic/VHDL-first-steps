-- multiplexer, example 5.2(page 70) solution 1 from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

entity mux_2 is
	port(
		a, b, c, d	: in 	std_logic;
		sel			: in 	std_logic_vector(1 downto 0);
		y			: out 	std_logic
	);
end mux_2;

architecture mux_2_1 of mux_2 is
begin
	y <= 	a when sel = "00" else
			b when sel = "01" else
			c when sel = "10" else
			d;
end mux_2_1;

architecture mux_2_2 of mux_2 is
begin
	with sel select
		y <= 	a when "00",
				b when "01",
				c when "10",
				d when others;
end mux_2_2;