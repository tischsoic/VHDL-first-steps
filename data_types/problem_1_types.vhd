library ieee;
use ieee.std_logic_1164.all;

package problem_1_package is
	TYPE array1 IS ARRAY (7 DOWNTO 0) OF STD_LOGIC;
		-- array1 is 1D of STD_LOGIC, left bit is MSB
		-- array1 numeric example: ('0', '0', '0', '0', '0', '0', '0')
	TYPE array2 IS ARRAY (3 DOWNTO 0, 7 DOWNTO 0) OF STD_LOGIC;
		-- array1 is 2D
		-- array1 numeric example: (('0', '0', '0', '0', '0', '0', '0'),
		--							('0', '0', '0', '0', '0', '0', '0'),
		--							('0', '0', '0', '0', '0', '0', '0'))
	TYPE array3 IS ARRAY (3 DOWNTO 0) OF array1;
		-- array1 is 1D x 1D
		-- array1 numeric example: (('0', '0', '0', '0', '0', '0', '0'),
		--							('0', '0', '0', '0', '0', '0', '0'),
		--							('0', '0', '0', '0', '0', '0', '0'))
end problem_1_package;

------------------------------------------------------------------------
------------------------------------------------------------------------
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.problem_1_package.all;

entity problem_1 is
end problem_1;

architecture problem_1 of problem_1 is
	SIGNAL a : BIT; 		-- scalar
	SIGNAL b : STD_LOGIC;	-- scalar of type STD_LOGIC
	SIGNAL x : array1;		-- see package problem_1_package
	SIGNAL y : array2;		-- see package problem_1_package
	SIGNAL w : array3;		-- see package problem_1_package
	SIGNAL z : STD_LOGIC_VECTOR (7 DOWNTO 0);
							-- 1D with left MSB
begin
	a <= '1';
	b <= 'Z';
	x <= ('0', '0', '0', '0', '0', '0', '0');
	
	y <= (	('0', '0', '0', '0', '0', '0', '0'),
			('0', '0', '0', '0', '0', '0', '0'),
			('0', '0', '0', '0', '0', '0', '0'));
			
	w <= (	('0', '0', '0', '0', '0', '0', '0'),
			('0', '0', '0', '0', '0', '0', '0'),
			('0', '0', '0', '0', '0', '0', '0'));
				
	z <= ('0', '0', '0', '0', '0', '0', '0');
end architecture problem_1;
