library ieee;
use ieee.std_logic_1164.all;

entity generic_parity_detector is
	generic(
		n 		: integer := 7
	);
	port(
		input 	: in bit_vector(n downto 0);
		output	: out bit
	);
end generic_parity_detector;

architecture generic_parity_detector of generic_parity_detector is
begin
	process(input)
		variable are_odds : bit;
	begin
		for i in input'range loop
			are_odds := are_odds xor input(i);
		end loop;
		output <= are_odds;
	end process;
end generic_parity_detector;