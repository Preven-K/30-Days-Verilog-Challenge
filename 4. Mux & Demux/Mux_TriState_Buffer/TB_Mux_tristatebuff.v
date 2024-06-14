`timescale 1ns / 1ps

module TB_Mux_tristatebuff();
reg i0,i1,s;
wire out;
Mux_tristate dut(i0,i1,s,out);
initial begin 
i0=0;i1=0;s=0;#10
i0=1;i1=0;s=0;#10
i0=1;i1=0;s=1;#10
i0=1;i1=1;s=0;#10
i0=1;i1=1;s=1;#10
i0=0;i1=1;s=0;#10
i0=1;i1=1;s=0;
end
endmodule
