module CLG_full_adder(a, b, cin, g, p, sum);
	input a, b, cin;
	wire s;
	output g, p, sum;
	
	and(g, a, b);
	xor(p, a, b);
	CLG_half_adder hd1(.a(a), .b(b), .sum(s));
	CLG_half_adder hd2(.a(s), .b(cin), .sum(sum));
endmodule