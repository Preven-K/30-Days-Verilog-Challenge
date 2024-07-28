module Sync_FIFO_tb();

reg clk, rst, wr, rd;
reg [7:0] data_in;
reg [7:0] tempdata;
wire [7:0] data_out;
wire [3:0] fifo_cnt;
wire empty, full;

Sync_FIFO dut(
    .clk(clk),
    .rst(rst),
    .data_in(data_in),
    .data_out(data_out),
    .wr(wr),
    .rd(rd),
    .empty(empty),
    .full(full),
    .fifo_cnt(fifo_cnt)
);

initial begin
    clk = 0;
    rst = 1;
    rd = 0;
    wr = 0;
    tempdata = 0;
    data_in = 0;

    // Release reset after some time
    #15 rst = 0;

    // Perform push and pop operations
    push(1);
    fork
        push(2);
        pop(tempdata);
    join

    push(10);
    push(20);
    push(30);
    push(40);
    push(50);
    push(100);
    push(130);
    pop(tempdata);
    push(tempdata);
    pop(tempdata);
    pop(tempdata);
    // Add more operations as needed
end

always #5 clk = ~clk;

task push;
input [7:0] data;
begin
    if (full)
        $display("---Cannot push: FIFO Full---");
    else begin
        $display("Pushed ", data);
        data_in = data;
        wr = 1;
        @(posedge clk);
        #1 wr = 0;
    end
end
endtask

task pop;
output [7:0] data;
begin
    if (empty)
        $display("---Cannot Pop: FIFO Empty---");
    else begin
        rd = 1;
        @(posedge clk);
        #1 rd = 0;
        data = data_out;
        $display("-------------------------------Popped ", data);
    end
end
endtask
endmodule
