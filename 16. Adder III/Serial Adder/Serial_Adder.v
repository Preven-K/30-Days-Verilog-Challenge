`timescale 1ns / 1ps

module Serial_Adder(

input a,b,cin,
input clk,rst,
output reg sum,cout);
reg c,flag;
   
    always @(posedge clk or posedge rst ) 
    begin 
        if(rst==1) 
        begin
            flag=0;
            sum=0;
            cout=c;
        end else 
        begin
            if(flag==0) 
            begin
                flag=1;
                c=cin;
            end
        cout=0;
        assign sum= a^b^c;
        assign cout= (a&b)|(b&c)|(a&c); 
        end
    end
endmodule
