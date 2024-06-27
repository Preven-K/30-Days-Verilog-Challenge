`timescale 1ns / 1ps

module TB_Decade_counter;
wire [3:0] count;
reg en,clock;
 
 Decade_Counter dut(.en(en), .clock(clock), .count(count));
 
initial begin
    en=0;
    clock=0;
   #20 en=1'b1;
end
  
  always
    #5 clock=~clock; 
endmodule
