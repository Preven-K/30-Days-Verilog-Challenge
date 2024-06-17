`timescale 1ns / 1ps

module TB_Bi_Gray;
reg [3:0]bi;
wire [3:0]g;

Binary_Gray dut(bi,g);

initial begin
bi=4'b0000;#10
bi=4'b0001;#10
bi=4'b0011;#10
bi=4'b0100;#10
bi=4'b1000;#10
bi=4'b1011;#10
bi=4'b0111;#10
bi=4'b1111;
end

endmodule
