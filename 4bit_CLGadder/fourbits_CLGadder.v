module fourbits_CLGadder(a, b, cin, cout, sum);
	input [3:0]a;
	input [3:0]b;
	input cin;
	wire [2:0]c;
	wire [3:0]g;
	wire [3:0]p;
	output [3:0]sum;
	output cout;
	
	carry_lookahead_generator 	CLG(g, p, cin, c, cout);
	CLG_full_adder fd1(a[0], b[0], cin, g[0], p[0], sum[0]);
	CLG_full_adder fd2(a[1], b[1], c[0], g[1], p[1], sum[1]);
	CLG_full_adder fd3(a[2], b[2], c[1], g[2], p[2], sum[2]);
	CLG_full_adder fd4(a[3], b[3], c[2], g[3], p[3], sum[3]);
endmodule