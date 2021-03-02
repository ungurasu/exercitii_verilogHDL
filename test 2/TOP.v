module TOP(input[3:0] top_in, input top_nrst, input top_clk, output wire[7:0] top_out);
	wire[3:0] cout;
	wire[3:0] xout;
	wire[7:0] romout;
	
	COUNTER4 COUNTER41(.cnrst(top_nrst),.cclk(top_clk),.cout(cout));
	XOR4 XOR41(.xin0(top_in),.xin1(cout),.xout(xout));
	ROM16x8 ROM16x81(.addr(xout),.romout(romout));
	CG5 CG50(.cgin(romout[0]),.cgclk(top_clk),.cgnrst(top_nrst),.cgout(top_out[0]));
	CG5 CG51(.cgin(romout[1]),.cgclk(top_clk),.cgnrst(top_nrst),.cgout(top_out[1]));
	CG5 CG52(.cgin(romout[2]),.cgclk(top_clk),.cgnrst(top_nrst),.cgout(top_out[2]));
	CG5 CG53(.cgin(romout[3]),.cgclk(top_clk),.cgnrst(top_nrst),.cgout(top_out[3]));
	CG5 CG54(.cgin(romout[4]),.cgclk(top_clk),.cgnrst(top_nrst),.cgout(top_out[4]));
	CG5 CG55(.cgin(romout[5]),.cgclk(top_clk),.cgnrst(top_nrst),.cgout(top_out[5]));
	CG5 CG56(.cgin(romout[6]),.cgclk(top_clk),.cgnrst(top_nrst),.cgout(top_out[6]));
	CG5 CG57(.cgin(romout[7]),.cgclk(top_clk),.cgnrst(top_nrst),.cgout(top_out[7]));
endmodule