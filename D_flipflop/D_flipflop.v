module D_flipflop(d, clk, out);
	input d, clk;
	output out;
	wire m_out;
	
	
	D_latch master(.d(d), .enable(clk), .out(m_out));
	D_latch slave(.d(m_out), .enable(!clk), .out(out));
endmodule