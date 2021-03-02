module MUX21tema (input[2:0] in1, input[2:0] in2, input sel, output reg[2:0] out);
	always@(in1 or in2 or sel) begin
		case(sel)
			0: begin out = in1; end
			1: begin out = in2; end 
			default begin end
		endcase
	end
endmodule