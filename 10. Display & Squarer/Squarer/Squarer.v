`timescale 1ns / 1ps

// 3Bit Squarer 
module Squarer(
input [2:0]in,   // 3bits input 
output [5:0]out ); // 6bit output(square>initial)

assign out[0]=in[0];
assign out[1]=0;
assign out[2]=in[1] & !in[0]; 
assign out[3]=(in[0] & (in[2] ^ in[1]));
assign out[4]=((in[2] & !in[1]) | (in[2] & in[0]));
assign out[5]=in[2] & in[1];
endmodule
