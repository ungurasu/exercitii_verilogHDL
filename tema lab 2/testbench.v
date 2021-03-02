module testbench();
	reg[3:0] ADR;
	reg WEN;
	reg[3:0] DIN;
	reg CLK;
	wire[3:0] DOUT;
	
	TOP DUT1(.ADR(ADR),.WEN(WEN),.DIN(DIN),.CLK(CLK),.DOUT(DOUT));
	
	initial begin
		CLK = 1;
		repeat (128) begin
			#5 CLK = ~CLK;
		end
	end
	
	initial begin
		WEN <= 0;
		ADR <= 0;
		DIN <= 15;
		#10;
		WEN <= 0;
		ADR <= 1;
		DIN <= 14;
		#10;
		WEN <= 0;
		ADR <= 2;
		DIN <= 13;
		#10;
		WEN <= 0;
		ADR <= 3;
		DIN <= 12;
		#10;
		WEN <= 0;
		ADR <= 4;
		DIN <= 11;
		#10;
		WEN <= 0;
		ADR <= 5;
		DIN <= 10;
		#10;
		WEN <= 0;
		ADR <= 6;
		DIN <= 9;
		#10;
		WEN <= 0;
		ADR <= 7;
		DIN <= 8;
		#10;
		WEN <= 0;
		ADR <= 8;
		DIN <= 7;
		#10;
		WEN <= 0;
		ADR <= 9;
		DIN <= 6;
		#10;
		WEN <= 0;
		ADR <= 10;
		DIN <= 5;
		#10;
		WEN <= 0;
		ADR <= 11;
		DIN <= 4;
		#10;
		WEN <= 0;
		ADR <= 12;
		DIN <= 3;
		#10;
		WEN <= 0;
		ADR <= 13;
		DIN <= 2;
		#10;
		WEN <= 0;
		ADR <= 14;
		DIN <= 1;
		#10;
		WEN <= 0;
		ADR <= 15;
		DIN <= 0;
		#10;
		
		
		WEN <= 1;
		ADR <= 0;
		DIN <= 15;
		#10;
		WEN <= 1;
		ADR <= 1;
		DIN <= 14;
		#10;
		WEN <= 1;
		ADR <= 2;
		DIN <= 13;
		#10;
		WEN <= 1;
		ADR <= 3;
		DIN <= 12;
		#10;
		WEN <= 1;
		ADR <= 4;
		DIN <= 11;
		#10;
		WEN <= 1;
		ADR <= 5;
		DIN <= 10;
		#10;
		WEN <= 1;
		ADR <= 6;
		DIN <= 9;
		#10;
		WEN <= 1;
		ADR <= 7;
		DIN <= 8;
		#10;
		WEN <= 1;
		ADR <= 8;
		DIN <= 7;
		#10;
		WEN <= 1;
		ADR <= 9;
		DIN <= 6;
		#10;
		WEN <= 1;
		ADR <= 10;
		DIN <= 5;
		#10;
		WEN <= 1;
		ADR <= 11;
		DIN <= 4;
		#10;
		WEN <= 1;
		ADR <= 12;
		DIN <= 3;
		#10;
		WEN <= 1;
		ADR <= 13;
		DIN <= 2;
		#10;
		WEN <= 1;
		ADR <= 14;
		DIN <= 1;
		#10;
		WEN <= 1;
		ADR <= 15;
		DIN <= 0;
		#10;
		WEN <= 0;
	end
	
endmodule