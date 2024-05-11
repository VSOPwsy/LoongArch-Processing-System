
module TOP_tb;

    // Parameters
    localparam  CLK_FREQ = 50_000_000;

    //Ports
    reg  sys_clk;
    reg  sys_resetn;
    wire [7:0] led;
    reg  RsRx;
    wire  RsTx;
    reg  LJTAG_TRST;
    reg  LJTAG_TMS;
    wire  LJTAG_TDO;
    reg  LJTAG_TDI;
    reg  LJTAG_TCK;
    reg  LJTAG_RESET;
    wire [31:0] ddr_dq;
    wire [3:0] ddr_dqs;
    wire [3:0] ddr_dqs_n;
    wire [14:0] ddr_addr;
    wire [2:0] ddr_bank;
    wire  ddr_cs;
    wire  ddr_ras;
    wire  ddr_cas;
    wire  ddr_we;
    wire  ddr_ck;
    wire  ddr_ck_n;
    wire  ddr_cke;
    wire  ddr_odt;
    wire  ddr_reset_n;
    wire [3:0] ddr_dm;
    reg  sd_miso;
    wire  sd_clk;
    wire  sd_cs;
    wire  sd_mosi;


    TOP # (
        .CLK_FREQ(CLK_FREQ)
    )
    TOP_inst (
        .sys_clk(sys_clk),
        .sys_resetn(sys_resetn),
        .led(led),
        .RsRx(RsRx),
        .RsTx(RsTx),
        .LJTAG_TRST(LJTAG_TRST),
        .LJTAG_TMS(LJTAG_TMS),
        .LJTAG_TDO(LJTAG_TDO),
        .LJTAG_TDI(LJTAG_TDI),
        .LJTAG_TCK(LJTAG_TCK),
        .LJTAG_RESET(LJTAG_RESET),
        .ddr_dq(ddr_dq),
        .ddr_dqs(ddr_dqs),
        .ddr_dqs_n(ddr_dqs_n),
        .ddr_addr(ddr_addr),
        .ddr_bank(ddr_bank),
        .ddr_cs(ddr_cs),
        .ddr_ras(ddr_ras),
        .ddr_cas(ddr_cas),
        .ddr_we(ddr_we),
        .ddr_ck(ddr_ck),
        .ddr_ck_n(ddr_ck_n),
        .ddr_cke(ddr_cke),
        .ddr_odt(ddr_odt),
        .ddr_reset_n(ddr_reset_n),
        .ddr_dm(ddr_dm),
        .sd_miso(sd_miso),
        .sd_clk(sd_clk),
        .sd_cs(sd_cs),
        .sd_mosi(sd_mosi)
    );

    ddr3 ddr3_inst_0 (
        .rst_n(rst_n),
        .ck(ck),
        .ck_n(ck_n),
        .cke(cke),
        .cs_n(cs_n),
        .ras_n(ras_n),
        .cas_n(cas_n),
        .we_n(we_n),
        .dm_tdqs(dm_tdqs),
        .ba(ba),
        .addr(addr),
        .dq(dq),
        .dqs(dqs),
        .dqs_n(dqs_n),
        .tdqs_n(tdqs_n),
        .odt(odt)
    );

    ddr3 ddr3_inst_1 (
        .rst_n(rst_n),
        .ck(ck),
        .ck_n(ck_n),
        .cke(cke),
        .cs_n(cs_n),
        .ras_n(ras_n),
        .cas_n(cas_n),
        .we_n(we_n),
        .dm_tdqs(dm_tdqs),
        .ba(ba),
        .addr(addr),
        .dq(dq),
        .dqs(dqs),
        .dqs_n(dqs_n),
        .tdqs_n(tdqs_n),
        .odt(odt)
    );

    always #5  sys_clk = !sys_clk ;

endmodule