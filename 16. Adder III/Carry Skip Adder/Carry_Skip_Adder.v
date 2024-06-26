module FA(input a,b,cin,output s,cout,p); // forming Ripple Carry Adder 
assign p=a^b;      // Propagate is added since we need to add it on skip logic
assign s=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);
endmodule
// skip logic used when all propagate of full adder are 1. 
module and_block(input [3:0]p,output pb);
assign pb=&p;
endmodule
// when the all propagates are 1 then the cin is given to output carry 
// thereby skipping all the carry of each full adder in ripple carry adder
module mux_2x1(input a,b,sel, output out);
assign out=sel?a:b;
endmodule
// 4Bit Carry Skip Adder 
module Carry_Skip_Adder(
input [3:0]a,b,
input cin,
output [3:0]sum,
output cout );
wire [3:0]c,p;
wire pb;

FA f1(a[0],b[0],cin,sum[0],c[0],p[0]);
FA f2(a[1],b[1],c[0],sum[1],c[1],p[1]);
FA f3(a[2],b[2],c[1],sum[2],c[2],p[2]);
FA f4(a[3],b[3],c[2],sum[3],c[3],p[3]);
and_block a1(p,pb);
mux_2x1 m1(cin,c[3],pb,cout);
endmodule 