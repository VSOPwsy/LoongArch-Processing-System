module out_buffer #(
    parameter BUFFER_SIZE = 32
)(
    input clk,
    input rstn,

    input [$clog2(BUFFER_SIZE)-1:0] mac_wr_index,////////////////
    input [BUFFER_SIZE*32-1:0] mac_wr_data,
    input mac_wr_valid,
    output mac_wr_ready,


    input [$clog2(BUFFER_SIZE)-1:0] mac_rd_index,//////////////
    output [BUFFER_SIZE*32-1:0] mac_rd_data,//////////////////////
    output mac_rd_valid,
    input mac_rd_ready,

    input mac_done,



    input [$clog2(BUFFER_SIZE)-1:0] dma_rd_index,//////////////
    output [BUFFER_SIZE*32-1:0] dma_rd_data,//////////////////////
    output dma_rd_valid,
    input dma_rd_done,
    input dma_rd_ready
);

    reg [BUFFER_SIZE*32-1:0] mem_0 [BUFFER_SIZE-1:0];
    reg [BUFFER_SIZE*32-1:0] mem_1 [BUFFER_SIZE-1:0];

    reg [1:0] mac_ptr, dma_ptr;

    wire [BUFFER_SIZE*32-1:0] mem_0_rd_data, mem_1_rd_data;

    reg mac_ready_reg, dma_valid_reg;

    always @(posedge clk) begin
        if (mac_wr_valid & mac_wr_ready & mac_ptr == 0) begin
            mem_0[mac_wr_index] <= mac_wr_data;
        end
    end
    assign mem_0_rd_data = mem_0[mac_ptr == 0 ? mac_rd_index : dma_rd_index];

    always @(posedge clk) begin
        if (mac_wr_valid & mac_wr_ready & mac_ptr == 1) begin
            mem_1[mac_wr_index] <= mac_wr_data;
        end
    end
    assign mem_1_rd_data = mem_1[mac_ptr == 0 ? mac_rd_index : dma_rd_index];

    assign mac_rd_data = mac_ptr == 0 ? mem_0_rd_data : mem_1_rd_data;
    assign dma_rd_data = dma_ptr == 0 ? mem_0_rd_data : mem_1_rd_data;


    reg full, empty;

    always @(posedge clk) begin
        if (~rstn) begin
            mac_ptr <= 0;
            dma_ptr <= 0;
        end
        else begin
            if (mac_done) begin
                mac_ptr <= mac_ptr + 1;
            end
            if (dma_rd_done) begin
                dma_ptr <= dma_ptr + 1;
            end
        end
    end

    always @(*) begin
        full = (mac_ptr[1] ^ dma_ptr[1]) & (mac_ptr[0] == dma_ptr[0]);
        empty = mac_ptr == dma_ptr;
        mac_ready_reg = ~full;
        dma_valid_reg = ~empty;
    end

    assign mac_wr_ready = mac_ready_reg;
    assign mac_rd_valid = mac_ready_reg;
    assign dma_rd_valid = dma_valid_reg;

endmodule
