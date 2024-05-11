module DDR3_Memory_Interface (
    input clk,
    input memory_clk,
    input pll_lock,
    output pll_stop,
    input rst_n,
    output clk_out,
    output reg ddr_rst,
    output init_calib_complete,

    output ddr_cmd_ready,
    output ddr_wr_data_ready,

    input ddr_cmd_en,
    input [28:0] ddr_cmd_addr,
    input [255:0] ddr_wr_data,
    input [31:0] ddr_wr_strb,
    input ddr_cmd,

    output ddr_rd_data_valid,
    output [255:0] ddr_rd_data
);


    sync_fifo # (
    .PASS_THRU(0),
    .ADDR_WIDTH(6),
    .DATA_WIDTH(256)
    )
    sync_fifo_inst (
        .aclk(clk),
        .aresetn(rst_n),
        .data_in(),
        .push(),
        .full(),
        .data_out(ddr_rd_data),
        .pull(pull),
        .empty(empty)
    );

    assign clk_out = ~clk;
    assign pll_stop = 1'b1;

    always @(posedge clk_out) begin
        ddr_rst <= rst_n & pll_stop;
    end

    initial begin
        #0;
        @(negedge rst_n);
        @(posedge rst_n);

    end

endmodule

module MEM #(
    parameter LEVEL = 10
)(
    input clk,
    input cs,
    input [28:0] addr,
    input [255:0] wr_data,
    input [31:0] wr_strb,
    input wr_en,
    output [255:0] rd_data
);
wire [255:0] rd_data_0, rd_data_1;
genvar  j;
generate
    if (LEVEL != 0) begin
        MEM #(
            .LEVEL(LEVEL - 1)
        ) MEM_0 (
            .clk(clk),
            .cs(cs&addr[$clog2(256/8)+LEVEL]),
            .addr(addr),
            .wr_data(wr_data),
            .wr_strb(wr_strb),
            .wr_en(wr_en),
            .rd_data(rd_data_0)
        );

        MEM #(
            .LEVEL(LEVEL - 1)
        ) MEM_1 (
            .clk(clk),
            .cs(cs&addr[$clog2(256/8)+LEVEL]),
            .addr(addr),
            .wr_data(wr_data),
            .wr_strb(wr_strb),
            .wr_en(wr_en),
            .rd_data(rd_data_1)
        );

        assign rd_data = addr[$clog2(256/8)+LEVEL] ? rd_data_1 : rd_data_0;
    end
    else begin
        reg [255:0] mem_unit;
        wire [255:0] wr_strb_duplicate;
        for (j = 0 ; j < 32; j = j + 1) begin
            assign wr_strb_duplicate[j*8+:8] = {8{wr_strb[j]}};
        end
        always @(posedge clk) begin
            if (wr_en&cs) begin
                mem_unit <= (wr_data & (~wr_strb_duplicate))|(mem_unit & wr_strb_duplicate);
            end
        end
        assign rd_data = mem_unit;
    end
endgenerate

endmodule