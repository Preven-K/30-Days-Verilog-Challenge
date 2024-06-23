`timescale 1ns / 1ps

module TB_D_ff();

reg d,clk;
wire q,qb;

D_Flipflop dff(d,clk,q,qb);

initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin
d=0;#10;
d=1;
end
endmodule
