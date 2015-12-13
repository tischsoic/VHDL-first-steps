entity exercise_2_2_a is
	port(
		a, b, c: in bit;
		d: out bit
	);
end exercise_2_2_a;

architecture exercise_2_2_a of exercise_2_2_a is
	signal first_gate: bit;
	signal second_gate: bit;
begin
	first_gate <= a nand b;
	second_gate <= first_gate nor not c;
	d <= not (a nand second_gate);
end architecture exercise_2_2_a;
