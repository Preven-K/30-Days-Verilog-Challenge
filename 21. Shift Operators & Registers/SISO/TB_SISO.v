`timescale 1ns / 1ps

module TB_SISO();
reg clk,sin;
wire sout;

SISO_Dff dut(sin, sout, clk);

always #5 clk=~clk;
initial begin 
clk=0;
sin=0;#10;
sin=1;#10;
sin=1;#10;
sin=0;
end
endmodule
