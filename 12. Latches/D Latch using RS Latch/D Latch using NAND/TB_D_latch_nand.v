`timescale 1ns / 1ps

module TB_D_latch_nand;

reg d,en;
wire q,qb;

D_Latch_nand_sr dut(d,en,q,qb);

initial begin
en=0;d=0;#10; // NC
en=1;d=0;#10; //reset
en=1;d=1;#10; // set
en=0;d=1; //NC
end
endmodule
