module MUL_unit(a, b, out);
	input [3:0]a;
	input b;
	output [3:0]out;
	
	and(out[0], a[0], b);
	and(out[1], a[1], b);
	and(out[2], a[2], b);
	and(out[3], a[3], b);
endmodule