//Full adder
//1bit
//what happen in a full adder is that we have three inputs a,b,cin and two outputs as sum and cout
//truth table for full adder

// cin | a | b | sum | cout
//  0  | 0 | 0 |  0  |  0
//  0  | 0 | 1 |  1  |  0
//  0  | 1 | 0 |  1  |  0
//  0  | 1 | 1 |  0  |  1
//  1  | 0 | 0 |  1  |  0
//  1  | 0 | 1 |  0  |  1
//  1  | 1 | 0 |  0  |  1
//  1  | 1 | 1 |  1  |  1

//1bit full adder

module fulladder8b(
    input wire [7:0] a,
    input wire [7:0] b,
    input wire cin,
    output wire [7:0] s,
    output wire cout
);
    assign {cout,s}=a+b+cin;
endmodule