`timescale 1ns / 1ps

module Demux_1x8(
input i,
input [2:0]s,
output [7:0]out
);
assign out[0]= !s[2] & !s[1] & !s[0] & i;
assign out[1]= !s[2] & !s[1] & s[0] & i;
assign out[2]= !s[2] & s[1] & !s[0] & i;
assign out[3]= !s[2] & s[1] & s[0] & i;
assign out[4]= s[2] & !s[1] & !s[0] & i;
assign out[5]= s[2] & !s[1] & s[0] & i;
assign out[6]= s[2] & s[1] & !s[0] & i;
assign out[7]= s[2] & s[1] & s[0] & i;

endmodule
