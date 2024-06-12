`timescale 1ns / 1ps

module RippleCarry(a,b,Cin,Sum,Cout);
    input [7:0]a;
    input [7:0]b;
    input Cin;
    output [7:0]Sum;
    output Cout;
    wire w1,w2,w3,w4,w5,w6,w7;
    
    full_adder FA1(a[0],b[0],Cin,Sum[0],w1);
    full_adder FA2(a[1],b[1],w1,Sum[1],w2);
    full_adder FA3(a[2],b[2],w2,Sum[2],w3);
    full_adder FA4(a[3],b[3],w3,Sum[3],w4);
    full_adder FA5(a[4],b[4],w4,Sum[4],w5);
    full_adder FA6(a[5],b[5],w5,Sum[5],w6);
    full_adder FA7(a[6],b[6],w6,Sum[6],w7);
    full_adder FA8(a[7],b[7],w7,Sum[7],Cout);    
endmodule
