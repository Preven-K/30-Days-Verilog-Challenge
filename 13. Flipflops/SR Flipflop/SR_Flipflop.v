`timescale 1ns / 1ps
// Sequential circuits basic component is SR Flipflop
module SR_Flipflop(
    input s,r,clck,
    output q,qb
    );
    wire w1,w2;
    nand g1(w1,s,clck);
    nand g2(w2,r,clck);
    nand g3(q,w1,qb);  // we can also use SR latch using nand gates
    nand g4(qb,w2,q);
endmodule
