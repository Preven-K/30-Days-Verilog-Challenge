`timescale 1ns / 1ps
module Even_parity_check(
input a,b,c,p,
output check);

assign check= (a^b)^(c^p);
endmodule
