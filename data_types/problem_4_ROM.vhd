package problem_4_ROM_package is
	type word is array (0 to 3) of bit;
	type rom is array (0 to 7) of word;
end problem_4_ROM_package;

use work.problem_4_ROM_package.all;
entity problem_4_ROM is
	port(
		address: in natural range 0 to 3;
		data: out word
	);
end problem_4_ROM;

architecture problem_4_ROM of problem_4_ROM is
	constant our_data: rom := 
	(	
		0 => "1010", 1 => "1010", 2 => "1010", 3 => "1010", 4 => "1010", 
		0 => "1010", 1 => "1010", 2 => "1010", 3 => "1010", 4 => "1010"
	);
begin
	data <= our_data(address);
end architecture problem_4_ROM;
