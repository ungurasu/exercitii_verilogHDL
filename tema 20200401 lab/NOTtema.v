module NOTtema(input[2:0] in, output[2:0] out);
	assign out[0] = !in[0];
	assign out[1] = !in[1];
	assign out[2] = !in[2];
endmodule