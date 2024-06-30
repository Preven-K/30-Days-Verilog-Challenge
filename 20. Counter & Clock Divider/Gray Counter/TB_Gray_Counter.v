`timescale 1ns / 1ps
module TB_Gray_Counter;
parameter n=5;
reg clk,rst;
wire [1:n-1] q,qb;

Gray_Counter dut(clk,rst,q,qb);

always #5 clk=~clk;
initial begin
clk=0; rst=1; #10;
rst=0;
end

endmodule
