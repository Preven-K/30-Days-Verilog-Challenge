`timescale 1ns / 1ps

module TriState_buff(
    input in,en,
    output out
    );
    assign out=en?in:1'bz;    
endmodule
