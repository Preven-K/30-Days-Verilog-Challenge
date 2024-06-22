`timescale 1ns / 1ps

module D_Latch_nand_sr(
input d,en,
output q,qb);

wire w1,w2,w3;
not g1(w1,d);
nand g2(w2,d,en);
nand g3(w3,w1,en);

RS_latch_nand g(w3,w2,q,qb);



endmodule
