`timescale 1ns / 1ps

module TB_Parallel_Adder;

reg [3:0]x,y;
reg cin;
wire [3:0]sum;
wire [2:0]c;
wire cout;
integer i;

Parallel_Adder dut(x,y,cin,sum,c,cout);

initial begin

{x,y}={0,1}; cin=0; #10;
for(i=40;i<250;i=i+1) begin

{x,y,cin}={$random,$random}; #10;
end
end
endmodule
