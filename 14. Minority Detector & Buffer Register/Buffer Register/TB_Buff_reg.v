`timescale 1ns / 1ps

module TB_Buff_reg;
reg clock;
reg [0:3]d;
wire q0,q1,q2,q3;
integer i;

Buff_Reg dut(.q0(q0), .q1(q1),  .q2(q2), .q3(q3), .d(d), .clock(clock)); 

initial 
begin
clock = 1'b0;
 forever #5 clock = ~clock;
end

initial begin 
for(i=0;i<8;i=i+1) begin
d=i; #10;
end
 end 
endmodule
