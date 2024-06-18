`timescale 1ns / 1ps

module TB_BcdAddition;
    reg [3:0]a,b;
    reg cin;
    wire [3:0]sum;
    wire cout;
    
    BCD_addition dut(a,b,cin,sum,cout);
    initial begin
    a=4'b0100;b=4'b0011; cin=0;#10
    a=4'b1100;b=4'b1011; cin=0;#10
    a=4'b0000;b=4'b0011; cin=0;#10
    a=4'b1111;b=4'b0001; cin=0;
    end

endmodule
