`timescale 1ns / 1ps

module TB_Jhonson_counter;

reg clk,rst,din;
wire [3:0]q;

Jhonson_Counter dut(clk,rst,din,q);

initial begin
clk=0;rst=1;#10;
rst=0;
end

always #5 clk=~clk;
endmodule
