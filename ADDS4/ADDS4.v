module ADDS4(a, b, sel, cout, s, over_flow);
	input [3:0]a;
	input [3:0]b;
	input sel;
	output [3:0]s;
	output cout, over_flow;
	wire [3:0]c1;
	wire c2, c3, c4;
	
	xor(c1[0], sel, b[0]);
	xor(c1[1], sel, b[1]);
	xor(c1[2], sel, b[2]);
	xor(c1[3], sel, b[3]);
	full_adder fd1(.a(a[0]), .b(c1[0]), .cin(sel), .cout(c2), .sum(s[0]));
	full_adder fd2(.a(a[1]), .b(c1[1]), .cin(c2), .cout(c3), .sum(s[1]));
	full_adder fd3(.a(a[2]), .b(c1[2]), .cin(c3), .cout(c4), .sum(s[2]));
	full_adder fd4(.a(a[3]), .b(c1[3]), .cin(c4), .cout(cout), .sum(s[3]));
	xor(over_flow, c4, cout); //If a and b are both negative numbers (the signed bit is 1), then c4 is 1 when no overflow occurs. If a and b are both positive numbers, c4 is 0 when no overflow occurs. So c4 and cout are the same when no overflow occur.
endmodule