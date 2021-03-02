module FF(input ffin, input ffclk, input ffrst, output ffout);
	wire notout;
	assign ffout = !((ffrst & ffclk) | notout);
	assign notout = !((ffin & ffclk) | ffout);
endmodule