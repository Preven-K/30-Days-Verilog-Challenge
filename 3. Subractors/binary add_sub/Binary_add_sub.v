`timescale 1ns / 1ps

module Binary_add_sub(a,b,sel,Sum,Cout);
    input [3:0]a;
    input [3:0]b;
    input sel;
    output [3:0]Sum;
    output Cout;
    wire w1,w2,w3;
    
    full_adder FA1(a[0],(b[0]^sel),sel,Sum[0],w1);
    full_adder FA2(a[1],(b[1]^sel),w1,Sum[1],w2);
    full_adder FA3(a[2],(b[2]^sel),w2,Sum[2],w3);
    full_adder FA4(a[3],(b[3]^sel),w3,Sum[3],Cout);   

endmodule
