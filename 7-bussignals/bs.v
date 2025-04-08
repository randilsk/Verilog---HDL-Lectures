// module bsignal(
//     input wire [3:0] a,
//     input wire [3:0] b,
//     input wire c,
//     output wire [3:0] p
// );

// assign p[0]=(a[0]&(~c))|(b[0]&c);
// assign p[1]=(a[1]&(~c))|(b[1]&c);
// assign p[2]=(a[2]&(~c))|(b[2]&c);   
// assign p[3]=(a[3]&(~c))|(b[3]&c);

// endmodule



module bsignal(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire c,
    output wire [3:0] p
);

wire [3:0] cbus;

assign cbus={4{c}};
assign p=(a&(~cbus))|(b&cbus);

endmodule