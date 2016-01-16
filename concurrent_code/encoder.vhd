-- multiplexer, example 5.4(page 73) from book "Circuit Design with VHDL" by Volnei A. Pedroni edition 2004

library ieee;
use ieee.std_logic_1164.all;

entity encoder is
	port(
		x : in 	std_logic_vector(7 downto 0);
		y : out	std_logic_vector(2 downto 0)
	);
end encoder;

architecture encoder_1 of encoder is
begin
	y <= 	"000" when x = "00000001" else
			"000" when x = "00000010" else
			"000" when x = "00000100" else
			"000" when x = "00001000" else
			"000" when x = "00010000" else
			"000" when x = "00100000" else
			"000" when x = "01000000" else
			"000" when x = "10000000" else
			"ZZZ";
end encoder_1;

architecture encoder_2 of encoder is
begin
	with x select
	y <= 	"000" when "00000001",
			"000" when "00000010",
			"000" when "00000100",
			"000" when "00001000",
			"000" when "00010000",
			"000" when "00100000",
			"000" when "01000000",
			"000" when "10000000",
			"ZZZ" when others;
end encoder_2;

