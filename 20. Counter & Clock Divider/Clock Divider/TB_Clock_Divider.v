`timescale 1ns / 1ps

module TB_Clock_Divider();
reg clk,rst;
wire out_clk;

Clock_Divider dut(rst, clk, out_clk );

always #5 clk = ~clk; // Clock period is 10ns

initial begin
    // Initialize Inputs
    clk = 0;
    rst = 1;

    // Wait for global reset to finish
    #20;
    rst = 0;

    // Test for some clock cycles
    #100;
    
    // Finish simulation
    $stop;
end

endmodule