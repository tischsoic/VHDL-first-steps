library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity problem_5_simple_adder is
	port(a, b: in std_logic_vector (3 downto 0);
		sum: out std_logic_vector (4 downto 0)
	);
end problem_5_simple_adder;

architecture problem_5_simple_adder of problem_5_simple_adder is
	
begin
	sum <= CONV_STD_LOGIC_VECTOR(unsigned(a) + unsigned(b), 4);
end architecture problem_5_simple_adder;
