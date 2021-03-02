module tb();
	reg in;
	reg clk;
	reg rst;
	wire out;
	
	FF FF1(.ffin(in),.ffout(out),.ffrst(rst),.ffclk(clk));
	CG5 CG51(.cgin(in),.cgclck(clk),.cgnrst(rst));
	
	initial begin
		in = 0;
		clk = 0;
		rst = 0;
	end
endmodule