`timescale 1ns / 1ps

module TB_Comparator;
reg [3:0]a_tb,b_tb;
wire equal,greater,lesser;

Comparator com(a_tb,b_tb,equal,greater,lesser);

initial begin 
a_tb=4'b0000;b_tb=4'b0000;#10
a_tb=4'b0011;b_tb=4'b0111;#10
a_tb=4'b1000;b_tb=4'b1000;#10
a_tb=4'b0011;b_tb=4'b0110;#10
a_tb=4'b1000;b_tb=4'b0001;#10
a_tb=4'b1110;b_tb=4'b1100;#10
a_tb=4'b0011;b_tb=4'b0111;#10
a_tb=4'b00100;b_tb=4'b0000;
end
endmodule
