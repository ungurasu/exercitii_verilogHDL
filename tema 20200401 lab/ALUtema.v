module ALUtema(input[2:0] in1, input[2:0] in2, input[2:0] opcode, output reg[2:0] out);

always@(opcode or in1 or in2) begin
	case(opcode) 
		0: begin out <= in1 + in2; end
		1: begin out <= in2 - in1; end
		2: begin out <= in1 * in2; end
		3: begin out <= in2 / in1; end
		4: begin out <= in1>>2; end
		5: begin out <= in1<<1; end
		default: begin out <= 0; end
	endcase
end
	
endmodule