module NANDtema(input[2:0] in1, input[2:0] in2, output[2:0] out);
	wire[2:0] aux;
	
	ANDtema DUT1(.in1(in1),.in2(in2),.out(aux));
	NOTtema DUT2(.in(aux),.out(out));
endmodule