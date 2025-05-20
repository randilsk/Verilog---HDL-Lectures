`timescale 1ns/1ps
`include "fulladderNb.v"

module tb();

    parameter N = 4;  // Change this to test different widths

    reg  [N-1:0] a;
    reg  [N-1:0] b;
    reg          cin;
    wire [N-1:0] s;
    wire         cout;

    integer i, j;

    // Instantiate the DUT
    fulladderNb #(.N(N)) uut (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

        // Exhaustive test for all combinations of a, b, and cin
        for (i = 0; i < (1 << N); i = i + 1) begin
            for (j = 0; j < (1 << N); j = j + 1) begin
                a = i[N-1:0];  // ensure a is N bits
                b = j[N-1:0];
                cin = 0;
                #10;
                cin = 1;
                #10;
            end
        end

        $finish;
    end

    initial begin
        $monitor("Time=%0t | a=%0b | b=%0b | cin=%b | s=%0b | cout=%b", 
                  $time, a, b, cin, s, cout);
    end

endmodule
