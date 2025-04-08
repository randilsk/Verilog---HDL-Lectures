module bsignal(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire c,
    output wire [3:0] p
);

assign p[0]=(a&(~c))|(b&c);
assign p[1]=(a&(~c))|(b&c); 
assign p[2]=(a&(~c))|(b&c);
assign p[3]=(a&(~c))|(b&c);

endmodule



