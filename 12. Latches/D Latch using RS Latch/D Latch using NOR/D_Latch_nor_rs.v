`timescale 1ns / 1ps

module D_Latch_nor_rs(
input d,en,
output q,qb
    );
    wire w1,w2,w3;
    
    not g1(w1,d);
    and g2(w2,w1,en);
    and g3(w3,d,en);
    
    RS_Latch_NOR dut(w3,w2,q,qb);
endmodule
