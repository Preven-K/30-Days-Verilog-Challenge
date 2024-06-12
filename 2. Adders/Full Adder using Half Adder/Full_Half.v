`timescale 1ns / 1ps

module Full_Half(
    input a,b,Cin,
    input sum,Cout
    );
    wire w1,w2,w3;
    
    half_adder HA1(a,b,w1,w2);
    half_adder HA2(Cin,w1,sum,w3);
    or gate(Cout,w2,w3);
    
endmodule
