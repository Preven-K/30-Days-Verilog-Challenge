`timescale 1ns / 1ps
//Binary to Gray Converter 
module Binary_Gray(
    input [3:0]bi,
    output [3:0]g
    );
    assign g[3]=bi[3];         
    assign g[2]=bi[3]^bi[2];
    assign g[1]=bi[2]^bi[1];
    assign g[0]=bi[1]^bi[0];
    
endmodule
