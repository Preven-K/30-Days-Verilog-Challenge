`timescale 1ns / 1ps
module TB_Decoder();
reg [3:0]in_tb;
wire [15:0]out_tb;

Decoder de(in_tb,out_tb);

initial begin
in_tb=4'b0000;#10
in_tb=4'b0010;#10
in_tb=4'b0110;#10
in_tb=4'b1010;#10
in_tb=4'b1111;#10
in_tb=4'b0011;#10
in_tb=4'b0001;#10
in_tb=4'b1100;
end
endmodule
