`timescale 1ns / 1ps
`default_nettype none

/*
 * AXI4 RAM read/write interface
 */
module axi_ram_wr_rd_if #
(
    // Width of data bus in bits
    parameter DATA_WIDTH = 32,
    // Width of address bus in bits
    parameter ADDR_WIDTH = 16,
    // Width of wstrb (width of data bus in words)
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    // Width of ID signal
    parameter ID_WIDTH = 8,
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
    input  wire                     rst,

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

    /*
     * RAM interface
     */
    output wire [ID_WIDTH-1:0]      ram_cmd_id,
    output wire [ADDR_WIDTH-1:0]    ram_cmd_addr,
    output wire                     ram_cmd_lock,
    output wire [3:0]               ram_cmd_cache,
    output wire [2:0]               ram_cmd_prot,
    output wire [3:0]               ram_cmd_qos,
    output wire [3:0]               ram_cmd_region,
    output wire [AUSER_WIDTH-1:0]   ram_cmd_auser,
    output wire [DATA_WIDTH-1:0]    ram_cmd_wr_data,
    output wire [STRB_WIDTH-1:0]    ram_cmd_wr_strb,
    output wire [WUSER_WIDTH-1:0]   ram_cmd_wr_user,
    output wire                     ram_cmd_wr_en,
    output wire                     ram_cmd_rd_en,
    output wire                     ram_cmd_last,
    input  wire                     ram_cmd_ready,
    input  wire [ID_WIDTH-1:0]      ram_rd_resp_id,
    input  wire [DATA_WIDTH-1:0]    ram_rd_resp_data,
    input  wire                     ram_rd_resp_last,
    input  wire [RUSER_WIDTH-1:0]   ram_rd_resp_user,
    input  wire                     ram_rd_resp_valid,
    output wire                     ram_rd_resp_ready
);


wire [ID_WIDTH-1:0]      ram_wr_cmd_id;
wire [ADDR_WIDTH-1:0]    ram_wr_cmd_addr;
wire                     ram_wr_cmd_lock;
wire [3:0]               ram_wr_cmd_cache;
wire [2:0]               ram_wr_cmd_prot;
wire [3:0]               ram_wr_cmd_qos;
wire [3:0]               ram_wr_cmd_region;
wire [AWUSER_WIDTH-1:0]  ram_wr_cmd_auser;
wire                     ram_wr_cmd_en;
wire                     ram_wr_cmd_last;
wire                     ram_wr_cmd_ready;

wire [ID_WIDTH-1:0]      ram_rd_cmd_id;
wire [ADDR_WIDTH-1:0]    ram_rd_cmd_addr;
wire                     ram_rd_cmd_lock;
wire [3:0]               ram_rd_cmd_cache;
wire [2:0]               ram_rd_cmd_prot;
wire [3:0]               ram_rd_cmd_qos;
wire [3:0]               ram_rd_cmd_region;
wire [AWUSER_WIDTH-1:0]  ram_rd_cmd_auser;
wire                     ram_rd_cmd_en;
wire                     ram_rd_cmd_last;
wire                     ram_rd_cmd_ready;

axi_ram_wr_if #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH),
    .STRB_WIDTH(STRB_WIDTH),
    .ID_WIDTH(ID_WIDTH),
    .AWUSER_ENABLE(AWUSER_ENABLE),
    .AWUSER_WIDTH(AWUSER_WIDTH),
    .WUSER_ENABLE(WUSER_ENABLE),
    .WUSER_WIDTH(WUSER_WIDTH),
    .BUSER_ENABLE(BUSER_ENABLE),
    .BUSER_WIDTH(BUSER_WIDTH)
)
axi_ram_wr_if_inst (
    .clk(clk),
    .rst(rst),
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
    .ram_wr_cmd_id(ram_wr_cmd_id),
    .ram_wr_cmd_addr(ram_wr_cmd_addr),
    .ram_wr_cmd_lock(ram_wr_cmd_lock),
    .ram_wr_cmd_cache(ram_wr_cmd_cache),
    .ram_wr_cmd_prot(ram_wr_cmd_prot),
    .ram_wr_cmd_qos(ram_wr_cmd_qos),
    .ram_wr_cmd_region(ram_wr_cmd_region),
    .ram_wr_cmd_auser(ram_wr_cmd_auser),
    .ram_wr_cmd_data(ram_cmd_wr_data),
    .ram_wr_cmd_strb(ram_cmd_wr_strb),
    .ram_wr_cmd_user(ram_cmd_wr_user),
    .ram_wr_cmd_en(ram_wr_cmd_en),
    .ram_wr_cmd_last(ram_wr_cmd_last),
    .ram_wr_cmd_ready(ram_wr_cmd_ready)
);

axi_ram_rd_if #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH),
    .STRB_WIDTH(STRB_WIDTH),
    .ID_WIDTH(ID_WIDTH),
    .ARUSER_ENABLE(ARUSER_ENABLE),
    .ARUSER_WIDTH(ARUSER_WIDTH),
    .RUSER_ENABLE(RUSER_ENABLE),
    .RUSER_WIDTH(RUSER_WIDTH),
    .PIPELINE_OUTPUT(PIPELINE_OUTPUT)
)
axi_ram_rd_if_inst (
    .clk(clk),
    .rst(rst),
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
    .ram_rd_cmd_id(ram_rd_cmd_id),
    .ram_rd_cmd_addr(ram_rd_cmd_addr),
    .ram_rd_cmd_lock(ram_rd_cmd_lock),
    .ram_rd_cmd_cache(ram_rd_cmd_cache),
    .ram_rd_cmd_prot(ram_rd_cmd_prot),
    .ram_rd_cmd_qos(ram_rd_cmd_qos),
    .ram_rd_cmd_region(ram_rd_cmd_region),
    .ram_rd_cmd_auser(ram_rd_cmd_auser),
    .ram_rd_cmd_en(ram_rd_cmd_en),
    .ram_rd_cmd_last(ram_rd_cmd_last),
    .ram_rd_cmd_ready(ram_rd_cmd_ready),
    .ram_rd_resp_id(ram_rd_resp_id),
    .ram_rd_resp_data(ram_rd_resp_data),
    .ram_rd_resp_last(ram_rd_resp_last),
    .ram_rd_resp_user(ram_rd_resp_user),
    .ram_rd_resp_valid(ram_rd_resp_valid),
    .ram_rd_resp_ready(ram_rd_resp_ready)
);

// arbitration
reg read_eligible;
reg write_eligible;

reg write_en;
reg read_en;

reg last_read_reg = 1'b0, last_read_next;
reg transaction_reg = 1'b0, transaction_next;

assign ram_cmd_wr_en = write_en;
assign ram_cmd_rd_en = read_en;

assign ram_cmd_id     = ram_cmd_rd_en ? ram_rd_cmd_id     : ram_wr_cmd_id;
assign ram_cmd_addr   = ram_cmd_rd_en ? ram_rd_cmd_addr   : ram_wr_cmd_addr;
assign ram_cmd_lock   = ram_cmd_rd_en ? ram_rd_cmd_lock   : ram_wr_cmd_lock;
assign ram_cmd_cache  = ram_cmd_rd_en ? ram_rd_cmd_cache  : ram_wr_cmd_cache;
assign ram_cmd_prot   = ram_cmd_rd_en ? ram_rd_cmd_prot   : ram_wr_cmd_prot;
assign ram_cmd_qos    = ram_cmd_rd_en ? ram_rd_cmd_qos    : ram_wr_cmd_qos;
assign ram_cmd_region = ram_cmd_rd_en ? ram_rd_cmd_region : ram_wr_cmd_region;
assign ram_cmd_auser  = ram_cmd_rd_en ? ram_rd_cmd_auser  : ram_wr_cmd_auser;
assign ram_cmd_last   = ram_cmd_rd_en ? ram_rd_cmd_last   : ram_wr_cmd_last;

assign ram_wr_cmd_ready = ram_cmd_ready && write_en;
assign ram_rd_cmd_ready = ram_cmd_ready && read_en;

always @* begin
    write_en = 1'b0;
    read_en = 1'b0;

    last_read_next = last_read_reg;
    transaction_next = transaction_reg;

    write_eligible = ram_wr_cmd_en && ram_cmd_ready;
    read_eligible = ram_rd_cmd_en && ram_cmd_ready;

    if (write_eligible && (!read_eligible || last_read_reg || (!INTERLEAVE && transaction_reg)) && (INTERLEAVE || !transaction_reg || !last_read_reg)) begin
        last_read_next = 1'b0;
        transaction_next = !ram_wr_cmd_last;

        write_en = 1'b1;
    end else if (read_eligible && (INTERLEAVE || !transaction_reg || last_read_reg)) begin
        last_read_next = 1'b1;
        transaction_next = !ram_rd_cmd_last;

        read_en = 1'b1;
    end
end

always @(posedge clk) begin
    if (rst) begin
        last_read_reg <= 1'b0;
        transaction_reg <= 1'b0;
    end else begin
        last_read_reg <= last_read_next;
        transaction_reg <= transaction_next;
    end
end

endmodule


/*
 * AXI4 RAM write interface
 */
module axi_ram_wr_if #
(
    // Width of data bus in bits
    parameter DATA_WIDTH = 32,
    // Width of address bus in bits
    parameter ADDR_WIDTH = 16,
    // Width of wstrb (width of data bus in words)
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    // Width of ID signal
    parameter ID_WIDTH = 8,
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
    parameter BUSER_WIDTH = 1
)
(
    input  wire                     clk,
    input  wire                     rst,

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

    /*
     * RAM interface
     */
    output wire [ID_WIDTH-1:0]      ram_wr_cmd_id,
    output wire [ADDR_WIDTH-1:0]    ram_wr_cmd_addr,
    output wire                     ram_wr_cmd_lock,
    output wire [3:0]               ram_wr_cmd_cache,
    output wire [2:0]               ram_wr_cmd_prot,
    output wire [3:0]               ram_wr_cmd_qos,
    output wire [3:0]               ram_wr_cmd_region,
    output wire [AWUSER_WIDTH-1:0]  ram_wr_cmd_auser,
    output wire [DATA_WIDTH-1:0]    ram_wr_cmd_data,
    output wire [STRB_WIDTH-1:0]    ram_wr_cmd_strb,
    output wire [WUSER_WIDTH-1:0]   ram_wr_cmd_user,
    output wire                     ram_wr_cmd_en,
    output wire                     ram_wr_cmd_last,
    input  wire                     ram_wr_cmd_ready
);

parameter VALID_ADDR_WIDTH = ADDR_WIDTH - $clog2(STRB_WIDTH);
parameter WORD_WIDTH = STRB_WIDTH;
parameter WORD_SIZE = DATA_WIDTH/WORD_WIDTH;

// bus width assertions
initial begin
    if (WORD_SIZE * STRB_WIDTH != DATA_WIDTH) begin
        $error("Error: AXI data width not evenly divisble (instance %m)");
        $finish;
    end

    if (2**$clog2(WORD_WIDTH) != WORD_WIDTH) begin
        $error("Error: AXI word width must be even power of two (instance %m)");
        $finish;
    end
end

localparam [1:0]
    STATE_IDLE = 2'd0,
    STATE_BURST = 2'd1,
    STATE_RESP = 2'd2;

reg [1:0] state_reg = STATE_IDLE, state_next;

reg [ID_WIDTH-1:0] write_id_reg = {ID_WIDTH{1'b0}}, write_id_next;
reg [ADDR_WIDTH-1:0] write_addr_reg = {ADDR_WIDTH{1'b0}}, write_addr_next;
reg write_lock_reg = 1'b0, write_lock_next;
reg [3:0] write_cache_reg = 4'd0, write_cache_next;
reg [2:0] write_prot_reg = 3'd0, write_prot_next;
reg [3:0] write_qos_reg = 4'd0, write_qos_next;
reg [3:0] write_region_reg = 4'd0, write_region_next;
reg [AWUSER_WIDTH-1:0] write_awuser_reg = {AWUSER_WIDTH{1'b0}}, write_awuser_next;
reg write_addr_valid_reg = 1'b0, write_addr_valid_next;
reg write_last_reg = 1'b0, write_last_next;
reg [7:0] write_count_reg = 8'd0, write_count_next;
reg [2:0] write_size_reg = 3'd0, write_size_next;
reg [1:0] write_burst_reg = 2'd0, write_burst_next;

reg s_axi_awready_reg = 1'b0, s_axi_awready_next;
reg [ID_WIDTH-1:0] s_axi_bid_reg = {ID_WIDTH{1'b0}}, s_axi_bid_next;
reg s_axi_bvalid_reg = 1'b0, s_axi_bvalid_next;

assign s_axi_awready = s_axi_awready_reg;
assign s_axi_wready = write_addr_valid_reg && ram_wr_cmd_ready;
assign s_axi_bid = s_axi_bid_reg;
assign s_axi_bresp = 2'b00;
assign s_axi_buser = {BUSER_WIDTH{1'b0}};
assign s_axi_bvalid = s_axi_bvalid_reg;

assign ram_wr_cmd_id = write_id_reg;
assign ram_wr_cmd_addr = write_addr_reg;
assign ram_wr_cmd_lock = write_lock_reg;
assign ram_wr_cmd_cache = write_cache_reg;
assign ram_wr_cmd_prot = write_prot_reg;
assign ram_wr_cmd_qos = write_qos_reg;
assign ram_wr_cmd_region = write_region_reg;
assign ram_wr_cmd_auser = AWUSER_ENABLE ? write_awuser_reg : {AWUSER_WIDTH{1'b0}};
assign ram_wr_cmd_data = s_axi_wdata;
assign ram_wr_cmd_strb = s_axi_wstrb;
assign ram_wr_cmd_user = WUSER_ENABLE ? s_axi_wuser : {WUSER_WIDTH{1'b0}};
assign ram_wr_cmd_en = write_addr_valid_reg && s_axi_wvalid;
assign ram_wr_cmd_last = write_last_reg;

always @* begin
    state_next = STATE_IDLE;

    write_id_next = write_id_reg;
    write_addr_next = write_addr_reg;
    write_lock_next = write_lock_reg;
    write_cache_next = write_cache_reg;
    write_prot_next = write_prot_reg;
    write_qos_next = write_qos_reg;
    write_region_next = write_region_reg;
    write_awuser_next = write_awuser_reg;
    write_addr_valid_next = write_addr_valid_reg;
    write_last_next = write_last_reg;
    write_count_next = write_count_reg;
    write_size_next = write_size_reg;
    write_burst_next = write_burst_reg;

    s_axi_awready_next = 1'b0;
    s_axi_bid_next = s_axi_bid_reg;
    s_axi_bvalid_next = s_axi_bvalid_reg && !s_axi_bready;

    case (state_reg)
        STATE_IDLE: begin
            s_axi_awready_next = 1'b1;

            if (s_axi_awready && s_axi_awvalid) begin
                write_id_next = s_axi_awid;
                write_addr_next = s_axi_awaddr;
                write_lock_next = s_axi_awlock;
                write_cache_next = s_axi_awcache;
                write_prot_next = s_axi_awprot;
                write_qos_next = s_axi_awqos;
                write_region_next = s_axi_awregion;
                write_awuser_next = s_axi_awuser;
                write_count_next = s_axi_awlen;
                write_size_next = s_axi_awsize < $clog2(STRB_WIDTH) ? s_axi_awsize : $clog2(STRB_WIDTH);
                write_burst_next = s_axi_awburst;

                write_addr_valid_next = 1'b1;
                s_axi_awready_next = 1'b0;
                if (s_axi_awlen > 0) begin
                    write_last_next = 1'b0;
                end else begin
                    write_last_next = 1'b1;
                end
                state_next = STATE_BURST;
            end else begin
                state_next = STATE_IDLE;
            end
        end
        STATE_BURST: begin
            if (s_axi_wready && s_axi_wvalid) begin
                if (write_burst_reg != 2'b00) begin
                    write_addr_next = write_addr_reg + (1 << write_size_reg);
                end
                write_count_next = write_count_reg - 1;
                write_last_next = write_count_next == 0;
                if (write_count_reg > 0) begin
                    write_addr_valid_next = 1'b1;
                    state_next = STATE_BURST;
                end else begin
                    write_addr_valid_next = 1'b0;
                    if (s_axi_bready || !s_axi_bvalid) begin
                        s_axi_bid_next = write_id_reg;
                        s_axi_bvalid_next = 1'b1;
                        s_axi_awready_next = 1'b1;
                        state_next = STATE_IDLE;
                    end else begin
                        state_next = STATE_RESP;
                    end
                end
            end else begin
                state_next = STATE_BURST;
            end
        end
        STATE_RESP: begin
            if (s_axi_bready || !s_axi_bvalid) begin
                s_axi_bid_next = write_id_reg;
                s_axi_bvalid_next = 1'b1;
                s_axi_awready_next = 1'b1;
                state_next = STATE_IDLE;
            end else begin
                state_next = STATE_RESP;
            end
        end
    endcase
end

always @(posedge clk) begin
    state_reg <= state_next;

    write_id_reg <= write_id_next;
    write_addr_reg <= write_addr_next;
    write_lock_reg <= write_lock_next;
    write_cache_reg <= write_cache_next;
    write_prot_reg <= write_prot_next;
    write_qos_reg <= write_qos_next;
    write_region_reg <= write_region_next;
    write_awuser_reg <= write_awuser_next;
    write_addr_valid_reg <= write_addr_valid_next;
    write_last_reg <= write_last_next;
    write_count_reg <= write_count_next;
    write_size_reg <= write_size_next;
    write_burst_reg <= write_burst_next;

    s_axi_awready_reg <= s_axi_awready_next;
    s_axi_bid_reg <= s_axi_bid_next;
    s_axi_bvalid_reg <= s_axi_bvalid_next;

    if (rst) begin
        state_reg <= STATE_IDLE;

        write_addr_valid_reg <= 1'b0;

        s_axi_awready_reg <= 1'b0;
        s_axi_bvalid_reg <= 1'b0;
    end
end

endmodule


/*
 * AXI4 RAM read interface
 */
module axi_ram_rd_if #
(
    // Width of data bus in bits
    parameter DATA_WIDTH = 32,
    // Width of address bus in bits
    parameter ADDR_WIDTH = 16,
    // Width of wstrb (width of data bus in words)
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    // Width of ID signal
    parameter ID_WIDTH = 8,
    // Propagate aruser signal
    parameter ARUSER_ENABLE = 0,
    // Width of aruser signal
    parameter ARUSER_WIDTH = 1,
    // Propagate ruser signal
    parameter RUSER_ENABLE = 0,
    // Width of ruser signal
    parameter RUSER_WIDTH = 1,
    // Extra pipeline register on output
    parameter PIPELINE_OUTPUT = 0
)
(
    input  wire                     clk,
    input  wire                     rst,

    /*
     * AXI slave interface
     */
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

    /*
     * RAM interface
     */
    output wire [ID_WIDTH-1:0]      ram_rd_cmd_id,
    output wire [ADDR_WIDTH-1:0]    ram_rd_cmd_addr,
    output wire                     ram_rd_cmd_lock,
    output wire [3:0]               ram_rd_cmd_cache,
    output wire [2:0]               ram_rd_cmd_prot,
    output wire [3:0]               ram_rd_cmd_qos,
    output wire [3:0]               ram_rd_cmd_region,
    output wire [ARUSER_WIDTH-1:0]  ram_rd_cmd_auser,
    output wire                     ram_rd_cmd_en,
    output wire                     ram_rd_cmd_last,
    input  wire                     ram_rd_cmd_ready,
    input  wire [ID_WIDTH-1:0]      ram_rd_resp_id,
    input  wire [DATA_WIDTH-1:0]    ram_rd_resp_data,
    input  wire                     ram_rd_resp_last,
    input  wire [RUSER_WIDTH-1:0]   ram_rd_resp_user,
    input  wire                     ram_rd_resp_valid,
    output wire                     ram_rd_resp_ready
);

parameter VALID_ADDR_WIDTH = ADDR_WIDTH - $clog2(STRB_WIDTH);
parameter WORD_WIDTH = STRB_WIDTH;
parameter WORD_SIZE = DATA_WIDTH/WORD_WIDTH;

// bus width assertions
initial begin
    if (WORD_SIZE * STRB_WIDTH != DATA_WIDTH) begin
        $error("Error: AXI data width not evenly divisble (instance %m)");
        $finish;
    end

    if (2**$clog2(WORD_WIDTH) != WORD_WIDTH) begin
        $error("Error: AXI word width must be even power of two (instance %m)");
        $finish;
    end
end

localparam [0:0]
    STATE_IDLE = 1'd0,
    STATE_BURST = 1'd1;

reg [0:0] state_reg = STATE_IDLE, state_next;

reg [ID_WIDTH-1:0] read_id_reg = {ID_WIDTH{1'b0}}, read_id_next;
reg [ADDR_WIDTH-1:0] read_addr_reg = {ADDR_WIDTH{1'b0}}, read_addr_next;
reg read_lock_reg = 1'b0, read_lock_next;
reg [3:0] read_cache_reg = 4'd0, read_cache_next;
reg [2:0] read_prot_reg = 3'd0, read_prot_next;
reg [3:0] read_qos_reg = 4'd0, read_qos_next;
reg [3:0] read_region_reg = 4'd0, read_region_next;
reg [ARUSER_WIDTH-1:0] read_aruser_reg = {ARUSER_WIDTH{1'b0}}, read_aruser_next;
reg read_addr_valid_reg = 1'b0, read_addr_valid_next;
reg read_last_reg = 1'b0, read_last_next;
reg [7:0] read_count_reg = 8'd0, read_count_next;
reg [2:0] read_size_reg = 3'd0, read_size_next;
reg [1:0] read_burst_reg = 2'd0, read_burst_next;

reg s_axi_arready_reg = 1'b0, s_axi_arready_next;
reg [ID_WIDTH-1:0] s_axi_rid_pipe_reg = {ID_WIDTH{1'b0}};
reg [DATA_WIDTH-1:0] s_axi_rdata_pipe_reg = {DATA_WIDTH{1'b0}};
reg s_axi_rlast_pipe_reg = 1'b0;
reg [RUSER_WIDTH-1:0] s_axi_ruser_pipe_reg = {RUSER_WIDTH{1'b0}};
reg s_axi_rvalid_pipe_reg = 1'b0;

assign s_axi_arready = s_axi_arready_reg;
assign s_axi_rid = PIPELINE_OUTPUT ? s_axi_rid_pipe_reg : ram_rd_resp_id;
assign s_axi_rdata = PIPELINE_OUTPUT ? s_axi_rdata_pipe_reg : ram_rd_resp_data;
assign s_axi_rresp = 2'b00;
assign s_axi_rlast = PIPELINE_OUTPUT ? s_axi_rlast_pipe_reg : ram_rd_resp_last;
assign s_axi_ruser = PIPELINE_OUTPUT ? s_axi_ruser_pipe_reg : ram_rd_resp_user;
assign s_axi_rvalid = PIPELINE_OUTPUT ? s_axi_rvalid_pipe_reg : ram_rd_resp_valid;

assign ram_rd_cmd_id = read_id_reg;
assign ram_rd_cmd_addr = read_addr_reg;
assign ram_rd_cmd_lock = read_lock_reg;
assign ram_rd_cmd_cache = read_cache_reg;
assign ram_rd_cmd_prot = read_prot_reg;
assign ram_rd_cmd_qos = read_qos_reg;
assign ram_rd_cmd_region = read_region_reg;
assign ram_rd_cmd_auser = ARUSER_ENABLE ? read_aruser_reg : {ARUSER_WIDTH{1'b0}};
assign ram_rd_cmd_en = read_addr_valid_reg;
assign ram_rd_cmd_last = read_last_reg;

assign ram_rd_resp_ready = s_axi_rready || (PIPELINE_OUTPUT && !s_axi_rvalid_pipe_reg);

always @* begin
    state_next = STATE_IDLE;

    read_id_next = read_id_reg;
    read_addr_next = read_addr_reg;
    read_lock_next = read_lock_reg;
    read_cache_next = read_cache_reg;
    read_prot_next = read_prot_reg;
    read_qos_next = read_qos_reg;
    read_region_next = read_region_reg;
    read_aruser_next = read_aruser_reg;
    read_addr_valid_next = read_addr_valid_reg && !ram_rd_cmd_ready;
    read_last_next = read_last_reg;
    read_count_next = read_count_reg;
    read_size_next = read_size_reg;
    read_burst_next = read_burst_reg;

    s_axi_arready_next = 1'b0;

    case (state_reg)
        STATE_IDLE: begin
            s_axi_arready_next = 1'b1;

            if (s_axi_arready && s_axi_arvalid) begin
                read_id_next = s_axi_arid;
                read_addr_next = s_axi_araddr;
                read_lock_next = s_axi_arlock;
                read_cache_next = s_axi_arcache;
                read_prot_next = s_axi_arprot;
                read_qos_next = s_axi_arqos;
                read_region_next = s_axi_arregion;
                read_aruser_next = s_axi_aruser;
                read_count_next = s_axi_arlen;
                read_size_next = s_axi_arsize < $clog2(STRB_WIDTH) ? s_axi_arsize : $clog2(STRB_WIDTH);
                read_burst_next = s_axi_arburst;

                s_axi_arready_next = 1'b0;
                read_last_next = read_count_next == 0;
                read_addr_valid_next = 1'b1;
                state_next = STATE_BURST;
            end else begin
                state_next = STATE_IDLE;
            end
        end
        STATE_BURST: begin
            if (ram_rd_cmd_ready && ram_rd_cmd_en) begin
                if (read_burst_reg != 2'b00) begin
                    read_addr_next = read_addr_reg + (1 << read_size_reg);
                end
                read_count_next = read_count_reg - 1;
                read_last_next = read_count_next == 0;
                if (read_count_reg > 0) begin
                    read_addr_valid_next = 1'b1;
                    state_next = STATE_BURST;
                end else begin
                    s_axi_arready_next = 1'b1;
                    state_next = STATE_IDLE;
                end
            end else begin
                state_next = STATE_BURST;
            end
        end
    endcase
end

always @(posedge clk) begin
    state_reg <= state_next;

    read_id_reg <= read_id_next;
    read_addr_reg <= read_addr_next;
    read_lock_reg <= read_lock_next;
    read_cache_reg <= read_cache_next;
    read_prot_reg <= read_prot_next;
    read_qos_reg <= read_qos_next;
    read_region_reg <= read_region_next;
    read_aruser_reg <= read_aruser_next;
    read_addr_valid_reg <= read_addr_valid_next;
    read_last_reg <= read_last_next;
    read_count_reg <= read_count_next;
    read_size_reg <= read_size_next;
    read_burst_reg <= read_burst_next;

    s_axi_arready_reg <= s_axi_arready_next;

    if (!s_axi_rvalid_pipe_reg || s_axi_rready) begin
        s_axi_rid_pipe_reg <= ram_rd_resp_id;
        s_axi_rdata_pipe_reg <= ram_rd_resp_data;
        s_axi_rlast_pipe_reg <= ram_rd_resp_last;
        s_axi_ruser_pipe_reg <= ram_rd_resp_user;
        s_axi_rvalid_pipe_reg <= ram_rd_resp_valid;
    end

    if (rst) begin
        state_reg <= STATE_IDLE;

        read_addr_valid_reg <= 1'b0;

        s_axi_arready_reg <= 1'b0;
        s_axi_rvalid_pipe_reg <= 1'b0;
    end
end

endmodule
