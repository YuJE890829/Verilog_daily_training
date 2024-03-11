module reset_unit(count, reset, out);
	input [7:0]count;
	input reset;
	output reg [7:0]out;
	
	always@(reset)
	begin
		if (!reset)
			out = 8'd0;
		else
			out = count;
	end
endmodule