module DDR_Controller #
(
    parameter DATA_WIDTH = 128,
    parameter ADDR_WIDTH = 32,
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    parameter ID_WIDTH = 8,

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

    output wire                     ui_clk,  /* synthesis syn_keep=1 */

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

    localparam IDLE = 1'b0;
    localparam BUSY = 1'b1;

    wire clk_bus;
    assign clk_bus = clk;

    wire ddr_rst;

    wire [ID_WIDTH-1:0]      ram_if_awid;
    wire [ADDR_WIDTH-1:0]    ram_if_awaddr;
    wire [7:0]               ram_if_awlen;
    wire [2:0]               ram_if_awsize;
    wire [1:0]               ram_if_awburst;
    wire                     ram_if_awlock;
    wire [3:0]               ram_if_awcache;
    wire [2:0]               ram_if_awprot;
    wire [3:0]               ram_if_awqos;
    wire [3:0]               ram_if_awregion;
    wire [AWUSER_WIDTH-1:0]  ram_if_awuser;
    reg                      ram_if_awvalid;
    wire                     ram_if_awready;
    wire [DATA_WIDTH-1:0]    ram_if_wdata;
    wire [STRB_WIDTH-1:0]    ram_if_wstrb;
    wire                     ram_if_wlast;
    wire [WUSER_WIDTH-1:0]   ram_if_wuser;
    reg                      ram_if_wvalid;
    wire                     ram_if_wready;
    wire [ID_WIDTH-1:0]      ram_if_bid;
    wire [1:0]               ram_if_bresp;
    wire [BUSER_WIDTH-1:0]   ram_if_buser;
    wire                     ram_if_bvalid;
    wire                     ram_if_bready;
    wire [ID_WIDTH-1:0]      ram_if_arid;
    wire [ADDR_WIDTH-1:0]    ram_if_araddr;
    wire [7:0]               ram_if_arlen;
    wire [2:0]               ram_if_arsize;
    wire [1:0]               ram_if_arburst;
    wire                     ram_if_arlock;
    wire [3:0]               ram_if_arcache;
    wire [2:0]               ram_if_arprot;
    wire [3:0]               ram_if_arqos;
    wire [3:0]               ram_if_arregion;
    wire [ARUSER_WIDTH-1:0]  ram_if_aruser;
    reg                      ram_if_arvalid;
    wire                     ram_if_arready;
    wire [ID_WIDTH-1:0]      ram_if_rid;
    wire [DATA_WIDTH-1:0]    ram_if_rdata;
    wire [1:0]               ram_if_rresp;
    wire                     ram_if_rlast;
    wire [RUSER_WIDTH-1:0]   ram_if_ruser;
    wire                     ram_if_rvalid;
    wire                     ram_if_rready;
    
    wire [ID_WIDTH-1:0]      ram_cmd_id;
    wire [ADDR_WIDTH-1:0]    ram_cmd_addr;
    wire [DATA_WIDTH-1:0]    ram_cmd_wr_data;
    wire [STRB_WIDTH-1:0]    ram_cmd_wr_strb;
    wire                     ram_cmd_wr_en;
    wire                     ram_cmd_rd_en;
    wire                     ram_cmd_last;
    wire                     ram_cmd;
    wire                     ram_cmd_ready;

    wire [ID_WIDTH-1:0]      ram_rd_resp_id;
    wire [DATA_WIDTH-1:0]    ram_rd_resp_data;
    wire                     ram_rd_resp_last;
    reg                      ram_rd_resp_valid;
    wire                     ram_rd_resp_ready;



    
    wire [ID_WIDTH+ADDR_WIDTH+DATA_WIDTH+STRB_WIDTH+1+1 -1:0]scfifo_app_datain;
    wire [ID_WIDTH+ADDR_WIDTH+DATA_WIDTH+STRB_WIDTH+1+1 -1:0]scfifo_app_dataout;
    wire                     scfifo_app_wren;
    wire                     scfifo_app_full;
    wire [ID_WIDTH-1:0]      scfifo_app_idout;
    wire                     scfifo_app_lastout;
    wire                     scfifo_app_empty;
    reg                      scfifo_app_rden;

    wire                     app_cmd_last;
    wire                     app_cmd;
    reg                      app_cmd_en;
    wire [ID_WIDTH-1:0]      app_cmd_id;
    wire [ADDR_WIDTH-1:0]    app_cmd_addr;
    reg                      app_cmd_wr_en;
    wire [DATA_WIDTH-1:0]    app_cmd_wr_data;
    wire [STRB_WIDTH-1:0]    app_cmd_wr_strb;
    wire [DATA_WIDTH-1:0]    app_rd_resp_data;
    wire                     app_rd_resp_valid;
    wire                     app_cmd_ready;
    wire                     app_cmd_wr_ready;

    wire                     scfifo_rd_resp_full;
    reg                      scfifo_rd_resp_wren;
    reg                      scfifo_rd_resp_rden;
    wire                     scfifo_rd_resp_empty;
    
    wire                     scfifo_rd_data_full;
    wire                     scfifo_rd_data_wren;
    wire                     scfifo_rd_data_rden;
    wire                     scfifo_rd_data_empty;

    
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
        .clk(clk_bus),
        .rst(~resetn),

        .s_axi_awid(ram_if_awid),
        .s_axi_awaddr(ram_if_awaddr),
        .s_axi_awlen(ram_if_awlen),
        .s_axi_awsize(ram_if_awsize),
        .s_axi_awburst(ram_if_awburst),
        .s_axi_awlock(ram_if_awlock),
        .s_axi_awcache(ram_if_awcache),
        .s_axi_awprot(ram_if_awprot),
        .s_axi_awqos(ram_if_awqos),
        .s_axi_awregion(ram_if_awregion),
        .s_axi_awuser(ram_if_awuser),
        .s_axi_awvalid(ram_if_awvalid),
        .s_axi_awready(ram_if_awready),

        .s_axi_wdata(ram_if_wdata),
        .s_axi_wstrb(ram_if_wstrb),
        .s_axi_wlast(ram_if_wlast),
        .s_axi_wuser(ram_if_wuser),
        .s_axi_wvalid(ram_if_wvalid),
        .s_axi_wready(ram_if_wready),

        .s_axi_bid(ram_if_bid),
        .s_axi_bresp(ram_if_bresp),
        .s_axi_buser(ram_if_buser),
        .s_axi_bvalid(ram_if_bvalid),
        .s_axi_bready(ram_if_bready),

        .s_axi_arid(ram_if_arid),
        .s_axi_araddr(ram_if_araddr),
        .s_axi_arlen(ram_if_arlen),
        .s_axi_arsize(ram_if_arsize),
        .s_axi_arburst(ram_if_arburst),
        .s_axi_arlock(ram_if_arlock),
        .s_axi_arcache(ram_if_arcache),
        .s_axi_arprot(ram_if_arprot),
        .s_axi_arqos(ram_if_arqos),
        .s_axi_arregion(ram_if_arregion),
        .s_axi_aruser(ram_if_aruser),
        .s_axi_arvalid(ram_if_arvalid),
        .s_axi_arready(ram_if_arready),

        .s_axi_rid(ram_if_rid),
        .s_axi_rdata(ram_if_rdata),
        .s_axi_rresp(ram_if_rresp),
        .s_axi_rlast(ram_if_rlast),
        .s_axi_ruser(ram_if_ruser),
        .s_axi_rvalid(ram_if_rvalid),
        .s_axi_rready(ram_if_rready),

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


    /*
     * aw
     */
    wire [ADDR_WIDTH + ID_WIDTH + 8 + 3 + 2 - 1 : 0] s_axi_awch;    // 57
    wire [ADDR_WIDTH + ID_WIDTH + 8 + 3 + 2 - 1 : 0] ram_if_awch;

    wire aw_rden;
    wire aw_empty;
    wire aw_full;
	ddr_ctr_fifo_aw async_fifo_aw(
		.Data(s_axi_awch), //input [56:0] Data
		.WrReset(~resetn), //input WrReset
		.RdReset(~resetn | ddr_rst), //input RdReset
		.WrClk(clk_bus), //input WrClk
		.RdClk(ui_clk), //input RdClk
		.WrEn(s_axi_awvalid), //input WrEn
		.RdEn(aw_rden), //input RdEn
		.Q(ram_if_awch), //output [56:0] Q
		.Empty(aw_empty), //output Empty
		.Full(aw_full) //output Full
	);

    assign s_axi_awch = {
        s_axi_awburst,
        s_axi_awsize,
        s_axi_awlen,
        s_axi_awid,
        s_axi_awaddr
    };

    assign s_axi_awready = ~aw_full;

    // aw FSM
    reg aw_state_current, aw_state_next;
    always @(posedge ui_clk) begin
        if (~resetn | ddr_rst) begin
            aw_state_current <= IDLE;
        end
        else begin
            aw_state_current <= aw_state_next;
        end
    end

    assign aw_rden = (aw_state_current == IDLE) & ~aw_empty;

    always @(*) begin
        aw_state_next = aw_state_current;
        case (aw_state_current)
            IDLE: begin
                if (~aw_empty) begin
                    aw_state_next = BUSY;
                end
            end

            BUSY: begin
                if (ram_if_awready) begin
                    aw_state_next = IDLE;
                end
            end
        endcase
    end

    always @(posedge ui_clk) begin
        if (~resetn | ddr_rst) begin
            ram_if_awvalid <= 1'b0;
        end
        else begin
            case (aw_state_current)
                IDLE: begin
                    if (~aw_empty) begin
                        ram_if_awvalid <= 1'b1;
                    end
                end

                BUSY: begin
                    if (ram_if_awready) begin
                        ram_if_awvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    assign {ram_if_awburst,
            ram_if_awsize,
            ram_if_awlen,
            ram_if_awid,
            ram_if_awaddr} = ram_if_awch;




    /*
     * w
     */
    wire [DATA_WIDTH + STRB_WIDTH - 1 : 0] s_axi_wch;    // 144
    wire [DATA_WIDTH + STRB_WIDTH - 1 : 0] ram_if_wch;

    wire w_rden;
    wire w_empty;
    wire w_full;
	ddr_ctr_fifo_w async_fifo_w(
		.Data({s_axi_wlast, s_axi_wch}), //input [144:0] Data
		.WrReset(~resetn), //input WrReset
		.RdReset(~resetn | ddr_rst), //input RdReset
		.WrClk(clk_bus), //input WrClk
		.RdClk(ui_clk), //input RdClk
		.WrEn(s_axi_wvalid), //input WrEn
		.RdEn(w_rden), //input RdEn
		.Q({ram_if_wlast, ram_if_wch}), //output [144:0] Q
		.Empty(w_empty), //output Empty
		.Full(w_full) //output Full
	);

    assign s_axi_wch = {s_axi_wstrb, s_axi_wdata};

    assign s_axi_wready = ~w_full;

    // w FSM
    reg w_state_current, w_state_next;
    always @(posedge ui_clk) begin
        if (~resetn | ddr_rst) begin
            w_state_current <= IDLE;
        end
        else begin
            w_state_current <= w_state_next;
        end
    end

    assign w_rden = (w_state_current == IDLE) & ~w_empty;

    always @(*) begin
        w_state_next = w_state_current;
        case (w_state_current)
            IDLE: begin
                if (~w_empty) begin
                    w_state_next = BUSY;
                end
            end

            BUSY: begin
                if (ram_if_wready) begin
                    w_state_next = IDLE;
                end
            end
        endcase
    end

    always @(posedge ui_clk) begin
        if (~resetn | ddr_rst) begin
            ram_if_wvalid <= 1'b0;
        end
        else begin
            case (w_state_current)
                IDLE: begin
                    if (~w_empty) begin
                        ram_if_wvalid <= 1'b1;
                    end
                end

                BUSY: begin
                    if (ram_if_wready) begin
                        ram_if_wvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    assign {ram_if_wstrb, ram_if_wdata} = ram_if_wch;




    /*
     * b
     */
    wire [ID_WIDTH + 2 - 1 : 0] s_axi_bch;    // 14
    wire [ID_WIDTH + 2 - 1 : 0] ram_if_bch;

    wire b_rden;
    wire b_empty;
    wire b_full;
	ddr_ctr_fifo_b async_fifo_b(
		.Data(ram_if_bch), //input [13:0] Data
		.WrReset(~resetn | ddr_rst), //input WrReset
		.RdReset(~resetn), //input RdReset
		.WrClk(ui_clk), //input WrClk
		.RdClk(clk_bus), //input RdClk
		.WrEn(ram_if_bvalid), //input WrEn
		.RdEn(b_rden), //input RdEn
		.Q(s_axi_bch), //output [13:0] Q
		.Empty(b_empty), //output Empty
		.Full(b_full) //output Full
	);

    assign ram_if_bch = {ram_if_bresp, ram_if_bid};

    assign ram_if_bready = ~b_full;

    // b FSM
    reg b_state_current, b_state_next;
    always @(posedge clk_bus) begin
        if (~resetn) begin
            b_state_current <= IDLE;
        end
        else begin
            b_state_current <= b_state_next;
        end
    end

    assign b_rden = (b_state_current == IDLE) & ~b_empty;

    always @(*) begin
        b_state_next = b_state_current;
        case (b_state_current)
            IDLE: begin
                if (~b_empty) begin
                    b_state_next = BUSY;
                end
            end

            BUSY: begin
                if (s_axi_bready) begin
                    b_state_next = IDLE;
                end
            end
        endcase
    end

    always @(posedge clk_bus) begin
        if (~resetn) begin
            s_axi_bvalid <= 1'b0;
        end
        else begin
            case (b_state_current)
                IDLE: begin
                    if (~b_empty) begin
                        s_axi_bvalid <= 1'b1;
                    end
                end

                BUSY: begin
                    if (s_axi_bready) begin
                        s_axi_bvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    assign {s_axi_bresp, s_axi_bid} = s_axi_bch;



    /*
     * ar
     */
    wire [ADDR_WIDTH + ID_WIDTH + 8 + 3 + 2 - 1 : 0] s_axi_arch;    // 57
    wire [ADDR_WIDTH + ID_WIDTH + 8 + 3 + 2 - 1 : 0] ram_if_arch;

    wire ar_rden;
    wire ar_empty;
    wire ar_full;
	ddr_ctr_fifo_ar async_fifo_ar(
		.Data(s_axi_arch), //input [56:0] Data
		.WrReset(~resetn), //input WrReset
		.RdReset(~resetn | ddr_rst), //input RdReset
		.WrClk(clk_bus), //input WrClk
		.RdClk(ui_clk), //input RdClk
		.WrEn(s_axi_arvalid), //input WrEn
		.RdEn(ar_rden), //input RdEn
		.Q(ram_if_arch), //output [56:0] Q
		.Empty(ar_empty), //output Empty
		.Full(ar_full) //output Full
	);

    assign s_axi_arch = {
        s_axi_arburst,
        s_axi_arsize,
        s_axi_arlen,
        s_axi_arid,
        s_axi_araddr
    };

    assign s_axi_arready = ~ar_full;

    // ar FSM
    reg ar_state_current, ar_state_next;
    always @(posedge ui_clk) begin
        if (~resetn | ddr_rst) begin
            ar_state_current <= IDLE;
        end
        else begin
            ar_state_current <= ar_state_next;
        end
    end

    assign ar_rden = (ar_state_current == IDLE) & ~ar_empty;

    always @(*) begin
        ar_state_next = ar_state_current;
        case (ar_state_current)
            IDLE: begin
                if (~ar_empty) begin
                    ar_state_next = BUSY;
                end
            end

            BUSY: begin
                if (ram_if_arready) begin
                    ar_state_next = IDLE;
                end
            end
        endcase
    end

    always @(posedge ui_clk) begin
        if (~resetn | ddr_rst) begin
            ram_if_arvalid <= 1'b0;
        end
        else begin
            case (ar_state_current)
                IDLE: begin
                    if (~ar_empty) begin
                        ram_if_arvalid <= 1'b1;
                    end
                end

                BUSY: begin
                    if (ram_if_arready) begin
                        ram_if_arvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    assign {ram_if_arburst,
            ram_if_arsize,
            ram_if_arlen,
            ram_if_arid,
            ram_if_araddr} = ram_if_arch;




    /*
     * r
     */
    wire [ID_WIDTH + 2 + DATA_WIDTH - 1 : 0] s_axi_rch;    // 142
    wire [ID_WIDTH + 2 + DATA_WIDTH - 1 : 0] ram_if_rch;

    wire r_rden;
    wire r_empty;
    wire r_full;
	ddr_ctr_fifo_r async_fifo_r(
		.Data({ram_if_rlast, ram_if_rch}), //input [142:0] Data
		.WrReset(~resetn | ddr_rst), //input WrReset
		.RdReset(~resetn), //input RdReset
		.WrClk(ui_clk), //input WrClk
		.RdClk(clk_bus), //input RdClk
		.WrEn(ram_if_rvalid), //input WrEn
		.RdEn(r_rden), //input RdEn
		.Q({s_axi_rlast, s_axi_rch}), //output [142:0] Q
		.Empty(r_empty), //output Empty
		.Full(r_full) //output Full
	);

    assign ram_if_rch = {ram_if_rdata, ram_if_rresp, ram_if_rid};

    assign ram_if_rready = ~r_full;

    // r FSM
    reg r_state_current, r_state_next;
    always @(posedge clk_bus) begin
        if (~resetn) begin
            r_state_current <= IDLE;
        end
        else begin
            r_state_current <= r_state_next;
        end
    end

    assign r_rden = (r_state_current == IDLE) & ~r_empty;

    always @(*) begin
        r_state_next = r_state_current;
        case (r_state_current)
            IDLE: begin
                if (~r_empty) begin
                    r_state_next = BUSY;
                end
            end

            BUSY: begin
                if (s_axi_rready) begin
                    r_state_next = IDLE;
                end
            end
        endcase
    end

    always @(posedge clk_bus) begin
        if (~resetn) begin
            s_axi_rvalid <= 1'b0;
        end
        else begin
            case (r_state_current)
                IDLE: begin
                    if (~r_empty) begin
                        s_axi_rvalid <= 1'b1;
                    end
                end

                BUSY: begin
                    if (s_axi_rready) begin
                        s_axi_rvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    assign {s_axi_rdata, s_axi_rresp, s_axi_rid} = s_axi_rch;

    scfifo_app scfifo_app (
		.Data(scfifo_app_datain), //input [189:0] Data
		.Clk(ui_clk), //input Clk
		.WrEn(scfifo_app_wren), //input WrEn
		.RdEn(scfifo_app_rden), //input RdEn
		.Reset(~resetn | ddr_rst), //input Reset
		.Q(scfifo_app_dataout), //output [189:0] Q
		.Empty(scfifo_app_empty), //output Empty
		.Full(scfifo_app_full) //output Full
	);

    assign ram_cmd_ready = ~scfifo_app_full;

    assign scfifo_app_wren = ram_cmd_rd_en | ram_cmd_wr_en;

    assign scfifo_app_datain = {   ram_cmd_last,
                                   ram_cmd,
                                   ~ram_cmd_wr_strb,
                                   ram_cmd_wr_data,
                                   ram_cmd_addr,
                                   ram_cmd_id       };

    assign scfifo_app_dataout = {  app_cmd_last,
                                   app_cmd,
                                   app_cmd_wr_strb,
                                   app_cmd_wr_data,
                                   app_cmd_addr,
                                   app_cmd_id       };


    scfifo_rd_resp scfifo_rd_resp(
		.Data({app_cmd_last, app_cmd_id}), //input [12:0] Data
		.Clk(ui_clk), //input Clk
		.WrEn(scfifo_rd_resp_wren), //input WrEn
		.RdEn(scfifo_rd_resp_rden), //input RdEn
		.Reset(~resetn | ddr_rst), //input Reset
		.Q({ram_rd_resp_last, ram_rd_resp_id}), //output [12:0] Q
		.Empty(scfifo_rd_resp_empty), //output Empty
		.Full(scfifo_rd_resp_full) //output Full
	);


    scfifo_rd_data scfifo_rd_data(
		.Data(app_rd_resp_data), //input [127:0] Data
		.Clk(ui_clk), //input Clk
		.WrEn(scfifo_rd_data_wren), //input WrEn
		.RdEn(scfifo_rd_data_rden), //input RdEn
		.Reset(~resetn | ddr_rst), //input Reset
		.Q(ram_rd_resp_data), //output [127:0] Q
		.Empty(scfifo_rd_data_empty), //output Empty
		.Full(scfifo_rd_data_full) //output Full
	);

    assign scfifo_rd_data_wren = app_rd_resp_valid;

    /* 
     * FETCH FSM
     */
    localparam FETCH_IDLE = 1'b0;
    localparam FETCH_BUSY = 1'b1;
    reg fetch_state_current, fetch_state_next;
    always @(posedge ui_clk) begin
        if (resetn | ~ddr_rst) begin
            fetch_state_current <= FETCH_IDLE;
        end
        else begin
            fetch_state_current <= fetch_state_next;
        end
    end

    always @(*) begin
        fetch_state_next = fetch_state_current;
        scfifo_app_rden = 1'b0;
        app_cmd_en = 1'b0;
        app_cmd_wr_en = 1'b0;
        scfifo_rd_resp_wren = 1'b0;
        case (fetch_state_current)
            FETCH_IDLE: begin
                if (~scfifo_app_empty) begin
                    fetch_state_next = FETCH_BUSY;
                    scfifo_app_rden = 1'b1;
                end
            end

            FETCH_BUSY: begin
                if (app_cmd) begin // Read
                    if (app_cmd_ready) begin
                        app_cmd_en = 1'b1;
                        scfifo_rd_resp_wren = 1'b1;
                        if (scfifo_app_empty) begin
                            fetch_state_next = FETCH_IDLE;
                        end
                        else begin
                            scfifo_app_rden = 1'b1;
                        end
                    end
                end
                else begin
                    if (app_cmd_ready & app_cmd_wr_ready) begin
                        app_cmd_en = 1'b1;
                        app_cmd_wr_en = 1'b1;
                        if (scfifo_app_empty) begin
                            fetch_state_next = FETCH_IDLE;
                        end
                        else begin
                            scfifo_app_rden = 1'b1;
                        end
                    end
                end
            end
        endcase
    end


    /*
     * RESP FSM
     */
    localparam RESP_IDLE = 1'b0;
    localparam RESP_BUSY = 1'b1;
    reg resp_state_current, resp_state_next;
    always @(posedge ui_clk) begin
        if (~resetn | ddr_rst) begin
            resp_state_current <= RESP_IDLE;
        end
        else begin
            resp_state_current <= resp_state_next;
        end
    end

    always @(*) begin
        resp_state_next = resp_state_current;
        scfifo_rd_resp_rden = 1'b0;
        case (resp_state_current)
            RESP_IDLE: begin
                if (~scfifo_rd_data_empty & ~scfifo_rd_resp_empty) begin
                    resp_state_next = RESP_BUSY;
                    scfifo_rd_resp_rden = 1'b1;
                end
            end

            RESP_BUSY: begin
                if (ram_rd_resp_valid & ram_rd_resp_ready) begin
                    if (~scfifo_rd_data_empty & ~scfifo_rd_resp_empty) begin
                        scfifo_rd_resp_rden = 1'b1;
                    end
                    else begin
                        resp_state_next = RESP_IDLE;
                    end
                end
            end
        endcase
    end

    always @(posedge ui_clk) begin
        if (~resetn | ddr_rst) begin
            ram_rd_resp_valid <= 1'b0;
        end
        else begin
            case (resp_state_current)
                RESP_IDLE: begin
                    if (~scfifo_rd_data_empty & ~scfifo_rd_resp_empty) begin
                        ram_rd_resp_valid <= 1'b1;
                    end
                end

                RESP_BUSY: begin
                    if (ram_rd_resp_valid & ram_rd_resp_ready) begin
                        if (~scfifo_rd_data_empty & ~scfifo_rd_resp_empty) begin
                            ram_rd_resp_valid <= 1'b1;
                        end
                        else begin
                            ram_rd_resp_valid <= 1'b0;
                        end
                    end
                end
            endcase
        end
    end

    DDR3_Memory_Interface_Top DDR3_Memory_Interface (
        .clk             (clk_bus),
        .memory_clk      (memory_clk),
        .pll_lock        (pll_lock),
        .rst_n           (resetn),
        .cmd_ready       (app_cmd_ready),
        .cmd             (init_model_complete ? {2'b0, app_cmd}     : 3'b000),
        .cmd_en          (init_model_complete ? app_cmd_en          : ml_app_cmd_en),
        .addr            (init_model_complete ? app_cmd_addr        : ml_app_addr),
        .wr_data_rdy     (app_cmd_wr_ready),
        .wr_data         (init_model_complete ? app_cmd_wr_data     : ml_app_wdf_data),
        .wr_data_en      (init_model_complete ? app_cmd_wr_en       : ml_app_wdf_wren),
        .wr_data_end     (1'b1), // 1:4 mode
        .wr_data_mask    (init_model_complete ? app_cmd_wr_strb     : ml_app_wdf_mask),
        .rd_data         (app_rd_resp_data),
        .rd_data_valid   (app_rd_resp_valid),
        .rd_data_end     (),
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


endmodule