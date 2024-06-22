`timescale 1ns / 1ps

module TB_RS_Latch_Nand;
reg r,s;
wire q,qb;

RS_latch_nand dut(r,s,q,qb);

initial begin 
s=0;r=0;#10;
s=0;r=1;#10;
s=1;r=0;#10;
s=1;r=1;

end

endmodule
