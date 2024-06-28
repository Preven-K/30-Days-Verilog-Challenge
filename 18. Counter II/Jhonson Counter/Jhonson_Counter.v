`timescale 1ns / 1ps

  module Jhonson_Counter(
  input clk,rst,din,
  output [3:0]q);
  
  wire w1;
  not (w1,q[3]);
  
  D_FF D1(clk,rst,w1,q[0]);
  D_FF D2(clk,rst,q[0],q[1]);
  D_FF D3(clk,rst,q[1],q[2]);
  D_FF D4(clk,rst,q[2],q[3]);
endmodule


module D_FF(input clk,rst,din, output reg [3:0]q);

always @(posedge clk) begin 
if(rst) q=1'b0;
else q=din;
end
 
endmodule