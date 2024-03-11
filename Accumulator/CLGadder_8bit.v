module CLGadder_8bit(a, b, cin, cout, sum);
	input [7:0]a, b;
	input cin;
	output [7:0]sum;
	output cout;
	wire c;
	
	fourbits_CLGadder fd1(a[3:0], b[3:0], cin, c, sum[3:0]);
	fourbits_CLGadder fd2(a[7:4], b[7:4], c, cout, sum[7:4]);
endmodule