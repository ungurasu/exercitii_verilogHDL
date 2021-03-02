module adder_4_with_4(output [4:0]out, input [3:0]a, input [3:0]b, input carryin);
	wire carry1;
	wire carry2;
	wire carry3;
	wire carry4;
		
	sumatorelem DUT1(.in1(a[0]), .in2(b[0]), .carryin(carryin), .out1(out[0]), .carryout(carry1));
	sumatorelem DUT2(.in1(a[1]), .in2(b[1]), .carryin(carry1), .out1(out[1]), .carryout(carry2));
	sumatorelem DUT3(.in1(a[2]), .in2(b[2]), .carryin(carry2), .out1(out[2]), .carryout(carry3));
	sumatorelem DUT4(.in1(a[3]), .in2(b[3]), .carryin(carry3), .out1(out[3]), .carryout(out[4]));
endmodule