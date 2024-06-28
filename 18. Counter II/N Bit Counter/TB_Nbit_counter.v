`timescale 1ns / 1ps

module TB_Nbit_counter;
parameter n=4;
parameter count=16;
reg clk,rst;
wire [n-1:0]q,qb;

Nbit_Counter dut(clk,rst,q,qb);


initial begin
clk=0;
rst=1;
#10;
rst=0;
end
always #5 clk=~clk;
endmodule
