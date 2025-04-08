//RTL modeling

//below is a pure not gate implementation in Verilog

/*
module mynotgate(
    input wire a, //input wire (1 bit)
    output wire nota //output wire (1 bit) 

    //wire is a data type that represents a connection between two points in a circuit
    //wire is used to connect different parts of a circuit together


);

assign nota = ~a; //assign statement (continuous assignment) 

endmodule

// In Verilog, a wire can represent the following four logic values:

// 0: Logic low or false.
// 1: Logic high or true.
// x: Unknown logic value (e.g., uninitialized or conflicting drivers).
// z: High-impedance state (used in tri-state buffers or when a wire is not being driven).
// These values are part of Verilog's 4-state logic system, which helps model real-world digital circuits more accurately.

*/

//Gate level modeling

/*
module mynotgate(
    input wire a,
    output wire nota //output wire (1 bit
);

not ng1(nota,a); //not gate instance (gate level modeling)
// nota and a are output and input of the not gate respectively they should be in same order as in the module definition
// ng1 is the name of the not gate instance (can be any name)

endmodule

*/

//Behavioral modeling

module mynotgate(
    input wire a,
    output reg nota //output register (1 bit) 
);

always @(*) begin //always block (sensitivity list)
    //sensitivity list is a list of signals that trigger the always block to execute

    if(a) nota = 0; //if a is 1, nota is 0
    else nota = 1; //if a is 0, nota is 1

    //always block is a procedural block that is used to describe the behavior of a circuit
    
end

endmodule