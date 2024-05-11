`timescale 1ns / 1ps

module sd (

    input clk,
    output reg miso,
    input cs,
    
    input mosi
);

reg [8*512-1:0] SDmem [0 : 262143];
reg [63:0] i_buf;
reg [1023:0] o_buf;
reg INIT = 0;
initial $readmemh("D:/Users/wangs/Documents/Code/LoongArch-Processing-System/1C102/SD_sim_model/SD.txt",SDmem);

reg rd_sec_addr;

always @(posedge clk) begin
    if (~cs) begin
        i_buf <= {i_buf[62:0], mosi};
    end
    else begin
        i_buf <= ~'d0;
    end
end


integer i;
initial begin
    miso = 1;
    INIT = 0;
    i_buf = ~'d0;
    #5;
    wait(i_buf == 64'h4000_0000_0095_ffff);
    // response for cmd0
    @(posedge clk) o_buf = 'h01;
    for (i = 0; i < 8; i=i+1) begin
        miso = o_buf[7-i];
        @(posedge clk);
    end
    miso = 1;

    //response for cmd8
    wait(i_buf == 64'h4800_0001_aa87_ffff);
    @(posedge clk) o_buf = 'h01;
    for (i = 0; i < 32 ; i=i+1) begin
        miso = o_buf[31-i];
        @(posedge clk);
    end
    miso = 1;

    //response for cmd55
    wait(i_buf == 64'h7700_0000_00ff_ffff);
    @(posedge clk) o_buf = 'h01;
    for (i = 0; i < 8; i=i+1) begin
        miso = o_buf[7-i];
        @(posedge clk);
    end
    miso = 1;

    //response for acmd41
    wait(i_buf == 64'h6940_0000_00ff_ffff);
    @(posedge clk) o_buf = 'h00;
    for (i = 0; i < 8; i=i+1) begin
        miso = o_buf[7-i];
        @(posedge clk);
    end
    miso = 1;

    while (1) begin
        @(negedge cs);
        wait(i_buf == {1'b0, 47'bx, 16'hff});

        if (i_buf[63:16] == {8'h51, 32'bx, 8'hff}) begin
            rd_sec_addr = i_buf[55:24];

            @(posedge clk) o_buf = 'h00;
            for (i = 0; i < 8; i=i+1) begin
                miso = o_buf[7-i];
                @(posedge clk);
            end
            miso = 1;

            #25 @(posedge clk) o_buf = 'hfe;
            // output start byte
            for (i = 0; i < 8; i=i+1) begin
                miso = o_buf[7-i];
                @(posedge clk);
            end
            // output sec
            for (i = 0; i < 512 * 8; i=i+1) begin
                miso = SDmem[rd_sec_addr][i];
                @(posedge clk);
            end
            miso = 1;
        end
    end

end

endmodule