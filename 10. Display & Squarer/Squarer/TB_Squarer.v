`timescale 1ns / 1ps

module TB_Squarer;
reg [2:0]in;
wire [5:0]out;
integer i;

Squarer dut(in,out);

initial begin
for(i=0;i<8;i=i+1) begin
{in}=i; #10;
end
end
endmodule
