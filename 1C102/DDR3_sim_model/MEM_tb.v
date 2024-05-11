
module MEM_tb;

  // Parameters
  localparam  LEVEL = 20;

  //Ports
  reg  clk;
  reg  cs;
  reg [28:0] addr;
  reg [255:0] wr_data;
  reg [31:0] wr_strb;
  reg  wr_en;
  wire [255:0] rd_data;

  MEM # (
    .LEVEL(LEVEL)
  )
  MEM_inst (
    .clk(clk),
    .cs(cs),
    .addr(addr),
    .wr_data(wr_data),
    .wr_strb(wr_strb),
    .wr_en(wr_en),
    .rd_data(rd_data)
  );

always #5  clk = ! clk ;

initial begin
    clk = 1;
    #10 ;
    addr = 8'hf6;
    wr_data = 256'h1234;
    wr_en = 1;
    wr_strb = 32'h0000_0000;
    cs = 1;

    #100;
    $finish;

end

endmodule