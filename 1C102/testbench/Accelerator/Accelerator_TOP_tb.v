`timescale 1ns / 1ps
module Accelerator_TOP_tb;

    localparam BUFFER_SIZE = 16;

    // Parameters
    localparam  DATA_WIDTH = 256;
    localparam  ADDR_WIDTH = 32;
    localparam  STRB_WIDTH = DATA_WIDTH / 8;
    localparam  ID_WIDTH = 8;
    localparam  ID = 8'h80;
    localparam  FILE_PATH   = "D:/Users/wangs/Documents/Code/LoongArch-Processing-System/1C102/testbench/Accelerator/hex_matrix.txt";

    localparam  BYTE_OFFSET = 4;

    //Ports
    reg  clk;
    reg  rstn;
    wire [ID_WIDTH-1:0] axi_awid;
    wire [ADDR_WIDTH-1:0] axi_awaddr;
    wire [7:0] axi_awlen;
    wire [2:0] axi_awsize;
    wire [1:0] axi_awburst;
    wire  axi_awvalid;
    reg  axi_awready;
    wire [DATA_WIDTH-1:0] axi_wdata;
    wire [STRB_WIDTH-1:0] axi_wstrb;
    wire  axi_wlast;
    wire  axi_wvalid;
    reg  axi_wready;
    reg [ID_WIDTH-1:0] axi_bid;
    reg [1:0] axi_bresp;
    reg  axi_bvalid;
    wire  axi_bready;
    wire [ID_WIDTH-1:0] axi_arid;
    wire [ADDR_WIDTH-1:0] axi_araddr;
    wire [7:0] axi_arlen;
    wire [2:0] axi_arsize;
    wire [1:0] axi_arburst;
    wire  axi_arvalid;
    reg  axi_arready;
    reg [ID_WIDTH-1:0] axi_rid;
    reg [DATA_WIDTH-1:0] axi_rdata;
    reg [1:0] axi_rresp;
    reg  axi_rlast;
    reg  axi_rvalid;
    wire  axi_rready;
    reg  start;
    reg [31:0] addr_base_a;
    reg [31:0] addr_base_b;
    reg [31:0] addr_base_c;
    reg [31:0] m;
    reg [31:0] k;
    reg [31:0] n;
    reg  a_in_mode;
    reg  b_in_mode;

    Accelerator_TOP # (
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .STRB_WIDTH(STRB_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .ID(ID),
        .BUFFER_SIZE(BUFFER_SIZE)
    ) Accelerator_TOP_inst (
        .clk(clk),
        .rstn(rstn),
        .axi_awid(axi_awid),
        .axi_awaddr(axi_awaddr),
        .axi_awlen(axi_awlen),
        .axi_awsize(axi_awsize),
        .axi_awburst(axi_awburst),
        .axi_awvalid(axi_awvalid),
        .axi_awready(axi_awready),
        .axi_wdata(axi_wdata),
        .axi_wstrb(axi_wstrb),
        .axi_wlast(axi_wlast),
        .axi_wvalid(axi_wvalid),
        .axi_wready(axi_wready),
        .axi_bid(axi_bid),
        .axi_bresp(axi_bresp),
        .axi_bvalid(axi_bvalid),
        .axi_bready(axi_bready),
        .axi_arid(axi_arid),
        .axi_araddr(axi_araddr),
        .axi_arlen(axi_arlen),
        .axi_arsize(axi_arsize),
        .axi_arburst(axi_arburst),
        .axi_arvalid(axi_arvalid),
        .axi_arready(axi_arready),
        .axi_rid(axi_rid),
        .axi_rdata(axi_rdata),
        .axi_rresp(axi_rresp),
        .axi_rlast(axi_rlast),
        .axi_rvalid(axi_rvalid),
        .axi_rready(axi_rready),
        .start(start),
        .addr_base_a(addr_base_a),
        .addr_base_b(addr_base_b),
        .addr_base_c(addr_base_c),
        .m(m),
        .k(k),
        .n(n),
        .a_in_mode(a_in_mode),
        .b_in_mode(b_in_mode)
    );

    always #10  clk = ! clk ;

    reg [31:0] mem [32*32*2+32-1:0];
    reg [3:0] burst_cnt;
    reg [31:0] araddr_reg;
    reg [3:0] arlen_reg;
    
    initial begin
        $readmemh(FILE_PATH, mem, BYTE_OFFSET/4);
    end

    initial begin
        clk = 1;
        rstn = 1;
        m = 32;
        k = 32;
        n = 32;
        a_in_mode = 1;
        b_in_mode = 1;
        addr_base_a = BYTE_OFFSET;
        addr_base_b = 32*32*4 + BYTE_OFFSET;
        addr_base_c = 0;
        start = 0;


        axi_arready = 1;

        #10;
        rstn = 0;
        #50;
        rstn = 1;

        #20;
        @(posedge clk) start = 1;
        @(posedge clk) start = 0;
    end

    integer i, j;
    initial begin
        burst_cnt = 0;
        araddr_reg = 0;
        arlen_reg = 0;
        axi_rdata = 0;
        axi_rvalid = 0;
        axi_rid = 8'h80;
        axi_rlast = 0;
        while (1) begin
            wait(axi_arvalid & axi_arready);
            @(posedge clk);
            araddr_reg = axi_araddr;
            arlen_reg = axi_arlen;
            axi_rvalid = 1;
            for (i = 0; i <= arlen_reg; i = i + 1) begin
                for (j = 0; j < 8; j = j + 1) begin
                    axi_rdata[j*32+:32] = mem[araddr_reg/4 + i*8 + j];
                end
                if (i == arlen_reg) begin
                    axi_rlast = 1;
                end
                wait(axi_rvalid & axi_rready);
                @(posedge clk);
            end
            axi_rvalid = 0;
            axi_rlast = 0;
        end
    end

    initial begin
        axi_awready = 1;
        axi_wready = 1;
        axi_bvalid = 1;
        axi_bresp = 0;
        axi_bid = 8'h80;
    end

endmodule