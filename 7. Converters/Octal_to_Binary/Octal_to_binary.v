`timescale 1ns / 1ps
// Octal to Binary  ---->  0-7 inputs and 3 outputs
module Octal_to_binary(
input [7:0]in,
output [2:0]out );

assign out[2]=in[4]+in[5]+in[6]+in[7];
assign out[1]=in[2]+in[3]+in[6]+in[7];
assign out[0]=in[1]+in[3]+in[5]+in[7];

endmodule
