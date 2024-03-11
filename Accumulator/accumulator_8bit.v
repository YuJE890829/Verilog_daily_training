module accumulator_8bit(reset, clk, out);
	input clk, reset;
	output [7:0]out;
	wire [7:0]sum;
	wire [7:0]d_out;
	
	
	CLGadder_8bit CLA(.a(out), .b(8'd1), .cin(1'b0), .cout(), .sum(sum));
	D_flipflop_8bit DFF(.d(sum), .clk(clk), .out(d_out));
	reset_unit(.count(d_out), .reset(reset), .out(out));
endmodule