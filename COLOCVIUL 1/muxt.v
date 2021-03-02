module muxt(input in0, input in1, input in2, input[1:0] sel, output reg out);
	always@(in0 or in1 or in2 or sel) begin
		if (sel == 0) begin
			out <= in0;
		end
		else if (sel == 1) begin
			out <= in1;
		end
		else if (sel == 2) begin
			out <= in2;
		end
		else begin
			out <= 0;
		end
	end
endmodule