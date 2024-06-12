`timescale 1ns / 1ps
module Tb_ripple();

reg [7:0]a_tb,b_tb;
reg Cin_tb;
wire [7:0]sum_tb;
wire Cout_tb;

RippleCarry dut(a_tb,b_tb,Cin_tb,sum_tb,Cout_tb);

initial begin
a_tb=8'b10000111;b_tb=8'b11100000;Cin_tb=0;#10
a_tb=8'b00000000;b_tb=8'b10100000;Cin_tb=0;#10
a_tb=8'b11111111;b_tb=8'b11100000;Cin_tb=0;#10
a_tb=8'b00110111;b_tb=8'b00000000;Cin_tb=0;

end
endmodule
