module testbench();

reg a;
reg reset;
reg clock;
wire b1;
wire c1;
wire b2;
wire c2;

circuit1 DUT1(.a(a), .nReset(reset), .clock(clock), .b(b1), .c(c1));
circuit2 DUT2(.a(a), .nReset(reset), .clock(clock), .b(b2), .c(c2));

initial begin
	clock = 0;
	repeat (26) begin
		#20 clock = ~clock;
	end
end
	
initial begin	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;

	
	a = 0;
	reset = 0;
	#20;
	
	a = 0;
	reset = 0;
	#20;
	
	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;
	
	a = 0;
	reset = 1;
	#20;
	
	
	a = 1;
	reset = 0;
	#20;
	
	a = 1;
	reset = 0;
	#20;
	
	
	a = 1;
	reset = 1;
	#20;
	
	a = 1;
	reset = 1;
	#20;
	
	a = 1;
	reset = 1;
	#20;
	
	a = 1;
	reset = 1;
	#20;
	
	a = 1;
	reset = 1;
	#20;
	
	a = 1;
	reset = 1;
	#20;
	
	a = 1;
	reset = 1;
	#20;
	
	a = 1;
	reset = 1;
	#20;
	
	a = 1;
	reset = 1;
	#20;
	
	a = 1;
	reset = 1;
	#20;
end

endmodule