library ieee;
use ieee.std_logic_1164.all;

entity generic_decoder is
	port(
		ena : in 	std_logic;
		sel : in 	std_logic_vector(2 downto 0);
		x 	: out 	std_logic_vector(7 downto 0)
	);
end generic_decoder;

architecture generic_decoder of generic_decoder is
begin
	process(ena, sel)
		variable temp1 : std_logic_vector(x'high downto 0);
		variable temp2 : integer range 0 to x'high;
	begin
		temp1 := (others => '1');
		temp2 := 0;
		
		if (ena = '1') then
			for i in sel'range loop
				if (sel(i) = '1') then
					temp2 := 2 * temp2 + 1;
				else
					temp2 := 2 * temp2;
				end if;
			end loop;
			temp1(temp2) := '0';
		end if;
		
		x <= temp1;
		
	end process;
end generic_decoder;