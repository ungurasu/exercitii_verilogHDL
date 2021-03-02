module XOR4(input[3:0] xin0, input[3:0] xin1, output wire[3:0] xout);
	assign xout[0] = xin0[0] ^ xin1[0];
	assign xout[1] = xin0[1] ^ xin1[1];
	assign xout[2] = xin0[2] ^ xin1[2];
	assign xout[3] = xin0[3] ^ xin1[3];
endmodule