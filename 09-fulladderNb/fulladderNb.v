

module fulladderNb #(parameter N = 4);

    input wire [N-1:0] a;
    input wire [N-1:0] ,b;
    input wire cin;
    output wire [N-1:0] s;
    output wire cout;


    assign {cout,s}=a+b+cin;
endmodule