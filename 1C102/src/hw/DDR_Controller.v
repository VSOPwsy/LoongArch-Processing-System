`include "config.v"

module DDR_Controller #
(
    parameter DATA_WIDTH = `DDR_DATA_WIDTH,
    parameter ADDR_WIDTH = `ADDR_WIDTH,
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    parameter ID_WIDTH = `ID_WIDTH,

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
    
    // Extra pipeline register on output
    parameter PIPELINE_OUTPUT = 0,
    // Interleave read and write burst cycles
    parameter INTERLEAVE = 0
)
(
    input  wire                     clk,
    input  wire                     memory_clk,
    input  wire                     pll_lock,
    input  wire                     resetn,

    output wire                     ui_clk,

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
    output wire                     s_axi_bvalid,
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
    output wire                     s_axi_rvalid,
    input  wire                     s_axi_rready,

    input  wire                     init_model_complete,

    output wire                     ml_app_rdy,
    input  wire                     ml_app_cmd_en,
    input  wire [ADDR_WIDTH-1:0]    ml_app_addr,
    output wire                     ml_app_wdf_rdy,
    input  wire [DATA_WIDTH-1:0]    ml_app_wdf_data,
    input  wire [STRB_WIDTH-1:0]    ml_app_wdf_mask,
    input  wire                     ml_app_wdf_wren,
    

    output wire init_calib_complete,

    
    inout  [15:0]   ddr_dq,
    inout  [1:0]    ddr_dqs,
    inout  [1:0]    ddr_dqs_n,
    output [13:0]   ddr_addr,
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
    output [1:0]    ddr_dm
);

    wire clk_if;
    assign clk_if = clk;

    wire ddr_rst;

    
    wire [ID_WIDTH-1:0]      ram_cmd_id;
    wire [ADDR_WIDTH-1:0]    ram_cmd_addr;
    wire [DATA_WIDTH-1:0]    ram_cmd_wr_data;
    wire [STRB_WIDTH-1:0]    ram_cmd_wr_strb;
    wire                     ram_cmd_wr_en;
    wire                     ram_cmd_rd_en;
    wire                     ram_cmd_last;
    reg                      ram_cmd_ready = 1;
    reg  [ID_WIDTH-1:0]      ram_rd_resp_id;
    reg  [DATA_WIDTH-1:0]    ram_rd_resp_data;
    reg                      ram_rd_resp_last;
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
        .clk(clk_if),
        .rst(~resetn),

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
        // .ram_cmd_lock(ram_cmd_lock),
        // .ram_cmd_cache(ram_cmd_cache),
        // .ram_cmd_prot(ram_cmd_prot),
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


    
    wire app_cmd_ready;
    reg app_cmd_en = 0;
    reg [2:0] app_cmd = 0;
    reg [28:0] app_addr = 0; 


    wire [DATA_WIDTH-1:0] app_rd_data;
    wire app_rd_data_valid;
    wire app_rd_data_end;
    reg [DATA_WIDTH-1:0] app_wdf_data = 0;
    reg [STRB_WIDTH-1:0] app_wdf_mask = 0;
    reg app_wdf_wren = 0;
    reg app_wdf_end = 0;
    wire app_wdf_rdy;

    assign ml_app_rdy = app_cmd_ready;
    assign ml_app_wdf_rdy = app_wdf_rdy;

    DDR3_Memory_Interface_Top DDR3_Memory_Interface (
        .clk             (clk_if),
        .memory_clk      (memory_clk),
        .pll_lock        (pll_lock),
        .rst_n           (resetn),
        .cmd_ready       (app_cmd_ready),
        .cmd             (init_model_complete ? app_cmd      : 3'b000),
        .cmd_en          (init_model_complete ? app_cmd_en   : ml_app_cmd_en),
        .addr            (init_model_complete ? app_addr     : ml_app_addr),
        .wr_data_rdy     (app_wdf_rdy),
        .wr_data         (init_model_complete ? app_wdf_data : ml_app_wdf_data),
        .wr_data_en      (init_model_complete ? app_wdf_wren : ml_app_wdf_wren),
        .wr_data_end     (init_model_complete ? app_wdf_end  : 1'b1),
        .wr_data_mask    (init_model_complete ? app_wdf_mask : ml_app_wdf_mask),
        .rd_data         (app_rd_data),
        .rd_data_valid   (app_rd_data_valid),
        .rd_data_end     (app_rd_data_end),
        .sr_req          (1'b0),
        .ref_req         (1'b0),
        .sr_ack          (sr_ack),
        .ref_ack         (ref_ack),
        .init_calib_complete(init_calib_complete),
        .clk_out         (ui_clk),

        .burst           (1'b0),
        .ddr_rst         (ddr_rst),

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

    
    reg [STRB_WIDTH + ADDR_WIDTH + DATA_WIDTH + ID_WIDTH + 2 - 1 : 0] pipe_in = 0;
    reg pipe_wren = 0;
    reg pipe_rden = 0;
    wire [STRB_WIDTH + ADDR_WIDTH + DATA_WIDTH + ID_WIDTH + 2 - 1 : 0] pipe_out;    // width = 182
    wire pipe_empty;
    wire pipe_full;

	async_fifo # (
        .DSIZE(STRB_WIDTH + ADDR_WIDTH + DATA_WIDTH + ID_WIDTH + 2),
        .ASIZE(2),
        .FALLTHROUGH("TRUE")
    ) pipe (
		.wclk(clk_if),
        .wrst_n(resetn),
		.winc(pipe_wren),
		.wdata(pipe_in),
		.wfull(pipe_full),
        .awfull(),
		.rclk(ui_clk),
        .rrst_n(~ddr_rst&resetn),
		.rinc(pipe_rden),
		.rdata(pipe_out),
		.rempty(pipe_empty),
        .arempty()
	);


    reg [127:0] rfifo_wrdata;
    reg rfifo_wren = 0;
    reg rfifo_rden = 0;
    wire [127:0] rfifo_rddata;
    wire rfifo_empty;

	async_fifo # (
        .DSIZE(`DDR_DATA_WIDTH),
        .ASIZE(2),
        .FALLTHROUGH("TRUE")
    ) rfifo (
		.wclk(ui_clk),
        .wrst_n(~ddr_rst&resetn),
		.winc(rfifo_wren),
		.wdata(rfifo_wrdata),
		.wfull(),
        .awfull(),
		.rclk(clk_if),
        .rrst_n(resetn),
		.rinc(rfifo_rden),
		.rdata(rfifo_rddata),
		.rempty(rfifo_empty),
        .arempty()
	);

    localparam IDLE = 2'b00;
    localparam READ = 2'b01;

    reg [1:0] state_current, state_next;
    reg ddr_rd_done_flag = 0;
    reg ram_cmd_ready_next;

    always @(*) begin
        pipe_in = 0;
        pipe_wren = 0;
        ram_cmd_ready_next = 1;
        if ((ram_cmd_wr_en | ram_cmd_rd_en) & pipe_empty & ram_cmd_ready) begin
            pipe_wren = 1'b1;
            pipe_in = {ram_cmd_rd_en, ram_cmd_last, ram_cmd_id, ram_cmd_wr_en ? ram_cmd_wr_data : {DATA_WIDTH{1'b0}}, ram_cmd_wr_en ? ram_cmd_wr_strb : {STRB_WIDTH{1'b0}}, ram_cmd_addr}; // 1 for rd, 0 for wr
            ram_cmd_ready_next = 1'b0;
        end

        if (pipe_full) begin
            ram_cmd_ready_next = 1'b0;
        end
    end

    always @(posedge clk_if) begin
        if (~resetn) begin
            ram_cmd_ready <= 1'b0;
        end
        else begin
            ram_cmd_ready <= ram_cmd_ready_next;
        end
    end



    /*
     * Main FSM
     */
    always @(*) begin
        pipe_rden = 1'b0;
        case (state_current)
            IDLE: begin
                state_next = IDLE;
                if (~pipe_empty) begin
                    if (pipe_out[ADDR_WIDTH + STRB_WIDTH + DATA_WIDTH + ID_WIDTH + 1 +: 1]) begin
                        if (app_cmd_ready) begin
                            state_next = READ;
                            pipe_rden = 1'b1;
                        end
                    end
                    else begin
                        if (app_cmd_ready & app_wdf_rdy) begin
                            pipe_rden = 1'b1;
                        end
                    end
                end
                else begin
                    state_next = IDLE;
                end
            end

            READ: begin
                if ((app_rd_data_valid | ddr_rd_done_flag) & rfifo_empty) begin
                    state_next = IDLE;
                end
                else begin
                    state_next = READ;
                end
            end
            default: state_next = IDLE;
        endcase
    end


    reg [`ID_WIDTH-1:0] id;
    reg last;
    reg [$clog2(DATA_WIDTH/8) - 1 : 0] offset;

    always @(posedge ui_clk) begin
        if (~resetn | ddr_rst) begin
            state_current <= IDLE;
            ddr_rd_done_flag <= 1'b0;
            rfifo_wren <= 1'b0;
        end
        else begin
            state_current <= state_next;
            app_cmd_en <= 1'b0;
            app_wdf_wren <= 1'b0;
            app_wdf_end <= 1'b0;
            rfifo_wren <= 1'b0;

            case (state_current)
                IDLE: begin
                    ddr_rd_done_flag <= 1'b0;
                    if (~pipe_empty) begin
                        if (pipe_out[ADDR_WIDTH + STRB_WIDTH + DATA_WIDTH + ID_WIDTH + 1 +: 1]) begin: __READ__
                            if (app_cmd_ready) begin
                                app_cmd <= 3'b001;
                                app_cmd_en <= 1'b1;
                                app_addr <= pipe_out[0 +: ADDR_WIDTH] & ({ADDR_WIDTH{1'b1}} << $clog2(DATA_WIDTH/8));
                                offset <= pipe_out[$clog2(DATA_WIDTH/8) - 1 : 0];
                                id <= pipe_out[ADDR_WIDTH + STRB_WIDTH + DATA_WIDTH +: ID_WIDTH];
                                last <= pipe_out[ADDR_WIDTH + STRB_WIDTH + DATA_WIDTH + ID_WIDTH +: 1];
                            end
                        end
                        else begin: __WRITE__
                            if (app_cmd_ready & app_wdf_rdy) begin
                                app_cmd <= 3'b000;
                                app_cmd_en <= 1'b1;
                                app_addr <= pipe_out[0 +: ADDR_WIDTH] & ({ADDR_WIDTH{1'b1}} << $clog2(DATA_WIDTH/8));
                                offset <= pipe_out[$clog2(DATA_WIDTH/8) - 1 : 0];
                                app_wdf_wren <= 1'b1;
                                app_wdf_data <= pipe_out[ADDR_WIDTH + STRB_WIDTH +: DATA_WIDTH] << (8 * pipe_out[$clog2(DATA_WIDTH/8) - 1 : 0]);
                                app_wdf_mask <= ~(pipe_out[ADDR_WIDTH +: STRB_WIDTH] << pipe_out[$clog2(DATA_WIDTH/8) - 1 : 0]);
                                app_wdf_end <= 1'b1;
                            end
                        end
                    end
                end

                READ: begin
                    if (app_rd_data_valid) begin
                        ddr_rd_done_flag <= 1'b1;
                        rfifo_wrdata <= app_rd_data >> (8 * offset);
                        if (rfifo_empty) begin
                            rfifo_wren <= 1'b1;
                        end
                    end
                    else if (ddr_rd_done_flag & rfifo_empty) begin
                        rfifo_wren <= 1'b1;
                    end
                end
            endcase
        end
    end


    /*
     * Read from rfifo
     */
    always @(*) begin
        rfifo_rden = 1'b0;
        if (~rfifo_empty & ram_rd_resp_ready) begin
            rfifo_rden = 1'b1;
        end
    end

    always @(*) begin
        ram_rd_resp_valid = 0;
        ram_rd_resp_id = 0;
        ram_rd_resp_data = 0;
        ram_rd_resp_last = 0;
        if (~rfifo_empty & ram_rd_resp_ready) begin
            ram_rd_resp_valid = 1'b1;
            ram_rd_resp_id = id;
            ram_rd_resp_data = rfifo_rddata;
            ram_rd_resp_last = last;
        end
    end

endmodule