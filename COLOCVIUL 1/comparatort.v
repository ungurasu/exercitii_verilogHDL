module comparatort(input[1:0] in0, input in1, output reg[1:0] out);
	wire[1:0] nr;
	assign nr[1] = 0;
	assign nr[0] = in1;
	
	always@(in0 or in1 or nr) begin
		if (in0 < nr) begin
			out = 2'b00;
		end
		else if (in0 == nr) begin
			out = 2'b01;
		end
		else begin
			out = 2'b10;
		end
	end
endmodule