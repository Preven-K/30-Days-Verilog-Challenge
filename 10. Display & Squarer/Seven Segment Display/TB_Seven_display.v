`timescale 1ns / 1ps

module TB_Seven_display;
reg [3:0]in;
wire [6:0]d;
integer i;
Seven_Display dut(in,d);

initial begin
for(i=0;i<11;i=i+1) begin
in=i; #10;
end
end
endmodule
