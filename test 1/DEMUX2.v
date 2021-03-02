module DEMUX2(input[1:0] in, output reg[1:0] out0, output reg[1:0] out1, input sel);

always@(in or sel) begin
	if (sel == 0) begin
		out0 = in;
		out1 = 0;
	end
	else begin
		out0 = 0;
		out1 = in;
	end
end

endmodule