`timescale 1ns / 1ps

module TB_Universal_shift();
reg [3:0]in;
reg clk,rst;
reg [1:0]mode;
wire [3:0]out;

Universal_Shift_register dut(in,clk,rst,mode,out);

always #5 clk=~clk; 
initial begin 
    clk=1;rst=1;mode=0; #10; rst=0;
    in = 4'b0001; #10;
    mode=1;#20; mode=2;#20;
    mode=2;#20; mode=3;#20; mode=0;
    in = 4'b1101; #10;
    mode=1;#20; mode=2;#20;
    mode=2;#20; mode=3;#20;mode=0;
end
endmodule
