`timescale 1ns/1ps
`include "dflipflop.v"


module tb();
    reg clk, d, en, reset;
    wire q;

    dflipflop uut(
        .d(d),
        .clk(clk),
        .en(en),
        .reset(reset),
        .q(q)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end


    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

 
    initial begin
   
        d = 0; en = 0; reset = 0;

    
        #2 reset = 1;
        #8 reset = 0;

        #5 en = 1; d = 1;
        #10 d = 0;
        #10 en = 0;
        #10 d = 1;
        #10 en = 1;
        $finish;

    end

    initial begin
        $monitor("time=%0t | clk=%b | d=%b | en=%b | reset=%b | q=%b", $time, clk, d, en, reset, q);
       
    end

endmodule