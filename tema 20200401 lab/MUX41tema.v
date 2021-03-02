module MUX41tema (input[2:0] in1, input[2:0] in2, input[2:0] in3, input[2:0] in4, input[1:0] sel, output reg[2:0] out);
	always@(in1 or in2 or in3 or in4 or sel) begin
		case(sel)
			0: begin out = in1; end
			1: begin out = in2; end
			2: begin out = in3; end
			3: begin out = in4; end
			default begin end
		endcase
	end
endmodule