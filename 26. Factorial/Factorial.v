`timescale 1ns / 1ps

module Factorial(in,out);
parameter n=5;
input [n:0]in;
output reg [n*8:0]out;
reg [n*8:0]temp;
reg [n*8:0]fact;

always @(in) begin 
if( in == 1'b1) fact=1'b1;
else begin 
fact=in;
for(temp = in-1; temp != 1 ; temp = temp -1)
fact= fact*temp;
end
assign out = fact;
end


endmodule
