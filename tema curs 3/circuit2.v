module circuit2(output reg b, output reg c, input a, input clock, input nReset);

always@(posedge clock) begin
    if (nReset == 0) begin
        b = 0;
        c = 0;
    end else begin
        b = a;
        c = b;
    end
end

endmodule