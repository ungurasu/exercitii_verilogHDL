module EQ(input[1:0] in0, input[1:0] in1, output out);
	assign out = (in0 == in1);
endmodule