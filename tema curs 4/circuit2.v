module circuit2(input clk, input a, input b, output c, output d);
	wire w1;
	wire w2;
	
	dor DUT1(.a(a),.b(b),.c(w1));
	dnand DUT2(.a(c),.b(b),.c(w2));
	flipflop DUT3(.d(w1),.clk(clk),.q(c));
	flipflop DUT4(.d(w2),.clk(clk),.q(d));
endmodule