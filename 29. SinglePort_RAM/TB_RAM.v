`timescale 1ns / 1ns
module TB_RAM();

reg clk,r,w;
reg [7:0]d;
reg [2:0]a;
wire [7:0]out;

Single_Port_RAM dut(clk,r,w,d,a,out);
always #10 clk = ~clk;
initial begin
    clk = 0;d = 8'b00100010; a = 3'b100;
    r = 1; w = 1;#20;r = 0 ; #10; 
    d = 8'b11111111; w = 1; #10;
    #20; r = 1; d = 8'b10010011; #20;
    w = 1; #20; r = 1;
    
end
endmodule
