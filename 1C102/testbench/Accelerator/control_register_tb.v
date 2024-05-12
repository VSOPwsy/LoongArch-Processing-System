
module control_register_tb;
  localparam  SIZE = 16;
  
  reg  clk;
  reg  rstn;
  reg  [31:0] addr_base_a;
  reg  [31:0] addr_base_b;
  reg  [31:0] m;
  reg  [31:0] k;
  reg  [31:0] n;
  reg  start;
  wire dma_start;
  reg  dma_done;
  reg  [255:0] dma_data;
  wire  [255:0] buf_data_in;
  wire  read_a;
  wire  read_b;

  control_register # (
    .SIZE(SIZE)
  )
  control_register_inst (
    .clk(clk),
    .rstn(rstn),
    .addr_base_a(addr_base_a),
    .addr_base_b(addr_base_b),
    .m(m),
    .k(k),
    .n(n),
    .a_in_mode(1),
    .b_in_mode(1),
    .start(start),
    .dma_start(dma_start),
    .dma_done(dma_done),
    .dma_data(dma_data),
    .buf_data_in(buf_data_in),
    .read_a(read_a),
    .read_b(read_b)
  );

  always #5  clk = !clk ;
  initial begin
      clk = 1;
      #0;
      rstn = 0;
      addr_base_a = 0;
      addr_base_b = 0;
      m = 0;
      n = 0;
      k = 0;
      start = 0;
      dma_data = 0;
      dma_done = 0;
      #30;
      rstn = 1;
      addr_base_a = 32'h1000_0010;
      addr_base_b = 32'h2000_0100;
      m = 32;
      n = 32;
      k = 32;
      start = 1;
      dma_data = 256'h1234_5678;
      wait(dma_start);
      #20;
      dma_done = 1;

      #10000000;
      $finish;
  end
  

endmodule