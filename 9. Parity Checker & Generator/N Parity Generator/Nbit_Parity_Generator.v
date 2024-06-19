`timescale 1ns / 1ps

module Nbit_Parity_Generator(
input [N-1:0]in,
output odd,even);

parameter  N=6;
assign even= ^in;
assign odd= ~even;
endmodule
