
module control_register_tb;
    localparam  BUFFER_SIZE = 8;

    reg  clk;
    reg  rstn;
    reg  [31:0] addr_base_a;
    reg  [31:0] addr_base_b;
    reg  [31:0] m;
    reg  [31:0] k;
    reg  [31:0] n;
    reg  start;
    wire dma_start;
    reg dma_valid;
    reg dma_ready;
    reg  [255:0] dma_data;
    wire [3:0] dma_burst_len;
    wire  [255:0] buf_data_in;
    wire  read_a;
    wire  read_b;
    integer i;

    control_register # (
        .BUFFER_SIZE(BUFFER_SIZE)
    )
    control_register_inst (
        .clk(clk),
        .rstn(rstn),
        .addr_base_a(addr_base_a),
        .addr_base_b(addr_base_b),
        .m(m),
        .k(k),
        .n(n),
        .a_in_mode(1'b1),
        .b_in_mode(1'b0),
        .start(start),
        .dma_start(dma_start),
        .dma_valid(dma_valid),
        .dma_ready(dma_ready),
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
        dma_ready = 0;
        dma_valid = 0;
        #30;
        rstn = 1;
        addr_base_a = 32'h0000_0000;
        addr_base_b = 32'h0000_0000;
        m = 16;
        n = 16;
        k = 15;
        #20;
        @(posedge clk);
        start = 1;
        dma_data = 256'h0;
        @(posedge clk);
        start = 0;

        #10000000;
        $finish;
    end

    always @(posedge clk) begin
        if (~rstn)
            dma_data <= 0;
        else if (dma_valid & dma_ready)
            dma_data <= dma_data + 256'h00000001_00000001_00000001_00000001_00000001_00000001_00000001_00000001;
    end


    initial begin
        while (1) begin
            wait(dma_start);
            #20;
            @(posedge clk);

            for ( i = 0; i < BUFFER_SIZE/8 ; i = i+1) begin
                @(posedge clk);
                dma_ready = 1;
                dma_valid = 1;
                @(posedge clk);
                dma_ready = 0;
                dma_valid = 0;
            end
        end
    end
endmodule