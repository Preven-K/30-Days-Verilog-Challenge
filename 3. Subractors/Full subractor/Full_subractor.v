`timescale 1ns / 1ps
module Full_subractor(
    input a,b,bor_in,
    input diff,bor_out
    );
    wire w1,w2,w3,w4;
    // data flow modelling 
    assign diff = a ^ b ^ bor_in;
    assign bor_out = (!a & b) | (!a & bor_in) | (b & bor_in);
    /* Gate level modelling
    xor g1(diff,a,b,bor_in);
    not g2(w1,a);
    and g3(w2,w1,b);
    and g4(w3,w1,bor_in);
    and g5(w4,bor_in,b);
    or g6(bor_out,w2,w3,w4); */
endmodule
