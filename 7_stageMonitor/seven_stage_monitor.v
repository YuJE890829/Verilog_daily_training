module seven_stage_monitor(num, out);
	input [3:0]num;
	output reg [6:0]out;
	
	always@(num)
	begin
		if (num[3:0] == 4'b0000) //0
			out[6:0] = 7'b0111111;
		else if (num[3:0] == 4'b0001) //1
			out[6:0] = 7'b0000110;
		else if (num[3:0] == 4'b0010) //2
			out[6:0] = 7'b1011011;
		else if (num[3:0] == 4'b0011) //3
			out[6:0] = 7'b1001111;
		else if (num[3:0] == 4'b0100) //4
			out[6:0] = 7'b1100110;
		else if (num[3:0] == 4'b0101) //5
			out[6:0] = 7'b1101101;
		else if (num[3:0] == 4'b0110) //6
			out[6:0] = 7'b1111101;
		else if (num[3:0] == 4'b0111) //7
			out[6:0] = 7'b0000111;
		else if (num[3:0] == 4'b1000) //8
			out[6:0] = 7'b1111111;
		else if (num[3:0] == 4'b1001) //9
			out[6:0] = 7'b1101111;
		else if (num[3:0] == 4'b1010) //10
			out[6:0] = 7'b1110111;
		else if (num[3:0] == 4'b1011) //11
			out[6:0] = 7'b1111100;
		else if (num[3:0] == 4'b1100) //12
			out[6:0] = 7'b0111001;
		else if (num[3:0] == 4'b1101) //13
			out[6:0] = 7'b1011110;
		else if (num[3:0] == 4'b1110) //14
			out[6:0] = 7'b1111001;
		else if (num[3:0] == 4'b1111) //15
			out[6:0] = 7'b1110001;
	end
endmodule