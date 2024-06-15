`timescale 1ns / 1ps
//Decoder using Demultiplexer

module Decoder_demux(
input en,
input [2:0]in,
output [7:0]out);

Demux_1x8 Dmux(en,in,out);

endmodule
