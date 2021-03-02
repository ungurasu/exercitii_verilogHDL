module sumator(input cin, input in0, input in1, output wire cout, output wire sum, output wire par);
	
	assign cout = (cin & (in0 ^ in1))|(in0 & in1);
	assign sum = cin ^ (in0 ^ in1);
	
	parityChecker DUT1(.in(sum),.out(par));
endmodule