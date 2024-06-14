`timescale 1ns / 1ps

module TB_mux_16x1();
reg [15:0]i;
reg [3:0]s;
wire out;

Mux_16x1 mux(i,s,out);

initial begin 
i=10'd99143;s=4'b0000;#10
i=10'd105;s=4'b0011;#10
i=10'd8999;s=4'b0001;#10
i=10'd50334;s=4'b1000;#10
i=10'd15;s=4'b0100;#10
i=10'd112;s=4'b1001;#10
i=10'd66669;s=4'b1111;
end
endmodule
