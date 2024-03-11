module D_flipflop_8bit(d, clk, out);
	input clk;
	input [7:0]d;
	output [7:0]out;
	
	D_flipflop DFF1(.d(d[0]), .clk(clk), .out(out[0]));
	D_flipflop DFF2(.d(d[1]), .clk(clk), .out(out[1]));
	D_flipflop DFF3(.d(d[2]), .clk(clk), .out(out[2]));
	D_flipflop DFF4(.d(d[3]), .clk(clk), .out(out[3]));
	D_flipflop DFF5(.d(d[4]), .clk(clk), .out(out[4]));
	D_flipflop DFF6(.d(d[5]), .clk(clk), .out(out[5]));
	D_flipflop DFF7(.d(d[6]), .clk(clk), .out(out[6]));
	D_flipflop DFF8(.d(d[7]), .clk(clk), .out(out[7]));
endmodule