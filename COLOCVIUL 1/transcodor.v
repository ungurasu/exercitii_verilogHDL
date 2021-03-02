module transcodor(input in, output reg[6:0] out);
	always@(in) begin
		if (in) begin
			out <= 7'b1001111;
		end
		else begin
			out <= 7'b0000001;
		end
	end
endmodule