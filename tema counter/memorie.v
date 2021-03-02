module memorie(input clk, input[3:0] adr, input we, input[7:0] value_in, output reg[7:0] value_out);
	reg[7:0] ram[0:15];
	
	always@(posedge clk) begin
		if (we == 1) begin
			ram[adr] <= value_in;
		end
		else begin 
			value_out <= ram[adr];
		end
	end
endmodule