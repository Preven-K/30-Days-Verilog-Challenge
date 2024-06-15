`timescale 1ns / 1ps

module TB_Decoder_demux;
reg en_tb;
reg [2:0]in_tb;
wire [7:0]out_tb;

Decoder_demux dut(en_tb,in_tb,out_tb);

initial begin
en_tb=1; in_tb=3'b000;#10
en_tb=1; in_tb=3'b001;#10
en_tb=1; in_tb=3'b100;#10
en_tb=1; in_tb=3'b111;#10
en_tb=1; in_tb=3'b110;#10
en_tb=1; in_tb=3'b011;#10
en_tb=1; in_tb=3'b101;
end
endmodule
