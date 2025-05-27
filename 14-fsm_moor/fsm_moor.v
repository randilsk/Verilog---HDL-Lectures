module divideby3 (
    input clk,
    input reset,
    output reg y
);

    reg [1:0] state, nextstate;

    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= nextstate;
    end

    // Next state logic
    always @(*) begin
        case (state)
            S0: nextstate = S1;
            S1: nextstate = S2;
            S2: nextstate = S0;
            default: nextstate = S0;
        endcase
    end

    // Output logic: pulse high once every 3 cycles
    always @(posedge clk or posedge reset) begin
        if (reset)
            y <= 0;
        else
            y <= (state == S0);  // high only in state S0
    end

endmodule
