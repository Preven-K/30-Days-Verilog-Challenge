`timescale 1ns / 1ps

module SIPO(input sin,clk,output reg [3:0]pout);
reg [3:0]temp;

always @(posedge clk) begin
temp = temp >> 1 ;
temp[3] <= sin;
pout = temp;
end
endmodule
