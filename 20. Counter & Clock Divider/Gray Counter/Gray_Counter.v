`timescale 1ns / 1ps

module Gray_Counter(clk,rst,q,qb);
parameter n=5;
input clk,rst;
output [1:n]q,qb;
reg [1:n]counter,gcounter;
integer i; 

always @(posedge clk) begin
if(rst) counter <= 0 ;
else counter <= counter + 1'b1 ;
end

always @ (counter) begin 
gcounter[1] <= counter[i];
for (i=2; i <= n; i= i+1 ) 
gcounter[i] <= counter[i-1] ^ counter[i]; 
end

assign q= gcounter;
assign qb= ~q;
endmodule
