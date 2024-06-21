`timescale 1ns / 1ps

module Clock_genrator(
    input clock,
    output reg freq1,freq2);
    
reg [3:0]count=4'b0000;
    
always @(posedge clock) begin
count=count+1;
assign freq1=count[1];
assign freq2=count[2];
end
endmodule
