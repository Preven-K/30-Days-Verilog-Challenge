`timescale 1ns / 1ps

module TB_Full_half();
reg a_tb,b_tb,Cin_tb;
wire Sum_tb,Cout_tb;

Full_Half dut(a_tb,b_tb,Cin_tb,Sum_tb,Cout_tb);
initial begin
    a_tb=0;b_tb=0;Cin_tb=0;#10
    a_tb=0;b_tb=0;Cin_tb=1;#10
    a_tb=0;b_tb=1;Cin_tb=0;#10
    a_tb=0;b_tb=1;Cin_tb=1;#10
    a_tb=1;b_tb=0;Cin_tb=0;#10
    a_tb=1;b_tb=0;Cin_tb=1;#10
    a_tb=1;b_tb=1;Cin_tb=0;#10
    a_tb=1;b_tb=1;Cin_tb=1;    
end
endmodule
