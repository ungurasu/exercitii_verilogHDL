`timescale 1us/1ps

module tb();
	reg[1:0] data0;
	reg[1:0] data1;
	wire[1:0] out0;
	wire[1:0] out1;
	reg[7:0] instruction;
	wire[7:0] instr_out;
	wire ok;
	wire ovf;
	
	TOP top1(.data0(data0),.data1(data1),.instruction(instruction),.ok(ok),.ovf(ovf),.instr_out(instr_out),.out0(out0),.out1(out1));
	
	initial begin
		instruction = 8'h02;
		data0 = 1;
		data1 = 1;
		#5;
		instruction = 8'h02;
		data0 = 2;
		data1 = 1;
		#5;
		instruction = 8'hf0;
		data0 = 3;
		data1 = 1;
		#5;
		instruction = 8'hf0;
		data0 = 3;
		data1 = 0;
		#5;
		instruction = 8'bxxxxxxxx;
		data0 = 3;
		data1 = 0;
		#5;
		
		instruction = 0;
		data0 = 0;
		data1 = 0;
		#5;		
		instruction = 0;
		data0 = 0;
		data1 = 1;
		#5;		
		instruction = 0;
		data0 = 0;
		data1 = 2;
		#5;		
		instruction = 0;
		data0 = 0;
		data1 = 3;
		#5;	
		
		instruction = 0;
		data0 = 1;
		data1 = 0;
		#5;		
		instruction = 0;
		data0 = 1;
		data1 = 1;
		#5;		
		instruction = 0;
		data0 = 1;
		data1 = 2;
		#5;		
		instruction = 0;
		data0 = 1;
		data1 = 3;
		#5;	
		
		instruction = 0;
		data0 = 2;
		data1 = 0;
		#5;		
		instruction = 0;
		data0 = 2;
		data1 = 1;
		#5;		
		instruction = 0;
		data0 = 2;
		data1 = 2;
		#5;		
		instruction = 0;
		data0 = 2;
		data1 = 3;
		#5;
		
				
		instruction = 0;
		data0 = 3;
		data1 = 0;
		#5;		
		instruction = 0;
		data0 = 3;
		data1 = 1;
		#5;		
		instruction = 0;
		data0 = 3;
		data1 = 2;
		#5;	
		instruction = 0;
		data0 = 3;
		data1 = 3;
		#5;
	end
endmodule