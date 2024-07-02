`timescale 1ns / 1ps


module PIPO(
    input [3:0]pin,
    input clk,
    output reg [3:0]pout
    );
    
    always @( posedge clk) begin 
        pout = pin;
    end
endmodule
