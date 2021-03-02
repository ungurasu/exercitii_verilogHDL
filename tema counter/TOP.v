module TOP(input clk, input load, input enable, input updown, input rst_sync, input[3:0] adr, input[7:0] value, input we, output[7:0] out);
	wire[7:0] date;
	
	memorie DUT1(.clk(clk),.value_in(value),.adr(adr),.we(we),.value_out(date));
	counter DUT2(.clk(clk),.load(load),.value_in(date),.enable(enable),.updown(updown),.rst_sync(rst_sync),.value_out(out));
endmodule