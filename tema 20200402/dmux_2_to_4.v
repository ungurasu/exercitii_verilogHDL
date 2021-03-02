module dmux_2_to_4(output [3:0]out, input [1:0]sel, input in);
	assign out[0] = (!sel[1] && !sel[0] && in);
	assign out[1] = (!sel[1] && sel[0] && in);
	assign out[2] = (sel[1] && !sel[0] && in);
	assign out[3] = (sel[1] && sel[0] && in);
endmodule