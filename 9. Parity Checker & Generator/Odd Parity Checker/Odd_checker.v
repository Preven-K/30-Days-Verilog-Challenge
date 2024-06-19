`timescale 1ns / 1ps

module Odd_checker(
    input a,b,c,p,
    output ocheck
    );
    
    assign ocheck= !((a^b)^(c^p));
endmodule
