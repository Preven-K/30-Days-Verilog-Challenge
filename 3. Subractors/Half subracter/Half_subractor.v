`timescale 1ns / 1ps

module Half_subractor(
    input a,b,
    output diff,borr
    );
    wire w1;
    //Gate level modelling
    not n1(w1,a);
    xor g1(diff,a,b);
    and g2(borr,b,w1);
    
    /* Data Flow modelling
    assign diff = a ^ b ;
    assign borr = (!a) & b ;
    */
endmodule
