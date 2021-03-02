module MUX2(input[1:0] in0, input[1:0] in1, input sel, output reg[1:0] out);
	always@(in0 or in1 or sel) begin
		if (sel == 0) begin
			out = in0;
		end
		else begin 
			out = in1;
		end
	end
endmodule