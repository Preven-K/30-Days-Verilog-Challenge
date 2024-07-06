`timescale 1ns / 1ps

module TB_Factorial();
parameter n=5;
reg [n:0]in;
wire [n*8:0]out;

Factorial dut(in,out);

initial begin 
in=2;#10; in=10;#10; in=13;#10; in=4;#10;
in=8;#10; in=15;#10; in=1;#10; in=6;#10;
end
endmodule
