`timescale 1ns/1ps
`include "fulladder8b.v"

module tb();
    reg [7:0] a;
    reg [7:0] b;
    reg cin;
    wire [7:0] s;
    wire cout;


    fulladder8b uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);

        a=8'b00000000; b=8'b00000000; cin=1'b0;
        #10; a=8'b00000000; b=8'b00000000; cin=1'b1;
        #10; a=8'b00000000; b=8'b00000001; cin=1'b0;
        #10; a=8'b00000000; b=8'b00000001; cin=1'b1;
        #10; a=8'b00000001; b=8'b00000000; cin=1'b0;
        #10; a=8'b00000001; b=8'b00000000; cin=1'b1;
        #10; a=8'b00000001; b=8'b00000001; cin=1'b0;
        #10; a=8'b00000001; b=8'b00000001; cin=1'b1;
        #10; a=8'b00000001; b=8'b00000010; cin=1'b0;
        #10; a=8'b00000001; b=8'b00000010; cin=1'b1;
        #10; a=8'b00000010; b=8'b00000000; cin=1'b0;
        #10; a=8'b00000010; b=8'b00000000; cin=1'b1;
        #10; a=8'b00000010; b=8'b00000001; cin=1'b0;    
        #10; a=8'b00000010; b=8'b00000001; cin=1'b1;
        #10; a=8'b00000010; b=8'b00000010; cin=1'b0;
        #10; a=8'b00000010; b=8'b00000010; cin=1'b1;
        #10; a=8'b00000010; b=8'b00000011; cin=1'b0;
        #10; a=8'b00000010; b=8'b00000011; cin=1'b1;



    end

    initial begin
      $monitor("a=%b | b=%b | cin=%b | s=%b | cout=%b", a, b, cin, s, cout);
    end

endmodule