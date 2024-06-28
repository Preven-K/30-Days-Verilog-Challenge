`timescale 1ns / 1ps
module Nbit_Counter(clk,rst,q,qb);
parameter n=4;
parameter count=16;
input clk,rst;
output [n-1:0]q,qb;
reg [n-1:0]counter;
always @(posedge clk) begin
if (rst) 
counter <= 0;
else begin 
counter <= counter+1 %count;
end
end
assign q=counter;
assign qb=~counter;
endmodule