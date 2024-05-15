module in_dma #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 256,
    parameter ID_WIDTH = 8,
    parameter ID = 8'h80
)(
    input clk,
    input rstn,

    input [31:0] dma_addr,
    input [3:0] dma_burst_len,
    input dma_start,

    input in_buf_wr_ready,

    output  [ID_WIDTH-1:0]    arid,
    output  [ADDR_WIDTH-1:0]  araddr,
    output  [7:0]             arlen,
    output  [2:0]             arsize,
    output  [1:0]             arburst,
    output                    arvalid,
    input                     arready,
    input   [ID_WIDTH-1:0]    rid,
    input                     rvalid,
    output                    rready
);

    localparam TRANS_ADDR = 1'b0;
    localparam TRANS_DATA = 1'b1;
    reg state;

    reg arvalid_reg;
    reg [3:0] arlen_reg;
    reg [ADDR_WIDTH-1:0] araddr_reg;

    reg [3:0] burst_cnt;
    always @(posedge clk) begin
        if (~rstn) begin
            state <= TRANS_ADDR;
            arvalid_reg <= 1'b0;
            araddr_reg <= 32'b0;
            arlen_reg <= 4'b0;
            burst_cnt <= 4'b0;

        end
        case (state)
            TRANS_ADDR: begin
                if (dma_start) begin
                    arvalid_reg <= 1'b1;
                    araddr_reg <= dma_addr;
                    arlen_reg <= dma_burst_len;
                end
                if (arvalid & arready) begin
                    arvalid_reg <= 1'b0;
                    state <= TRANS_DATA;
                end
            end

            TRANS_DATA: begin
                if (rvalid & rready & rid == ID) begin
                    if (burst_cnt == arlen_reg) begin
                        state <= TRANS_ADDR;
                        burst_cnt <= 0;
                    end
                    else begin
                        burst_cnt <= burst_cnt + 1'b1;
                    end
                end
            end
        endcase
    end

    assign arid = ID;
    assign araddr = araddr_reg;
    assign arlen = arlen_reg;
    assign arsize = $clog2(DATA_WIDTH / 8);
    assign arburst = 2'b01;
    assign arvalid = arvalid_reg;
    assign rready = in_buf_wr_ready & burst_cnt <= arlen_reg;

endmodule