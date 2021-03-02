module COUNTER(
 input clk,
 output reg [3:0] cnt = 0
);
	
	always @(posedge clk) cnt <= cnt + 4'b0001;
	
endmodule
