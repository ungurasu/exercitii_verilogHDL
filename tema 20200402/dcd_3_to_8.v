module dcd_3_to_8(output reg[7:0]out, input [2:0]in);
	wire [3:0]outh;
	wire [3:0]outl;
	reg [1:0]inl;
	
	dcd_2_to_4 DUT1(.in(inl),.out(outl));
	dcd_2_to_4 DUT2(.in(inl),.out(outh));
	
	always@(in or outl or outh) begin
		inl = in[1:0];
		out[0] = outl[0] && !in[2];
		out[1] = outl[1] && !in[2];
		out[2] = outl[2] && !in[2];
		out[3] = outl[3] && !in[2];
		out[4] = outh[0] && in[2];
		out[5] = outh[1] && in[2];
		out[6] = outh[2] && in[2];
		out[7] = outh[3] && in[2];	
	end
	
endmodule