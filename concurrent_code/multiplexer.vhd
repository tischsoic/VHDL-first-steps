-- multiplexer, example 5.1(page 68) from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

entity mux_1 is
	port(
		a, b, c, d, s0, s1: in std_logic;
		y: out std_logic
	);
end mux_1;

architecture pure_logic of mux_1 is
begin
	y <= 	(a and not s1 	and not s0	) or
			(b and not s1 	and s0		) or
			(c and s1 		and not s0	) or
			(d and s1 		and s0		);
end pure_logic;