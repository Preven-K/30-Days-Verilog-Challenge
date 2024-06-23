`timescale 1ns / 1ps
// D flipflop Data or Delay flipflop
module D_Flipflop(
    input d,clck,
    output q,qb
    );
    wire w1,w2,w3;
    not g(w1,d);
    nand n1(w2,d,clck);
    nand n2(w3,w1,clck);
    nand n3(q,w2,qb);  // can also use d latch using nand
    nand n4(qb,w3,q);
    
endmodule
