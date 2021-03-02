module mux_4_to_1(output out, input [1:0]sel, input [3:0]in);
	assign out = (!sel[1] && !sel[0] && in[0]) || (!sel[1] && sel[0] && in[1]) || (sel[1] && !sel[0] && in[2]) || (sel[1] && sel[0] && in[3]);
endmodule