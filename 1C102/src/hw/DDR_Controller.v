module DDR_Controller #
(
    parameter DATA_WIDTH = 256,
    parameter ADDR_WIDTH = 32,
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    parameter ID_WIDTH = 8,

    parameter DQ_WIDTH = (DATA_WIDTH/8),

    parameter AWUSER_ENABLE = 0,
    parameter AWUSER_WIDTH = 1,
    parameter WUSER_ENABLE = 0,
    parameter WUSER_WIDTH = 1,
    parameter BUSER_ENABLE = 0,
    parameter BUSER_WIDTH = 1,
    parameter ARUSER_ENABLE = 0,
    parameter ARUSER_WIDTH = 1,
    parameter RUSER_ENABLE = 0,
    parameter RUSER_WIDTH = 1,
    parameter AUSER_WIDTH = (ARUSER_ENABLE && (!AWUSER_ENABLE || ARUSER_WIDTH > AWUSER_WIDTH)) ? ARUSER_WIDTH : AWUSER_WIDTH,
    

    parameter AXI_ID        = 8'h10,
    // Extra pipeline register on output
    parameter PIPELINE_OUTPUT = 0,
    // Interleave read and write burst cycles
    parameter INTERLEAVE = 0
)
(
    input  wire                     ctr_clk,
    input  wire                     memory_clk,
    input  wire                     pll_lock,
    input  wire                     sys_resetn,
    input  wire                     axi_aresetn,

    output wire                     ui_clk,
    output reg                      ui_sync_resetn,
    output wire                     init_calib_complete,

    /*
     * AXI slave interface
     */
    input  wire [ID_WIDTH-1:0]      s_axi_awid,
    input  wire [ADDR_WIDTH-1:0]    s_axi_awaddr,
    input  wire [7:0]               s_axi_awlen,
    input  wire [2:0]               s_axi_awsize,
    input  wire [1:0]               s_axi_awburst,
    input  wire                     s_axi_awlock,
    input  wire [3:0]               s_axi_awcache,
    input  wire [2:0]               s_axi_awprot,
    input  wire [3:0]               s_axi_awqos,
    input  wire [3:0]               s_axi_awregion,
    input  wire [AWUSER_WIDTH-1:0]  s_axi_awuser,
    input  wire                     s_axi_awvalid,
    output wire                     s_axi_awready,
    input  wire [DATA_WIDTH-1:0]    s_axi_wdata,
    input  wire [STRB_WIDTH-1:0]    s_axi_wstrb,
    input  wire                     s_axi_wlast,
    input  wire [WUSER_WIDTH-1:0]   s_axi_wuser,
    input  wire                     s_axi_wvalid,
    output wire                     s_axi_wready,
    output wire [ID_WIDTH-1:0]      s_axi_bid,
    output wire [1:0]               s_axi_bresp,
    output wire [BUSER_WIDTH-1:0]   s_axi_buser,
    output reg                      s_axi_bvalid,
    input  wire                     s_axi_bready,
    input  wire [ID_WIDTH-1:0]      s_axi_arid,
    input  wire [ADDR_WIDTH-1:0]    s_axi_araddr,
    input  wire [7:0]               s_axi_arlen,
    input  wire [2:0]               s_axi_arsize,
    input  wire [1:0]               s_axi_arburst,
    input  wire                     s_axi_arlock,
    input  wire [3:0]               s_axi_arcache,
    input  wire [2:0]               s_axi_arprot,
    input  wire [3:0]               s_axi_arqos,
    input  wire [3:0]               s_axi_arregion,
    input  wire [ARUSER_WIDTH-1:0]  s_axi_aruser,
    input  wire                     s_axi_arvalid,
    output wire                     s_axi_arready,
    output wire [ID_WIDTH-1:0]      s_axi_rid,
    output wire [DATA_WIDTH-1:0]    s_axi_rdata,
    output wire [1:0]               s_axi_rresp,
    output wire                     s_axi_rlast,
    output wire [RUSER_WIDTH-1:0]   s_axi_ruser,
    output reg                      s_axi_rvalid,
    input  wire                     s_axi_rready,

    /*
     * DDR3 interface
     */
    inout  [31:0]   ddr_dq,
    inout  [3:0]    ddr_dqs,
    inout  [3:0]    ddr_dqs_n,
    output [14:0]   ddr_addr,
    output [2:0]    ddr_bank,
    output          ddr_cs,
    output          ddr_ras,
    output          ddr_cas,
    output          ddr_we,
    output          ddr_ck,
    output          ddr_ck_n,
    output          ddr_cke,
    output          ddr_odt,
    output          ddr_reset_n,
    output [3:0]    ddr_dm
);

    wire                    ddr_rst;
    wire                    wr_data_ready;

    wire [ID_WIDTH-1:0]      ram_cmd_id;
    wire [ADDR_WIDTH-1:0]    ram_cmd_addr;
    wire                     ram_cmd_lock;
    wire [3:0]               ram_cmd_cache;
    wire [2:0]               ram_cmd_prot;
    wire [DATA_WIDTH-1:0]    ram_cmd_wr_data;
    wire [STRB_WIDTH-1:0]    ram_cmd_wr_strb;
    wire                     ram_cmd_wr_en;
    wire                     ram_cmd_rd_en;
    wire                     ram_cmd_last;
    wire                     ram_cmd_ready;

    wire [ID_WIDTH-1:0]      ram_rd_resp_id;
    wire [DATA_WIDTH-1:0]    ram_rd_resp_data;
    wire                     ram_rd_resp_last;
    reg                      ram_rd_resp_valid;
    wire                     ram_rd_resp_ready;

    axi_ram_wr_rd_if #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .STRB_WIDTH(STRB_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .AWUSER_ENABLE(AWUSER_ENABLE),
        .AWUSER_WIDTH(AWUSER_WIDTH),
        .WUSER_ENABLE(WUSER_ENABLE),
        .WUSER_WIDTH(WUSER_WIDTH),
        .BUSER_ENABLE(BUSER_ENABLE),
        .BUSER_WIDTH(BUSER_WIDTH),
        .ARUSER_ENABLE(ARUSER_ENABLE),
        .ARUSER_WIDTH(ARUSER_WIDTH),
        .RUSER_ENABLE(RUSER_ENABLE),
        .RUSER_WIDTH(RUSER_WIDTH),
        .AUSER_WIDTH(AUSER_WIDTH),
        .PIPELINE_OUTPUT(PIPELINE_OUTPUT),
        .INTERLEAVE(INTERLEAVE)
    ) axi_ram_if (
        .clk(ui_clk),
        .rst(~axi_aresetn),

        .s_axi_awid(s_axi_awid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awuser(s_axi_awuser),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awready(s_axi_awready),

        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wuser(s_axi_wuser),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wready(s_axi_wready),

        .s_axi_bid(s_axi_bid),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(s_axi_buser),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bready(s_axi_bready),

        .s_axi_arid(s_axi_arid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_aruser(s_axi_aruser),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arready(s_axi_arready),

        .s_axi_rid(s_axi_rid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_ruser(s_axi_ruser),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rready(s_axi_rready),

        .ram_cmd_id(ram_cmd_id),
        .ram_cmd_addr(ram_cmd_addr),
        .ram_cmd_lock(ram_cmd_lock),
        .ram_cmd_cache(ram_cmd_cache),
        .ram_cmd_prot(ram_cmd_prot),
        .ram_cmd_wr_data(ram_cmd_wr_data),
        .ram_cmd_wr_strb(ram_cmd_wr_strb),
        .ram_cmd_wr_en(ram_cmd_wr_en),
        .ram_cmd_rd_en(ram_cmd_rd_en),
        .ram_cmd_last(ram_cmd_last),
        .ram_cmd_ready(ram_cmd_ready),
        .ram_rd_resp_id(ram_rd_resp_id),
        .ram_rd_resp_data(ram_rd_resp_data),
        .ram_rd_resp_last(ram_rd_resp_last),
        .ram_rd_resp_valid(ram_rd_resp_valid),
        .ram_rd_resp_ready(ram_rd_resp_ready)
    );

    assign ram_rd_resp_id = AXI_ID;//support only one ID now
    assign ram_rd_resp_last = 1'b1; //support burst length 1 only
    DDR3_Memory_Interface_Top DDR3_Memory_Interface (
        .clk             (ctr_clk),
        .memory_clk      (memory_clk),
        .pll_lock        (pll_lock),
        .rst_n           (sys_resetn),
        .init_calib_complete(init_calib_complete),
        .clk_out         (ui_clk),
        .ddr_rst         (ddr_rst),

        .addr            (ram_cmd_addr[$clog2(DQ_WIDTH/8) +: ADDR_WIDTH-$clog2(DQ_WIDTH/8)]),
        .cmd             ({2'b0, ram_cmd_rd_en}),
        .cmd_en          (ram_cmd_rd_en | (wr_data_ready & ram_cmd_wr_en)),
        .cmd_ready       (ram_cmd_ready),
        .rd_data         (ram_rd_resp_data),
        .rd_data_end     (),
        .rd_data_valid   (ram_rd_resp_valid),
        .burst           (1'b1),//use BL8 only
        .wr_data         (ram_cmd_wr_data),
        .wr_data_end     (1'b1), // DATA_WIDTH must be equal to 8 times of DQ_WIDTH
        .wr_data_mask    (~ram_cmd_wr_strb),
        .wr_data_rdy     (wr_data_ready),
        .wr_data_en      (ram_cmd_wr_en),
        .sr_req          (1'b0),
        .sr_ack          (sr_ack),
        .ref_req         (1'b0),
        .ref_ack         (ref_ack),


        // mem interface
        .O_ddr_addr      (ddr_addr),
        .O_ddr_ba        (ddr_bank),
        .O_ddr_cs_n      (ddr_cs),
        .O_ddr_ras_n     (ddr_ras),
        .O_ddr_cas_n     (ddr_cas),
        .O_ddr_we_n      (ddr_we),
        .O_ddr_clk       (ddr_ck),
        .O_ddr_clk_n     (ddr_ck_n),
        .O_ddr_cke       (ddr_cke),
        .O_ddr_odt       (ddr_odt),
        .O_ddr_reset_n   (ddr_reset_n),
        .O_ddr_dqm       (ddr_dm),
        .IO_ddr_dq       (ddr_dq),
        .IO_ddr_dqs      (ddr_dqs),
        .IO_ddr_dqs_n    (ddr_dqs_n)
    );

    reg [31:0] ui_sync_resetn_int = 32'b0;
    always @(posedge ui_clk) begin
        if(~pll_lock) begin
            ui_sync_resetn_int[31:0] <= 32'b0;
        end else begin
            ui_sync_resetn_int <= {ui_sync_resetn_int[30:0],sys_resetn};
        end
        ui_sync_resetn <= ui_sync_resetn_int == 32'hFFFFFFFF;
    end

endmodule
