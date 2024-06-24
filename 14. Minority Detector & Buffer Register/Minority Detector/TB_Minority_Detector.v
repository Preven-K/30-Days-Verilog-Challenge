`timescale 1ns / 1ps

module TB_Minority_Detector;
reg a,b,c;
wire f;
integer i;

Minority_detector dut(a,b,c,f);

initial begin
{a,b,c}=0;
end
initial begin  
for(i=0;i<8;i=i+1) begin
{a,b,c}=i;#10;
end
end
endmodule
