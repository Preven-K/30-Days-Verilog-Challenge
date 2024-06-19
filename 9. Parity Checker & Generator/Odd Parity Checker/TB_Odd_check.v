`timescale 1ns / 1ps

module TB_Odd_check;
reg a,b,c,p;
wire check;
integer i;

Odd_checker dut(a,b,c,p,check);

initial begin 
for(i=0;i<16;i=i+1) begin
{a,b,c,p}=i; #10;
end
end
endmodule
