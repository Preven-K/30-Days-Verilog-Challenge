`timescale 1ns / 1ps

module TB_Digital_clock;

reg clk,rst;
wire [5:0]sec,mins;
wire [4:0] hours;

Digital_Clock dut(clk,rst,sec,mins,hours);

initial clk=0;
always #5 clk =~clk;

initial begin
rst=1;
#10;
rst=0; 
end
endmodule
