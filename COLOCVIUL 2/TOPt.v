module TOPt(input clock, input we, input[3:0] data, input[3:0] addr ,input[3:0] addrop1, input[3:0] addrop2, input sel, input[1:0] opcode, output[4:0] out);
	wire[3:0] data0;
	wire[3:0] data1;
	wire[3:0] data2;
	wire[4:0] aluout;
	
	RAMt DUT1(.clock(clock),.addr(addr),.addrop1(addrop1),.addrop2(addrop2),.data(data),.we(we),.rdata(data0),.rdataop1(data1),.rdataop2(data2));
	ALUt DUT2(.op1(data1),.op2(data2),.clock(clock),.opcode(opcode),.out(aluout));
	MUXt DUT3(.in1(aluout),.in0(data0),.sel(sel),.out(out));
endmodule