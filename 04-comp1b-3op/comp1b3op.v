//RTL modeling

module comp1b3op(
    input wire a,
    input wire b,
    output reg c, //a=b
    output reg agb, //a>b
    output reg alb  //a<b
);
always @(*) begin
    if (a==b) 
    begin
        c = 1'b1; // a=b
        agb = 1'b0; // a>b
        alb = 1'b0; // a<b
    end 
    else if (a > b) 
    begin
        c = 1'b0; // a=b
        agb = 1'b1; // a>b
        alb = 1'b0; // a<b
    end 
    else 
    begin
        c = 1'b0; // a=b
        agb = 1'b0; // a>b
        alb = 1'b1; // a<b
    end
end

endmodule 


