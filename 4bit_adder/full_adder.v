module full_adder(a, b, cin, cout, sum);
	input a, b, cin;
	wire c1, c2, s;
	output cout, sum;
	
	half_adder hd1(.a(a), .b(b), .cout(c1), .sum(s));
	half_adder hd2(.a(s), .b(cin), .cout(c2), .sum(sum));
	or(cout, c1, c2);
endmodule