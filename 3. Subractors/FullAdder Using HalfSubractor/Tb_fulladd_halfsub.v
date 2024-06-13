`timescale 1ns / 1ps

module Tb_fulladd_halfsub();
reg a,b,cin;
wire sum,cout;

Fulladd_halfsub dut(a,b,cin,sum,cout);

initial begin 
a=0;b=0;cin=0;#10
a=0;b=0;cin=1;#10
a=0;b=1;cin=0;#10
a=0;b=1;cin=1;#10
a=1;b=0;cin=0;#10
a=1;b=0;cin=1;#10
a=1;b=1;cin=0;#10
a=1;b=1;cin=1;
end
endmodule
