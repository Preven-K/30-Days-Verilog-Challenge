`timescale 1ns / 1ps

module TB_GCD();
parameter n=8;
reg [n-1:0]a,b;
wire [n-1:0]gcd;
integer i;

GCD dut(a,b,gcd);

initial begin 
    {a,b} = 0; #10;
    for(i=0 ; i<30; i=i+1) begin
        a=$random;
        b=$random; #10;
    end
    
end
endmodule
