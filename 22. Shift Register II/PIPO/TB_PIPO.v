`timescale 1ns / 1ps

module TB_PIPO();
reg [3:0]pin;
reg clk;
wire [3:0]pout;

PIPO dut(pin,clk,pout);

always #5 clk=~clk;
initial begin 
clk=1;
pin=4'b0011;#10;pin=4'b0010;#10;
pin=4;#10;pin=5;#10;
pin=6;#10;pin=7;#10;
pin=11;#10;pin=15;
end
endmodule
