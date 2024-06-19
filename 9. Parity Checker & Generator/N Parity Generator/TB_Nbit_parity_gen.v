`timescale 1ns / 1ps

module TB_Nbit_parity_gen;
parameter N=6;
reg [N-1:0]in;
wire odd,even;
integer i;

Nbit_Parity_Generator dut(in,odd,even);
initial begin
{in}=0;#10;
for(i=0;i<30;i=i+1) begin
{in}=$random;#10;
end
end
endmodule
