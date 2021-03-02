module dcd_4_to_16(output reg[15:0]out, input [3:0]in);
	wire [7:0]outh;
	wire [7:0]outl;
	reg [2:0]inl;
	
	dcd_3_to_8 DUT1(.in(inl),.out(outl));
	dcd_3_to_8 DUT2(.in(inl),.out(outh));
	
	always@(in or outl or outh) begin
		inl = in[2:0];
		out[0] = outl[0] && !in[3];
		out[1] = outl[1] && !in[3];
		out[2] = outl[2] && !in[3];
		out[3] = outl[3] && !in[3];
		out[4] = outl[4] && !in[3];
		out[5] = outl[5] && !in[3];
		out[6] = outl[6] && !in[3];
		out[7] = outl[7] && !in[3];	
		out[8] = outh[0] && in[3];
		out[9] = outh[1] && in[3];
		out[10] = outh[2] && in[3];
		out[11] = outh[3] && in[3];
		out[12] = outh[4] && in[3];
		out[13] = outh[5] && in[3];
		out[14] = outh[6] && in[3];
		out[15] = outh[7] && in[3];	
	end
	
endmodule