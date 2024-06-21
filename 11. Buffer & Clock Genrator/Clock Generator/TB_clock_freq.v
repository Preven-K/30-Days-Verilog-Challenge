`timescale 1ns / 1ps
module TB_clock_freq;
reg clock_freq;
wire freq2,freq3;

Clock_genrator clk(clock_freq,freq2,freq3);

initial begin
clock_freq=0;
end
always #10 clock_freq=~clock_freq;
endmodule
