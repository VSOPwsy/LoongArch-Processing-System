`timescale 1ns / 1ps

module sd_init_tb;

  // Parameters

  //Ports
  reg  clk_ref;
  reg  rst_n;
  wire  sd_miso;
  wire  sd_clk;
  wire  sd_cs;
  wire  sd_mosi;
  wire  sd_init_done;

    sd_init  sd_init_inst (
        .clk_ref(clk_ref),
        .rst_n(rst_n),
        .sd_miso(sd_miso),
        .sd_clk(sd_clk),
        .sd_cs(sd_cs),
        .sd_mosi(sd_mosi),
        .sd_init_done(sd_init_done)
    );

    sd sd_inst (
        .clk(sd_clk),
        .miso(sd_miso),
        .cs(sd_cs),
        .mosi(sd_mosi)
    );

    always #5  clk_ref = ! clk_ref ;

    initial begin
        clk_ref = 1;
        rst_n = 1;
        #20 rst_n = 0;
        #20 rst_n = 1;
        #1000;
    end

endmodule