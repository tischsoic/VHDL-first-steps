entity nand_gate is
	port(
		a, b : in bit;
		x : out bit
	);
end nand_gate;

architecture dataflow of nand_gate is
begin
	x <= a nand b;
end dataflow;