library ieee;
use ieee.std_logic_1164.all;

entity generic_parity_generator is
	generic(
		n		: integer := 7
	);
	port(
		input	: in 	bit_vector(n - 1 downto 0);
		output	: out 	bit_vector(n downto 0)
	);
end;

architecture generic_parity_generator of generic_parity_generator is
begin
	process(input)
		variable output_temp 	: bit_vector(output'range);
		variable are_odds 		: bit;
	begin
		are_odds := '0';
		for i in input'range loop
			are_odds := are_odds xor input(i);
			output_temp(i) := input(i);
		end loop;
		
		output_temp(output_temp'high) := are_odds;
		
		output <= output_temp;
	end process;
end generic_parity_generator; 