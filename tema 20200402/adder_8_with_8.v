module adder_8_with_8(output [8:0]out, input [7:0]a, input [7:0]b, input carryin);
	wire carry1;
	wire[3:0] outl;
	wire[4:0] outh;
	wire[4:0] out1;
	
	assign outl = out1[3:0];
	assign carry1 = out1[4];
	assign out[3:0] = outl;
	assign out[8:4] = outh;
	
	adder_4_with_4 DUT1(.a(a[3:0]), .b(b[3:0]), .carryin(carryin), .out(out1)); 
	adder_4_with_4 DUT2(.a(a[7:4]), .b(b[7:4]), .carryin(carry1), .out(outh)); 
endmodule