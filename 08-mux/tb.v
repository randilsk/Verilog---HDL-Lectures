`timescale 1ps/1ps
`include "mux2.v" // Include the mux_2 module file

module tb();
    reg a;     // input a
    reg b;     // input b
    reg se;    // select line
    reg en;    // enable
    wire y;    // output y

    // Instantiate the mux_2 module
    mux_2 uut (
        .a(a),
        .b(b),
        .se(se),
        .en(en),
        .y(y)
    );

    initial begin
        // Setup waveform dump
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

        // Initial values
        a = 0; b = 0; se = 0; en = 0;

        // Apply test cases
        #10; a = 1; b = 0; se = 0; en = 1; 
        #10; a = 1; b = 0; se = 1; en = 1;  
        #10; a = 0; b = 1; se = 0; en = 1; 
        #10; a = 1; b = 1; se = 1; en = 1;  
        #10; a = 1; b = 1; se = 0; en = 0;  
        #10; a = 0; b = 0; se = 1; en = 0;  
    end

    initial begin
        $monitor("a=%b, b=%b, se=%b, en=%b => y=%b",a, b, se, en, y);
    end
endmodule
