`timescale 1ns / 1ps

module TB_PISO();
reg [3:0]pin;
reg clk,rst;
wire sout;

PISO dut(pin,clk,rst,sout);

always #5 clk=~clk;
initial begin 
clk=0;pin=5;rst=1;#10;rst=0;#50; 
rst=1; pin=14;#10;rst=0;#50; 
rst=1; pin=1;#10;rst=0;
end
endmodule
