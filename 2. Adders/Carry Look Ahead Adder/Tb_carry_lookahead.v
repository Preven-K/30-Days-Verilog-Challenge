`timescale 1ns / 1ps

module Tb_carry_lookahead();
reg [3:0]a_tb,b_tb;
reg cin_tb;
wire [3:0]sum_tb;
wire cout_tb;

Carry_lookahead CLA(a_tb,b_tb,cin_tb,sum_tb,cout_tb);

initial begin 
a_tb=10'd0;b_tb=10'd10; cin_tb=1;#100
a_tb=10'd4;b_tb=10'd10; cin_tb=0;#100
a_tb=10'd11;b_tb=10'd9; cin_tb=0;#100
a_tb=10'd15;b_tb=10'd1; cin_tb=0;#100
a_tb=10'd1;b_tb=10'd4; cin_tb=1;
end
endmodule
