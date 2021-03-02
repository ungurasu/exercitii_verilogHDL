module ROM16x8(input[3:0] addr, output reg[7:0] romout);
	wire[7:0] memorie[0:15];
	
	assign memorie[0] = "S";
	assign memorie[1] = "P";
	assign memorie[2] = "A";
	assign memorie[3] = "T";
	assign memorie[4] = "A";
	assign memorie[5] = "R";
	assign memorie[6] = "U";
	assign memorie[7] = "I";
	assign memorie[8] = "O";
	assign memorie[9] = "N";
	assign memorie[10] = "E";
	assign memorie[11] = "S";
	assign memorie[12] = "C";
	assign memorie[13] = "U";
	assign memorie[14] = "B";
	assign memorie[15] = 56;
	
	always@(addr) begin
		romout <= memorie[addr];
	end
endmodule