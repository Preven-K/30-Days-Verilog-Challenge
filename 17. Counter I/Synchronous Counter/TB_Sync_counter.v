`timescale 1ns / 1ps

module TB_Sync_counter;
reg clk,rst,en;
wire [7:0]count;

Sync_UpDown_Counter dut(clk,rst,en,count);

always #5 clk=~clk;
initial begin 
clk=1; rst=1; en=0; #10;
rst=0; en=1; #10;
 en=1; #10;
 en=1; #10;
 rst=1;en=0; #10;
 rst=0;en=0; #10;
 en=0; #10;
 en=0; #10;
 en=0; #10;
 en=1; #10;
 en=1; #10;
 en=1; #10;
 en=1; #10;
 en=1;

end
endmodule
