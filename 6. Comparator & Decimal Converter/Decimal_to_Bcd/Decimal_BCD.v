`timescale 1ns / 1ps

module Decimal_BCD(
input [9:0]in,
output a,b,c,d);

or g1(a,in[1],in[3],in[5],in[7],in[9]);
or g2(b,in[2],in[3],in[6],in[7]);
or g3(c,in[4],in[5],in[6],in[7]);
or g4(d,in[8],in[9]);
endmodule
