`timescale 1ns / 1ps

module Tb_Binary_add_sub();
reg [3:0]a_tb,b_tb;
reg sel_tb;
wire [3:0]sum_tb;
wire Cout_tb;

Binary_add_sub dut(a_tb,b_tb,sel_tb,sum_tb,Cout_tb);

initial begin
a_tb=4'b0000;b_tb=4'b1111;sel_tb=0;#10
a_tb=8'b0101;b_tb=8'b1010;sel_tb=1;#10
a_tb=8'b0111;b_tb=8'b1010;sel_tb=1;#10
a_tb=8'b1000;b_tb=8'b1010;sel_tb=1;#10
a_tb=8'b0101;b_tb=8'b1010;sel_tb=1;


end
endmodule
