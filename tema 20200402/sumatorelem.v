module sumatorelem(input in1, input in2, input carryin, output out1, output carryout);
	assign out1 = (in1 ^ in2) ^ carryin;
	assign carryout = ((in1 ^ in2) && carryin) || (in1 && in2);
endmodule