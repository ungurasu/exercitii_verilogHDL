`timescale 1ns/1ps

module testbench();
	reg in0;
	reg in1;
	reg in2;
	reg[1:0] in3;
	wire[6:0] out;
	
	top DUT1(.in0(in0),.in1(in1),.in2(in2),.in3(in3),.out(out));
	
	initial begin
		in0 = 0;
		in1 = 0;
		in2 = 0;
		in3 = 0;
		#5;
		in0 = 1;
		in1 = 0;
		in2 = 0;
		in3 = 0;
		#5;
		in0 = 1;
		in1 = 1;
		in2 = 0;
		in3 = 0;
		#5;
		in0 = 1;
		in1 = 1;
		in2 = 0;
		in3 = 1;
		#5;
		in0 = 1;
		in1 = 1;
		in2 = 0;
		in3 = 2;
		#5;
		in0 = 0;
		in1 = 1;
		in2 = 0;
		in3 = 2;
		#5;
		in0 = 0;
		in1 = 0;
		in2 = 1;
		in3 = 2;
		#5;
		in0 = 0;
		in1 = 0;
		in2 = 1;
		in3 = 0;
		#5;
		in0 = 0;
		in1 = 0;
		in2 = 1;
		in3 = 1;
		#5;
		in0 = 0;
		in1 = 0;
		in2 = 1;
		in3 = 2;
		#5;
		in0 = 1;
		in1 = 0;
		in2 = 1;
		in3 = 2;
		#5;
	end
endmodule