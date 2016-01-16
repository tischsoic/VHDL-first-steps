-- multiplexer, example 5.7(page 83) from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

entity latch is
	port(
		d, clk	: in 	std_logic;
		q		: out	std_logic
	);
end latch;

architecture latch of latch is
begin
	b1: block(clk = '1')
	begin
		q <= guarded d;
	end block b1;
end latch;
	