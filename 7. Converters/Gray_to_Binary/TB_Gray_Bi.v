`timescale 1ns / 1ps

module TB_Gray_Bi;
    reg [3:0]g;
    wire [3:0]b;
    
    Gray_to_bi dut(g,b);
    
    initial begin
    g=4'b0000;#10
    g=4'b0001;#10
    g=4'b0011;#10
    g=4'b0101;#10
    g=4'b1111;#10
    g=4'b1011;#10
    g=4'b0110;#10
    g=4'b1000;
    end
endmodule
