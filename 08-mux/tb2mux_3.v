`timescale 1ps/1ps

module tb_mux3();
    reg [2:0] a;     // 3-bit input a
    reg [2:0] b;     // 3-bit input b
    reg [2:0] c;     // 3-bit input c
    reg [2:0] d;     // 3-bit input d
    reg [1:0] se;    // 2-bit select line
    reg en;          // enable signal
    wire [2:0] y;    // 3-bit output y

    // Instantiate the mux_3 module
    mux_3 uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .se(se),
        .en(en),
        .y(y)
    );

    initial begin
        // Setup waveform dump
        $dumpfile("mux3_dump.vcd");
        $dumpvars(0, tb_mux3);

        // Initialize inputs
        a = 3'b000; b = 3'b001; c = 3'b010; d = 3'b011; se = 2'b00; en = 0;

        // Apply test cases
        #10; en = 1; se = 2'b00; // Select a
        #10; se = 2'b01;         // Select b
        #10; se = 2'b10;         // Select c
        #10; se = 2'b11;         // Select d
        #10; en = 0;             // Disable output
        #10; en = 1; se = 2'b00; // Enable and select a again
        #10; se = 2'b01;         // Select b
        #10; $finish;            // End simulation
    end

    initial begin
        $monitor("Time=%0t | en=%b, se=%b, a=%b, b=%b, c=%b, d=%b => y=%b", 
                 $time, en, se, a, b, c, d, y);
    end
endmodule