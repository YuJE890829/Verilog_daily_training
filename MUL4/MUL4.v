module MUL4(a, b, out);
	input [3:0]a;
	input [3:0]b;
	output [7:0]out;
	wire [3:0]m1, m2, m3, m4;
	wire [3:0]s1, s2;
	wire c1, c2;
	
	MUL_unit M1(a[3:0], b[0], m1);
	MUL_unit M2(a[3:0], b[1], m2);
	MUL_unit M3(a[3:0], b[2], m3);
	MUL_unit M4(a[3:0], b[3], m4);
	assign out[0] = m1[0];
	fourbits_CLGadder fd1({1'b0, m1[3:1]}, m2, 1'b0, c1, s1);
	assign out[1] = s1[0];
	fourbits_CLGadder fd2({c1, s1[3:1]}, m3, 1'b0, c2, s2);
	assign out[2] = s2[0];
	fourbits_CLGadder fd3({c2, s2[3:1]}, m4, 1'b0, out[7], out[6:3]);
endmodule