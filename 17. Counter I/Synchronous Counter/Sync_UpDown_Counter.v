`timescale 1ns / 1ps

module Sync_UpDown_Counter(
input clck,rst,en,
output [7:0]count );

reg [7:0]count=0;

always @ (posedge clck) begin 
if(rst==1)  
    count=8'b00000000;  // initailise 0 when reset=1
else if (en==1)         // when enable is 1 act as Up counter
    count=count + 1'b1; // Up Counter 
else                    // when enable is 0 act as Down Counter
    count=count - 1'b1; // Down Counter
end
   
endmodule
