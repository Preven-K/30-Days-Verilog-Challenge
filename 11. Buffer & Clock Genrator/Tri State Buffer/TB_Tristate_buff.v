`timescale 1ns / 1ps

module TB_Tristate_buff;
reg in,en;
wire out;

TriState_buff dut(in,en,out);

initial begin 
in=0;en=0;#10;
in=0;en=1;#10;
in=1;en=0;#10;
in=1;en=1;

end
endmodule
