`timescale 1ns / 1ps

module TB_Ring_Counter;

reg clk,rst;
wire [3:0]q;

Ring_Counter dut(clk,rst,q);

always #5 clk=~clk;
initial begin 
clk=1; rst=1;#10;
rst=0;
end
endmodule
