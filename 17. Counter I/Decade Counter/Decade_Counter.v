`timescale 1ns / 1ps

module Decade_Counter(en, clock, count);
input en, clock; 
 output reg [3:0] count;
  
  always @( posedge clock)
    begin
      if(en) 
        begin        
    	  if ( count>=4'd0 && count<4'd9)
      	  count<=count+4'd1;           
       	 else
          count<=4'd0;
         end     
      else 
        count<=4'd0;
    end
endmodule