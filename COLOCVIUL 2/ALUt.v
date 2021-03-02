module ALUt(input[3:0] op1, input[3:0] op2, input clock, input[1:0] opcode, output reg[4:0] out);	
	wire[4:0] aux1;
	wire[4:0] aux2;
	assign aux1[4] = 0;
	assign aux2[4] = 0;
	
	assign aux1[3:0] = op1;
	assign aux2[3:0] = op2;
	always@(posedge clock) begin
		if (opcode == 0) begin
			out = aux1 + aux2;
		end
		else if (opcode == 1) begin
			out = aux2 - aux1;
		end
		else if (opcode == 2) begin
			out = aux1 * aux2;
		end
		else begin
			out = aux2 / aux1;
		end
	end
endmodule