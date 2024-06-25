`timescale 1ns / 1ps

module Carry_Save_Adder(
input [3:0]x,y,z,
output [4:0]out,
output cout);
wire [3:0]s,c,c1;

fulladder fa1(x[0],y[0],z[0],out[0],c[0]);
fulladder fa2(x[1],y[1],z[1],s[1],c[1]);
fulladder fa3(x[2],y[2],z[2],s[2],c[2]);
fulladder fa4(x[3],y[3],z[3],s[3],c[3]);

fulladder fa5(s[1],c[0],1'b0,out[1],c1[1]);
fulladder fa6(s[2],c[1],c1[1],out[2],c1[2]);
fulladder fa7(s[3],c[2],c1[2],out[3],c1[3]);
fulladder fa8(1'b0,c[3],c1[3],out[4],cout);
endmodule



module fulladder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;

assign sum=a^b^cin;
assign cout= (a&b)|(b&cin)|(a&cin);

endmodule