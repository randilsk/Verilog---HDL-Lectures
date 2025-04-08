`timescale 1ns / 1ps
`include "comp1b.v"

module comp1tb;
    reg a;
    reg b;
    wire z;

    // Instantiate the unit under test
    compb1 uut (.a(a), .b(b), .z(z)); // Updated module name to compb1

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;

        a = 0; b = 0;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 a = 0; b = 1;
        #10 a = 0; b = 0;
        #10;
    end

    initial begin
        $monitor("a=%b   b=%b   z=%b", a, b, z);
    end
endmodule