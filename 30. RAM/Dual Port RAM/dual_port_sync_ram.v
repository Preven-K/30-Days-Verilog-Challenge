`timescale 1ns / 1ps

module dual_port_sync_ram(

input clk, rst, r, w,
input [ram_w-1:0] d,
input [add_w-1:0] read_add, write_add,
output reg [ram_w-1:0] out);
parameter ram_w = 8;
parameter add_w = 4;
parameter ram_depth = 16;

integer i;
reg [ram_w-1:0] mem [ram_depth-1:0];

always @ (posedge clk) begin
    if(rst) begin
        for(i = 0; i < ram_depth; i = i + 1)
            mem[i] <= 0;
    end else begin
        if(w)
            mem[write_add] <= d;
        if(r)
            out <= mem[read_add]; 
    end
end
endmodule
