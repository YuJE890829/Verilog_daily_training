module fourbits_adder(a, b, cin, cout, sum);
	input [3:0]a;
	input [3:0]b;
	input cin;
	output [3:0]sum;
	output cout;
	wire c1, c2, c3;
	
	full_adder fd1(.a(a[0]), .b(b[0]), .cin(cin), .cout(c1), .sum(sum[0]));
	full_adder fd2(.a(a[1]), .b(b[1]), .cin(c1), .cout(c2), .sum(sum[1]));
	full_adder fd3(.a(a[2]), .b(b[2]), .cin(c2), .cout(c3), .sum(sum[2]));
	full_adder fd4(.a(a[3]), .b(b[3]), .cin(c3), .cout(cout), .sum(sum[3]));
endmodule