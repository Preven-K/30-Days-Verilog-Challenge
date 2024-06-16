`timescale 1ns / 1ps

module Comparator_Nbit(a,b,equal,greater,lesser);
parameter N=5;
input [N-1:0]a,b;
output equal,greater,lesser;
reg [2:0] out;

always @ (a or b) begin 
if( a==b )  begin  out=3'b001;  end   // a=b -- 001
else if(a<b) begin out=3'b100;  end  // a<b -- 100
else begin  out=3'b010; end          // a>b -- 010
end 

assign {lesser,greater,equal}= out;
endmodule
