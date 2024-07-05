`timescale 1ns / 1ps

module GCD( a,b,gcd );
parameter n=8;
input [n-1:0]a,b;
output [n-1:0]gcd;
reg [n-1:0]ain,bin,gcd;

always @( a or b) begin
    ain=a; bin=b;
    while(ain != bin) begin 
        if(ain<bin) 
            bin=bin-ain;
        else 
            ain=ain-bin;
    end
    gcd=ain;
end
endmodule
