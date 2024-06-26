`timescale 1ns / 1ps

module Parallel_Adder(
    input [3:0]x,y,
    input cin,
    output [3:0]sum,
    output [2:0]c,
    output cout
    );
    
    
    fulladder fa1(x[0],y[0],cin,sum[0],c[0]);
    fulladder fa2(x[1],y[1],c[0],sum[1],c[1]);
    fulladder fa3(x[2],y[2],c[1],sum[2],c[2]);
    fulladder fa4(x[3],y[3],c[2],sum[3],cout);
endmodule
