`timescale  1ns/1ps
module dflipflop(
    input wire d,
    input wire clk,
    input wire en,
    input wire reset,
    output reg q
);
   always @(posedge clk or posedge reset) begin
        if(reset) q<=0;
        else if(en) begin
            q<=d;
        end
   end

endmodule