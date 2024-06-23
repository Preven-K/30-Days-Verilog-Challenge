`timescale 1ns / 1ps


module TB_JK_ff();
reg j,k,clck;
wire q;

JK_Flipflop ff(j,k,clck,q);

initial begin 
clck=0;
forever #5 clck=~clck;
end

initial begin
j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;
end
endmodule
