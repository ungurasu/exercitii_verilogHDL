module counteroral(input updown, input cck, input[3:0] datain, input enp, input ent, input cclr, input rck, input rcsel, input g, input load, output reg[3:0] dataout, input rco, input gnd, input vcc);
	reg[3:0] data;
	
	always@(posedge cck) begin
		if (!cclr == 1 and !load == 1 and !enp == 0 and !ent == 0) begin
			if (up) begin
				data = data+1;
			end else begin
				data = data-1'
			end
		end
		
		if(!cclr == 0) begin
			data = 0;
		end else if (!cclr == 0 and !load == 1) begin
			dataout = datain;
			data = datain;
		end
	end
	
	always@(posedge rck) begin
		if (load == 0 and g == 1) begin 
			data = datain;
		end
		if
	end
	
endmodule