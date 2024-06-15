`timescale 1ns / 1ps

module TB_Priority_en();
 
reg [7:0] in;
reg en;
wire [2:0] out;
 
Priority_encoder dut(.out(out), .en(en), .in(in));

initial 
begin
 in = 0;
 en = 1;
 #10;        
 #10 in = 8'b00001001;
 #10 in = 8'b00000001;
 #10 in = 8'b01100110;
 #10 in = 8'b00010010;
 #10 in = 8'b00000011;
 #10 in = 8'b00110011;
 #10 in = 8'b00000100;
 end
 endmodule
