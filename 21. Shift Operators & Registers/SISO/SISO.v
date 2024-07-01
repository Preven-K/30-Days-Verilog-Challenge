`timescale 1ns / 1ps


module SISO_Dff(sin, sout, clk);
input sin, clk;
output sout;
wire [2:0]w;

dff d1(sin, clk, w[0]);
dff d2(w[0], clk, w[1]);
dff d3(w[1], clk, w[2]);
dff d4(w[2], clk, sout);
endmodule

module dff( din, clk, out);
input din,clk;
output reg out;

always @(posedge clk) begin
 out <= din ;
end
endmodule