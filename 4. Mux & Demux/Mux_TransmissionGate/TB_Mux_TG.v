`timescale 1ns / 1ps

module TB_Mux_TG();
reg I0, I1, Sel;
wire y_out;
integer i;
Mux_Transm_Gate dut(I0,I1,Sel,y_out);
initial begin
    {I0, I1, Sel} = 0;
end
initial begin
    for(i=0; i<=8; i=i+1)
    begin 
        {I0, I1, Sel} = i;
    #10;
end
end
endmodule
