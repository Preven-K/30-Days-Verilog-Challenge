`timescale 1ns / 1ps

module Fulladd_halfsub(
    input a,b,cin,
    output sum,cout
    );
    //Data flow modelling
    assign sum = ! ((!a) ^ b ^ cin);
    assign cout = (a & b) | ((!(!a ^ b)) & cin);
    
    /* Gate level Modelling
    wire w1, w2, w3, w4, w5;
    
    not bf1(w4,A);
    not bf4(Sum,w5);
    
    Half_subractor hs1(w4,B,w1,w2);
    Half_subractor hs2(w1,C,w5,w3);
    
    or or1(Carry,w3,w2);  */
endmodule 
