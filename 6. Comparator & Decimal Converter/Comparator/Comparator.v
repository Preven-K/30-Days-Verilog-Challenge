`timescale 1ns / 1ps

module Comparator(
    input [3:0]a,b,
    output equal,greater,lesser
    );

    assign greater = a>b ;
    assign lesser = a<b ;
    assign equal= (a==b);
endmodule
