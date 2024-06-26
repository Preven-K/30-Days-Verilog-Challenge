`timescale 1ns / 1ps

module TB_Carry_skip_adder;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
integer i;

Carry_Skip_Adder dut(a,b,cin,sum,cout);

initial begin 

{a,b}=0;cin=0;#10;

for(i=0;i<16;i=i+1) begin
{a,b}={$random,$random}; cin=0; #10;
cin=1; #10;
end    
end
endmodule
