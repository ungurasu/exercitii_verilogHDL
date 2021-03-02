module ROM(input[3:0] addr, output reg[1:0] out);
	always@(addr) begin
		if (addr == 4'b0000) begin
			out = 0;
		end
		else if (addr == 4'b0001) begin
			out = 1;
		end
		else if (addr == 4'b0010) begin
			out = 2;
		end
		else if (addr == 4'b0011) begin
			out = 3;
		end
		else if (addr == 4'b0100) begin
			out = 1;
		end
		else if (addr == 4'b0101) begin
			out = 2;
		end
		else if (addr == 4'b0110) begin
			out = 3;
		end
		else if (addr == 4'b0111) begin
			out = 0;
		end
		else if (addr == 4'b1000) begin
			out = 2;
		end
		else if (addr == 4'b1001) begin
			out = 3;
		end
		else if (addr == 4'b1010) begin
			out = 4;
		end
		else if (addr == 4'b1011) begin
			out = 1;
		end
		else if (addr == 4'b1111) begin
			out = 2;
		end
		else if (addr == 4'b1100) begin
			out = 3;
		end
		else if (addr == 4'b1101) begin
			out = 0;
		end
		else if (addr == 4'b1110) begin
			out = 1;
		end
	end
endmodule