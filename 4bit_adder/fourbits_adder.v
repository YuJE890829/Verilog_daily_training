module fourbits_adder(a, b, cin, cout, sum);
	input [3:0]a;
	input [3:0]b;
	input cin;
	output [3:0]sum;
	output cout;
	wire c1, c2, c3;
	
	full_adder fd1(a[0], b[0], cin, c1, sum[0]);
	full_adder fd2(a[1], b[1], c1, c2, sum[1]);
	full_adder fd3(a[2], b[2], c2, c3, sum[2]);
	full_adder fd4(a[3], b[3], c3, cout, sum[3]);
endmodule