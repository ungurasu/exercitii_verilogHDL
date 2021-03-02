module dispozitiv(input A, input B, input C, output Q);
	wire w1;
	wire w2;
	wire w3;
	wire w4;
	
	temaAND dut1(.in1(A), .in2(B), .out1(w1));
	temaOR dut2(.in1(B), .in2(C), .out1(w2));
	temaAND dut3(.in1(C), .in2(B), .out1(w3));
	temaAND dut4(.in1(w2), .in2(w3), .out1(w4));
	temaOR dut5(.in1(w1), .in2(w4), .out1(Q));
	
endmodule