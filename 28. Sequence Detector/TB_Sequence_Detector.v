`timescale 1ns / 1ps
module TB_Sequence_Detector();	
reg  din,clock,reset;
wire dout;
parameter CYCLE = 10;		
Sequence_Detector dut(.seq_in(din), .clk(clock), .rst(reset), .det(dout));
 // CLOCK GENERATION
always
begin
#(CYCLE/2);  // Half cycle delay for clock transition
clock = 1'b0;
#(CYCLE/2);
clock = ~clock;
end
// Task initialising - This initialise the Din=0
task initialize();  
begin
din = 0;
end
endtask
// Delay Task - Introduces delay of i time units				 
task delay(input integer i);
begin
#i;
end
endtask
// Reset the signal to 0 after 10unit delay
task RESET();
begin
delay(5);
reset=1'b1;
delay(10);
reset=1'b0;
end
endtask
// This task stimulus applies the input data to Din at negedge of clk
task stimulus(input data);
begin
@(negedge clock);
din = data;
end
endtask				 
// Test Sequence 
initial
begin
    initialize; // calling the task initialize
    RESET; // calling the task reset
    stimulus(0);
    stimulus(1);
    stimulus(0);
    stimulus(1);
    stimulus(0);
    stimulus(1);
    stimulus(1);
    RESET;
    stimulus(1);
    stimulus(0);
    stimulus(1);
    stimulus(1);
delay(10);    
$finish;
end
			  		
endmodule