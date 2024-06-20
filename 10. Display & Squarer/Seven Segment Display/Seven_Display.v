`timescale 1ns / 1ps

module Seven_Display(
input [3:0]in,   // 4bit used since 7segment display can have 0-9
output reg [6:0]disp);
always @(in) begin
case(in)
4'b0000 : {disp}=7'b1111110;  //          in[0]
4'b0001 : {disp}=7'b0110000;  //          __  
4'b0010 : {disp}=7'b1101101;  // in[5]-- |__| --in[1]
4'b0011 : {disp}=7'b1111001;  // in[4]-- |__| --in[6]
4'b0100 : {disp}=7'b0110011;  //       in[3]  --in[2]
4'b0101 : {disp}=7'b1011011;
4'b0110 : {disp}=7'b1011111;
4'b0111 : {disp}=7'b1110000;
4'b1000 : {disp}=7'b1111111;
4'b1001 : {disp}=7'b1111011;
default : {disp}=7'b0000000;
endcase
end
endmodule
