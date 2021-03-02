module toptema(input[2:0] a, input[2:0] b, input[2:0] c, input[2:0] d, input[2:0] e, input[2:0] opcode, input sel_1, input[1:0] sel_2, output[2:0] out, output carry_out);
	wire[2:0] ALUtemaout;
	wire[2:0] FULLADDERtemaout;
	wire[2:0] MUX41temaout;
	wire[2:0] NOTa;
	wire[2:0] NOTb;
	wire[2:0] NOTc;
	wire[2:0] w1;
	wire[2:0] w2;
	wire[2:0] w3;
	wire[2:0] w4;
	wire[2:0] w5;
	wire[2:0] w6;
	wire[2:0] in3mux41;
	wire[2:0] in4mux41;
	
	ALUtema DUT1(.in1(c), .in2(d), .opcode(opcode), .out(ALUtemaout));
	FULLADDERtema DUT2(.in1(a), .in2(b), .sum(FULLADDERtemaout), .carry_out(carry_out));
	
	NOTtema DUT3(.in(a),.out(NOTa));
	NOTtema DUT4(.in(b),.out(NOTb));
	NOTtema DUT5(.in(c),.out(NOTc));
	
	ANDtema DUT6(.in1(a),.in2(b),.out(w1));
	NOTtema DUT7(.in(c),.out(w2));
	ORtema DUT8(.in1(w1),.in2(w2),.out(w3));
	
	NANDtema DUT9(.in1(d),.in2(e),.out(w4));
	NORtema DUT10(.in1(NOTa),.in2(NOTb),.out(w5));
	XNORtema DUT11(.in1(w4),.in2(w5),.out(w6));
	
	MUX21tema DUT12(.in1(w3),.in2(w6),.sel(sel_1),.out(in3mux41));
	
	NOTtema DUT13(.in(NOTc),.out(in4mux41));
	
	MUX41tema DUT14(.in1(ALUtemaout),.in2(FULLADDERtemaout),.in3(in3mux41),.in4(in4mux41),.sel(sel_2),.out(MUX41temaout));
	
	NOTtema DUT15(.in(MUX41temaout),.out(out));
	
	endmodule