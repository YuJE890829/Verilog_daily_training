module priority_8bit_encoder(in, out, valid);
	input [7:0]in;
	output reg [2:0]out;
	output reg valid;
	
	always@(in)
	begin
		if (in[7] == 1'b1)
		begin
			out = 3'd7;
			valid = 1'b1;
		end
		else if (in[6] == 1'b1)
		begin
			out = 3'd6;
			valid = 1'b1;
		end
		else if (in[5] == 1'b1)
		begin
			out = 3'd5;
			valid = 1'b1;
		end
		else if (in[4] == 1'b1)
		begin
			out = 3'd4;
			valid = 1'b1;
		end
		else if (in[3] == 1'b1)
		begin
			out = 3'd3;
			valid = 1'b1;
		end
		else if (in[2] == 1'b1)
		begin
			out = 3'd2;
			valid = 1'b1;
		end
		else if (in[1] == 1'b1)
		begin
			out = 3'd1;
			valid = 1'b1;
		end
		else if (in[0] == 1'b1)
		begin
			out = 3'd0;
			valid = 1'b1;
		end
		else
		begin
			out = 3'd0;
			valid = 1'b0;
		end
	end
endmodule