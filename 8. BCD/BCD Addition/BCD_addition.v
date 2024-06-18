`timescale 1ns / 1ps

module BCD_addition(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output cout
    );
    reg [4:0]temp;
    reg [3:0]tsum;
    reg cout;
    
    always @(a,b,cin) begin
    temp= a+b+cin;
    if(temp>9)begin
     temp=temp+6;cout=1;
    end else begin
    cout=0;
    end
    tsum=temp[3:0];
    end
    assign sum=tsum;
endmodule
