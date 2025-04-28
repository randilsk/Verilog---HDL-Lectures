//2:1 mux with 1 bit inputs and outputs
//input A0(1bit),B0(1bit),SE
//output Y0(1bit)

module mux_3(
    input wire [2:0] a,
    input wire [2:0] b,
    input wire [2:0] c,
    input wire [2:0] d,
    input wire [1:0] se,
    input wire en,
    output wire [2:0] y
);
always @(*) begin
    if(en)
        case (se)
            2'b00: y = a; // select a
            2'b01: y = b; // select b
            2'b10: y = c; // select c
            2'b11: y = d; // select d
            default: y=2'bzz;
        endcase
    else
        y =2'bzz; 
end

endmodule