`timescale 1ns/1ps

module testbench();
	reg clk;
	reg[7:0] value;
	reg[3:0] adr;
	reg we;
	reg rst_sync;
	reg updown;
	reg load;
	wire[7:0] out;
	reg enable;
	
	TOP DUT1(.clk(clk),.value(value),.adr(adr),.we(we),.rst_sync(rst_sync),.updown(updown),.enable(enable),.load(load),.out(out));
	
	initial begin
		clk <= 1;
		repeat (58) begin
			#5 clk <= ~clk;
		end
	end
	
	initial begin
		rst_sync <= 0;
		we <= 1;
		adr <= 1;
		value <= 1;
		#10;
		we <= 1;
		adr <= 15;
		value <= 11;
		#10;
		we <= 0;
		enable <= 1;
		load <= 1;
		updown <= 1;
		#20;
		enable <= 0;
		load <= 0;
		#10;
		enable <= 1;
		#100;
		updown <= 0;
		enable <= 0;
		rst_sync <= 1;
		#20;
		enable <= 1;
		rst_sync <= 0;
		load <= 1;
		adr <= 1;
		#20;
		load <= 0;
		#100;
	end
endmodule