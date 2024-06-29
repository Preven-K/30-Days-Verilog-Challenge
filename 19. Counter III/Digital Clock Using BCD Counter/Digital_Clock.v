`timescale 1ns / 1ps

module Digital_Clock(
input clk,rst,
output reg [5:0]sec,mins,
output reg [4:0]hours);

always @(posedge clk or posedge rst) begin 
if(rst) begin
    sec=0;mins=0;hours=0; end
else if (clk) begin 
    sec = sec + 1;
    if (sec == 60) begin 
        mins = mins + 1;
        sec=0;
        if (mins == 60) begin
            mins = 0;
            hours = hours + 1;
            if(hours == 24) 
                hours = 0;
        end
    
    end
    
end
    
    
end
endmodule
