module FULLADDERtema(input[2:0] in1, input[2:0] in2, output[2:0] sum, output carry_out);
	wire c1;
	wire c2;
	
	sumator DUT1(.a(in1[0]), .b(in2[0]), .carry_out(c1), .sum(sum[0]));
	sumatorelemen DUT2(.a(in1[1]), .b(in2[1]), .carry_in(c1), .carry_out(c2), .sum(sum[1]));
	sumatorelemen DUT3(.a(in1[2]), .b(in2[2]), .carry_in(c2), .carry_out(carry_out), .sum(sum[2]));
endmodule