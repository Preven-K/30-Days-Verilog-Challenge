`timescale 1ns / 1ps

module full_adder(
    input in_a,in_b,in_carry,
    output sum,carry
    );
    wire w1,w2,w3,w4;
    //gate level modelling
    xor g1(w1,in_a,in_b);
    xor g2(sum,w1,in_carry);
    and g3(w3,in_a,in_b);
    and g4(w4,w1,in_carry);
    or g5(carry,w4,w3);
    //dataflow modelling 
    assign sum = in_a ^ in_b ^ in_carry;    
    assign carry = ((in_a & in_b) | (in_a & in_carry) | (in_b & in_carry));
    
endmodule
