`timescale 1ns/1ps

module down_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] count;

    down_counter #(.WIDTH(4)) uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;

        #10;
        reset = 0;

        #180;
        $finish;
    end

    initial begin
        $monitor("Time = %0t | Reset = %b | Count = %d",
                 $time, reset, count);
    end

endmodule