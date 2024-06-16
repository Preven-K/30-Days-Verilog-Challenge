`timescale 1ns / 1ps

module TB_decimal_BCD;
reg [9:0]in;
wire a,b,c,d;

Decimal_BCD dut(in,a,b,c,d);

initial begin
in=10'd0;#10
in=10'd1;#10
in=10'd2;#10
in=10'd3;#10
in=10'd4;#10
in=10'd5;#10
in=10'd6;#10
in=10'd7;#10
in=10'd8;#10
in=10'd9;#10
in=10'd10;#10
in=10'd11;#10
in=10'd12;#10
in=10'd13;#10
in=10'd111;
end
endmodule
