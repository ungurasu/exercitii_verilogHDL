module top();
	reg[3:0] indcd;
	wire[15:0] outdcd;
	reg[2:0] selmux;
	reg[7:0] inmux;
	wire outmux;
	wire[7:0] outdmux;
	reg[2:0] seldmux;
	reg indmux;
	reg[7:0] in1add;
	reg[7:0] in2add;
	reg ciadd;
	wire[8:0] outadd;
	
	dcd_4_to_16 DUT1(.in(indcd), .out(outdcd));
	mux_8_to_1 DUT2(.out(outmux), .sel(selmux), .in(inmux));
	dmux_3_to_8 DUT3(.out(outdmux), .sel(seldmux), .in(indmux));
	adder_8_with_8 DUT4(.a(in1add), .b(in2add), .carryin(ciadd), .out(outadd));
	
	initial begin
		//testare decodor
		indcd = 4'b0000;
		#20;
		indcd = 4'b0001;
		#20;
		indcd = 4'b0010;
		#20;
		indcd = 4'b0011;
		#20;
		indcd = 4'b0100;
		#20;
		indcd = 4'b0101;
		#20;
		indcd = 4'b0110;
		#20;
		indcd = 4'b0111;
		#20;
		indcd = 4'b1000;
		#20;
		indcd = 4'b1001;
		#20;
		indcd = 4'b1010;
		#20;
		indcd = 4'b1011;
		#20;
		indcd = 4'b1100;
		#20;
		indcd = 4'b1101;
		#20;
		indcd = 4'b1110;
		#20;
		indcd = 4'b1111;
		#20;
		
		//testare mux
		selmux = 3'b000;
		inmux = 8'b00000001;
		#20;
		selmux = 3'b000;
		inmux = 8'b00000000;
		#20;
		selmux = 3'b001;
		inmux = 8'b00000010;
		#20;
		selmux = 3'b001;
		inmux = 8'b00000000;
		#20;
		selmux = 3'b010;
		inmux = 8'b00000100;
		#20;
		selmux = 3'b010;
		inmux = 8'b00000000;
		#20;
		selmux = 3'b011;
		inmux = 8'b00001000;
		#20;
		selmux = 3'b011;
		inmux = 8'b00000000;
		#20;
		selmux = 3'b100;
		inmux = 8'b00010000;
		#20;
		selmux = 3'b100;
		inmux = 8'b00000000;
		#20;
		selmux = 3'b101;
		inmux = 8'b00100000;
		#20;
		selmux = 3'b101;
		inmux = 8'b00000000;
		#20;
		selmux = 3'b110;
		inmux = 8'b01000000;
		#20;
		selmux = 3'b110;
		inmux = 8'b00000000;
		#20;
		selmux = 3'b111;
		inmux = 8'b10000000;
		#20;
		selmux = 3'b111;
		inmux = 8'b00000000;
		#20;
		
		//testare dmux
		indmux = 1;
		seldmux = 3'b000;
		#20;
		indmux = 0;
		seldmux = 3'b000;
		#20;
		indmux = 1;
		seldmux = 3'b001;
		#20;
		indmux = 0;
		seldmux = 3'b001;
		#20;
		indmux = 1;
		seldmux = 3'b010;
		#20;
		indmux = 0;
		seldmux = 3'b010;
		#20;
		indmux = 1;
		seldmux = 3'b011;
		#20;
		indmux = 0;
		seldmux = 3'b011;
		#20;
		indmux = 1;
		seldmux = 3'b100;
		#20;
		indmux = 0;
		seldmux = 3'b100;
		#20;
		indmux = 1;
		seldmux = 3'b101;
		#20;
		indmux = 0;
		seldmux = 3'b101;
		#20;
		indmux = 1;
		seldmux = 3'b110;
		#20;
		indmux = 0;
		seldmux = 3'b110;
		#20;
		indmux = 1;
		seldmux = 3'b111;
		#20;
		indmux = 0;
		seldmux = 3'b111;
		#20;
		
		//testare adder
		in1add = 8'b00001000;
		in2add = 8'b00000000;
		ciadd = 1;
		#20;
		in1add = 8'b00001000;
		in2add = 8'b00001000;
		ciadd = 1;
		#20;
		in1add = 8'b00000111;
		in2add = 8'b00000000;
		ciadd = 1;
		#20;
		in1add = 8'b00000111;
		in2add = 8'b00000000;
		ciadd = 0;
		#20;
		in1add = 8'b00000101;
		in2add = 8'b00000001;
		ciadd = 0;
		#20;
		in1add = 8'b00010001;
		in2add = 8'b00010001;
		ciadd = 0;
		#20;	
		in1add = 8'b00011001;
		in2add = 8'b00011001;
		ciadd = 0;
		#20;	
		in1add = 8'b11111111;
		in2add = 8'b00000001;
		ciadd = 0;
		#20;
		in1add = 8'b11111111;
		in2add = 8'b00000000;
		ciadd = 1;
		#20;
		in1add = 8'b01000000;
		in2add = 8'b01000001;
		ciadd = 1;
		#20;
		
		$stop;
	end
	
endmodule