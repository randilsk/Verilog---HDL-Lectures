`timescale 1ns / 1ps
`include "fsm_moor.v"
module tb();

    // Inputs
    reg clk;
    reg reset;

    // Output
    wire y;

    // Instantiate the Unit Under Test (UUT)
    divideby3 uut (
        .clk(clk),
        .reset(reset),
        .y(y)
    );
    initial begin
        // Initialize the dump file for waveform viewing
        $dumpfile("fsm_moor.vcd");
        $dumpvars(0, tb);
    end

    // Clock generation: 10ns period => 100MHz
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Toggle clock every 5 ns
    end

    // Stimulus
    initial begin
        // Initialize reset
        reset = 1;
        #20;            // Hold reset high for 20 ns
        reset = 0;

        // Run simulation for some time
        #200;

        // Finish simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $display("Time\tclk\treset\ty");
        $monitor("%0t\t%b\t%b\t%b", $time, clk, reset, y);
    end

endmodule
