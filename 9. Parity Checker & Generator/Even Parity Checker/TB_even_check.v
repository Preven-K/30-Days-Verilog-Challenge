`timescale 1ns / 1ps

module TB_even_check;
reg a,b,c,p;
wire check;
integer i;

Even_parity_check dut(a,b,c,p,check);

initial begin 
for(i=0;i<16;i=i+1) begin
{a,b,c,p}=i; #10;
end
end
endmodule
