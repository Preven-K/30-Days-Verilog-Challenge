`timescale 1ns / 1ps

module Universal_Shift_register(
    input [3:0]in,
    input clk,rst,
    input [1:0]mode,
    output reg [3:0]out
    );

always @ (posedge clk) begin
    if(rst) 
        out = 0;
    else begin 
        case(mode) 
            2'b00 : out <= out;  // No change in output
            2'b01 : out <= {in[0],in[3:1]}; // Right shift
            2'b10 : out <= {in[2:0],in[3]}; // Left shift
            2'b11 : out <= in;  // Parallel in Parallel out
        endcase
    end
end
endmodule
