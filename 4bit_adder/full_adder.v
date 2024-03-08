module full_adder(a, b, cin, cout, sum);
	input a, b, cin;
	wire c1, c2, s;
	output cout, sum;
	
	half_adder hd1(a, b, c1, s);
	half_adder hd2(s, cin, c2, sum);
	or(cout, c1, c2);
endmodule