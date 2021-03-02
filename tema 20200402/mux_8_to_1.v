module mux_8_to_1(output out, input [2:0]sel, input [7:0]in);
	wire[1:0] sell;
	wire[3:0] inl;
	wire[3:0] inh;
	wire outl;
	wire outh;
	
	assign inl = in[3:0];
	assign inh = in[7:4];
	assign sell = sel[1:0];
	assign out = (!sel[2] && outl) || (sel[2] && outh);
	
	mux_4_to_1 DUT1(.out(outl), .sel(sell), .in(inl));
	mux_4_to_1 DUT2(.out(outh), .sel(sell), .in(inh));
	
endmodule