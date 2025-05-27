module siso_reg #(parameter N=8)(
        input clk,
        input reset,
        input data_in,
        output reg data_out
    );

    reg [N-1:0] shift_reg; //internal 4bit register
    always @(posedge clk or reset) begin
        if(reset) begin
            shift_reg <='b0;
            data_out <=1'b0;
        end else begin

            shift_reg<={shift_reg[N-1:0],data_in};

            data_out <= shift_reg[N-1];
        end 

        
    end



endmodule