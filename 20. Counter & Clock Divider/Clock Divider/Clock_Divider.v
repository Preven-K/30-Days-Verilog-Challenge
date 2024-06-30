`timescale 1ns / 1ps
// Clock Divider : Divides the two time period into 1 clk(output) 
module Clock_Divider(
    input rst,clk,
    output reg out_clk
    );
    reg [1:0]count;
    /*Here the clock count is incremented for every positive edge 
    and the out clock is taken as msb of clock count that will be 
    equal to 2 times period of original clock*/
    always @(posedge clk) begin
    if(rst) begin
        count =0; 
        out_clk=0;
        end
    else begin
        count = count +1;
        out_clk = count[1];
        end
    end
endmodule
