/*

Copyright (c) 2019 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps

/*
 * AXI4 to AXI4-Lite adapter
 */
module axi_axil_adapter #
(
    // Width of address bus in bits
    parameter ADDR_WIDTH = 32,
    // Width of input (slave) AXI interface data bus in bits
    parameter AXI_DATA_WIDTH = 32,
    // Width of input (slave) AXI interface wstrb (width of data bus in words)
    parameter AXI_STRB_WIDTH = (AXI_DATA_WIDTH/8),
    // Width of AXI ID signal
    parameter AXI_ID_WIDTH = 8,
    // Width of output (master) AXI lite interface data bus in bits
    parameter AXIL_DATA_WIDTH = 32,
    // Width of output (master) AXI lite interface wstrb (width of data bus in words)
    parameter AXIL_STRB_WIDTH = (AXIL_DATA_WIDTH/8),
    // When adapting to a wider bus, re-pack full-width burst instead of passing through narrow burst if possible
    parameter CONVERT_BURST = 0,
    // When adapting to a wider bus, re-pack all bursts instead of passing through narrow burst if possible
    parameter CONVERT_NARROW_BURST = 0
)
(
    input  wire                        clk,
    input  wire                        rst,

    /*
     * AXI slave interface
     */
    input  wire [AXI_ID_WIDTH-1:0]     s_axi_awid,
    input  wire [ADDR_WIDTH-1:0]       s_axi_awaddr,
    input  wire [7:0]                  s_axi_awlen,
    input  wire [2:0]                  s_axi_awsize,
    input  wire [1:0]                  s_axi_awburst,
    input  wire                        s_axi_awlock,
    input  wire [3:0]                  s_axi_awcache,
    input  wire [2:0]                  s_axi_awprot,
    input  wire                        s_axi_awvalid,
    output wire                        s_axi_awready,
    input  wire [AXI_DATA_WIDTH-1:0]   s_axi_wdata,
    input  wire [AXI_STRB_WIDTH-1:0]   s_axi_wstrb,
    input  wire                        s_axi_wlast,
    input  wire                        s_axi_wvalid,
    output wire                        s_axi_wready,
    output wire [AXI_ID_WIDTH-1:0]     s_axi_bid,
    output wire [1:0]                  s_axi_bresp,
    output wire                        s_axi_bvalid,
    input  wire                        s_axi_bready,
    input  wire [AXI_ID_WIDTH-1:0]     s_axi_arid,
    input  wire [ADDR_WIDTH-1:0]       s_axi_araddr,
    input  wire [7:0]                  s_axi_arlen,
    input  wire [2:0]                  s_axi_arsize,
    input  wire [1:0]                  s_axi_arburst,
    input  wire                        s_axi_arlock,
    input  wire [3:0]                  s_axi_arcache,
    input  wire [2:0]                  s_axi_arprot,
    input  wire                        s_axi_arvalid,
    output wire                        s_axi_arready,
    output wire [AXI_ID_WIDTH-1:0]     s_axi_rid,
    output wire [AXI_DATA_WIDTH-1:0]   s_axi_rdata,
    output wire [1:0]                  s_axi_rresp,
    output wire                        s_axi_rlast,
    output wire                        s_axi_rvalid,
    input  wire                        s_axi_rready,

    /*
     * AXI lite master interface
     */
    output wire [ADDR_WIDTH-1:0]       m_axil_awaddr,
    output wire [2:0]                  m_axil_awprot,
    output wire                        m_axil_awvalid,
    input  wire                        m_axil_awready,
    output wire [AXIL_DATA_WIDTH-1:0]  m_axil_wdata,
    output wire [AXIL_STRB_WIDTH-1:0]  m_axil_wstrb,
    output wire                        m_axil_wvalid,
    input  wire                        m_axil_wready,
    input  wire [1:0]                  m_axil_bresp,
    input  wire                        m_axil_bvalid,
    output wire                        m_axil_bready,
    output wire [ADDR_WIDTH-1:0]       m_axil_araddr,
    output wire [2:0]                  m_axil_arprot,
    output wire                        m_axil_arvalid,
    input  wire                        m_axil_arready,
    input  wire [AXIL_DATA_WIDTH-1:0]  m_axil_rdata,
    input  wire [1:0]                  m_axil_rresp,
    input  wire                        m_axil_rvalid,
    output wire                        m_axil_rready
);


axi_axil_adapter_wr #(
    .ADDR_WIDTH(ADDR_WIDTH),
    .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
    .AXI_STRB_WIDTH(AXI_STRB_WIDTH),
    .AXI_ID_WIDTH(AXI_ID_WIDTH),
    .AXIL_DATA_WIDTH(AXIL_DATA_WIDTH),
    .AXIL_STRB_WIDTH(AXIL_STRB_WIDTH),
    .CONVERT_BURST(CONVERT_BURST),
    .CONVERT_NARROW_BURST(CONVERT_NARROW_BURST)
)
axi_axil_adapter_wr_inst (
    .clk(clk),
    .rst(rst),

    /*
     * AXI slave interface
     */
    .s_axi_awid(s_axi_awid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awlen(s_axi_awlen),
    .s_axi_awsize(s_axi_awsize),
    .s_axi_awburst(s_axi_awburst),
    .s_axi_awlock(s_axi_awlock),
    .s_axi_awcache(s_axi_awcache),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wlast(s_axi_wlast),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bid(s_axi_bid),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),

    /*
     * AXI lite master interface
     */
    .m_axil_awaddr(m_axil_awaddr),
    .m_axil_awprot(m_axil_awprot),
    .m_axil_awvalid(m_axil_awvalid),
    .m_axil_awready(m_axil_awready),
    .m_axil_wdata(m_axil_wdata),
    .m_axil_wstrb(m_axil_wstrb),
    .m_axil_wvalid(m_axil_wvalid),
    .m_axil_wready(m_axil_wready),
    .m_axil_bresp(m_axil_bresp),
    .m_axil_bvalid(m_axil_bvalid),
    .m_axil_bready(m_axil_bready)
);

axi_axil_adapter_rd #(
    .ADDR_WIDTH(ADDR_WIDTH),
    .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
    .AXI_STRB_WIDTH(AXI_STRB_WIDTH),
    .AXI_ID_WIDTH(AXI_ID_WIDTH),
    .AXIL_DATA_WIDTH(AXIL_DATA_WIDTH),
    .AXIL_STRB_WIDTH(AXIL_STRB_WIDTH),
    .CONVERT_BURST(CONVERT_BURST),
    .CONVERT_NARROW_BURST(CONVERT_NARROW_BURST)
)
axi_axil_adapter_rd_inst (
    .clk(clk),
    .rst(rst),

    /*
     * AXI slave interface
     */
    .s_axi_arid(s_axi_arid),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arlen(s_axi_arlen),
    .s_axi_arsize(s_axi_arsize),
    .s_axi_arburst(s_axi_arburst),
    .s_axi_arlock(s_axi_arlock),
    .s_axi_arcache(s_axi_arcache),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rid(s_axi_rid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rlast(s_axi_rlast),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),

    /*
     * AXI lite master interface
     */
    .m_axil_araddr(m_axil_araddr),
    .m_axil_arprot(m_axil_arprot),
    .m_axil_arvalid(m_axil_arvalid),
    .m_axil_arready(m_axil_arready),
    .m_axil_rdata(m_axil_rdata),
    .m_axil_rresp(m_axil_rresp),
    .m_axil_rvalid(m_axil_rvalid),
    .m_axil_rready(m_axil_rready)
);

endmodule



/*
 * AXI4 to AXI4-Lite adapter (read)
 */
module axi_axil_adapter_rd #
(
    // Width of address bus in bits
    parameter ADDR_WIDTH = 32,
    // Width of input (slave) AXI interface data bus in bits
    parameter AXI_DATA_WIDTH = 32,
    // Width of input (slave) AXI interface wstrb (width of data bus in words)
    parameter AXI_STRB_WIDTH = (AXI_DATA_WIDTH/8),
    // Width of AXI ID signal
    parameter AXI_ID_WIDTH = 8,
    // Width of output (master) AXI lite interface data bus in bits
    parameter AXIL_DATA_WIDTH = 32,
    // Width of output (master) AXI lite interface wstrb (width of data bus in words)
    parameter AXIL_STRB_WIDTH = (AXIL_DATA_WIDTH/8),
    // When adapting to a wider bus, re-pack full-width burst instead of passing through narrow burst if possible
    parameter CONVERT_BURST = 1,
    // When adapting to a wider bus, re-pack all bursts instead of passing through narrow burst if possible
    parameter CONVERT_NARROW_BURST = 0
)
(
    input  wire                        clk,
    input  wire                        rst,

    /*
     * AXI slave interface
     */
    input  wire [AXI_ID_WIDTH-1:0]     s_axi_arid,
    input  wire [ADDR_WIDTH-1:0]       s_axi_araddr,
    input  wire [7:0]                  s_axi_arlen,
    input  wire [2:0]                  s_axi_arsize,
    input  wire [1:0]                  s_axi_arburst,
    input  wire                        s_axi_arlock,
    input  wire [3:0]                  s_axi_arcache,
    input  wire [2:0]                  s_axi_arprot,
    input  wire                        s_axi_arvalid,
    output wire                        s_axi_arready,
    output wire [AXI_ID_WIDTH-1:0]     s_axi_rid,
    output wire [AXI_DATA_WIDTH-1:0]   s_axi_rdata,
    output wire [1:0]                  s_axi_rresp,
    output wire                        s_axi_rlast,
    output wire                        s_axi_rvalid,
    input  wire                        s_axi_rready,

    /*
     * AXI lite master interface
     */
    output wire [ADDR_WIDTH-1:0]       m_axil_araddr,
    output wire [2:0]                  m_axil_arprot,
    output wire                        m_axil_arvalid,
    input  wire                        m_axil_arready,
    input  wire [AXIL_DATA_WIDTH-1:0]  m_axil_rdata,
    input  wire [1:0]                  m_axil_rresp,
    input  wire                        m_axil_rvalid,
    output wire                        m_axil_rready
);

parameter AXI_ADDR_BIT_OFFSET = $clog2(AXI_STRB_WIDTH);
parameter AXIL_ADDR_BIT_OFFSET = $clog2(AXIL_STRB_WIDTH);
parameter AXI_WORD_WIDTH = AXI_STRB_WIDTH;
parameter AXIL_WORD_WIDTH = AXIL_STRB_WIDTH;
parameter AXI_WORD_SIZE = AXI_DATA_WIDTH/AXI_WORD_WIDTH;
parameter AXIL_WORD_SIZE = AXIL_DATA_WIDTH/AXIL_WORD_WIDTH;
parameter AXI_BURST_SIZE = $clog2(AXI_STRB_WIDTH);
parameter AXIL_BURST_SIZE = $clog2(AXIL_STRB_WIDTH);

// output bus is wider
parameter EXPAND = AXIL_STRB_WIDTH > AXI_STRB_WIDTH;
parameter DATA_WIDTH = EXPAND ? AXIL_DATA_WIDTH : AXI_DATA_WIDTH;
parameter STRB_WIDTH = EXPAND ? AXIL_STRB_WIDTH : AXI_STRB_WIDTH;
// required number of segments in wider bus
parameter SEGMENT_COUNT = EXPAND ? (AXIL_STRB_WIDTH / AXI_STRB_WIDTH) : (AXI_STRB_WIDTH / AXIL_STRB_WIDTH);
// data width and keep width per segment
parameter SEGMENT_DATA_WIDTH = DATA_WIDTH / SEGMENT_COUNT;
parameter SEGMENT_STRB_WIDTH = STRB_WIDTH / SEGMENT_COUNT;

// bus width assertions
initial begin
    if (AXI_WORD_SIZE * AXI_STRB_WIDTH != AXI_DATA_WIDTH) begin
        $error("Error: AXI slave interface data width not evenly divisble (instance %m)");
        $finish;
    end

    if (AXIL_WORD_SIZE * AXIL_STRB_WIDTH != AXIL_DATA_WIDTH) begin
        $error("Error: AXI lite master interface data width not evenly divisble (instance %m)");
        $finish;
    end

    if (AXI_WORD_SIZE != AXIL_WORD_SIZE) begin
        $error("Error: word size mismatch (instance %m)");
        $finish;
    end

    if (2**$clog2(AXI_WORD_WIDTH) != AXI_WORD_WIDTH) begin
        $error("Error: AXI slave interface word width must be even power of two (instance %m)");
        $finish;
    end

    if (2**$clog2(AXIL_WORD_WIDTH) != AXIL_WORD_WIDTH) begin
        $error("Error: AXI lite master interface word width must be even power of two (instance %m)");
        $finish;
    end
end

localparam [1:0]
    STATE_IDLE = 2'd0,
    STATE_DATA = 2'd1,
    STATE_DATA_READ = 2'd2,
    STATE_DATA_SPLIT = 2'd3;

reg [1:0] state_reg = STATE_IDLE, state_next;

reg [AXI_ID_WIDTH-1:0] id_reg = {AXI_ID_WIDTH{1'b0}}, id_next;
reg [ADDR_WIDTH-1:0] addr_reg = {ADDR_WIDTH{1'b0}}, addr_next;
reg [DATA_WIDTH-1:0] data_reg = {DATA_WIDTH{1'b0}}, data_next;
reg [1:0] resp_reg = 2'd0, resp_next;
reg [7:0] burst_reg = 8'd0, burst_next;
reg [2:0] burst_size_reg = 3'd0, burst_size_next;
reg [7:0] master_burst_reg = 8'd0, master_burst_next;
reg [2:0] master_burst_size_reg = 3'd0, master_burst_size_next;

reg s_axi_arready_reg = 1'b0, s_axi_arready_next;
reg [AXI_ID_WIDTH-1:0] s_axi_rid_reg = {AXI_ID_WIDTH{1'b0}}, s_axi_rid_next;
reg [AXI_DATA_WIDTH-1:0] s_axi_rdata_reg = {AXI_DATA_WIDTH{1'b0}}, s_axi_rdata_next;
reg [1:0] s_axi_rresp_reg = 2'd0, s_axi_rresp_next;
reg s_axi_rlast_reg = 1'b0, s_axi_rlast_next;
reg s_axi_rvalid_reg = 1'b0, s_axi_rvalid_next;

reg [ADDR_WIDTH-1:0] m_axil_araddr_reg = {ADDR_WIDTH{1'b0}}, m_axil_araddr_next;
reg [2:0] m_axil_arprot_reg = 3'd0, m_axil_arprot_next;
reg m_axil_arvalid_reg = 1'b0, m_axil_arvalid_next;
reg m_axil_rready_reg = 1'b0, m_axil_rready_next;

assign s_axi_arready = s_axi_arready_reg;
assign s_axi_rid = s_axi_rid_reg;
assign s_axi_rdata = s_axi_rdata_reg;
assign s_axi_rresp = s_axi_rresp_reg;
assign s_axi_rlast = s_axi_rlast_reg;
assign s_axi_rvalid = s_axi_rvalid_reg;

assign m_axil_araddr = m_axil_araddr_reg;
assign m_axil_arprot = m_axil_arprot_reg;
assign m_axil_arvalid = m_axil_arvalid_reg;
assign m_axil_rready = m_axil_rready_reg;

always @* begin
    state_next = STATE_IDLE;

    id_next = id_reg;
    addr_next = addr_reg;
    data_next = data_reg;
    resp_next = resp_reg;
    burst_next = burst_reg;
    burst_size_next = burst_size_reg;
    master_burst_next = master_burst_reg;
    master_burst_size_next = master_burst_size_reg;

    s_axi_arready_next = 1'b0;
    s_axi_rid_next = s_axi_rid_reg;
    s_axi_rdata_next = s_axi_rdata_reg;
    s_axi_rresp_next = s_axi_rresp_reg;
    s_axi_rlast_next = s_axi_rlast_reg;
    s_axi_rvalid_next = s_axi_rvalid_reg && !s_axi_rready;
    m_axil_araddr_next = m_axil_araddr_reg;
    m_axil_arprot_next = m_axil_arprot_reg;
    m_axil_arvalid_next = m_axil_arvalid_reg && !m_axil_arready;
    m_axil_rready_next = 1'b0;

    if (SEGMENT_COUNT == 1) begin
        // master output is same width; direct transfer with no splitting/merging
        case (state_reg)
            STATE_IDLE: begin
                // idle state; wait for new burst
                s_axi_arready_next = !m_axil_arvalid;

                if (s_axi_arready && s_axi_arvalid) begin
                    s_axi_arready_next = 1'b0;
                    id_next = s_axi_arid;
                    m_axil_araddr_next = s_axi_araddr;
                    addr_next = s_axi_araddr;
                    burst_next = s_axi_arlen;
                    burst_size_next = s_axi_arsize;
                    m_axil_arprot_next = s_axi_arprot;
                    m_axil_arvalid_next = 1'b1;
                    m_axil_rready_next = 1'b0;
                    state_next = STATE_DATA;
                end else begin
                    state_next = STATE_IDLE;
                end
            end
            STATE_DATA: begin
                // data state; transfer read data
                m_axil_rready_next = !s_axi_rvalid && !m_axil_arvalid;

                if (m_axil_rready && m_axil_rvalid) begin
                    s_axi_rid_next = id_reg;
                    s_axi_rdata_next = m_axil_rdata;
                    s_axi_rresp_next = m_axil_rresp;
                    s_axi_rlast_next = 1'b0;
                    s_axi_rvalid_next = 1'b1;
                    burst_next = burst_reg - 1;
                    addr_next = addr_reg + (1 << burst_size_reg);
                    if (burst_reg == 0) begin
                        // last data word, return to idle
                        m_axil_rready_next = 1'b0;
                        s_axi_rlast_next = 1'b1;
                        s_axi_arready_next = !m_axil_arvalid;
                        state_next = STATE_IDLE;
                    end else begin
                        // start new AXI lite read
                        m_axil_araddr_next = addr_next;
                        m_axil_arvalid_next = 1'b1;
                        m_axil_rready_next = 1'b0;
                        state_next = STATE_DATA;
                    end
                end else begin
                    state_next = STATE_DATA;
                end
            end
        endcase
    end else if (EXPAND) begin
        // master output is wider; split reads
        case (state_reg)
            STATE_IDLE: begin
                // idle state; wait for new burst
                s_axi_arready_next = !m_axil_arvalid;

                if (s_axi_arready && s_axi_arvalid) begin
                    s_axi_arready_next = 1'b0;
                    id_next = s_axi_arid;
                    m_axil_araddr_next = s_axi_araddr;
                    addr_next = s_axi_araddr;
                    burst_next = s_axi_arlen;
                    burst_size_next = s_axi_arsize;
                    if (CONVERT_BURST && s_axi_arcache[1] && (CONVERT_NARROW_BURST || s_axi_arsize == AXI_BURST_SIZE)) begin
                        // split reads
                        // require CONVERT_BURST and arcache[1] set
                        master_burst_size_next = AXIL_BURST_SIZE;
                        state_next = STATE_DATA_READ;
                    end else begin
                        // output narrow burst
                        master_burst_size_next = s_axi_arsize;
                        state_next = STATE_DATA;
                    end
                    m_axil_arprot_next = s_axi_arprot;
                    m_axil_arvalid_next = 1'b1;
                    m_axil_rready_next = 1'b0;
                end else begin
                    state_next = STATE_IDLE;
                end
            end
            STATE_DATA: begin
                m_axil_rready_next = !s_axi_rvalid && !m_axil_arvalid;

                if (m_axil_rready && m_axil_rvalid) begin
                    s_axi_rid_next = id_reg;
                    s_axi_rdata_next = m_axil_rdata >> (addr_reg[AXIL_ADDR_BIT_OFFSET-1:AXI_ADDR_BIT_OFFSET] * AXI_DATA_WIDTH);
                    s_axi_rresp_next = m_axil_rresp;
                    s_axi_rlast_next = 1'b0;
                    s_axi_rvalid_next = 1'b1;
                    burst_next = burst_reg - 1;
                    addr_next = addr_reg + (1 << burst_size_reg);
                    if (burst_reg == 0) begin
                        // last data word, return to idle
                        m_axil_rready_next = 1'b0;
                        s_axi_rlast_next = 1'b1;
                        s_axi_arready_next = !m_axil_arvalid;
                        state_next = STATE_IDLE;
                    end else begin
                        // start new AXI lite read
                        m_axil_araddr_next = addr_next;
                        m_axil_arvalid_next = 1'b1;
                        m_axil_rready_next = 1'b0;
                        state_next = STATE_DATA;
                    end
                end else begin
                    state_next = STATE_DATA;
                end
            end
            STATE_DATA_READ: begin
                m_axil_rready_next = !s_axi_rvalid && !m_axil_arvalid;

                if (m_axil_rready && m_axil_rvalid) begin
                    s_axi_rid_next = id_reg;
                    data_next = m_axil_rdata;
                    resp_next = m_axil_rresp;
                    s_axi_rdata_next = m_axil_rdata >> (addr_reg[AXIL_ADDR_BIT_OFFSET-1:AXI_ADDR_BIT_OFFSET] * AXI_DATA_WIDTH);
                    s_axi_rresp_next = m_axil_rresp;
                    s_axi_rlast_next = 1'b0;
                    s_axi_rvalid_next = 1'b1;
                    burst_next = burst_reg - 1;
                    addr_next = addr_reg + (1 << burst_size_reg);
                    if (burst_reg == 0) begin
                        m_axil_rready_next = 1'b0;
                        s_axi_arready_next = !m_axil_arvalid;
                        s_axi_rlast_next = 1'b1;
                        state_next = STATE_IDLE;
                    end else if (addr_next[master_burst_size_reg] != addr_reg[master_burst_size_reg]) begin
                        // start new AXI lite read
                        m_axil_araddr_next = addr_next;
                        m_axil_arvalid_next = 1'b1;
                        m_axil_rready_next = 1'b0;
                        state_next = STATE_DATA_READ;
                    end else begin
                        m_axil_rready_next = 1'b0;
                        state_next = STATE_DATA_SPLIT;
                    end
                end else begin
                    state_next = STATE_DATA_READ;
                end
            end
            STATE_DATA_SPLIT: begin
                m_axil_rready_next = 1'b0;

                if (s_axi_rready || !s_axi_rvalid) begin
                    s_axi_rid_next = id_reg;
                    s_axi_rdata_next = data_reg >> (addr_reg[AXIL_ADDR_BIT_OFFSET-1:AXI_ADDR_BIT_OFFSET] * AXI_DATA_WIDTH);
                    s_axi_rresp_next = resp_reg;
                    s_axi_rlast_next = 1'b0;
                    s_axi_rvalid_next = 1'b1;
                    burst_next = burst_reg - 1;
                    addr_next = addr_reg + (1 << burst_size_reg);
                    if (burst_reg == 0) begin
                        s_axi_arready_next = !m_axil_arvalid;
                        s_axi_rlast_next = 1'b1;
                        state_next = STATE_IDLE;
                    end else if (addr_next[master_burst_size_reg] != addr_reg[master_burst_size_reg]) begin
                        // start new AXI lite read
                        m_axil_araddr_next = addr_next;
                        m_axil_arvalid_next = 1'b1;
                        m_axil_rready_next = 1'b0;
                        state_next = STATE_DATA_READ;
                    end else begin
                        state_next = STATE_DATA_SPLIT;
                    end
                end else begin
                    state_next = STATE_DATA_SPLIT;
                end
            end
        endcase
    end else begin
        // master output is narrower; merge reads and possibly split burst
        case (state_reg)
            STATE_IDLE: begin
                // idle state; wait for new burst
                s_axi_arready_next = !m_axil_arvalid;

                resp_next = 2'd0;

                if (s_axi_arready && s_axi_arvalid) begin
                    s_axi_arready_next = 1'b0;
                    id_next = s_axi_arid;
                    m_axil_araddr_next = s_axi_araddr;
                    addr_next = s_axi_araddr;
                    burst_next = s_axi_arlen;
                    burst_size_next = s_axi_arsize;
                    if (s_axi_arsize > AXIL_BURST_SIZE) begin
                        // need to adjust burst size
                        if (s_axi_arlen >> (8+AXIL_BURST_SIZE-s_axi_arsize) != 0) begin
                            // limit burst length to max
                            master_burst_next = (8'd255 << (s_axi_arsize-AXIL_BURST_SIZE)) | ((~s_axi_araddr & (8'hff >> (8-s_axi_arsize))) >> AXIL_BURST_SIZE);
                        end else begin
                            master_burst_next = (s_axi_arlen << (s_axi_arsize-AXIL_BURST_SIZE)) | ((~s_axi_araddr & (8'hff >> (8-s_axi_arsize))) >> AXIL_BURST_SIZE);
                        end
                        master_burst_size_next = AXIL_BURST_SIZE;
                    end else begin
                        // pass through narrow (enough) burst
                        master_burst_next = s_axi_arlen;
                        master_burst_size_next = s_axi_arsize;
                    end
                    m_axil_arprot_next = s_axi_arprot;
                    m_axil_arvalid_next = 1'b1;
                    m_axil_rready_next = 1'b0;
                    state_next = STATE_DATA;
                end else begin
                    state_next = STATE_IDLE;
                end
            end
            STATE_DATA: begin
                m_axil_rready_next = !s_axi_rvalid && !m_axil_arvalid;

                if (m_axil_rready && m_axil_rvalid) begin
                    data_next[addr_reg[AXI_ADDR_BIT_OFFSET-1:AXIL_ADDR_BIT_OFFSET]*SEGMENT_DATA_WIDTH +: SEGMENT_DATA_WIDTH] = m_axil_rdata;
                    if (m_axil_rresp) begin
                        resp_next = m_axil_rresp;
                    end
                    s_axi_rid_next = id_reg;
                    s_axi_rdata_next = data_next;
                    s_axi_rresp_next = resp_next;
                    s_axi_rlast_next = 1'b0;
                    s_axi_rvalid_next = 1'b0;
                    master_burst_next = master_burst_reg - 1;
                    addr_next = (addr_reg + (1 << master_burst_size_reg)) & ({ADDR_WIDTH{1'b1}} << master_burst_size_reg);
                    m_axil_araddr_next = addr_next;
                    if (addr_next[burst_size_reg] != addr_reg[burst_size_reg]) begin
                        data_next = {DATA_WIDTH{1'b0}};
                        burst_next = burst_reg - 1;
                        s_axi_rvalid_next = 1'b1;
                    end
                    if (master_burst_reg == 0) begin
                        if (burst_next >> (8+AXIL_BURST_SIZE-burst_size_reg) != 0) begin
                            // limit burst length to max
                            master_burst_next = 8'd255;
                        end else begin
                            master_burst_next = (burst_next << (burst_size_reg-AXIL_BURST_SIZE)) | (8'hff >> (8-burst_size_reg) >> AXIL_BURST_SIZE);
                        end

                        if (burst_reg == 0) begin
                            m_axil_rready_next = 1'b0;
                            s_axi_rlast_next = 1'b1;
                            s_axi_rvalid_next = 1'b1;
                            s_axi_arready_next = !m_axil_arvalid;
                            state_next = STATE_IDLE;
                        end else begin
                            m_axil_arvalid_next = 1'b1;
                            m_axil_rready_next = 1'b0;
                            state_next = STATE_DATA;
                        end
                    end else begin
                        m_axil_arvalid_next = 1'b1;
                        m_axil_rready_next = 1'b0;
                        state_next = STATE_DATA;
                    end
                end else begin
                    state_next = STATE_DATA;
                end
            end
        endcase
    end
end

always @(posedge clk) begin
    state_reg <= state_next;

    id_reg <= id_next;
    addr_reg <= addr_next;
    data_reg <= data_next;
    resp_reg <= resp_next;
    burst_reg <= burst_next;
    burst_size_reg <= burst_size_next;
    master_burst_reg <= master_burst_next;
    master_burst_size_reg <= master_burst_size_next;

    s_axi_arready_reg <= s_axi_arready_next;
    s_axi_rid_reg <= s_axi_rid_next;
    s_axi_rdata_reg <= s_axi_rdata_next;
    s_axi_rresp_reg <= s_axi_rresp_next;
    s_axi_rlast_reg <= s_axi_rlast_next;
    s_axi_rvalid_reg <= s_axi_rvalid_next;

    m_axil_araddr_reg <= m_axil_araddr_next;
    m_axil_arprot_reg <= m_axil_arprot_next;
    m_axil_arvalid_reg <= m_axil_arvalid_next;
    m_axil_rready_reg <= m_axil_rready_next;

    if (rst) begin
        state_reg <= STATE_IDLE;

        s_axi_arready_reg <= 1'b0;
        s_axi_rvalid_reg <= 1'b0;

        m_axil_arvalid_reg <= 1'b0;
        m_axil_rready_reg <= 1'b0;
    end
end

endmodule


/*
 * AXI4 to AXI4-Lite adapter (write)
 */
module axi_axil_adapter_wr #
(
    // Width of address bus in bits
    parameter ADDR_WIDTH = 32,
    // Width of input (slave) AXI interface data bus in bits
    parameter AXI_DATA_WIDTH = 32,
    // Width of input (slave) AXI interface wstrb (width of data bus in words)
    parameter AXI_STRB_WIDTH = (AXI_DATA_WIDTH/8),
    // Width of AXI ID signal
    parameter AXI_ID_WIDTH = 8,
    // Width of output (master) AXI lite interface data bus in bits
    parameter AXIL_DATA_WIDTH = 32,
    // Width of output (master) AXI lite interface wstrb (width of data bus in words)
    parameter AXIL_STRB_WIDTH = (AXIL_DATA_WIDTH/8),
    // When adapting to a wider bus, re-pack full-width burst instead of passing through narrow burst if possible
    parameter CONVERT_BURST = 1,
    // When adapting to a wider bus, re-pack all bursts instead of passing through narrow burst if possible
    parameter CONVERT_NARROW_BURST = 0
)
(
    input  wire                        clk,
    input  wire                        rst,

    /*
     * AXI slave interface
     */
    input  wire [AXI_ID_WIDTH-1:0]     s_axi_awid,
    input  wire [ADDR_WIDTH-1:0]       s_axi_awaddr,
    input  wire [7:0]                  s_axi_awlen,
    input  wire [2:0]                  s_axi_awsize,
    input  wire [1:0]                  s_axi_awburst,
    input  wire                        s_axi_awlock,
    input  wire [3:0]                  s_axi_awcache,
    input  wire [2:0]                  s_axi_awprot,
    input  wire                        s_axi_awvalid,
    output wire                        s_axi_awready,
    input  wire [AXI_DATA_WIDTH-1:0]   s_axi_wdata,
    input  wire [AXI_STRB_WIDTH-1:0]   s_axi_wstrb,
    input  wire                        s_axi_wlast,
    input  wire                        s_axi_wvalid,
    output wire                        s_axi_wready,
    output wire [AXI_ID_WIDTH-1:0]     s_axi_bid,
    output wire [1:0]                  s_axi_bresp,
    output wire                        s_axi_bvalid,
    input  wire                        s_axi_bready,

    /*
     * AXI lite master interface
     */
    output wire [ADDR_WIDTH-1:0]       m_axil_awaddr,
    output wire [2:0]                  m_axil_awprot,
    output wire                        m_axil_awvalid,
    input  wire                        m_axil_awready,
    output wire [AXIL_DATA_WIDTH-1:0]  m_axil_wdata,
    output wire [AXIL_STRB_WIDTH-1:0]  m_axil_wstrb,
    output wire                        m_axil_wvalid,
    input  wire                        m_axil_wready,
    input  wire [1:0]                  m_axil_bresp,
    input  wire                        m_axil_bvalid,
    output wire                        m_axil_bready
);

parameter AXI_ADDR_BIT_OFFSET = $clog2(AXI_STRB_WIDTH);
parameter AXIL_ADDR_BIT_OFFSET = $clog2(AXIL_STRB_WIDTH);
parameter AXI_WORD_WIDTH = AXI_STRB_WIDTH;
parameter AXIL_WORD_WIDTH = AXIL_STRB_WIDTH;
parameter AXI_WORD_SIZE = AXI_DATA_WIDTH/AXI_WORD_WIDTH;
parameter AXIL_WORD_SIZE = AXIL_DATA_WIDTH/AXIL_WORD_WIDTH;
parameter AXI_BURST_SIZE = $clog2(AXI_STRB_WIDTH);
parameter AXIL_BURST_SIZE = $clog2(AXIL_STRB_WIDTH);

// output bus is wider
parameter EXPAND = AXIL_STRB_WIDTH > AXI_STRB_WIDTH;
parameter DATA_WIDTH = EXPAND ? AXIL_DATA_WIDTH : AXI_DATA_WIDTH;
parameter STRB_WIDTH = EXPAND ? AXIL_STRB_WIDTH : AXI_STRB_WIDTH;
// required number of segments in wider bus
parameter SEGMENT_COUNT = EXPAND ? (AXIL_STRB_WIDTH / AXI_STRB_WIDTH) : (AXI_STRB_WIDTH / AXIL_STRB_WIDTH);
// data width and keep width per segment
parameter SEGMENT_DATA_WIDTH = DATA_WIDTH / SEGMENT_COUNT;
parameter SEGMENT_STRB_WIDTH = STRB_WIDTH / SEGMENT_COUNT;

// bus width assertions
initial begin
    if (AXI_WORD_SIZE * AXI_STRB_WIDTH != AXI_DATA_WIDTH) begin
        $error("Error: AXI slave interface data width not evenly divisble (instance %m)");
        $finish;
    end

    if (AXIL_WORD_SIZE * AXIL_STRB_WIDTH != AXIL_DATA_WIDTH) begin
        $error("Error: AXI lite master interface data width not evenly divisble (instance %m)");
        $finish;
    end

    if (AXI_WORD_SIZE != AXIL_WORD_SIZE) begin
        $error("Error: word size mismatch (instance %m)");
        $finish;
    end

    if (2**$clog2(AXI_WORD_WIDTH) != AXI_WORD_WIDTH) begin
        $error("Error: AXI slave interface word width must be even power of two (instance %m)");
        $finish;
    end

    if (2**$clog2(AXIL_WORD_WIDTH) != AXIL_WORD_WIDTH) begin
        $error("Error: AXI lite master interface word width must be even power of two (instance %m)");
        $finish;
    end
end

localparam [1:0]
    STATE_IDLE = 2'd0,
    STATE_DATA = 2'd1,
    STATE_DATA_2 = 2'd2,
    STATE_RESP = 2'd3;

reg [1:0] state_reg = STATE_IDLE, state_next;

reg [AXI_ID_WIDTH-1:0] id_reg = {AXI_ID_WIDTH{1'b0}}, id_next;
reg [ADDR_WIDTH-1:0] addr_reg = {ADDR_WIDTH{1'b0}}, addr_next;
reg [DATA_WIDTH-1:0] data_reg = {DATA_WIDTH{1'b0}}, data_next;
reg [STRB_WIDTH-1:0] strb_reg = {STRB_WIDTH{1'b0}}, strb_next;
reg [7:0] burst_reg = 8'd0, burst_next;
reg [2:0] burst_size_reg = 3'd0, burst_size_next;
reg [2:0] master_burst_size_reg = 3'd0, master_burst_size_next;
reg burst_active_reg = 1'b0, burst_active_next;
reg convert_burst_reg = 1'b0, convert_burst_next;
reg first_transfer_reg = 1'b0, first_transfer_next;
reg last_segment_reg = 1'b0, last_segment_next;

reg s_axi_awready_reg = 1'b0, s_axi_awready_next;
reg s_axi_wready_reg = 1'b0, s_axi_wready_next;
reg [AXI_ID_WIDTH-1:0] s_axi_bid_reg = {AXI_ID_WIDTH{1'b0}}, s_axi_bid_next;
reg [1:0] s_axi_bresp_reg = 2'd0, s_axi_bresp_next;
reg s_axi_bvalid_reg = 1'b0, s_axi_bvalid_next;

reg [ADDR_WIDTH-1:0] m_axil_awaddr_reg = {ADDR_WIDTH{1'b0}}, m_axil_awaddr_next;
reg [2:0] m_axil_awprot_reg = 3'd0, m_axil_awprot_next;
reg m_axil_awvalid_reg = 1'b0, m_axil_awvalid_next;
reg [AXIL_DATA_WIDTH-1:0] m_axil_wdata_reg = {AXIL_DATA_WIDTH{1'b0}}, m_axil_wdata_next;
reg [AXIL_STRB_WIDTH-1:0] m_axil_wstrb_reg = {AXIL_STRB_WIDTH{1'b0}}, m_axil_wstrb_next;
reg m_axil_wvalid_reg = 1'b0, m_axil_wvalid_next;
reg m_axil_bready_reg = 1'b0, m_axil_bready_next;

assign s_axi_awready = s_axi_awready_reg;
assign s_axi_wready = s_axi_wready_reg;
assign s_axi_bid = s_axi_bid_reg;
assign s_axi_bresp = s_axi_bresp_reg;
assign s_axi_bvalid = s_axi_bvalid_reg;

assign m_axil_awaddr = m_axil_awaddr_reg;
//assign m_axil_awlen = m_axil_awlen_reg;
//assign m_axil_awsize = m_axil_awsize_reg;
//assign m_axil_awburst = m_axil_awburst_reg;
assign m_axil_awprot = m_axil_awprot_reg;
assign m_axil_awvalid = m_axil_awvalid_reg;
assign m_axil_wdata = m_axil_wdata_reg;
assign m_axil_wstrb = m_axil_wstrb_reg;
assign m_axil_wvalid = m_axil_wvalid_reg;
assign m_axil_bready = m_axil_bready_reg;

integer i;

always @* begin
    state_next = STATE_IDLE;

    id_next = id_reg;
    addr_next = addr_reg;
    data_next = data_reg;
    strb_next = strb_reg;
    burst_next = burst_reg;
    burst_size_next = burst_size_reg;
    master_burst_size_next = master_burst_size_reg;
    burst_active_next = burst_active_reg;
    convert_burst_next = convert_burst_reg;
    first_transfer_next = first_transfer_reg;
    last_segment_next = last_segment_reg;

    s_axi_awready_next = 1'b0;
    s_axi_wready_next = 1'b0;
    s_axi_bid_next = s_axi_bid_reg;
    s_axi_bresp_next = s_axi_bresp_reg;
    s_axi_bvalid_next = s_axi_bvalid_reg && !s_axi_bready;
    m_axil_awaddr_next = m_axil_awaddr_reg;
    m_axil_awprot_next = m_axil_awprot_reg;
    m_axil_awvalid_next = m_axil_awvalid_reg && !m_axil_awready;
    m_axil_wdata_next = m_axil_wdata_reg;
    m_axil_wstrb_next = m_axil_wstrb_reg;
    m_axil_wvalid_next = m_axil_wvalid_reg && !m_axil_wready;
    m_axil_bready_next = 1'b0;

    if (SEGMENT_COUNT == 1) begin
        // master output is same width; direct transfer with no splitting/merging
        case (state_reg)
            STATE_IDLE: begin
                // idle state; wait for new burst
                s_axi_awready_next = !m_axil_awvalid;
                first_transfer_next = 1'b1;

                if (s_axi_awready && s_axi_awvalid) begin
                    s_axi_awready_next = 1'b0;
                    id_next = s_axi_awid;
                    m_axil_awaddr_next = s_axi_awaddr;
                    addr_next = s_axi_awaddr;
                    burst_next = s_axi_awlen;
                    burst_size_next = s_axi_awsize;
                    burst_active_next = 1'b1;
                    m_axil_awprot_next = s_axi_awprot;
                    m_axil_awvalid_next = 1'b1;
                    s_axi_wready_next = !m_axil_wvalid;
                    state_next = STATE_DATA;
                end else begin
                    state_next = STATE_IDLE;
                end
            end
            STATE_DATA: begin
                // data state; transfer write data
                s_axi_wready_next = !m_axil_wvalid;

                if (s_axi_wready && s_axi_wvalid) begin
                    m_axil_wdata_next = s_axi_wdata;
                    m_axil_wstrb_next = s_axi_wstrb;
                    m_axil_wvalid_next = 1'b1;
                    burst_next = burst_reg - 1;
                    burst_active_next = burst_reg != 0;
                    addr_next = addr_reg + (1 << burst_size_reg);
                    s_axi_wready_next = 1'b0;
                    m_axil_bready_next = !s_axi_bvalid && !m_axil_awvalid;
                    state_next = STATE_RESP;
                end else begin
                    state_next = STATE_DATA;
                end
            end
            STATE_RESP: begin
                // resp state; transfer write response
                m_axil_bready_next = !s_axi_bvalid && !m_axil_awvalid;

                if (m_axil_bready && m_axil_bvalid) begin
                    m_axil_bready_next = 1'b0;
                    s_axi_bid_next = id_reg;
                    first_transfer_next = 1'b0;
                    if (first_transfer_reg || m_axil_bresp != 0) begin
                        s_axi_bresp_next = m_axil_bresp;
                    end
                    if (burst_active_reg) begin
                        // burst on slave interface still active; start new AXI lite write
                        m_axil_awaddr_next = addr_reg;
                        m_axil_awvalid_next = 1'b1;
                        s_axi_wready_next = !m_axil_wvalid;
                        state_next = STATE_DATA;
                    end else begin
                        // burst on slave interface finished; return to idle
                        s_axi_bvalid_next = 1'b1;
                        s_axi_awready_next = !m_axil_awvalid;
                        state_next = STATE_IDLE;
                    end
                end else begin
                    state_next = STATE_RESP;
                end
            end
        endcase
    end else if (EXPAND) begin
        // master output is wider; merge writes
        case (state_reg)
            STATE_IDLE: begin
                // idle state; wait for new burst
                s_axi_awready_next = !m_axil_awvalid;

                first_transfer_next = 1'b1;

                data_next = {DATA_WIDTH{1'b0}};
                strb_next = {STRB_WIDTH{1'b0}};

                if (s_axi_awready && s_axi_awvalid) begin
                    s_axi_awready_next = 1'b0;
                    id_next = s_axi_awid;
                    m_axil_awaddr_next = s_axi_awaddr;
                    addr_next = s_axi_awaddr;
                    burst_next = s_axi_awlen;
                    burst_size_next = s_axi_awsize;
                    if (CONVERT_BURST && s_axi_awcache[1] && (CONVERT_NARROW_BURST || s_axi_awsize == AXI_BURST_SIZE)) begin
                        // merge writes
                        // require CONVERT_BURST and awcache[1] set
                        convert_burst_next = 1'b1;
                        master_burst_size_next = AXIL_BURST_SIZE;
                        state_next = STATE_DATA_2;
                    end else begin
                        // output narrow burst
                        convert_burst_next = 1'b0;
                        master_burst_size_next = s_axi_awsize;
                        state_next = STATE_DATA;
                    end
                    m_axil_awprot_next = s_axi_awprot;
                    m_axil_awvalid_next = 1'b1;
                    s_axi_wready_next = !m_axil_wvalid;
                end else begin
                    state_next = STATE_IDLE;
                end
            end
            STATE_DATA: begin
                // data state; transfer write data
                s_axi_wready_next = !m_axil_wvalid || m_axil_wready;

                if (s_axi_wready && s_axi_wvalid) begin
                    m_axil_wdata_next = {(AXIL_WORD_WIDTH/AXI_WORD_WIDTH){s_axi_wdata}};
                    m_axil_wstrb_next = s_axi_wstrb << (addr_reg[AXIL_ADDR_BIT_OFFSET-1:AXI_ADDR_BIT_OFFSET] * AXI_STRB_WIDTH);
                    m_axil_wvalid_next = 1'b1;
                    burst_next = burst_reg - 1;
                    burst_active_next = burst_reg != 0;
                    addr_next = addr_reg + (1 << burst_size_reg);
                    s_axi_wready_next = 1'b0;
                    m_axil_bready_next = !s_axi_bvalid && !m_axil_awvalid;
                    state_next = STATE_RESP;
                end else begin
                    state_next = STATE_DATA;
                end
            end
            STATE_DATA_2: begin
                s_axi_wready_next = !m_axil_wvalid;

                if (s_axi_wready && s_axi_wvalid) begin
                    if (CONVERT_NARROW_BURST) begin
                        for (i = 0; i < AXI_WORD_WIDTH; i = i + 1) begin
                            if (s_axi_wstrb[i]) begin
                                data_next[addr_reg[AXIL_ADDR_BIT_OFFSET-1:AXI_ADDR_BIT_OFFSET]*SEGMENT_DATA_WIDTH+i*AXIL_WORD_SIZE +: AXIL_WORD_SIZE] = s_axi_wdata[i*AXIL_WORD_SIZE +: AXIL_WORD_SIZE];
                                strb_next[addr_reg[AXIL_ADDR_BIT_OFFSET-1:AXI_ADDR_BIT_OFFSET]*SEGMENT_STRB_WIDTH+i] = 1'b1;
                            end
                        end
                    end else begin
                        data_next[addr_reg[AXIL_ADDR_BIT_OFFSET-1:AXI_ADDR_BIT_OFFSET]*SEGMENT_DATA_WIDTH +: SEGMENT_DATA_WIDTH] = s_axi_wdata;
                        strb_next[addr_reg[AXIL_ADDR_BIT_OFFSET-1:AXI_ADDR_BIT_OFFSET]*SEGMENT_STRB_WIDTH +: SEGMENT_STRB_WIDTH] = s_axi_wstrb;
                    end
                    m_axil_wdata_next = data_next;
                    m_axil_wstrb_next = strb_next;
                    burst_next = burst_reg - 1;
                    burst_active_next = burst_reg != 0;
                    addr_next = addr_reg + (1 << burst_size_reg);
                    if (burst_reg == 0 || addr_next[master_burst_size_reg] != addr_reg[master_burst_size_reg]) begin
                        data_next = {DATA_WIDTH{1'b0}};
                        strb_next = {STRB_WIDTH{1'b0}};
                        m_axil_wvalid_next = 1'b1;
                        s_axi_wready_next = 1'b0;
                        m_axil_bready_next = !s_axi_bvalid && !m_axil_awvalid;
                        state_next = STATE_RESP;
                    end else begin
                        state_next = STATE_DATA_2;
                    end
                end else begin
                    state_next = STATE_DATA_2;
                end
            end
            STATE_RESP: begin
                // resp state; transfer write response
                m_axil_bready_next = !s_axi_bvalid && !m_axil_awvalid;

                if (m_axil_bready && m_axil_bvalid) begin
                    m_axil_bready_next = 1'b0;
                    s_axi_bid_next = id_reg;
                    first_transfer_next = 1'b0;
                    if (first_transfer_reg || m_axil_bresp != 0) begin
                        s_axi_bresp_next = m_axil_bresp;
                    end
                    if (burst_active_reg) begin
                        // burst on slave interface still active; start new AXI lite write
                        m_axil_awaddr_next = addr_reg;
                        m_axil_awvalid_next = 1'b1;
                        s_axi_wready_next = !m_axil_wvalid || m_axil_wready;
                        if (convert_burst_reg) begin
                            state_next = STATE_DATA_2;
                        end else begin
                            state_next = STATE_DATA;
                        end
                    end else begin
                        // burst on slave interface finished; return to idle
                        s_axi_bvalid_next = 1'b1;
                        s_axi_awready_next = !m_axil_awvalid;
                        state_next = STATE_IDLE;
                    end
                end else begin
                    state_next = STATE_RESP;
                end
            end
        endcase
    end else begin
        // master output is narrower; split writes, and possibly split burst
        case (state_reg)
            STATE_IDLE: begin
                // idle state; wait for new burst
                s_axi_awready_next = !m_axil_awvalid;

                first_transfer_next = 1'b1;

                if (s_axi_awready && s_axi_awvalid) begin
                    s_axi_awready_next = 1'b0;
                    id_next = s_axi_awid;
                    m_axil_awaddr_next = s_axi_awaddr;
                    addr_next = s_axi_awaddr;
                    burst_next = s_axi_awlen;
                    burst_size_next = s_axi_awsize;
                    burst_active_next = 1'b1;
                    if (s_axi_awsize > AXIL_BURST_SIZE) begin
                        // need to adjust burst size
                        master_burst_size_next = AXIL_BURST_SIZE;
                    end else begin
                        // pass through narrow (enough) burst
                        master_burst_size_next = s_axi_awsize;
                    end
                    m_axil_awprot_next = s_axi_awprot;
                    m_axil_awvalid_next = 1'b1;
                    s_axi_wready_next = !m_axil_wvalid;
                    state_next = STATE_DATA;
                end else begin
                    state_next = STATE_IDLE;
                end
            end
            STATE_DATA: begin
                s_axi_wready_next = !m_axil_wvalid;

                if (s_axi_wready && s_axi_wvalid) begin
                    data_next = s_axi_wdata;
                    strb_next = s_axi_wstrb;
                    m_axil_wdata_next = s_axi_wdata >> (addr_reg[AXI_ADDR_BIT_OFFSET-1:AXIL_ADDR_BIT_OFFSET] * AXIL_DATA_WIDTH);
                    m_axil_wstrb_next = s_axi_wstrb >> (addr_reg[AXI_ADDR_BIT_OFFSET-1:AXIL_ADDR_BIT_OFFSET] * AXIL_STRB_WIDTH);
                    m_axil_wvalid_next = 1'b1;
                    burst_next = burst_reg - 1;
                    burst_active_next = burst_reg != 0;
                    addr_next = (addr_reg + (1 << master_burst_size_reg)) & ({ADDR_WIDTH{1'b1}} << master_burst_size_reg);
                    last_segment_next = addr_next[burst_size_reg] != addr_reg[burst_size_reg];
                    s_axi_wready_next = 1'b0;
                    m_axil_bready_next = !s_axi_bvalid && !m_axil_awvalid;
                    state_next = STATE_RESP;
                end else begin
                    state_next = STATE_DATA;
                end
            end
            STATE_DATA_2: begin
                s_axi_wready_next = 1'b0;

                if (!m_axil_wvalid || m_axil_wready) begin
                    m_axil_wdata_next = data_reg >> (addr_reg[AXI_ADDR_BIT_OFFSET-1:AXIL_ADDR_BIT_OFFSET] * AXIL_DATA_WIDTH);
                    m_axil_wstrb_next = strb_reg >> (addr_reg[AXI_ADDR_BIT_OFFSET-1:AXIL_ADDR_BIT_OFFSET] * AXIL_STRB_WIDTH);
                    m_axil_wvalid_next = 1'b1;
                    addr_next = (addr_reg + (1 << master_burst_size_reg)) & ({ADDR_WIDTH{1'b1}} << master_burst_size_reg);
                    last_segment_next = addr_next[burst_size_reg] != addr_reg[burst_size_reg];
                    s_axi_wready_next = 1'b0;
                    m_axil_bready_next = !s_axi_bvalid && !m_axil_awvalid;
                    state_next = STATE_RESP;
                end else begin
                    state_next = STATE_DATA_2;
                end
            end
            STATE_RESP: begin
                // resp state; transfer write response
                m_axil_bready_next = !s_axi_bvalid && !m_axil_awvalid;

                if (m_axil_bready && m_axil_bvalid) begin
                    first_transfer_next = 1'b0;
                    m_axil_awaddr_next = addr_reg;
                    m_axil_bready_next = 1'b0;
                    s_axi_bid_next = id_reg;
                    if (first_transfer_reg || m_axil_bresp != 0) begin
                        s_axi_bresp_next = m_axil_bresp;
                    end
                    if (burst_active_reg || !last_segment_reg) begin
                        // burst on slave interface still active; start new burst
                        m_axil_awvalid_next = 1'b1;
                        if (last_segment_reg) begin
                            s_axi_wready_next = !m_axil_wvalid;
                            state_next = STATE_DATA;
                        end else begin
                            s_axi_wready_next = 1'b0;
                            state_next = STATE_DATA_2;
                        end
                    end else begin
                        // burst on slave interface finished; return to idle
                        s_axi_bvalid_next = 1'b1;
                        s_axi_awready_next = !m_axil_awvalid;
                        state_next = STATE_IDLE;
                    end
                end else begin
                    state_next = STATE_RESP;
                end
            end
        endcase
    end
end

always @(posedge clk) begin
    state_reg <= state_next;

    id_reg <= id_next;
    addr_reg <= addr_next;
    data_reg <= data_next;
    strb_reg <= strb_next;
    burst_reg <= burst_next;
    burst_size_reg <= burst_size_next;
    master_burst_size_reg <= master_burst_size_next;
    burst_active_reg <= burst_active_next;
    convert_burst_reg <= convert_burst_next;
    first_transfer_reg <= first_transfer_next;
    last_segment_reg <= last_segment_next;

    s_axi_awready_reg <= s_axi_awready_next;
    s_axi_wready_reg <= s_axi_wready_next;
    s_axi_bid_reg <= s_axi_bid_next;
    s_axi_bresp_reg <= s_axi_bresp_next;
    s_axi_bvalid_reg <= s_axi_bvalid_next;

    m_axil_awaddr_reg <= m_axil_awaddr_next;
    m_axil_awprot_reg <= m_axil_awprot_next;
    m_axil_awvalid_reg <= m_axil_awvalid_next;
    m_axil_wdata_reg <= m_axil_wdata_next;
    m_axil_wstrb_reg <= m_axil_wstrb_next;
    m_axil_wvalid_reg <= m_axil_wvalid_next;
    m_axil_bready_reg <= m_axil_bready_next;

    if (rst) begin
        state_reg <= STATE_IDLE;

        s_axi_awready_reg <= 1'b0;
        s_axi_wready_reg <= 1'b0;
        s_axi_bvalid_reg <= 1'b0;

        m_axil_awvalid_reg <= 1'b0;
        m_axil_wvalid_reg <= 1'b0;
        m_axil_bready_reg <= 1'b0;
    end
end

endmodule

`resetall
