`timescale 1ns / 1ps

module PISO(
    input [3:0]pin,
    input clk,rst,
    output reg sout
    );
    reg [3:0]temp;
    
    always @(posedge clk) begin
    if (rst) begin 
        temp <= pin;
        sout <= 1'b0; end
    else begin
        sout <= temp[3];
        temp <= temp<<1;end
    end
endmodule
