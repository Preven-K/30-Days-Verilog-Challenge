`timescale 1ns / 1ps
// T Flipflop is called Toggle Flipflop
module T_Flipflop(
    input t,clck,
    output reg q,
    output qb
    );
    
    always @ (posedge clck) begin       
    q <= (~t);
    end
    assign qb=~q;

endmodule
