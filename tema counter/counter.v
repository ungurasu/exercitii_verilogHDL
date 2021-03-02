module counter(input clk, input load, input[7:0] value_in, input enable, input updown, input rst_sync, output reg[7:0] value_out);

always@(posedge clk) begin
	if (rst_sync == 1) begin
		value_out <= 0;
	end
	else begin
		if (enable == 1) begin
			if (load == 1) begin
				value_out <= value_in;
			end
			else begin
				if (updown == 0) begin
					value_out <= value_out+8'b00000001;
				end
				else begin
					value_out <= value_out-8'b00000001;
				end
			end
		end
	end
end

endmodule