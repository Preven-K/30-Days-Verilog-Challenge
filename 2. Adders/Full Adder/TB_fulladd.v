`timescale 1ns / 1ps

module TB_fulladd();
    reg a,b,cin;
    wire sum_tb,cout_tb;
    
    full_adder FA(a,b,cin,sum_tb,cout_tb);
    initial begin
    a=0; b=0; cin=0; #10
    a=0; b=0; cin=1; #10
    a=0; b=1; cin=0; #10
    a=0; b=1; cin=1; #10
    a=1; b=0; cin=0; #10
    a=1; b=0; cin=1; #10
    a=1; b=1; cin=0; #10
    a=1; b=1; cin=1;   
    end
endmodule
