module CLG_half_adder(a, b, sum);
	input a, b;
	output sum;
	
	assign sum = a ^ b;
endmodule