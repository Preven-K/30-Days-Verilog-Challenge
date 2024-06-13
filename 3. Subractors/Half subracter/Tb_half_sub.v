`timescale 1ns / 1ps

module Tb_half_sub();
reg a_tb,b_tb;
wire diff_tb,borr_tb;

Half_subractor HS(a_tb,b_tb,diff_tb,borr_tb);

initial begin
a_tb=0;b_tb=0;#10
a_tb=0;b_tb=1;#10
a_tb=1;b_tb=0;#10
a_tb=1;b_tb=1;
end
endmodule
