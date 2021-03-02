module RAMt (input clock, input we, input[3:0] data, input[3:0] addr ,input[3:0] addrop1, input[3:0] addrop2, output reg[3:0] rdataop1, output reg[3:0] rdata, output reg[3:0] rdataop2);
	reg[3:0] memorie[0:15];
	
	always@(posedge clock) begin
		if (we) begin
			memorie[addr] <= data;
		end
		else begin
			rdataop1 <= memorie[addrop1];
			rdataop2 <= memorie[addrop2];
			rdata <= memorie[addr];
		end
	end
endmodule