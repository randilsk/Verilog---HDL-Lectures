module dlatch(
    input wire d,
    input wire em,
    output wire q
);
    always @(en or d) begin
        if(en) begin 
            q<=d;
        end
    end
endmodule