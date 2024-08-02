`timescale 1ns / 1ps

module Sequence_Detector(seq_in,clk,rst,det);
parameter IDLE   = 2'b00;
parameter STATE1 = 2'b01;
parameter STATE2 = 2'b10;
parameter STATE3 = 2'b11;
input seq_in,clk,rst;
output det;
reg [1:0]state,next_state;

always @(posedge clk or posedge rst)
begin
if(rst)
state <= IDLE;
else
state <= next_state;
end

always @(state,seq_in)
begin 
case(state)
IDLE :
    if(seq_in == 1)
        next_state = STATE1;
    else
        next_state = IDLE;
STATE1:
    if(seq_in == 0)
        next_state = STATE2;
    else 
        next_state = STATE1;
STATE2:
    if(seq_in==1)
	    next_state=STATE3;
	else 
	    next_state=IDLE;
STATE3 : 
    if(seq_in==1)
	    next_state=STATE1;
	else 
	    next_state=STATE2;
		   
default: 
        next_state=IDLE;
endcase
end

assign det = (state ==  STATE3) ? 1'b1:1'b0;

endmodule
