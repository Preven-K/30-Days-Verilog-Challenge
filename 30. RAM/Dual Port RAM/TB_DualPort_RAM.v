module TB_DualPort_RAM;
parameter ram_width = 8;
parameter addr_size = 4;
parameter ram_depth = 16;
reg clk, reset, read_en, write_en;
reg [ram_width-1:0] data_in;
reg [addr_size-1:0] rd_addr, wr_addr;
wire [ram_width-1:0] data_out;
integer i;
dual_port_sync_ram dut (clk, reset, read_en, write_en, data_in, rd_addr, wr_addr, data_out);

always #5 clk = ~clk;
initial begin
    clk = 0;rd_addr = 0;read_en = 0;write_en = 0;reset = 1;data_in = 0;wr_addr = 0;#20;
    reset = 0;
    // Write all the locations of RAM
    write_en = 1;  
    for(i = 0; i < 16; i = i + 1) begin
        data_in = i + 1;
        wr_addr = i;
        #10;
    end
    write_en = 0;  
    // Read all the locations of RAM
    read_en = 1;  
    for(i = 0; i < 16; i = i + 1) begin
        rd_addr = i;
        #10;
    end
    read_en = 0; #10;
    read_en = 1;
    write_en = 1;
        for(i = 0; i < 16; i = i + 1) begin
        data_in = i + 1;
        wr_addr = i;
        rd_addr = i;
        #10;
    end
    write_en = 0;  
    read_en =0;
end

initial begin
    $monitor("Values of read_en=%b,write_en=%b, data_in=%b, data_out=%b ", read_en, write_en, data_in, data_out);
end

endmodule