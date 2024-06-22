`timescale 1ns / 1ps
// RS Latch is a Bistable Latch 
// Store 1 bit data used for memory storage
module RS_latch_nand(
    input r,s,
    output q,qb
    );
    
    nand g1(q,s,qb);
    nand g2(qb,r,q);
endmodule
