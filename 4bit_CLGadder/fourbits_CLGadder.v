module fourbits_CLGadder(a, b, cin, cout, sum);
	input [3:0]a;
	input [3:0]b;
	input cin;
	wire [2:0]c;
	wire [3:0]g;
	wire [3:0]p;
	output [3:0]sum;
	output cout;
	
	carry_lookahead_generator 	CLG(.g(g), .p(p), .cin(cin), .c(c), .cout(cout));
	CLG_full_adder fd1(.a(a[0]), .b(b[0]), .cin(cin), .g(g[0]), .p(p[0]), .sum(sum[0]));
	CLG_full_adder fd2(.a(a[1]), .b(b[1]), .cin(c[0]), .g(g[1]), .p(p[1]), .sum(sum[1]));
	CLG_full_adder fd3(.a(a[2]), .b(b[2]), .cin(c[1]), .g(g[2]), .p(p[2]), .sum(sum[2]));
	CLG_full_adder fd4(.a(a[3]), .b(b[3]), .cin(c[2]), .g(g[3]), .p(p[3]), .sum(sum[3]));
endmodule