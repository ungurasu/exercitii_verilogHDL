module TOP(input[1:0] data0,input[1:0] data1, input[7:0] instruction, output wire ok, output wire ovf, output wire[7:0] instr_out, output wire[1:0] out0, output wire[1:0] out1);
	wire[1:0] sum;
	wire[1:0] mem;
	wire[3:0] addr;
	wire[1:0] muxmux;
	wire special;
	wire[1:0] specialmux;
	wire[1:0] muxdemux;
	
	assign addr[1:0] = data1[1:0];
	assign addr[3:2] = data0[1:0];
	assign specialmux[1] = 0;
	assign specialmux[0] = special;
	assign instr_out = instruction;
	
	ADDER adder1(.in0(data0),.in1(data1),.out(sum));
	ROM rom1(.addr(addr),.out(mem));
	EQ eq1(.in0(sum),.in1(mem),.out(ok));
	MUX2 mux21(.in0(sum),.in1(mem),.sel(instruction[5]),.out(muxmux));
	OVERFLOW_ADD overflow_add1(.in0(data1),.in1(data0),.out(ovf));
	SPECIAL special1(.in0(data1),.in1(data0),.out(special));
	MUX2 mux22(.in0(muxmux),.in1(specialmux),.out(muxdemux),.sel(instruction[7]));
	DEMUX2 demux21(.in(muxdemux),.out0(out0),.out1(out1),.sel(instruction[6]));
endmodule