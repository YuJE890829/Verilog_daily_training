module D_latch(d, enable, out);
	input d, enable;
	output out;
	wire w1, w2, n_out;
	
	nand(w1, d, enable);
	nand(w2, !d, enable);
	nand(out, w1, n_out);
	nand(n_out, w2, out);
endmodule