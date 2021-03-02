module CG5(input cgin, input cgclck, input cgnrst, output wire cgout);
	wire w1;
	wire w2;
	wire w3;
	wire w4;
	wire w5;
	wire w6;
	wire w7;
	
	XOR1 XOR11(.xin0(cgin),.xin1(cgout),.xout(w1));
	FF FF1(.ffin(w1),.ffclk(cgclck),.ffrst(!cgnrst),.ffout(w2));
	FF FF2(.ffin(w2),.ffclk(cgclck),.ffrst(!cgnrst),.ffout(w3));
	
	XOR1 XOR12(.xin0(w3),.xin1(cgout),.xout(w4));
	FF FF3(.ffin(w4),.ffclk(cgclck),.ffrst(!cgnrst),.ffout(w5));
	FF FF4(.ffin(w5),.ffclk(cgclck),.ffrst(!cgnrst),.ffout(w6));
	
	XOR1 XOR13(.xin0(w6),.xin1(cgout),.xout(w7));
	FF FF5(.ffin(w7),.ffclk(cgclck),.ffrst(!cgnrst),.ffout(cgout));
endmodule