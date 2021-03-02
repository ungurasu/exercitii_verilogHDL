module RAM(input[3:0] WR_ADDR, input WR_EN, input[3:0] WR_DATA, input CLK, input[3:0] RD_ADDR, output reg[3:0] RD_DATA);
	reg[3:0] memorie[0:15];
	
	always@(posedge CLK) begin
		if (WR_EN == 1) begin 
			memorie[WR_ADDR] <= WR_DATA;
		end
		else begin
			RD_DATA <= memorie[RD_ADDR];
		end
	end

endmodule