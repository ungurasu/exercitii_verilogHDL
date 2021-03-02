module TOP(input[3:0] ADR, input WEN, input[3:0] DIN, input CLK, output[3:0] DOUT);
	wire[3:0] w1;
	wire[3:0] w2;
	
	COUNTER DUT1(.clk(CLK),.cnt(w1));
	RAM DUT2(.WR_ADDR(ADR),.WR_EN(WEN),.WR_DATA(DIN),.CLK(CLK),.RD_ADDR(w1),.RD_DATA(w2));
	ROM DUT3(.in(w2),.out(DOUT));
endmodule