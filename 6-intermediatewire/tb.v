`timescale 1ps/1ps
`include "intermidiatewire.v"

module tb();

    // Testbench signals
    reg a, b, c;
    wire p, q;

    // Instantiate the DUT (Device Under Test)
    intermediatewire uut (
        .a(a),
        .b(b),
        .c(c),
        .p(p),
        .q(q)
    );

    // Monitor changes in signals
    initial begin
        $monitor("Time: %0t | a: %b, b: %b, c: %b | p: %b, q: %b", $time, a, b, c, p, q);
    end

    // Testbench stimulus
    initial begin
        // Apply test cases
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;

        // End simulation
        $stop;
    end

endmodule