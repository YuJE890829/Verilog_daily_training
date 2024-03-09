module D_flipflop(d, clk, w_en, reset, out);
	input d, clk, w_en, reset;
	output out;
	wire m_out, s_out;
	
	
	D_latch master(d, clk, m_out);
	D_latch slave(m_out, !clk, s_out);
	and(out, reset, w_en, s_out);
endmodule