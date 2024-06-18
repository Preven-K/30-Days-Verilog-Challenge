`timescale 1ns / 1ps

module TB_Binary_BCD;
reg [7:0]b;
wire [11:0]bcd;
integer i;

Binary_BCD dut(b,bcd);

initial begin
for(i=0;i<256;i=i+1)
begin
b=i;#3;
end
end
endmodule
