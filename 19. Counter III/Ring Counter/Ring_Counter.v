`timescale 1ns / 1ps

module Ring_Counter(
input clk,rst, 
output [3:0]q);
reg [3:0] temp;

always @(posedge clk or posedge rst) begin 
    if (rst) 
        temp <= 4'b0001;  // Initialize to known state
    else 
        temp <= {temp[2:0], temp[3]};  // Shift left using Concatination
end
assign q = temp;
endmodule
