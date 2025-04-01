// start module
// module represents a circuit or a block of code in Verilog

module firstmodule;

//initial block (procedural block)
//circuit that runs once at the power on
initial begin
    
    //cannot be synsthesized
    //output goes to console,file,simulator..

    $display("Hello, world!"); //to the console
    $finish; //indicate end of simulation
end

endmodule