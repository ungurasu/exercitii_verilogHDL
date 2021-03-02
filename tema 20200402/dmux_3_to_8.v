module dmux_3_to_8(output [7:0]out, input [2:0]sel, input in);
	wire[1:0] sell;
	wire[3:0] outl;
	wire[3:0] outh;
	
	assign sell = sel[1:0];
	assign out[0] = !sel[2] && outl[0];
	assign out[1] = !sel[2] && outl[1];
	assign out[2] = !sel[2] && outl[2];
	assign out[3] = !sel[2] && outl[3];
	assign out[4] = sel[2] && outh[0];
	assign out[5] = sel[2] && outh[1];
	assign out[6] = sel[2] && outh[2];
	assign out[7] = sel[2] && outh[3];
	
	dmux_2_to_4 DUT1(.out(outl),.sel(sell),.in(in));
	dmux_2_to_4 DUT2(.out(outh),.sel(sell),.in(in));
	
endmodule