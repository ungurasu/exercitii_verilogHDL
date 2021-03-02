module testbench();
	reg a;
	reg b;
	reg clk;
	wire o11;
	wire o12;
	wire o21;
	wire o22;
	
	circuit1 DUT1(.a(a),.b(b),.c(o11),.d(o12));
	circuit2 DUT2(.a(a),.b(b),.clk(clk),.c(o21),.d(o22));
	
	initial begin
		clk <= 0;
		repeat (50) begin
			#3 clk <= ~clk;
		end
	end
	
	initial begin
		a <= 0;
		b <= 0;
		#30;
		
		a <= 0;
		b <= 1;
		#30;
		
		a <= 1;
		b <= 0;
		#30;
		
		a <= 1;
		b <= 1;
		#60;		
	end
	
endmodule