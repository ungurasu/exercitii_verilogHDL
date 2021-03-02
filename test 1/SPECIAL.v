module SPECIAL(input[1:0] in0, input[1:0] in1, output out);
	wire[1:0] biti0;
	wire[1:0] biti1;
	
	assign biti0 = in0[0] + in0[1];
	assign biti1 = in1[0] + in1[1];
	assign out = (biti0 == biti1);
endmodule