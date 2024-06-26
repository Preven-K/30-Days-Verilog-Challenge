`timescale 1ns / 1ps

module TB_Serial_Adder;
reg a,b,cin,clk,rst;
wire sum,cout,c,flag;

Serial_Adder uut(a,b,cin,clk,rst,sum,cout);

always #5 clk=~clk;

initial begin
clk=1;rst=0;
{a,b,cin}=0; rst=1;  #20;
rst=0;
//Input given serially a=1111 b=1100 cin=0  sum=1111+1100+0=11011
a=1;b=0;cin=0;#10;
a=1;b=0;cin=0;#10;
a=1;b=1;cin=0;#10;
a=1;b=1;cin=0;#10
rst=1;#10;
rst=0;#10
//Input given serially a=1000 b=0110 cin=1  sum=1111+1100+0=11011
a=0;b=0;cin=1;#10;
a=0;b=1;cin=0;#10;
a=0;b=1;cin=0;#10;
a=1;b=0;cin=0;#10
rst=1;#10;
end
endmodule
