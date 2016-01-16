-- multiplexer, example 5.8(page 84) from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

entity dff_1 is
	port(
		d, clk, rst	: in 	std_logic;
		q 			: out	std_logic
	);
end dff_1;

architecture dff_1 of dff_1 is
begin
	b1: block(clk'event and clk = '1')
	begin
		q <= guarded '0' when rst = '1' else d;	
	end block b1;
end dff_1;