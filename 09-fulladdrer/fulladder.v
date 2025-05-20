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

module fulladder1b(
    input wire a,
    input wire b,
    input wire cin,
    output wire s,
    input wire cout
);

    assign {cout,s}=a+b+cin;
endmodule