module intermediatewire(
    input wire a,
    input wire b,
    input wire c,
    output wire p,
    output wire q
);

wire intmwire;
assign intmwire=a&b;
assign p=intmwire&c;
assign q=intmwire|c;

endmodule