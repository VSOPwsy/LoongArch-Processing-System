module out_dma #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 256,
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    parameter ID_WIDTH = 8,
    parameter ID = 8'h80
)(
    input clk,
    input rstn,

    input [31:0] dma_addr,
    input [3:0] dma_burst_len,
    input dma_start,
    output dma_ready,

    input out_buf_rd_valid,
    output out_buf_rd_ready,

    output  [ID_WIDTH-1:0]    awid,
    output  [ADDR_WIDTH-1:0]  awaddr,
    output  [7:0]             awlen,
    output  [2:0]             awsize,
    output  [1:0]             awburst,
    output                    awvalid,
    input                     awready,
    output                    wlast,
    output                    wvalid,
    input                     wready,
    input   [ID_WIDTH-1:0]    bid,
    input   [1:0]             bresp,
    input                     bvalid,
    output                    bready
);

    localparam TRANS_ADDR = 2'b00;
    localparam TRANS_DATA = 2'b01;
    localparam WAIT_RESP  = 2'b10;
    reg [1:0] state;

    reg dma_ready_reg;
    reg awvalid_reg;
    reg [3:0] awlen_reg;
    reg [ADDR_WIDTH-1:0] awaddr_reg;
    reg bready_reg;
    reg out_buf_rd_ready_reg;

    reg [3:0] burst_cnt;
    always @(posedge clk) begin
        if (~rstn) begin
            state <= TRANS_ADDR;
            dma_ready_reg <= 1'b1;
            awvalid_reg <= 1'b0;
            awaddr_reg <= 32'b0;
            awlen_reg <= 4'b0;
            burst_cnt <= 4'b0;
            bready_reg <= 1'b0;
            out_buf_rd_ready_reg <= 1'b0;
        end
        case (state)
            TRANS_ADDR: begin
                dma_ready_reg <= 1'b1;
                if (dma_start) begin
                    dma_ready_reg <= 1'b0;
                    awvalid_reg <= 1'b1;
                    awaddr_reg <= dma_addr;
                    awlen_reg <= dma_burst_len;
                    out_buf_rd_ready_reg <= 1'b1;
                end
                if (awvalid & awready) begin
                    state <= TRANS_DATA;
                    awvalid_reg <= 1'b0;
                end
            end

            TRANS_DATA: begin
                if (wvalid & wready) begin
                    if (burst_cnt == awlen_reg) begin
                        state <= WAIT_RESP;
                        burst_cnt <= 0;
                        bready_reg <= 1'b1;
                        out_buf_rd_ready_reg <= 1'b0;
                    end
                    else begin
                        burst_cnt <= burst_cnt + 1'b1;
                    end
                end
            end

            WAIT_RESP: begin
                if (bvalid & bready & bid == ID) begin
                    bready_reg <= 1'b0;
                    state <= TRANS_ADDR;
                    dma_ready_reg <= 1;
                end
            end
        endcase
    end

    assign dma_ready = dma_ready_reg;

    assign awid = ID;
    assign awaddr = awaddr_reg;
    assign awlen = awlen_reg;
    assign awsize = $clog2(DATA_WIDTH / 8);
    assign awburst = 2'b01;
    assign awvalid = awvalid_reg;
    assign wvalid = out_buf_rd_valid & burst_cnt <= awlen_reg & state == TRANS_DATA;
    assign wlast = burst_cnt == awlen_reg & state == TRANS_DATA;
    assign bready = bready_reg;

    assign out_buf_rd_ready = out_buf_rd_ready_reg;
endmodule