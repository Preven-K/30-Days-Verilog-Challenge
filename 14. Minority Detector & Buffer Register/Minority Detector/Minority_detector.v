`timescale 1ns / 1ps
// Minority Detector detects when input has only 1 bit high(least no of ones)
module Minority_detector(
    input a,b,c,
    output f
    );

    assign f=~((a&b)|(b&c)|(c&a));
endmodule
