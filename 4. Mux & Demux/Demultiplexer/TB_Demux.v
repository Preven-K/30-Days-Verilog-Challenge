`timescale 1ns / 1ps

module TB_Demux();
reg i;
reg [2:0]s;
wire [7:0]out;

Demux_1x8 dem(i,s,out);

initial begin
i=1;s=4'b000; #10
i=1;s=4'b100; #10
i=1;s=4'b001; #10
i=1;s=4'b110; #10
i=1;s=4'b100; #10
i=1;s=4'b111; #10
i=1;s=4'b011; 
end
endmodule
