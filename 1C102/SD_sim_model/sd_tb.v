module sd_tb;

  // Parameters

  //Ports
  reg  clk;
  wire miso;
  reg  cs;
  reg  mosi;
  reg [47:0] i_buf;
  reg [47:0] o_buf;

  sd  sd_inst (
    .clk(clk),
    .miso(miso),
    .cs(cs),
    .mosi(mosi)
  );

    always #5  clk = ! clk ;
    integer i;
    initial begin
        mosi = 1;
        clk = 1;
        cs = 1;
        i_buf = 0;
        o_buf = 0;
        #200;

        //cmd0
        @(posedge clk);
        o_buf = 48'h4000_0000_0095;
        cs = 0;
        for(i = 0; i < 48; i=i+1) begin
            mosi = o_buf[47-i];
            @(posedge clk);
        end
        mosi = 1;

        wait(~miso);
        for(i = 0; i < 48; i=i+1) begin
          @(posedge clk) i_buf[i] = miso;
        end
        cs = 1;

        //cmd8
        @(posedge clk);
        o_buf = 48'h4800_0001_aa87;
        cs = 0;
        for(i = 0; i < 48; i=i+1) begin
            mosi = o_buf[47-i];
            @(posedge clk);
        end
        mosi = 1;

        wait(~miso);
        for(i = 0; i < 48; i=i+1) begin
          @(posedge clk) i_buf[i] = miso;
        end
        cs = 1;

        //cmd55
        @(posedge clk);
        o_buf = 48'h7700_0000_00ff;
        cs = 0;
        for(i = 0; i < 48; i=i+1) begin
            mosi = o_buf[47-i];
            @(posedge clk);
        end
        mosi = 1;

        wait(~miso);
        for(i = 0; i < 48; i=i+1) begin
          @(posedge clk) i_buf[i] = miso;
        end
        cs = 1;

        //acmd41
        @(posedge clk);
        o_buf = 48'h6900_0000_00ff;
        cs = 0;
        for(i = 0; i < 48; i=i+1) begin
            mosi = o_buf[47-i];
            @(posedge clk);
        end
        mosi = 1;

        wait(~miso);
        for(i = 0; i < 48; i=i+1) begin
          @(posedge clk) i_buf[i] = miso;
        end
        cs = 1;

        
    end

endmodule