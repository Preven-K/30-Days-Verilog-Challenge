`timescale 1ns / 1ps

module TB_SR_flipflop;
reg s,r,clock;
wire q,qb;
SR_Flipflop ff(s,r,clock,q,qb);

initial begin
clock=0;
forever #5 clock=~clock;
end
initial begin
s=0;r=0;#10;
s=0;r=1;#10;
s=1;r=0;#10;
s=1;r=1;
end
endmodule
