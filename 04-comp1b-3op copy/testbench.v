`timescale 1ns/1ps
`include "comp1b3op.v"

module test_comp1b3op;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;

    // Outputs
    wire c;    // a == b
    wire agb;  // a > b
    wire alb;  // a < b

    // Instantiate the Unit Under Test (UUT)
    comp1b3op uut (
        .a(a),
        .b(b),
        .c(c),
        .agb(agb),
        .alb(alb)
    );

    initial begin
        // Monitor the inputs and outputs
        $monitor("Time = %0t | a = %b | b = %b | c (a==b) = %b | agb (a>b) = %b | alb (a<b) = %b", 
                 $time, a, b, c, agb, alb);

        // Test cases
        a = 4'b0000; b = 4'b0000; #10; // a == b
        a = 4'b0101; b = 4'b0011; #10; // a > b
        a = 4'b0010; b = 4'b0110; #10; // a < b
        a = 4'b1111; b = 4'b1111; #10; // a == b
        a = 4'b1000; b = 4'b0111; #10; // a > b
        a = 4'b0001; b = 4'b0010; #10; // a < b

        // End simulation
        $finish;
    end

endmodule