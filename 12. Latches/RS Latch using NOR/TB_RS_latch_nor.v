`timescale 1ns / 1ps

module TB_RS_latch_nor;
reg s,r;
wire q,qb;

RS_Latch_NOR dut(r,s,q,qb);


initial begin 
s=0;r=0;#10;
s=0;r=1;#10;
s=1;r=0;#10;
s=1;r=1;

end
endmodule
