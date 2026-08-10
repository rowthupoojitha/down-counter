module down_counter #(
    parameter WIDTH = 4
)(
    input  wire             clk,
    input  wire             reset,
    output reg [WIDTH-1:0]  count
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= {WIDTH{1'b1}};
    else
        count <= count - 1'b1;
end

endmodule