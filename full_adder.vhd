ENTITY full_adder IS
	PORT (a, b, cin: IN BIT;
		s, cout: OUT BIT);
END full_adder;

ARCHITECTURE dataflow OF full_adder IS
BEGIN
	s <= a XOR b XOR cin;
	cout <= (a AND b) OR (a AND cin) OR (b AND cin);
END dataflow;