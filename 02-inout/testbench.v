`timescale 1ps/1ps
`include "mynotgate.v"

module tb();
    reg a; // input register (1 bit)
    wire nota; // output wire (1 bit)

    mynotgate uut(.a(a),.nota(nota)); // instantiate the mynotgate module . uut-unit under test can be any name
    // .a and .nota are the names of the ports in the module mynotgate
    // a and nota in brackets are the names of the ports in the module can be different from the names of the signals in the testbench
    initial begin
        a=0; // initialize a to 0

        $dumpfile("dump.vcd"); // dump file for waveform viewer
        $dumpvars(0, tb); // dump all variables in the testbench

        #10; a = 1; 
        #10; a = 0;
        #10; a = 1; 
        #10; a = 0; 
    end

    initial begin
        $monitor("a=%b,not a=%b",a,nota); // monitor changes in a and nota, expected a=0 y=1
    end
endmodule

//The testbench is a separate module that instantiates the design under test (DUT) and applies test vectors to it.

//to run the testbench, use the following command in the terminal
//iverilog -o mynotgate_tb mynotgate.v testbench.v 
//vvp mynotgate_tb
//gtkwave.exe .\dump.vcd  //gtkwave.exe is a waveform viewer that can be used to view the simulation results in a graphical format

//gtkwave.exe .\name of the dumping file.vcd
