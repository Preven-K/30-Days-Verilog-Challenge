`timescale 1ns / 1ps
module Single_Port_RAM(
input clk,r,w,
input [7:0]d,
input [2:0]a, // address = 2**3
output reg [7:0]out);
reg [7:0] ram [7:0];

always @ (posedge clk)
begin
    if(w)
        ram[a] <= d;
    out <= r?ram[a]:8'bzzzzzzzz;
end
endmodule
