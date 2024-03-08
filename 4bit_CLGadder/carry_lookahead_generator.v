module carry_lookahead_generator(g, p, cin, c, cout);
	input [3:0]g;
	input [3:0]p;
	input cin;
	output [2:0]c;
	output cout;
	
	assign c[0] = g[0] | (p[0] & cin);
	assign c[1] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
	assign c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
	assign cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);
endmodule