`timescale 1ns / 1ps

module Binary_BCD(
    input [7:0]b,
    output [11:0]bcd);
    
    reg [3:0]hund,tens,ones;
    reg [6:0]temp;
    
    always @(*) begin 
    hund = b/100;
    temp = b%100;
    tens = temp/10;
    ones = temp%10;
    end
    assign bcd={hund,tens,ones};
endmodule
