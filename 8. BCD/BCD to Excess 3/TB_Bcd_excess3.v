`timescale 1ns / 1ps
module TB_Bcd_excess3;
reg [3:0]b;
wire [3:0]e;

BCD_to_excess3 dut(b,e);

initial begin
b=4'b1000;#10
b=4'b1001;#10
b=4'b0010;#10
b=4'b1011;#10
b=4'b0100;#10
b=4'b0101;#10
b=4'b0110;#10
b=4'b0111;
end
endmodule
