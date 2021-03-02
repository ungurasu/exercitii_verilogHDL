module circuit1(input a, input b, output c, output d);
	dnor DUT1(.a(a),.b(b),.c(c));
	dnand DUT2(.a(c),.b(b),.c(d));
endmodule