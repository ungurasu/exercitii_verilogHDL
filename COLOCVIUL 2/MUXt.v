module MUXt(input[3:0] in0, input[4:0] in1, input sel, output reg[4:0] out);
	always@(in0 or in1 or sel) begin
		if (sel == 0) begin
			out[4] = 0;
			out = in0;
		end
		else begin
			out = in1;
		end
	end
endmodule