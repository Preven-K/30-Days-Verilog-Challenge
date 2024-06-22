`timescale 1ns / 1ps

module RS_Latch_NOR(
    input r,s,
    output q,qb
    );
    
    nor g1(q,s,qb);
    nor g2(qb,r,q);
endmodule
