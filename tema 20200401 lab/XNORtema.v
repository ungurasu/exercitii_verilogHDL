module XNORtema(input[2:0] in1, input[2:0] in2, output[2:0] out);
	assign out[0] = in1[0] ~^ in2[0];
	assign out[1] = in1[1] ~^ in2[1];  
	assign out[2] = in1[2] ~^ in2[2];
endmodule