// //RTL modeling

// module compb1(
//     input wire a,
//     input wire b,
//     output wire z

// );

// assign z = (~a & ~b) | (a&b);

// endmodule 


//Gate level modeling

// module compb1(input x,input y,output z); //input and output ports

//     wire xay,nx,ny,nxany;

//     and (xay,x,y); //and gate instance (gate level modeling)
//     not (nx,x); //not gate instance (gate level modeling)
//     not (ny,y); //not gate instance (gate level modeling)
//     and (nxany,nx,ny); //and gate instance (gate level modeling)

//     or(z,xay,nxany); //or gate instance (gate level modeling)
// endmodule

//& is a binary operator and && is a logical operator for expression evaluation

// module comp1b(
//     input wire a,
//     input wire b,
//     output wire z
// )

// wire na,nb,na_or_nb;
// wire a_or_b;

// not NG1(na,a); //not gate instance (gate level modeling)
// not NG2(nb,b); //not gate instance (gate level modeling)
// and AND1(a_or_b,a,b); //and gate instance (gate level modeling)
// and AND2(na_or_nb,na,nb); //and gate instance (gate level modeling)

// or OR1(z,a_or_b,na_or_nb); //or gate instance (gate level modeling)

// endmodule


//Behavioral modeling

module comp1b(
    input wire a,
    input wire b,
    output reg z
);

always @(*) 
    begin
        if(a==b) 
            z=1;
        else     
            z=0;
    end

endmodule