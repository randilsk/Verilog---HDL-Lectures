`timescale 1ns/1ps
`include "fulladder.v"

module tb();
    reg a;
    reg b;
    reg cin;
    wire s;
    wire cout;


    fulladder1b uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);

             a=1'b0; b=1'b0; cin=1'b0;
        #10; a=1'b0; b=1'b0; cin=1'b1;
        #10; a=1'b0; b=1'b1; cin=1'b0;
        #10; a=1'b0; b=1'b1; cin=1'b1;

        #10; a=1'b1; b=1'b0; cin=1'b0;
        #10; a=1'b1; b=1'b0; cin=1'b1;
        #10; a=1'b1; b=1'b1; cin=1'b0;
        #10; a=1'b1; b=1'b1; cin=1'b1;
    end

    initial begin
      $monitor("a=%b | b=%b | cin=%b | s=%b | cout=%b", a, b, cin, s, cout);
    end

endmodule