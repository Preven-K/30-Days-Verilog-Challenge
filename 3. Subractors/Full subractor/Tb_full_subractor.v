`timescale 1ns / 1ps

module Tb_full_subractor();
reg a_tb,b_tb,bor_tb;
wire diff_tb,bor_out_tb;

Full_subractor FS(a_tb,b_tb,bor_tb,diff_tb,bor_out_tb);

initial begin
a_tb=0;b_tb=0;bor_tb=0;#10
a_tb=0;b_tb=0;bor_tb=1;#10
a_tb=0;b_tb=1;bor_tb=0;#10
a_tb=0;b_tb=1;bor_tb=1;#10
a_tb=1;b_tb=0;bor_tb=0;#10
a_tb=1;b_tb=0;bor_tb=1;#10
a_tb=1;b_tb=1;bor_tb=0;#10
a_tb=1;b_tb=1;bor_tb=1;
end
endmodule
