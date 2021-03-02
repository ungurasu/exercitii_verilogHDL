module COUNTER4(input cnrst, input cclk, output reg cout);
	initial begin
		cout <= 0;
	end
	always@(posedge cclk) begin
		if (cnrst) begin
			cout <= cout+1;
		end
		else begin
			cout <= 0;
		end
	end
endmodule