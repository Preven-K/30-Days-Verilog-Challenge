`timescale 1ns / 1ps

module TB_Encoder;
reg [15:0]in_tb;
wire [3:0]out_tb;

Encoder en(in_tb,out_tb);

initial begin
in_tb=16'b0000000000000001;#10
in_tb=16'b0000000000000010;#10
in_tb=16'b1000000000000000;#10
in_tb=16'b0000001000000000;#10
in_tb=16'b0000000001000000;#10
in_tb=16'b0000000000001000;#10
in_tb=16'b0000100000000000;#10
in_tb=16'b0010000000000000;
end
endmodule
