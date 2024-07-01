`timescale 1ns / 1ps

module TB_SIPO();
reg clk,sin;
wire [3:0]pout;

SIPO dut( sin, clk, pout);

always #5 clk=~clk;
initial begin 
clk=1; sin = 0; #10;
sin = 1; #10; 
sin = 0; #10;
sin = 0;
end
endmodule
