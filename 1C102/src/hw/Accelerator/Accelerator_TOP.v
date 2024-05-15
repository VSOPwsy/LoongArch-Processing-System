module Accelerator_TOP #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 32,
    parameter STRB_WIDTH = 4,
    parameter ID_WIDTH = 8,
    parameter ID = 8'h80,

    parameter BUFFER_SIZE = 16
)(
    input clk,
    input rstn,

     /*
     * AXI slave interface
     */
    output  [ID_WIDTH-1:0]      axi_awid,
    output  [ADDR_WIDTH-1:0]    axi_awaddr,
    output  [7:0]               axi_awlen,
    output  [2:0]               axi_awsize,
    output  [1:0]               axi_awburst,
    output                      axi_awvalid,
    input                       axi_awready,
    output  [DATA_WIDTH-1:0]    axi_wdata,
    output  [STRB_WIDTH-1:0]    axi_wstrb,
    output                      axi_wlast,
    output                      axi_wvalid,
    input                       axi_wready,
    input   [ID_WIDTH-1:0]      axi_bid,
    input   [1:0]               axi_bresp,
    input                       axi_bvalid,
    output                      axi_bready,

    output  [ID_WIDTH-1:0]      axi_arid,
    output  [ADDR_WIDTH-1:0]    axi_araddr,
    output  [7:0]               axi_arlen,
    output  [2:0]               axi_arsize,
    output  [1:0]               axi_arburst,
    output                      axi_arvalid,
    input                       axi_arready,
    input   [ID_WIDTH-1:0]      axi_rid,
    input   [DATA_WIDTH-1:0]    axi_rdata,
    input   [1:0]               axi_rresp,
    input                       axi_rlast,
    input                       axi_rvalid,
    output                      axi_rready,

    // for test
    input start,
    input [31:0] addr_base_a,
    input [31:0] addr_base_b,
    input [31:0] addr_base_c,
    input [31:0] m,
    input [31:0] k,
    input [31:0] n,
    input a_in_mode,
    input b_in_mode
);

    wire in_dma_start;
    wire [31:0] in_dma_addr;
    wire [3:0] in_dma_burst_len;

    wire [255:0] in_buf_wr_data;
    wire [$clog2(BUFFER_SIZE)-1:0] in_buf_wr_index;
    wire in_buf_wr_ready;
    wire in_buf_wr_done;
    wire in_buf_wr_dummy;
    wire [$clog2(BUFFER_SIZE/8):0] index_offset;
    wire [$clog2(256/8)-1:0] addr_offset;

    wire [$clog2(BUFFER_SIZE)-1:0] in_buf_rd_index;
    wire in_buf_rd_ready;
    wire in_buf_rd_done;
    wire [BUFFER_SIZE*32-1:0] in_buf_rd_data_a;
    wire [BUFFER_SIZE*32-1:0] in_buf_rd_data_b;

    wire [$clog2(BUFFER_SIZE)-1:0] out_buf_rd_index;
    wire out_buf_rd_valid;
    wire out_buf_rd_ready;
    wire [BUFFER_SIZE*32-1:0] out_buf_rd_data;

    wire [$clog2(BUFFER_SIZE)-1:0] out_buf_wr_index;
    wire out_buf_wr_valid;
    wire out_buf_wr_ready;
    wire [BUFFER_SIZE*32-1:0] out_buf_wr_data;

    wire mac_out_buf_done;

    wire out_dma_rd_valid;
    wire out_dma_rd_ready;
    wire [BUFFER_SIZE*32-1:0] out_dma_rd_data;
    wire [$clog2(BUFFER_SIZE)-1:0] out_dma_rd_index;


    wire out_dma_ready;
    wire out_dma_start;
    wire [31:0] out_dma_addr;
    wire [3:0] out_dma_burst_len;
    wire out_dma_rd_done;


    control_register #(
        .BUFFER_SIZE(BUFFER_SIZE)
    ) control_register (
        .clk(clk),
        .rstn(rstn),

        .addr_base_a(addr_base_a),
        .addr_base_b(addr_base_b),
        .addr_base_c(addr_base_c),
        .m(m),   // C = A(m, k) @ B(k, n)
        .k(k),
        .n(n),
        .a_in_mode(a_in_mode),
        .b_in_mode(b_in_mode),

        .start(start),

        .in_dma_start(in_dma_start),
        .in_dma_addr(in_dma_addr),
        .in_dma_burst_len(in_dma_burst_len),
        .axi_rvalid(axi_rvalid),
        .axi_rready(axi_rready),
        .axi_rdata(axi_rdata),

        .in_buf_wr_data(in_buf_wr_data),
        .index_offset(index_offset),
        .in_buf_wr_ready(read_a ? in_buf_wr_ready_a : in_buf_wr_ready_b),
        .in_buf_wr_index(in_buf_wr_index),
        .in_buf_wr_done(in_buf_wr_done),
        .in_buf_wr_dummy(in_buf_wr_dummy),

        .addr_offset(addr_offset),

        .read_a(read_a),
        .read_b(read_b),

        .out_buf_rd_valid(out_dma_rd_valid),
        .out_buf_rd_data(out_dma_rd_data),
        .out_buf_rd_index(out_dma_rd_index),

        .out_dma_ready(out_dma_ready),
        .out_dma_start(out_dma_start),
        .out_dma_addr(out_dma_addr),
        .out_dma_burst_len(out_dma_burst_len),
        .out_dma_rd_done(out_dma_rd_done),

        .axi_wvalid(axi_wvalid),
        .axi_wready(axi_wready),
        .axi_wdata(axi_wdata),
        .axi_wstrb(axi_wstrb)
    );


    in_dma #(
        .ADDR_WIDTH(32),
        .DATA_WIDTH(256),
        .ID_WIDTH(8),
        .ID(8'h80)
    ) in_dma (
        .clk(clk),
        .rstn(rstn),

        .dma_start(in_dma_start),
        .dma_addr(in_dma_addr),
        .dma_burst_len(in_dma_burst_len),
        
        .in_buf_wr_ready(read_a ? in_buf_wr_ready_a : in_buf_wr_ready_b),

        .arid(axi_arid),
        .araddr(axi_araddr),
        .arlen(axi_arlen),
        .arsize(axi_arsize),
        .arburst(axi_arburst),
        .arvalid(axi_arvalid),
        .arready(axi_arready),
        .rid(axi_rid),
        .rvalid(axi_rvalid),
        .rready(axi_rready)
    );


    in_buffer # (
        .BUFFER_SIZE(BUFFER_SIZE)
    ) in_buffer_a (
        .clk(clk),
        .rstn(rstn),
        .in_mode(a_in_mode),
        .wr_index(in_buf_wr_index),
        .addr_offset(addr_offset),
        .index_offset(index_offset),
        .wr_data(in_buf_wr_data),
        .wr_valid(axi_rvalid & read_a),
        .wr_ready(in_buf_wr_ready_a),
        .wr_last(axi_rlast & read_a),
        .wr_dummy(in_buf_wr_dummy & read_a),
        .wr_done(in_buf_wr_done & read_a),
        .out_mode(1'b0),
        .rd_index(in_buf_rd_index),
        .rd_data(in_buf_rd_data_a),
        .rd_valid(in_buf_rd_valid_a),
        .rd_done(in_buf_rd_done),
        .rd_ready(in_buf_rd_ready)
    );


    in_buffer # (
        .BUFFER_SIZE(BUFFER_SIZE)
    ) in_buffer_b (
        .clk(clk),
        .rstn(rstn),
        .in_mode(b_in_mode),
        .wr_index(in_buf_wr_index),
        .addr_offset(addr_offset),
        .index_offset(index_offset),
        .wr_data(in_buf_wr_data),
        .wr_valid(axi_rvalid & read_b),
        .wr_ready(in_buf_wr_ready_b),
        .wr_last(axi_rlast & read_b),
        .wr_dummy(in_buf_wr_dummy & read_b),
        .wr_done(in_buf_wr_done & read_b),
        .out_mode(1'b1),
        .rd_index(in_buf_rd_index),
        .rd_data(in_buf_rd_data_b),
        .rd_valid(in_buf_rd_valid_b),
        .rd_done(in_buf_rd_done),
        .rd_ready(in_buf_rd_ready)
    );


    MAC_top # (
        .SIZE(BUFFER_SIZE)
    ) MAC_top (
        .clk(clk),
        .rstn(rstn),

        .k(k),

        .in_buf_rd_index(in_buf_rd_index),
        .in_buf_rd_valid(in_buf_rd_valid_a & in_buf_rd_valid_b),
        .in_buf_rd_ready(in_buf_rd_ready),
        .in_buf_rd_done(in_buf_rd_done),
        .in_buf_rd_data_a(in_buf_rd_data_a),
        .in_buf_rd_data_b(in_buf_rd_data_b),

        .out_buf_rd_index(out_buf_rd_index),
        .out_buf_rd_valid(out_buf_rd_valid),
        .out_buf_rd_ready(out_buf_rd_ready),
        .out_buf_rd_data(out_buf_rd_data),

        .out_buf_wr_index(out_buf_wr_index),
        .out_buf_wr_valid(out_buf_wr_valid),
        .out_buf_wr_ready(out_buf_wr_ready),
        .out_buf_wr_data(out_buf_wr_data),

        .out_buf_done(mac_out_buf_done)
    );



    out_buffer # (
        .BUFFER_SIZE(BUFFER_SIZE)
    ) out_buffer (
        .clk(clk),
        .rstn(rstn),

        .mac_rd_index(out_buf_rd_index),
        .mac_rd_data(out_buf_rd_data),
        .mac_rd_valid(out_buf_rd_valid),
        .mac_rd_ready(out_buf_rd_ready),
        
        .mac_wr_index(out_buf_wr_index),
        .mac_wr_data(out_buf_wr_data),
        .mac_wr_valid(out_buf_wr_valid),
        .mac_wr_ready(out_buf_wr_ready),
        
        .mac_done(mac_out_buf_done),

        .dma_rd_index(out_dma_rd_index),
        .dma_rd_data(out_dma_rd_data),
        .dma_rd_valid(out_dma_rd_valid),
        .dma_rd_done(out_dma_rd_done),
        .dma_rd_ready(out_dma_rd_ready)
    );


    out_dma # (
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .STRB_WIDTH(STRB_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .ID(ID)
    ) out_dma (
        .clk(clk),
        .rstn(rstn),
        .dma_addr(out_dma_addr),
        .dma_burst_len(out_dma_burst_len),
        .dma_start(out_dma_start),
        .dma_ready(out_dma_ready),
        .out_buf_rd_valid(out_dma_rd_valid),
        .out_buf_rd_ready(out_dma_rd_ready),
        .awid(axi_awid),
        .awaddr(axi_awaddr),
        .awlen(axi_awlen),
        .awsize(axi_awsize),
        .awburst(axi_awburst),
        .awvalid(axi_awvalid),
        .awready(axi_awready),
        .wlast(axi_wlast),
        .wvalid(axi_wvalid),
        .wready(axi_wready),
        .bid(axi_bid),
        .bresp(axi_bresp),
        .bvalid(axi_bvalid),
        .bready(axi_bready)
    );
endmodule
