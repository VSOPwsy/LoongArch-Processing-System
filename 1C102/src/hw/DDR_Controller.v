`include "config.v"

module DDR_Controller #
(
    // Width of data bus in bits
    parameter DATA_WIDTH = `DDR_DATA_WIDTH,
    // Width of address bus in bits
    parameter ADDR_WIDTH = `ADDR_WIDTH,
    // Width of wstrb (width of data bus in words)
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    // Width of ID signal
    parameter ID_WIDTH = `ID_WIDTH,
    // Propagate awuser signal
    parameter AWUSER_ENABLE = 0,
    // Width of awuser signal
    parameter AWUSER_WIDTH = 1,
    // Propagate wuser signal
    parameter WUSER_ENABLE = 0,
    // Width of wuser signal
    parameter WUSER_WIDTH = 1,
    // Propagate buser signal
    parameter BUSER_ENABLE = 0,
    // Width of buser signal
    parameter BUSER_WIDTH = 1,
    // Propagate aruser signal
    parameter ARUSER_ENABLE = 0,
    // Width of aruser signal
    parameter ARUSER_WIDTH = 1,
    // Propagate ruser signal
    parameter RUSER_ENABLE = 0,
    // Width of ruser signal
    parameter RUSER_WIDTH = 1,
    // Width of auser output
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


    
    wire [ID_WIDTH-1:0]      ram_cmd_id;
    wire [ADDR_WIDTH-1:0]    ram_cmd_addr;
    wire [DATA_WIDTH-1:0]    ram_cmd_wr_data;
    wire [STRB_WIDTH-1:0]    ram_cmd_wr_strb;
    wire                     ram_cmd_wr_en;
    wire                     ram_cmd_rd_en;
    wire                     ram_cmd_last;
    reg                      ram_cmd_ready;
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
    reg [2:0] app_cmd = 0;
    reg app_cmd_en = 0;
    reg [28:0] app_addr = 0; 

    DDR3_Memory_Interface_Top DDR3_Memory_Interface (
        .clk             (clk),
        .memory_clk      (memory_clk),
        .pll_lock        (pll_lock),
        .rst_n           (resetn),
        .cmd_ready       (app_cmd_ready),
        .cmd             (app_cmd),
        .cmd_en          (app_cmd_en),
        .addr            (app_addr),
        .wr_data_rdy     (app_wdf_rdy),
        .wr_data         (app_wdf_data),
        .wr_data_en      (app_wdf_wren),
        .wr_data_end     (app_wdf_end),
        .wr_data_mask    (app_wdf_mask),
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

	ddr_pipe pipe(
		.Data(pipe_in), //input [182-1:0] Data
		.Reset(~resetn), //input Reset
		.WrClk(clk_if), //input WrClk
		.RdClk(ui_clk), //input RdClk
		.WrEn(pipe_wren), //input WrEn
		.RdEn(pipe_rden), //input RdEn
		.Q(pipe_out), //output [182-1:0] Q
		.Empty(pipe_empty), //output Empty
		.Full() //output Full
	);


    reg [127:0] rfifo_wrdata;
    reg rfifo_wren = 0;
    reg rfifo_rden = 0;
    wire [127:0] rfifo_rddata;
    wire rfifo_empty;

	ddr_fifo_rd rfifo(
		.Data(rfifo_wrdata), //input [127:0] Data
		.Reset(~resetn), //input Reset
		.WrClk(ui_clk), //input WrClk
		.RdClk(clk_if), //input RdClk
		.WrEn(rfifo_wren), //input WrEn
		.RdEn(rfifo_rden), //input RdEn
		.Q(rfifo_rddata), //output [127:0] Q
		.Empty(rfifo_empty), //output Empty
		.Full() //output Full
	);

    wire [127:0] wfifo_wrdata;
    reg wfifo_wren = 0;
    reg wfifo_rden = 0;
    wire [127:0] wfifo_rddata;
    wire wfifo_empty;


	ddr_fifo_wr wfifo(
		.Data(wfifo_wrdata), //input [127:0] Data
		.Reset(~resetn), //input Reset
		.WrClk(clk_if), //input WrClk
		.RdClk(ui_clk), //input RdClk
		.WrEn(wfifo_wren), //input WrEn
		.RdEn(wfifo_rden), //input RdEn
		.Q(wfifo_rddata), //output [127:0] Q
		.Empty(wfifo_empty), //output Empty
		.Full() //output Full
	);



    localparam IDLE = 2'b00;
    localparam READ = 2'b01;
    localparam WRITE = 2'b10;

    reg [1:0] state_current, state_next;
    reg ddr_rd_done_flag = 0;

    always @(*) begin
        if (~resetn) begin
            pipe_wren = 1'b0;
        end
        else begin
            if ((ram_cmd_wr_en | ram_cmd_rd_en) & pipe_empty & ram_cmd_ready) begin
                pipe_wren = 1'b1;
                pipe_in = {ram_cmd_rd_en, ram_cmd_last, ram_cmd_id, ram_cmd_addr, ram_cmd_wr_en ? ram_cmd_wr_data : 0, ram_cmd_wr_en ? ram_cmd_wr_strb : 0}; // 1 for rd, 0 for wr
            end 
        end
    end
    always @(posedge clk_if) begin
        if (~resetn) begin
            ram_cmd_ready <= 1'b1;
        end
        else begin
            ram_cmd_ready <= pipe_empty;
        end
    end



    /*
     * Main FSM
     */
    always @(*) begin
        if (~resetn) begin
            state_next = IDLE;
        end
        else begin
            case (state_next)
                IDLE: begin
                    if (~pipe_empty) begin
                        state_next = pipe_out[STRB_WIDTH + DATA_WIDTH + ADDR_WIDTH + ID_WIDTH + 1 +: 1] ? READ : WRITE;
                    end
                    else begin
                        state_next = IDLE;
                    end
                end

                READ: begin
                    if (ddr_rd_done_flag & rfifo_empty) begin
                        state_next = IDLE;
                    end
                    else begin
                        state_next = READ;
                    end
                end

                WRITE: begin
                    if (~ram_cmd_wr_en & wfifo_empty) begin
                        state_next = IDLE;
                    end
                    else begin
                        state_next = WRITE;
                    end
                end
                
                default: state_next = IDLE;
            endcase
        end
    end


    reg [`ID_WIDTH-1:0] id;
    reg last;

    always @(posedge ui_clk) begin
        if (~resetn) begin
            state_current <= IDLE;
            ddr_rd_done_flag <= 1'b0;
        end
        else begin
            state_current <= state_next;
            case (state_current)
                IDLE: begin
                    if (~pipe_empty) begin
                        if (pipe_out[STRB_WIDTH + DATA_WIDTH + ADDR_WIDTH + ID_WIDTH + 1 +: 1]) begin: __READ__
                            app_cmd <= 3'b001;
                            app_cmd_en <= 1'b1;
                            app_addr <= pipe_out[STRB_WIDTH + DATA_WIDTH +: ADDR_WIDTH];
                            id <= pipe_out[STRB_WIDTH + DATA_WIDTH + ADDR_WIDTH +: ID_WIDTH];
                            last <= pipe_out[STRB_WIDTH + DATA_WIDTH + ADDR_WIDTH + ID_WIDTH +: 1];
                            pipe_rden <= 1'b1;
                        end
                        else begin
                            app_cmd <= 3'b000;
                            app_cmd_en <= 1'b1;
                            app_addr <= pipe_out[STRB_WIDTH + DATA_WIDTH +: ADDR_WIDTH];
                            id <= pipe_out[STRB_WIDTH + DATA_WIDTH + ADDR_WIDTH +: ID_WIDTH];
                            last <= pipe_out[STRB_WIDTH + DATA_WIDTH + ADDR_WIDTH + ID_WIDTH +: 1];
                            pipe_rden <= 1'b1;
                        end
                    end
                end

                READ: begin
                    pipe_rden <= 1'b0;
                    if (app_cmd_ready) begin
                        app_cmd_en <= 1'b0;
                    end
                    if (app_rd_data_valid) begin
                        ddr_rd_done_flag <= 1'b1;
                        rfifo_wren <= 1'b1;
                        rfifo_wrdata <= app_rd_data;
                    end
                    if (ddr_rd_done_flag) begin
                        rfifo_wren <= 1'b0;
                    end
                    if (ddr_rd_done_flag & rfifo_empty) begin
                        ddr_rd_done_flag <= 1'b0;
                    end
                end

                WRITE: begin
                    pipe_rden <= 1'b0;
                end
            endcase
        end
    end


    /*
     * Read from rfifo
     */
    always @(*) begin
        if (~resetn) begin
            rfifo_rden = 1'b0;
        end
        else begin
            if (~rfifo_empty & ~ram_rd_resp_valid) begin
                rfifo_rden = 1'b1;
            end
        end
    end
    always @(posedge clk_if) begin
        if (~resetn) begin
            ram_rd_resp_valid <= 1'b1;
        end
        else begin
            if (~rfifo_empty & ~ram_rd_resp_valid) begin
                ram_rd_resp_id <= id;
                ram_rd_resp_data <= rfifo_rddata;
                ram_rd_resp_last <= last;
                ram_rd_resp_valid <= 1'b1;
            end
            if (ram_rd_resp_valid & ram_rd_resp_ready) begin
                ram_rd_resp_valid <= 1'b0;
            end
        end
    end

endmodule