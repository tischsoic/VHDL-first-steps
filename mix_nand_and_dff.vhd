entity mix_nand_and_dff is
	port(
		a, b, clk: in bit;
		q: out bit
	);
end mix_nand_and_dff;

architecture mix_nand_and_dff of mix_nand_and_dff is
	signal temp: bit;
begin
	temp <= a nand b;
	process(clk)
	begin
		if(clk'event and clk = '1') then
			q <= temp;
		end if;
	end process;
end mix_nand_and_dff;

			