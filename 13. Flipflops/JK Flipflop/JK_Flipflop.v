`timescale 1ns / 1ps

// JK flipflop is advancement of SR Flipflop as it avoid forbidden state
module JK_Flipflop(
    input j,k,clk,
    output reg q
    );
    
    always @(posedge clk)begin 
    case ({j,k})
    2'b00: q <= q ;
    2'b01: q<=1'b0;
    2'b10: q<=1'b1;
    2'b11: q<=~q;
    endcase
    end
endmodule
