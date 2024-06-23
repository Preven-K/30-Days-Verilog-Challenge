`timescale 1ns / 1ps

module TB_T_ff();

reg t,clk;
wire q,qb;

T_Flipflop tff(t,clk,q,qb);

initial 
begin
  clk=0;
     forever #2 clk = ~clk;  
end 

initial
 begin 
 t = 0; #5
 t = 1; #5
 t = 0; #5
 t = 1; #5
 
$finish();  
 end 
endmodule