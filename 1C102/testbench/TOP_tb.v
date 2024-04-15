
module TOP_tb;

  // Parameters
  localparam  CLK_FREQ = 0;

  //Ports
  reg  sys_resetn;
  wire [3:0] led;
  reg  RsRx;
  wire  RsTx;
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

  TOP # (
    .CLK_FREQ(CLK_FREQ)
  )
  TOP_inst (
    .sys_resetn(sys_resetn),
    .led(led),
    .RsRx(RsRx),
    .RsTx(RsTx),
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
    .ddr_dm(ddr_dm)
  );

always #5  clk = ! clk ;

initial begin
    #0 sys_resetn = 1'b0;
    #30 sys_resetn = 1'b1;
    #1000;
end

endmodule