//RTL modeling
//below is a pure not gate implementation in Verilog

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
