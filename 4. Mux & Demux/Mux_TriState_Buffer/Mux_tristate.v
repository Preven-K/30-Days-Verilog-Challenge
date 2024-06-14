`timescale 1ns / 1ps
// Declaring Tri State Buffer
module TriState_buf(
input a,c,
output y
);
assign y= c ? a : 1'bz;
endmodule
// Declaring Inverted Tri State Buffer
module TriState_buf_inv(
input a,c,
output y
);
assign y= c ? 1'bz : a;
endmodule
// 2x1 MUX using Tri state buffer
module Mux_tristate(
input i0,i1,s,
output out);

TriState_buf_inv buf1(i0,s,out);
TriState_buf buf2(i1,s,out);
endmodule
