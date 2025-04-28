//2:1 mux with 1 bit inputs and outputs
//input A0(1bit),B0(1bit),SE
//output Y0(1bit)

module mux_2(
    input wire a,
    input wire b,
    input wire se,
    input wire en,
    output wire y
);
assign y=en? (se? a:b):1'b0; // if en=1, then y=a if se=1, else y=b. if en=0, then y=0
endmodule