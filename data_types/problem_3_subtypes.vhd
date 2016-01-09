library ieee;
use ieee.std_logic_1164.all;

package problem_3_package is
	TYPE array1 IS ARRAY (natural range <>) OF STD_LOGIC;
	TYPE array2 IS ARRAY (natural range <>) OF STD_LOGIC;
	subtype subtype_1 is integer range -10 to 10;
	subtype subtype_2 is std_logic_vector(3 downto 0);
	subtype subtype_3 is array1(3 downto 0);
	subtype subtype_4 is array2(3 downto 0);
end problem_3_package;
