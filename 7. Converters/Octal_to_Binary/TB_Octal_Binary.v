`timescale 1ns / 1ps

module TB_Octal_Binary;
reg [7:0]in;
wire [2:0]out;

Octal_to_binary dut(in,out);

initial begin
in=8'b00000000;#10
in=8'b00000001;#10
in=8'b00000010;#10
in=8'b00000100;#10
in=8'b00001000;#10
in=8'b00010000;#10
in=8'b00100000;#10
in=8'b01000000;#10
in=8'b10000000;
end
endmodule
